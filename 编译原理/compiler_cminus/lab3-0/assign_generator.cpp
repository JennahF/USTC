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
    IRBuilder<> builder(context);
    auto module = new Module("assign", context); //模块名字叫assign

//assign模块下定义main函数
    auto mainFun = Function::Create(FunctionType::get(TYPE32,false),//main函数无参数
                                    GlobalValue::LinkageTypes::ExternalLinkage,
                                    "main", module);
    auto bb = BasicBlock::Create(context, "entry", mainFun);//每个函数都有一个叫entry的basic block
    builder.SetInsertPoint(bb);
    
    auto aAlloca = builder.CreateAlloca(TYPE32);  //给变量a分配一个32位int的空间
    builder.CreateStore(CONST(1), aAlloca);   //执行赋值的动作：将1存储进刚刚分配好的空间
    auto aLoad = builder.CreateLoad(aAlloca); //如果要返回这个空间内部的值，那么要先将它load上来

    
    builder.CreateRet(aLoad); //返回a
    builder.ClearInsertionPoint();
    module->print(outs(), nullptr);
    delete module;
    return 0;

}