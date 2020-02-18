# Lab3-0 预热实验

## 目录

- [Lab3-0 预热实验](#lab3-0-%e9%a2%84%e7%83%ad%e5%ae%9e%e9%aa%8c)
  - [目录](#%e7%9b%ae%e5%bd%95)
  - [0. 实验要求](#0-%e5%ae%9e%e9%aa%8c%e8%a6%81%e6%b1%82)
    - [0.1 看这里!你需要做的事情](#01-%e7%9c%8b%e8%bf%99%e9%87%8c%e4%bd%a0%e9%9c%80%e8%a6%81%e5%81%9a%e7%9a%84%e4%ba%8b%e6%83%85)
    - [0.2 目录结构](#02-%e7%9b%ae%e5%bd%95%e7%bb%93%e6%9e%84)
  - [1. 环境准备](#1-%e7%8e%af%e5%a2%83%e5%87%86%e5%a4%87)
    - [1.1 **注意**](#11-%e6%b3%a8%e6%84%8f)
    - [1.2 下载LLVM 8.0.1源码并编译](#12-%e4%b8%8b%e8%bd%bdllvm-801%e6%ba%90%e7%a0%81%e5%b9%b6%e7%bc%96%e8%af%91)
  - [2. 你的LLVM IR学习:一个简单的C例子](#2-%e4%bd%a0%e7%9a%84llvm-ir%e5%ad%a6%e4%b9%a0%e4%b8%80%e4%b8%aa%e7%ae%80%e5%8d%95%e7%9a%84c%e4%be%8b%e5%ad%90)
    - [2.1 一个简单的C例子-四个更简单的C例子的前奏](#21-%e4%b8%80%e4%b8%aa%e7%ae%80%e5%8d%95%e7%9a%84c%e4%be%8b%e5%ad%90-%e5%9b%9b%e4%b8%aa%e6%9b%b4%e7%ae%80%e5%8d%95%e7%9a%84c%e4%be%8b%e5%ad%90%e7%9a%84%e5%89%8d%e5%a5%8f)
    - [2.2 机器翻译-你手工翻译的前奏](#22-%e6%9c%ba%e5%99%a8%e7%bf%bb%e8%af%91-%e4%bd%a0%e6%89%8b%e5%b7%a5%e7%bf%bb%e8%af%91%e7%9a%84%e5%89%8d%e5%a5%8f)
    - [2.3 助教的cpp翻译-你cpp翻译的前奏](#23-%e5%8a%a9%e6%95%99%e7%9a%84cpp%e7%bf%bb%e8%af%91-%e4%bd%a0cpp%e7%bf%bb%e8%af%91%e7%9a%84%e5%89%8d%e5%a5%8f)
  - [3. 你的LLVM IR实践:四个更简单的C例子](#3-%e4%bd%a0%e7%9a%84llvm-ir%e5%ae%9e%e8%b7%b5%e5%9b%9b%e4%b8%aa%e6%9b%b4%e7%ae%80%e5%8d%95%e7%9a%84c%e4%be%8b%e5%ad%90)
    - [3.1 四个更简单的C例子](#31-%e5%9b%9b%e4%b8%aa%e6%9b%b4%e7%ae%80%e5%8d%95%e7%9a%84c%e4%be%8b%e5%ad%90)
      - [3.1.1 赋值:`assign.c`](#311-%e8%b5%8b%e5%80%bcassignc)
      - [3.1.2 条件:`if.c`](#312-%e6%9d%a1%e4%bb%b6ifc)
      - [3.1.3 循环:`while.c`](#313-%e5%be%aa%e7%8e%afwhilec)
      - [3.1.4 调用:`call.c`](#314-%e8%b0%83%e7%94%a8callc)
    - [3.2 你的手工翻译](#32-%e4%bd%a0%e7%9a%84%e6%89%8b%e5%b7%a5%e7%bf%bb%e8%af%91)
    - [3.3 你的cpp翻译](#33-%e4%bd%a0%e7%9a%84cpp%e7%bf%bb%e8%af%91)

## 0. 实验要求
本次实验是Lab3的预热实验,依旧是个人实验,从Lab3-1开始将是组队实验  
本次实验的目的是让大家熟悉LLVM IR,以及如何用cpp调用LLVM IR库来生成LLVM IR中间表示
### 0.1 看这里!你需要做的事情

* 1. 环境准备,参考[环境准备](#1-%e7%8e%af%e5%a2%83%e5%87%86%e5%a4%87)这一节
* 2. 通过大致阅读[10/14课上的LLVM IR相关介绍](http://210.45.114.30/gbxu/notice_board/uploads/687bb53f37e5bc96bae3c2c27abe0460/llvm_ir%E5%8F%8A%E5%B7%A5%E5%85%B7%E9%93%BE%E4%BB%8B%E7%BB%8D.pdf),以及[官方LLVM IR参考文档](http://llvm.org/docs/LangRef.html#abstract),简单了解一下LLVM及LLVM IR基本知识.注意不要马上陷入到细节中
* 3. 阅读[2.1 一个简单的C例子-四个更简单的C例子的前奏](#21-%e4%b8%80%e4%b8%aa%e7%ae%80%e5%8d%95%e7%9a%84c%e4%be%8b%e5%ad%90-%e5%9b%9b%e4%b8%aa%e6%9b%b4%e7%ae%80%e5%8d%95%e7%9a%84c%e4%be%8b%e5%ad%90%e7%9a%84%e5%89%8d%e5%a5%8f)和[2.2 机器翻译-你手工翻译的前奏](#22-%e6%9c%ba%e5%99%a8%e7%bf%bb%e8%af%91-%e4%bd%a0%e6%89%8b%e5%b7%a5%e7%bf%bb%e8%af%91%e7%9a%84%e5%89%8d%e5%a5%8f),理解机器生成的.ll文件,
* 4. 阅读[2.3 助教的cpp翻译-你cpp翻译的前奏](#23-%e5%8a%a9%e6%95%99%e7%9a%84cpp%e7%bf%bb%e8%af%91-%e4%bd%a0cpp%e7%bf%bb%e8%af%91%e7%9a%84%e5%89%8d%e5%a5%8f),参考由助教编写的`gcd_generator.cpp`程序.这个程序会生成与上述例子相同逻辑的.ll文件.这会是你们后续将参考多次的程序
* 5. 根据[3.2 你的手工翻译](#32-%e4%bd%a0%e7%9a%84%e6%89%8b%e5%b7%a5%e7%bf%bb%e8%af%91)要求,手工编写对应的.ll文件,**注意添加必要的注释**
* 6. 根据[3.3 你的cpp翻译](#33-%e4%bd%a0%e7%9a%84cpp%e7%bf%bb%e8%af%91)的要求,编写对应的cpp程序,通过cpp的LLVM库来生成对应的.ll文件,注意代码风格及必要的**注释**
* 7. 在`doc/`目录修改lab3-0_report.md,以描述你的代码片段和每一个BasicBlock的对应关系,可以附上代码注释,并描述在实验中遇到的问题、分析和解决方案
* 8. 在`doc/`目录增加team.txt,以提交组队信息.请参考 [组队规则](http://210.45.114.30/gbxu/notice_board/issues/140).记录队伍每个人的姓名学号,并指明队长,Lab3后续实验将在队长的仓库中提交

### 0.2 目录结构
```
- <your repo>
  ...
  | lab3-0/                    
    | gcd_generator.cpp     助教编写的cpp程序,不用修改
>>  | assign_generator.cpp  你编写的cpp程序,注意添加必要的注释
>>  | if_generator.cpp      你编写的cpp程序,注意添加必要的注释
>>  | while_generator.cpp   你编写的cpp程序,注意添加必要的注释
>>  | call_generator.cpp    你编写的cpp程序,注意添加必要的注释
>>  | assign_hand.ll        手工编写的LLVM IR文件,注意添加必要的注释
>>  | if_hand.ll            手工编写的LLVM IR文件,注意添加必要的注释
>>  | while_hand.ll         手工编写的LLVM IR文件,注意添加必要的注释
>>  | call_hand.ll          手工编写的LLVM IR文件,注意添加必要的注释
>>  | doc/                  
>>    |lab3-0.md            通过文档,描述你的代码片段和每一个BasicBlock的对应关系,可以附上代码注释,并描述在实验中遇到的问题、分析和解决方案
>>    |team.txt             记录队伍每个人的姓名学号,如果是三人队伍,请指明队长,Lab3后续实验将在队长的仓库中提交;如果是两人队伍,请指明一个同学,Lab3后续实验将在该同学仓库中提交
```

## 1. 环境准备
### 1.1 **注意**
* Lab3用到的LLVM版本限制为`8.0.1`,这是考虑到稳定性以及各版本之间API的细微差别而采取的限制  
* 这里用到的系统,假设为`Ubuntu 16.04`或`Ubuntu 18.04`,我们推荐大家(尤其是不太熟悉Linux的同学)采用这个系统.如果你实在想采用其他系统,请自行准备好环境,但是在实验提交中应避免对其他Linux/MacOS发行版环境的依赖
### 1.2 下载LLVM 8.0.1源码并编译
* Step 1) 首先是一些必要依赖的安装
  ``` bash
  sudo apt-get install -y cmake xz-utils build-essential wget
  ```
* Step 2) 在仓库之外,选择好你的工作目录,下载源码,最后得到名为llvm的目录
  ``` bash
  # 下载
  wget https://github.com/llvm/llvm-project/releases/download/llvmorg-8.0.1/llvm-8.0.1.src.tar.xz
  wget https://github.com/llvm/llvm-project/releases/download/llvmorg-8.0.1/cfe-8.0.1.src.tar.xz
  # 解压缩
  tar xvf llvm-8.0.1.src.tar.xz
  mv llvm-8.0.1.src llvm
  tar xvf cfe-8.0.1.src.tar.xz
  mv cfe-8.0.1.src llvm/tools/clang
  ```
* Step 3) 编译并安装.这里在内存及硬盘充足的条件下,推荐`Debug`配置的编译,这更能让你体验"较大的项目"的编译过程.否则请采用`Release`配置的编译
  ``` bash
  mkdir llvm-build && cd llvm-build
  # Release
  cmake ../llvm -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=`cd .. && pwd`/llvm-install
  # Debug
  cmake ../llvm -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=`cd .. && pwd`/llvm-install
  # 编译安装,下面的N表示的是你采取的同时执行的编译任务的数目.你需要将其替换为具体的数值,如8,4,1
  # 如果内存充足,一般推荐将N设置为cpu核数的2倍,如果未指明N,将会尽可能多地并行编译
  make -jN install
  # 这一过程可能有半小时至两小时不等,如果内存不足,可以尝试减小N并重新make,已经编译好的部分不会重新编译
  ```
* Step 4) 配置PATH,使得生成的二进制文件方便使用.配置PATH在以后的工作中也会是经常用到的,希望大家熟练掌握(或者至少熟练如何搜索)
  ``` bash
  # 将llvm-install/bin目录的完整路径,加入到环境变量PATH中
  # 假设该完整路径为the_path_to_your_llvm-install_bin,
  # 如果你的默认shell是zsh,可以在~/.zshrc中加入一行:
  export PATH=the_path_to_your_llvm-install_bin:$PATH
  # 然后执行
  source ~/.zshrc
  # 如果你的默认shell是bash,欢迎自行google/baidu

  # 最后,检查PATH配置是否成功,执行命令:
  llvm-config --version
  # 成功标志:
  8.0.1 #或类似
  # 失败标志:
  zsh: command not found: llvm-config #或类似
  ```
## 2. 你的LLVM IR学习:一个简单的C例子
### 2.1 一个简单的C例子-四个更简单的C例子的前奏
* 下面是一个简单的C例子,假设文件名为`gcd.c`:
  ``` c
  int gcd (int u, int v) { /* calculate the gcd of u and v */
    if (v == 0) return u;
    else return gcd(v, u - u / v * v); /* v,u-u/v*v is equals to u mod v*/
  }
  int main() {
    int x; int y; int temp;
    x = 72;
    y = 18;
    if (x<y) {
      temp = x;
      x = y;
      y = temp;
    }
    return gcd(x,y);
  }
  ```
### 2.2 机器翻译-你手工翻译的前奏
* 参考并理解通过`clang -S -emit-llvm gcd.c`生成的LLVM IR文件`gcd.ll`
* 你可以通过`lli gcd.ll`来测试执行结果的正确性.执行结果可以在shell中通过`echo $?`来查看:
  ``` bash
  $ lli gcd.ll
  $ echo $? # $?得到的是上一个命令的返回结果
  > 18
  ```
### 2.3 助教的cpp翻译-你cpp翻译的前奏
* 为了后续通过cpp自动根据AST生成LLVM IR文件,你需要先学会用cpp直接生成LLVM IR文件
* 你需要参考助教编写的[`gcd_generator.cpp`](gcd_generator.cpp),程序会生成与`gcd.ll`相同逻辑的LLVM IR表示
* 你可以通过下面这两行命令得到LLVM IR表示,这是你后面要用到的:
  ``` bash
  c++ gcd_generator.cpp -o gcd_generator `llvm-config --cxxflags --ldflags --libs --system-libs` --std=c++14
  ./gcd_generator
  ```

## 3. 你的LLVM IR实践:四个更简单的C例子
### 3.1 四个更简单的C例子
#### 3.1.1 赋值:`assign.c`
``` c
int main(){
  int a;
  a = 1;
  return a;
}
```
#### 3.1.2 条件:`if.c`
``` c
int main(){
  if(2 > 1)
    return 1;
  return 0;
}
```
#### 3.1.3 循环:`while.c`
``` c 
int main(){
  int a;
  int i;
  a = 10;
  i = 0;
  while(i < 10){
    i = i + 1;
    a = a + i;
  }
  return a;
}
```
#### 3.1.4 调用:`call.c`
``` c
int callee(int a){
  return 2 * a;
}
int main(){
  return callee(10);
}
```

### 3.2 你的手工翻译
* 查看[官方LLVM IR参考文档](http://llvm.org/docs/LangRef.html#abstract),手工编写属于你自己的`assign_hand.ll`,`if_hand.ll`,`while_hand.ll`,`call_hand.ll`,以实现与上述四个C程序相同的逻辑功能,**注意添加必要的注释**,(`.ll`文件的注释是以";"开头的)
* 必要的情况下,你可以参考`clang -S -emit-llvm`的输出,但是你提交的结果应避免同此输出一字不差
* 我们会用`lli`检查你结果的正确性,并用肉眼检查你的注释

### 3.3 你的cpp翻译
* 在阅读完[2.3 助教的cpp翻译-你cpp翻译的前奏](#23-%e5%8a%a9%e6%95%99%e7%9a%84cpp%e7%bf%bb%e8%af%91-%e4%bd%a0cpp%e7%bf%bb%e8%af%91%e7%9a%84%e5%89%8d%e5%a5%8f)之后,你需要编写四个cpp程序以分别生成与上述四个C程序相同逻辑功能的.ll文件,**注意添加必要的注释**,c++版本限制为**c++14**,文件名为`assign_generator.cpp`,`if_generator.cpp`,`while_generator.cpp`,`call_generator.cpp`
* 在编写cpp程序的时候,还可以结合我们8.0.1的版本,参考[10/14课上的LLVM IR相关介绍](http://210.45.114.30/gbxu/notice_board/uploads/687bb53f37e5bc96bae3c2c27abe0460/llvm_ir%E5%8F%8A%E5%B7%A5%E5%85%B7%E9%93%BE%E4%BB%8B%E7%BB%8D.pdf),以及[官方LLVM IR参考文档](http://llvm.org/docs/LangRef.html#abstract)
* 注意不要陷入到手册里的细节里面而倍感烦恼暴躁哦,注意筛选所需要的信息
* 在Lab3-0的最后,**强烈建议**同学们采用带有`AutoComplete`插件的编辑器(比如VS Code的`IntelliSense`插件等)进行Lab3实验中cpp程序的编写.配置好`AutoComplete`之后,代码编写效率可以得到极大的提升,尤其是在对LLVM IR的各个API不是那么熟悉的情况下.为了配置`AutoComplete`,你需要用到的LLVM相关头文件在`llvm-install/include`中可以找到.
* 最后送大家一句话:  
  *"别人配了AutoComplete,coding只花半小时;  
  你没有配AutoComplete,找对method要花2小时,debug又花3小时,肯定哭唧唧!"*
