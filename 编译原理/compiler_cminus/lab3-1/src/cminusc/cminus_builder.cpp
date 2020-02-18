#include "cminus_builder.hpp"
#include <iostream>
#include <unordered_map>
//#define Debug 1

// You can define global variables here
// to store state
using namespace llvm;
std::unordered_map<std::string, llvm::Function *> functions;
std::unordered_map<std::string, type_specifier> functions_type;
std::vector<std::string>Args;
#define CONST(num) \
    ConstantInt::get(context, APInt(32, num))

static Function* current_function;
std::vector<Type *> Ints;
Value* value_result;
Value* addr_result;
Value* Icmp;
Value *func_name;

bool in_global;
bool constexpr_expected;
bool lval_as_rval ;
int bb_count;
bool error_flag;
int const_result;
int ArgType;
int return_num;



void CminusBuilder::visit(syntax_program &node) {
#ifdef Debug
    printf("program!\n");
#endif
    Value *val_ptr;
    bb_count = 0;
    return_num = 0;
    value_result = ConstantInt::get(Type::getInt32Ty(context), 0);
    const_result = 0;
    error_flag = false;
    val_ptr=scope.find("input");
    functions["input"] =(Function *) val_ptr;
    functions_type["input"] = TYPE_INT;
    val_ptr=scope.find("output");
    functions["output"] =(Function *) val_ptr;
    functions_type["output"] = TYPE_VOID;
    val_ptr=scope.find("neg_idx_except");
    functions["neg_idx_except"] =(Function *) val_ptr;
    functions_type["neg_idx_except"] = TYPE_VOID;
    for(auto dec: node.declarations){
       dec->accept(*this);
    }
}


void CminusBuilder::visit(syntax_num &node) {
#ifdef Debug
    printf("num!\n");
#endif
    Type* TYPE32 = Type::getInt32Ty(context);
    auto aAlloca = builder.CreateAlloca(TYPE32);
    builder.CreateStore(CONST(node.value), aAlloca);
    value_result=aAlloca;
}


void CminusBuilder::visit(syntax_var_declaration &node) {
#ifdef Debug
    printf("var_declaration!\n");
#endif
    auto var_name = node.id;
    bool is_array = false;
    if(node.num) is_array = true;
    Type* TYPE32 = Type::getInt32Ty(context);
    if(scope.in_global()){
        if(node.num == nullptr){
            auto val_ptr = new GlobalVariable(*module.get(),
                                    TYPE32,
                                    false,
                                    GlobalVariable::LinkageTypes::ExternalLinkage,
                                    ConstantAggregateZero::get(TYPE32),
                                    var_name);
            scope.push(var_name,val_ptr);
        }
        else{
            auto val_ptr = new GlobalVariable(*module.get(),
                                    ArrayType::get(TYPE32,node.num->value),
                                    false,
                                    GlobalVariable::LinkageTypes::ExternalLinkage,
                                    ConstantAggregateZero::get(ArrayType::get(TYPE32,node.num->value)),
                                    var_name);
            scope.push(var_name,val_ptr);
        }
    }
    else
    {
#ifdef Debug
        printf("local var! is_array=%d\n", is_array);
#endif
        // local var
        if(is_array == false)
        {
            Type* TYPE32 = Type::getInt32Ty(context);
            auto vAlloca = builder.CreateAlloca(TYPE32);
            scope.push(node.id,vAlloca);
        }
        else
        {
            node.num->accept(*this);
            auto var_ptr = builder.CreateAlloca(ArrayType::get(Type::getInt32Ty(context), node.num->value));
            scope.push(var_name,var_ptr);
        }
    }
}

