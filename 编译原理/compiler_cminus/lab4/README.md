# lab4 

###### <u>deadline: 12月21日23:59:59</u>

### 实验要求

本次实验主要包含以下几方面的内容：



#### 1. RISC-V 机器代码的生成和运行 (40pt)

- 参考[此文档](./doc/riscv_backport_llvm8.md)，对LLVM 8.0.1 进行配置使其支持RISC-V后端 (10pt)。
- 将[lab3-0中助教提供的LLVM IR样例](./doc/gcd.md) 进一步生成为RISC-V源码 （如果感兴趣，可以阅读 [RISC-V指令集的介绍](./doc/RISC-V-Reader-Chinese-v2p1.pdf)）(15pt)。
- 安装模拟器并运行RISC-V源码。模拟器使用 *Spike* RISC-V模拟器。安装的步骤请参考[Spike的github文档](https://github.com/riscv/riscv-isa-sim/)。(15pt)
- 以 *报告* 的形式总结上述实验过程。



#### 2. LLVM源码阅读与理解 (60pt)

- 仔细阅读LLVM源码中 [*RegAllocFast.cpp*](https://github.com/llvm-mirror/llvm/blob/master/lib/CodeGen/RegAllocFast.cpp) 代码段，并回答如下几个问题：
  - *RegAllocFast* 函数的执行流程 (10pt)；
  - *allocateInstruction* 函数有几次扫描过程以及每一次扫描的功能 (15pt)；
  - *calcSpillCost* 函数的执行流程 (10pt)；
  - *hasTiedOps*，*hasPartialRedefs，hasEarlyClobbers* 变量的作用 (15pt)。

- 仔细阅读龙书 *Code Generation* 一章中关于寄存器选择和分配的内容（ *Design of the Function getReg* 小节，没有书的同学可以点[这里](./doc/design_of_the_function_getreg.pdf)获取电子版章节内容）。

- 分析总结书上所讲的算法与LLVM源码中的实现之间的不同点，解释一下为什么要有这样的不同（一点即可）(10pt)。

  

### 提交内容

- `report/report.md` :  [*report.md*](./report/report.md) 中包含本次实验实验第一部分 *RISC-V 机器代码的生成和运行* 和第二部分 *LLVM源码阅读与理解* 的报告内容。




### 迟交规则

迟交请邮件提醒TA：

- 邮箱：`wangjwchn@yahoo.com` 
- 邮件主题：lab4-迟交-学号
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
