# lab3-2

## 实验内容

本次实验中，我们需要使用`opt`工具，并阅读源代码来了解LLVM中如何使用Pass对IR进行优化

## 实验要求

1. 阅读[LLVM Pass的介绍](http://210.45.114.30/staff/compiler_cminus/wikis/uploads/058cbe3665a47626b0b344042cf26882/llvm_pass%E4%BB%8B%E7%BB%8D.pptx)，并学会使用`opt`工具
2. 从助教给出的[两组可选Pass](#可选Pass集合)中各选一个，根据从LLVM[官方文档](http://llvm.org/docs/Passes.html)中了解的相关信息和阅读相关源代码，完成任务
3. 组长应当严格按照模板格式，将组队学习和讨论的过程记录在`report/records.md`当中，讨论至少要有一次。
4.  报告提交在`report/report.md`中，组员同分

### 任务

1. 对于选定的Pass，介绍该Pass的类型和作用
2. 给出一个LLVM IR（可以手动构造，也可以自动生成，如果自动生成，请记得去掉无关的属性），用选定Pass对该LLVM IR进行优化，并将优化后的LLVM IR与源IR进行比对，指出该Pass对应的优化部分，并作出说明
3. 叙述该Pass的流程，可以用流程图穿插表示（详细步骤仅停留在文件内部，不用介绍外部文件的函数细节）

tip：不要陷入细节，学会从名字推断函数用途

### 迟交规则

迟交请邮件提醒TA：

- 邮箱：`lijh2015@mail.ustc.edu.cn` 并抄送 `king.zevin@qq.com` 
- 邮件主题：lab3-2迟交-学号
- 内容：包括迟交原因、最后版本commitID、迟交时间等

```c
// x为迟交天数，grade满分100, final_grade为最终得分
int final_grade = full_grade, x = 0;
if (x > 0 && x <= 7) {
  final_grade = grade * pow(0.9, x);
} else {
   final_grade = 0;
}
```

## 可选Pass集合

### 集合1

从`dce`和`constprop`中选择一个

#### dce

位于`lib/Transforms/Scalar/DCE.cpp`

该Pass会进行死代码删除

#### constprop

位于` lib/Transforms/Scalar/ConstantProp.cpp`

 该Pass会执行简单的常量传播。

### 集合2

从`adce`和`tailcallelim`中选择一个

#### adce

位于`lib/Transforms/Scalar/ADCE.cpp`

该Pass使用了更加激进的方式删除死代码

#### tailcallelim

位于`lib/Transforms/Scalar/TailRecursionElimination.cpp`

该Pass优化了尾递归

## opt使用示例

```bash
# generate LLVM IR
# 1. use clang
# clang generated .ll has "optnone" attribute, you should delete it first
clang -S -emit-llvm test.c
# 2. use cminusc
cminusc -emit-llvm test.cminus

# use opt to optimize IRs
# use -print-after-all to see the optimization result of each pass
# use -o <opt-file> to dump optimized IRs to <opt-file>
opt test.ll -<opt-name1> -<opt-name2> ... -S
```

## 如何在lab3-1的编译器中加入优化？

本次实验可以完全使用C语言和LLVM的工具链完成。但是也有些同学可能想要在自己的cminus编译器中加入优化。框架的[这里](http://210.45.114.30/staff/compiler_cminus/blob/master/lab3-1/src/cminusc/main.cpp#L132-135)有这样几行代码：

```cpp
auto PI = Registry->getPassInfo(std::string("dce"));
auto P = PI->getNormalCtor()();
PM.add(P);
```

去掉注释后，即可运行。这里添加了`dce`这个pass，可以按照需求更换字符串来得到别的pass，并且也可以根据自己的需求修改代码使得优化更加灵活。