void CminusBuilder::visit(syntax_fun_declaration &node) {
#ifdef Debug
    printf("fun_declaration!");
    printf("return_stmt:%d\n",return_num);
#endif
    //进入新的作用域
   
    scope.enter();
    std::string func_name = node.id;
    std::vector<Value *> args;
    Type* TYPE32 = Type::getInt32Ty(context);
    Type* TYPEARR = Type::getInt32PtrTy(context);
    Type* TYPEVOID = Type::getVoidTy(context);
    //定义函数入口
     if(node.params.size()){
        int i=0;
        for(auto param: node.params){
            param->accept(*this);
            i++;
           // std::cout<<i<<std::endl;
        }

        if(node.type == TYPE_VOID) current_function = Function::Create(FunctionType::get(TYPEVOID, Ints, false), 
                                            GlobalValue::LinkageTypes::ExternalLinkage, 
                                            (const Twine&)(node.id), module.get());  
        else{
            current_function = Function::Create(FunctionType::get(TYPE32, Ints, false), 
                                            GlobalValue::LinkageTypes::ExternalLinkage, 
                                            (const Twine&)(node.id), module.get());  
        }
        auto bb = BasicBlock::Create(context, "entry", current_function);
        builder.SetInsertPoint(bb);
        //std::cout<<"current_function:build! next, args"<<std::endl;
          //获取callee函数的参数,通过iterator
        for (auto arg = current_function->arg_begin(); arg != current_function->arg_end(); arg++) {
            args.push_back(arg);
        }
        i=0;
        for(auto param: node.params){
            if(param->isarray){ 
                Value* paramAlloca = builder.CreateAlloca(TYPEARR);
                builder.CreateStore(args[i], paramAlloca);  //将参数 store下来
                scope.push(node.params[i]->id, paramAlloca);
                i++;
                Args.push_back(param->id);
            }
            else if(!param->isarray)  {
                   Value* paramAlloca = builder.CreateAlloca(TYPE32);
                   builder.CreateStore(args[i], paramAlloca);  //将参数 store下来
                   scope.push(node.params[i]->id, paramAlloca);
                   i++;
              }
            Ints.pop_back();

        }
       functions[func_name] = current_function;
       functions_type[func_name] = node.type;
    }
    else{ 
        if(node.type == TYPE_VOID) current_function = Function::Create(FunctionType::get(TYPEVOID, false),
                                 GlobalValue::LinkageTypes::ExternalLinkage,
                                 (const Twine&)node.id, module.get()); 
        else{
            current_function = Function::Create(FunctionType::get(TYPE32, false),
                                 GlobalValue::LinkageTypes::ExternalLinkage,
                                 (const Twine&)node.id, module.get()); 
        }

        auto bb = BasicBlock::Create(context, "entry", current_function);
        builder.SetInsertPoint(bb);
        scope.push(func_name, (Value*)current_function);
        functions[func_name] = current_function;
        functions_type[func_name] = node.type;
    }
    return_num = 0;
    node.compound_stmt->accept(*this);

    while(Args.size()) Args.pop_back();
    //退出作用域
    scope.exit();
    return;
}


void CminusBuilder::visit(syntax_param &node) {
#ifdef Debug
    printf("param!\n");
#endif
    Type* TYPE32 = Type::getInt32Ty(context);
    Type* TYPEARR = Type::getInt32PtrTy(context);
    if(node.isarray){
        Ints.push_back(TYPEARR);
    }
    else{
        Ints.push_back(TYPE32);
    }
    return;
}

void CminusBuilder::visit(syntax_compound_stmt &node) {
#ifdef Debug
    printf("compound_stmt!\n");
#endif
   scope.enter();
   for(auto loc_dec: node.local_declarations){
     loc_dec->accept(*this);
   }
   for(auto stmt :node.statement_list ){
     stmt->accept(*this);
   }
   scope.exit();
}

void CminusBuilder::visit(syntax_expresion_stmt &node) {
#ifdef Debug
    printf("expression_stmt!\n");
#endif
    node.expression->accept(*this);
}

