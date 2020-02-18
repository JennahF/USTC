# 关于实验

目前USTC的编译原理实验课程，围绕1980年代PL/0语言进行设计实现。PL/0是专门面向编译原理课程实验的语言，具有定义简单、结构明晰等特点。对于USTC的学生而言，目前基于PL/0语言的实验设计存在以下几个需要进行版本更新的原因：

1. USTC学生的基础能力普遍高于国内高校EECS专业同期学生。PL/0课程实验相对而言比较简单，缺乏足够的挑战性。
2. 过去十年学术界及工业界的编译技术及系统实现都有了长足发展。一方面编译技术的应用领域越来越广泛，另一方面新系统的技术门槛在逐步降低。LLVM、TVM等基于模块设计思想的开源系统，让学生直接涉足和参与当前世界一流的编译系统实现成为可能。
3. 编译系统开发属于复杂软件的开发，即使是一学期的实验设计，也需要或值得引入软件过程管理。近十年来，适合小团队的软件开发方法论，例如极限编程（XP）、Scrum、kanban 等方法被提出和广泛接受。在课程设计中，可以将软件开发的技能也纳入到教学的目标范围。让学生通过一门课程设计的实践，获得多维度的能力培养和提升。

基于以上环境的变化，尝试对编译课程的内容进行以下的扩充和更新：

1. 软件开发过程方面：从 pre lab 开始，就引入敏捷开发的软件过程管理方法。通过内部 gitlab 提供需要的流程支持。通过 gitlab 以及例如 slack / discuss 等讨论渠道，收集学生在小组开发中遇到的各类问题及解决过程。按照小组进行开发，明确开发团队中各个成员的负责范围，并将开发、集成、测试、部署等过程通过流程设计可视化。
2. 编译技术方面：从 lab 1 词法分析开始，扩展语言的表达范围
3. 业界前沿方面：将 TVM 等行业目前先进的计算框架的构建思想引入课程实验中。一方面，参考TVM架构使用到的各类编译技术，在扩展数据结构及内置计算类型、以及自动推导等高级内容；另一方面，可以作为高级实验内容，直接将学习的编译技术用于 TVM 等工业级算法框架的扩展与功能实现。
4. 代码质量保证方便：可以开发自动测试和bug寻找工具，用于验证作业代码的正确性。可以开发代码风格的鉴别工具，用于后续的成绩评定。


## 本学期“编译原理”课程实验目标
* 了解flex，bison，risc-v_llvm工具链
* 贯通高级程序语言，编译原理，计算机组成原理，微机系统与接口技术等多门专业课程

## TODO
1. fork本项目，fork后将自己的仓库的项目[设为private](http://210.45.114.30/gbxu/notice_board/issues/52)
2. 按照要求完成每次实验

# BUILD
**CMake** is a tool designed for generating `Makefile` files. Here we generate executables, libraries, etc. in a separate directory called `build` to avoid source code directory pollution. To simplify what you need to do, just run `do_cmake.sh` shell script:
```
(shell) $ ./do_cmake.sh
```
Now you have your `build` directory. Just run `make` in that directory: (no need to change directory, `-C` option means that)
```
(shell) $ make -C build/
```
Now everything is OK! No need to bother with command `bison xxx` or `flex xxx` again.

## Troubleshooting
We have written rules for **CMake** to check packages before generating `Makefile` file. **You must have g++, Flex and Bison installed on your system**. If any other problems show up, try to solve it yourself. Talking on board is also welcome.

# FAQ: How to merge upperstream remote branches
This question has been talked about in issue #33. In brief, you need another alias for upstream repository (we assume you are now in your local copy of forked repository on Gitlab):
```
(shell) $ git remote add upstream git@210.45.114.30:staff/compiler_cminus.git
```
Then try to merge remote commits to your local repository:
```
(shell) $ git pull upstream master
```
Then synchronize changes to your forked remote repository:
```
(shell) $ git push origin master
```
