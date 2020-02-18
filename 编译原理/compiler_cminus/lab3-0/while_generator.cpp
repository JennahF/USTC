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
    auto module = new Module("while", context);//模块名为while

//while模块下定义main函数
    auto mainFun = Function::Create(FunctionType::get(TYPE32,false),//main函数无参数
                                    GlobalValue::LinkageTypes::ExternalLinkage,
                                    "main", module);
    auto bb = BasicBlock::Create(context, "entry", mainFun);
    builder.SetInsertPoint(bb);

    auto aAlloca = builder.CreateAlloca(TYPE32);
    auto iAlloca = builder.CreateAlloca(TYPE32);
    builder.CreateStore(CONST(10), aAlloca);//给a赋值10
    builder.CreateStore(CONST(0), iAlloca);//给i赋值0

    auto trueBB = BasicBlock::Create(context, "trueBB", mainFun);//定义true的basic block
    auto falseBB = BasicBlock::Create(context, "falseBB", mainFun);//定义false的basic block
    auto whileBB = BasicBlock::Create(context, "whileBB", mainFun);//定义while的basic block
    
    builder.CreateBr(whileBB);//无条件跳转到while的basic block
    builder.SetInsertPoint(whileBB);

    auto iLoad = builder.CreateLoad(iAlloca);
    auto icmp = builder.CreateICmpSLT(iLoad, CONST(10));//计算i<10,若为真，icmp为true，否则为false
    builder.CreateCondBr(icmp, trueBB, falseBB);//若icmp为true，跳转到true的basic block，否则跳转到false的basic block

//true分支
    builder.SetInsertPoint(trueBB);
    auto iadd = builder.CreateNSWAdd(iLoad, CONST(1));//i=i+1
    builder.CreateStore(iadd, iAlloca);

    iLoad = builder.CreateLoad(iAlloca);
    auto aLoad = builder.CreateLoad(aAlloca);
    auto aadd = builder.CreateNSWAdd(aLoad, iLoad);//a=a+i
    builder.CreateStore(aadd, aAlloca);

    builder.CreateBr(whileBB);//无条件跳转回while

//false分支
    builder.SetInsertPoint(falseBB);
    aLoad = builder.CreateLoad(aAlloca);
    builder.CreateRet(aLoad);             //return a
    
    builder.ClearInsertionPoint();

    module->print(outs(), nullptr);
    delete module;
    return 0;
}