void CminusBuilder::visit(syntax_selection_stmt &node) {
#ifdef Debug
    printf("selection_stmt!\n");
#endif

    Type* TYPE32 = Type::getInt32Ty(context);
    node.expression->accept(*this);

    
    
    auto expression = builder.CreateLoad(value_result);
    auto true1 =builder.CreateAlloca(TYPE32);
    value_result  = true1;
    auto icmp = builder.CreateICmpNE(expression, CONST(0));
    auto trueBB = BasicBlock::Create(context, "", current_function);
    auto falseBB = BasicBlock::Create(context, "", current_function);
    auto NextBB = BasicBlock::Create(context, "", current_function);
    builder.CreateCondBr(icmp, trueBB, falseBB);
    builder.SetInsertPoint(trueBB);
    builder.CreateStore(CONST(1),value_result);
    //builder.CreateStore(CONST(1), value_result);
    builder.CreateBr(NextBB);
    builder.SetInsertPoint(falseBB);
    builder.CreateStore(CONST(0),value_result);
    //builder.CreateStore(CONST(0), value_result);
    builder.CreateBr(NextBB);
    builder.SetInsertPoint(NextBB);


    auto temp = value_result;
    temp = builder.CreateTrunc(temp, Type::getInt1PtrTy(context));
    auto if_cond = builder.CreateLoad(temp);//value是已经被store后的，不用load，直接br
    auto if_then = BasicBlock::Create(context, "", current_function);
    auto if_next = BasicBlock::Create(context, "", current_function);

    if(node.else_statement)
    {   int curr_return_num;
        auto if_else = BasicBlock::Create(context, "", current_function);
        builder.CreateCondBr(if_cond, if_then, if_else);
        builder.SetInsertPoint(if_then);
        curr_return_num = return_num;
        node.if_statement->accept(*this);
        if(return_num == 0) builder.CreateBr(if_next);
        else return_num -= 1;
        builder.SetInsertPoint(if_else);
        curr_return_num = return_num;
        node.else_statement->accept(*this);
        if(return_num == 0) builder.CreateBr(if_next);
        else return_num -= 1;
        builder.SetInsertPoint(if_next);
    }
    else
    {
        int curr_return_num;
        builder.CreateCondBr(if_cond, if_then, if_next);
        builder.SetInsertPoint(if_then);
        curr_return_num = return_num;
        node.if_statement->accept(*this);
        if(return_num == 0) builder.CreateBr(if_next);
        else return_num -= 1;
        builder.SetInsertPoint(if_next);
    }
    return;
}


void CminusBuilder::visit(syntax_iteration_stmt &node) {//ok
#ifdef Debug
    printf("iteration_stmt!\n");
#endif
    Type* TYPE32 = Type::getInt32Ty(context);
    //调完expression后，直接用Icmp
    auto while_loop = BasicBlock::Create(context, "", current_function);
    auto while_true = BasicBlock::Create(context, "", current_function);
    auto while_next = BasicBlock::Create(context, "", current_function);
    builder.CreateBr(while_loop);
    builder.SetInsertPoint(while_loop);
    node.expression->accept(*this);
   

 
    auto expression = builder.CreateLoad(value_result);
    auto true1 =builder.CreateAlloca(TYPE32);
    value_result  = true1;
    auto icmp = builder.CreateICmpNE(expression, CONST(0));
    auto trueBB = BasicBlock::Create(context, "", current_function);
    auto falseBB = BasicBlock::Create(context, "", current_function);
    auto NextBB = BasicBlock::Create(context, "", current_function);
    builder.CreateCondBr(icmp, trueBB, falseBB);
    builder.SetInsertPoint(trueBB);
    builder.CreateStore(CONST(1),value_result);
    //builder.CreateStore(CONST(1), value_result);
    builder.CreateBr(NextBB);
    builder.SetInsertPoint(falseBB);
    builder.CreateStore(CONST(0),value_result);
    //builder.CreateStore(CONST(0), value_result);
    builder.CreateBr(NextBB);
    builder.SetInsertPoint(NextBB);




    auto temp = value_result;
    temp = builder.CreateTrunc(temp, Type::getInt1PtrTy(context));
    auto while_cond = builder.CreateLoad(temp);
    builder.CreateCondBr(while_cond, while_true, while_next);

    builder.SetInsertPoint(while_true);
    node.statement->accept(*this);
    builder.CreateBr(while_loop);


    builder.SetInsertPoint(while_next);

}

