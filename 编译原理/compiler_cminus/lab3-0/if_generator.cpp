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
    auto module = new Module("if", context);  //模块名是if

//if模块下定义main函数
    auto mainFun = Function::Create(FunctionType::get(TYPE32,false),//main函数无参数
                                    GlobalValue::LinkageTypes::ExternalLinkage,
                                    "main", module);
    auto bb = BasicBlock::Create(context, "entry", mainFun);
    builder.SetInsertPoint(bb);

    auto icmp = builder.CreateICmpSGT(CONST(2), CONST(1));//计算2>1，若为真，icmp为true，否则为false
    auto trueBB = BasicBlock::Create(context, "trueBB", mainFun);//定义true的basic block
    auto falseBB = BasicBlock::Create(context, "falseBB", mainFun);//定义false的basic block

    builder.CreateCondBr(icmp, trueBB, falseBB);//若icmp为true，调到trueBB的分支，否则跳到falseBB

    builder.SetInsertPoint(trueBB);//if(2>1)
    builder.CreateRet(CONST(1));//返回1

    builder.SetInsertPoint(falseBB);//else
    builder.CreateRet(CONST(0));//返回0
    
    builder.ClearInsertionPoint();

    module->print(outs(), nullptr);
    delete module;
    return 0;

}