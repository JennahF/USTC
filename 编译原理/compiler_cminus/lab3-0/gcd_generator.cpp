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

#ifdef DEBUG  // 用于调试信息,大家可以在编译过程中通过" -DDEBUG"来开启这一选项
#define DEBUG_OUTPUT std::cout << __LINE__ << std::endl;  // 输出行号的简单示例
#else
#define DEBUG_OUTPUT
#endif

using namespace llvm;  // 指明命名空间为llvm
#define CONST(num) \
  ConstantInt::get(context, APInt(32, num))  //得到常数值的表示,方便后面多次用到

int main() {
  LLVMContext context;
  Type *TYPE32 = Type::getInt32Ty(context);
  IRBuilder<> builder(context);
  auto module = new Module("gcd", context);  // module name是什么无关紧要

  // 函数参数类型的vector
  std::vector<Type *> Ints(2, TYPE32);
  auto gcdFun = Function::Create(FunctionType::get(TYPE32, Ints, false),
                                 GlobalValue::LinkageTypes::ExternalLinkage,
                                 "gcd", module);

  // BB的名字在生成中无所谓,但是可以方便阅读
  auto bb = BasicBlock::Create(context, "entry", gcdFun);
  builder.SetInsertPoint(bb);                     // 一个BB的开始
  auto retAlloca = builder.CreateAlloca(TYPE32);  // 返回值的空间分配
  auto uAlloca = builder.CreateAlloca(TYPE32);    // 参数u的空间分配
  auto vAlloca = builder.CreateAlloca(TYPE32);    // 参数v的空间分配

  std::vector<Value *> args;  //获取gcd函数的参数,通过iterator
  for (auto arg = gcdFun->arg_begin(); arg != gcdFun->arg_end(); arg++) {
    args.push_back(arg);
  }

  builder.CreateStore(args[0], uAlloca);  //将参数u store下来
  builder.CreateStore(args[1], vAlloca);  //将参数v store下来

  auto vLoad = builder.CreateLoad(vAlloca);           //将参数v load上来
  auto icmp = builder.CreateICmpEQ(vLoad, CONST(0));  // v和0的比较,注意ICMPEQ

  auto trueBB = BasicBlock::Create(context, "trueBB", gcdFun);    // true分支
  auto falseBB = BasicBlock::Create(context, "falseBB", gcdFun);  // false分支
  auto retBB = BasicBlock::Create(
      context, "", gcdFun);  // return分支,提前create,以便true分支可以br

  auto br = builder.CreateCondBr(icmp, trueBB, falseBB);  // 条件BR
  DEBUG_OUTPUT // 我调试的时候故意留下来的,以醒目地提醒你这个调试用的宏定义方法
  builder.SetInsertPoint(trueBB);  // if true; 分支的开始需要SetInsertPoint设置
  auto uLoad = builder.CreateLoad(uAlloca);
  builder.CreateStore(uLoad, retAlloca);
  builder.CreateBr(retBB);  // br retBB

  builder.SetInsertPoint(falseBB);  // if false
  uLoad = builder.CreateLoad(uAlloca);
  vLoad = builder.CreateLoad(vAlloca);
  auto div = builder.CreateSDiv(uLoad, vLoad);  // SDIV - div with S flag
  auto mul = builder.CreateNSWMul(div, vLoad);  // NSWMUL - mul with NSW flags
  auto sub = builder.CreateNSWSub(uLoad, mul);  // the same
  auto call = builder.CreateCall(gcdFun, {vLoad, sub});
  // {vLoad, sub} - 参数array
  builder.CreateStore(call, retAlloca);
  builder.CreateBr(retBB);  // br retBB

  builder.SetInsertPoint(retBB);  // ret分支
  auto retLoad = builder.CreateLoad(retAlloca);
  builder.CreateRet(retLoad);

  // main函数
  auto mainFun = Function::Create(FunctionType::get(TYPE32, false),
                                  GlobalValue::LinkageTypes::ExternalLinkage,
                                  "main", module);
  bb = BasicBlock::Create(context, "entry", mainFun);
  // BasicBlock的名字在生成中无所谓,但是可以方便阅读
  builder.SetInsertPoint(bb);

  auto xAlloca = builder.CreateAlloca(TYPE32);
  auto yAlloca = builder.CreateAlloca(TYPE32);
  auto tempAlloca = builder.CreateAlloca(TYPE32);

  builder.CreateStore(CONST(0), tempAlloca);
  builder.CreateStore(CONST(72), xAlloca);
  builder.CreateStore(CONST(18), yAlloca);

  auto xLoad = builder.CreateLoad(xAlloca);
  auto yLoad = builder.CreateLoad(yAlloca);
  icmp = builder.CreateICmpSLT(xLoad, yLoad);  // ICMPLT with S

  trueBB = BasicBlock::Create(context, "trueBB", mainFun);
  falseBB = BasicBlock::Create(context, "falseBB", mainFun);
  builder.CreateCondBr(icmp, trueBB, falseBB);

  builder.SetInsertPoint(trueBB);
  builder.CreateStore(xLoad, tempAlloca);
  builder.CreateStore(yLoad, xAlloca);
  auto tempLoad = builder.CreateLoad(tempAlloca);
  builder.CreateStore(tempLoad, yAlloca);
  builder.CreateBr(falseBB);  // 注意在下一个BB之前要Br一下

  builder.SetInsertPoint(falseBB);
  xLoad = builder.CreateLoad(xAlloca);
  yLoad = builder.CreateLoad(yAlloca);
  call = builder.CreateCall(gcdFun, {xLoad, yLoad});
  builder.CreateRet(call);
  builder.ClearInsertionPoint();
  // 给这么多注释了,但是可能你们还是会弄很多bug
  // 所以强烈建议配置AutoComplete,效率会大大提高!
  // 别人配了AutoComplete,只花1小时coding
  // 你没有配AutoComplete,找method花5小时,debug花5小时,肯定哭唧唧!
  // 最后,如果猜不到某个IR指令对应的C++的函数,建议把指令翻译成英语然后在method列表中搜索一下
  // 最后的最后,这个例子只涉及到了一点基本的指令生成,
  // 对于额外的指令,包括数组,在之后的实验中可能需要大家好好搜索一下思考一下,
  // 还有涉及到的C++语法,可以在gitlab上发issue提问或者向大家提供指导,会有bonus哦!
  // 对于这个例子里的代码风格/用法,如果有好的建议也欢迎提出!
  module->print(outs(), nullptr);
  delete module;
  return 0;
}