void CminusBuilder::visit(syntax_return_stmt &node) {
#ifdef Debug
    printf("return_stmt!\n");
#endif
    return_num += 1;
    if(node.expression){
        node.expression->accept(*this);
        auto value = builder.CreateLoad(value_result);
        builder.CreateRet(value);
    }
    else{
        builder.CreateRetVoid();
    }
    return;
}


void CminusBuilder::visit(syntax_var &node) {
#ifdef Debug
    printf("var!\n");
    std::cout<<node.id<<std::endl;
#endif
    ArgType = 0;
    if(node.expression) node.expression->accept(*this); 
    auto PTR=scope.find(node.id);
    //auto var = builder.CreateLoad(PTR);
    Value *val_ptr;
    Type* TYPE32PTR = Type::getInt32PtrTy(context);
    Type* TYPE32 = Type::getInt32Ty(context);
    if(PTR->getType() == TYPE32PTR)
    {
        //std::cout<<"what?"<<std::endl;
        val_ptr=scope.find(node.id);
        value_result=val_ptr;
    }
    else
    {
        int found = 0;
        for(auto name:Args){
            if(name == node.id){
                found = 1;
                break;
            }
        }
        if(node.expression) {
            node.expression->accept(*this);//获得index
            auto index_value = builder.CreateLoad(value_result);
            auto icmp = builder.CreateICmpSLT(index_value, CONST(0));
            auto trueBB = BasicBlock::Create(context, "", current_function);
            auto falseBB = BasicBlock::Create(context, "", current_function);
            builder.CreateCondBr(icmp, trueBB, falseBB);
            builder.SetInsertPoint(trueBB);
            builder.CreateCall(functions["neg_idx_except"]);
            builder.CreateRetVoid();
            builder.SetInsertPoint(falseBB);

        }
        else{
            auto zero = builder.CreateAlloca(TYPE32);
            builder.CreateStore(CONST(0), zero);
            value_result = zero;
            ArgType = 1;//这是value_result里存的是数组基地址，不用load
        }
        auto index = builder.CreateLoad(value_result);
        if(found){
            auto PTR1 = builder.CreateLoad(PTR);
            auto PTR2 = builder.CreateZExt(PTR1, Type::getInt32PtrTy(context));
            auto index1 = builder.CreateZExt(index, Type::getInt64Ty(context));
            auto element_ptr = builder.CreateInBoundsGEP(PTR2, index1);
            value_result=element_ptr;
            element_ptr=nullptr;
        }
        else{
            auto element_ptr = builder.CreateInBoundsGEP(PTR,{CONST(0),index});
            value_result=element_ptr;
            element_ptr=nullptr;
        }
    }
}

void CminusBuilder::visit(syntax_assign_expression &node) {
#ifdef Debug
    printf("assign_expression!\n");
#endif
    node.var->accept(*this);
    auto _var = value_result;
    node.expression->accept(*this);
    auto _expression = builder.CreateLoad(value_result);
   // auto expression_value = builder.CreateLoad(_expression);
    //auto _var = scope.find(node.var->id);
   // builder.CreateStore(expression_value, _var);
   builder.CreateStore(_expression, _var);
    return;
}


void CminusBuilder::visit(syntax_simple_expression &node) {
#ifdef Debug
    printf("simple_expression!\n");
#endif
    if(node.additive_expression_r){//比较的话simple表达式不需要有值
        node.additive_expression_l->accept(*this);
        auto AdditiveLoad_l = builder.CreateLoad(value_result);
        node.additive_expression_r->accept(*this);
        auto AdditiveLoad_r = builder.CreateLoad(value_result);
        //std::cout<<node.op<<std::endl;
        switch(node.op){
            case OP_LE:
                Icmp = builder.CreateICmpSLE(AdditiveLoad_l, AdditiveLoad_r);
                break;
            case OP_LT:
                Icmp = builder.CreateICmpSLT(AdditiveLoad_l, AdditiveLoad_r);
                break;
            case OP_GT:
                Icmp = builder.CreateICmpSGT(AdditiveLoad_l, AdditiveLoad_r);
                break;
            case OP_GE:
                Icmp = builder.CreateICmpSGE(AdditiveLoad_l, AdditiveLoad_r);
                break;
            case OP_EQ:
                Icmp = builder.CreateICmpEQ(AdditiveLoad_l, AdditiveLoad_r);
                break;
            case OP_NEQ:
                Icmp = builder.CreateICmpNE(AdditiveLoad_l, AdditiveLoad_r);
                break;
        }
        Icmp = builder.CreateZExt(Icmp, Type::getInt32Ty(context));
        auto icmpAlloca = builder.CreateAlloca(Type::getInt32Ty(context));
        builder.CreateStore(Icmp, icmpAlloca);
        value_result = icmpAlloca;
    }
    else{//simple表达式是加/减表达式需要有值
        node.additive_expression_l->accept(*this);
    }
    return;
}

