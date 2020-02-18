#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Type.h>
#include <llvm/IR/Verifier.h>

#include <iostream>
#include <memory>

using namespace llvm;
#define CONST(num) \
    ConstantInt::get(context, APInt(32, num))

int main(){
    LLVMContext context;
    Type *TYPE32 = Type::getInt32Ty(context);
    Type *TYPEARR = Type::getInt32PtrTy(context);
    IRBuilder<> builder(context);
    auto module = new Module("call", context);//模块名叫call

//call模块下定义callee函数
    std::vector<Type *> Ints; //callee函数有一个参数
    Ints.push_back(TYPEARR);
    auto calleeFun = Function::Create(FunctionType::get(TYPE32,Ints, false),
                                    GlobalValue::LinkageTypes::ExternalLinkage,
                                    "callee", module);
    auto bb = BasicBlock::Create(context, "entry", calleeFun);
    builder.SetInsertPoint(bb);

    auto aAlloca = builder.CreateAlloca(TYPEARR);    //给变量a分配空间
    auto retAlloca = builder.CreateAlloca(TYPE32);  //给返回值分配空间

    std::vector<Value *> args;  //获取callee函数的参数,通过iterator
    for (auto arg = calleeFun->arg_begin(); arg != calleeFun->arg_end(); arg++) {
        args.push_back(arg);
    }
    builder.CreateStore(args[0], aAlloca);
    auto aLoad = builder.CreateLoad(aAlloca);//参数值传给a

    auto mul = builder.CreateMul(CONST(2), aLoad);
    builder.CreateStore(mul, retAlloca);    //a*2的值给return value
    auto retLoad = builder.CreateLoad(retAlloca);
    builder.CreateRet(retLoad);

//callee模块下定义main函数
    auto mainFun = Function::Create(FunctionType::get(TYPE32, false),//main函数无参数
                                  GlobalValue::LinkageTypes::ExternalLinkage,
                                  "main", module);
    bb = BasicBlock::Create(context, "entry", mainFun);
    builder.SetInsertPoint(bb);

    auto call = builder.CreateCall(calleeFun, CONST(10)); //调用callee函数，传参数10，结果写到call的空间中
    auto alloca = builder.CreateAlloca(TYPE32);
    builder.CreateStore(call, alloca);
    builder.CreateRet(alloca);

    builder.ClearInsertionPoint();

    module->print(outs(), nullptr);
    delete module;
    return 0;
}