void CminusBuilder::visit(syntax_additive_expression &node) {
#ifdef Debug
    printf("additive_expression!\n");
#endif
    if(node.additive_expression){
        node.additive_expression->accept(*this);
        auto additiveLoad = builder.CreateLoad(value_result);
        node.term->accept(*this);
        auto termLoad = builder.CreateLoad(value_result);
        Type* TYPE32 = Type::getInt32Ty(context);
        if(node.op == OP_PLUS){
            auto add = builder.CreateAdd(additiveLoad, termLoad);
            auto addalloc = builder.CreateAlloca(TYPE32);
            builder.CreateStore(add, addalloc);
            value_result = addalloc;
        }
        else{
            auto sub = builder.CreateSub(additiveLoad, termLoad);
            auto suballoc = builder.CreateAlloca(TYPE32);
            builder.CreateStore(sub, suballoc);
            value_result = suballoc;
        }
    }
    else{
        node.term->accept(*this);
    }
    return;
}

void CminusBuilder::visit(syntax_term &node) {
#ifdef Debug
    printf("term!\n");
#endif
    if(node.term){
        node.term->accept(*this);
        auto termLoad = builder.CreateLoad(value_result);
        node.factor->accept(*this);
        auto factorLoad = builder.CreateLoad(value_result);
        Type* TYPE32 = Type::getInt32Ty(context);
        if(node.op == OP_MUL){
            auto mul = builder.CreateMul(termLoad, factorLoad);
            auto mulalloc = builder.CreateAlloca(TYPE32);
            builder.CreateStore(mul, mulalloc);
            value_result = mulalloc;
        }
        else{
            auto div = builder.CreateSDiv(termLoad, factorLoad);
            auto divalloc = builder.CreateAlloca(TYPE32);
            builder.CreateStore(div, divalloc);
            value_result = divalloc;
        }
    }
    else{
        node.factor->accept(*this);
    }
    return;
}

void CminusBuilder::visit(syntax_call &node) {
#ifdef Debug
    printf("call!");
    printf("return_num :%d\n",return_num);
    std::cout<<node.id<<std::endl;
#endif
    //考虑如何根据args的不同确定是否找到
    int found = 0;
    Value* callfunc;// = functions[node.id];
    Value* value_arg;
    ArrayRef<Value*> args;
    std::vector<Value*> args_array;
    auto arg_num = 0;
    for(auto t:functions){
        if(t.first == node.id){
            found = 1;
            break;
        }
    }
    if(found == 0){
       // std::cout <<  "use of undeclared function : " << node.id<<std::endl;
        error_flag = true;
        return;
    }
    //found = 1;
    else{
        callfunc = functions[node.id];
        auto type = functions_type[node.id];
        for(auto arg:node.args){
            arg->accept(*this);
            if(ArgType) value_arg = value_result;
            else value_arg = builder.CreateLoad(value_result);
            args_array.push_back(value_arg);
            arg_num += 1;
            ArgType=0;
        }
        CallInst* call;
        if(node.args.size()) call = builder.CreateCall(callfunc,args_array);
        else call = builder.CreateCall(callfunc,{});
        if(type==TYPE_INT) builder.CreateStore(call, value_result);
        return ;
    }
}
