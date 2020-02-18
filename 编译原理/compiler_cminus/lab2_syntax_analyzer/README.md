Lab 2 is designed by Xinyang Shao @TA.Daniel, Youhui Bai @Bai. Any questions or feed back, please tell us on [issue board](http://210.45.114.30/gbxu/notice_board/-/boards).

# Assignment
Use **Bison** (Reference [here](http://210.45.114.30/staff/compiler_cminus/blob/master/lab2_syntax_analyzer/Bison_Tutorial.md)) to build up a **syntax analyzer** for [C-](http://210.45.114.30/staff/compiler_cminus/blob/master/CMINUS.md).

# What is new in Lab 2
To avoid messy source code directories, we occupy **CMake** tool to manage source code in this file. **NOTE: It is not compulsory for you to understand grammar of CMake.** We have already finished CMake rules in this repository. Follow our instructions, you do not need to care about the annoying source code dependency. However, if you want to add new source code files, CMake configuration files have to be modified at your own risk.

## CMake
### How to install
How to install CMake on your Linux desktop? Just get it in your mirror. As for Ubuntu, run:
```
(shell) $ sudo apt-get install cmake
```
Commands for other Linux distributions are similar.

### How to build up my project
**CMake** is a tool designed for generating `Makefile` files. Here we generate executables, libraries, etc. in a separate directory called `build` to avoid source code directory pollution. To simplify what you need to do, just run `do_cmake.sh` shell script:
```
(shell) $ ./do_cmake.sh
```
Now you have your `build` directory. Just run `make` in that directory: (no need to change directory, `-C` option means that)
```
(shell) $ make -C build/
```
Now everything is OK! No need to bother with command `bison xxx` or `flex xxx` again.

### Troubleshooting
We have written rules for **CMake** to check packages before generating `Makefile` file. **You must have g++, Flex and Bison installed on your system**. If any other problems show up, try to solve it yourself. Talking on board is also welcome.

## Rearranged source code
It is never a good idea to put all your codes into one big file when the project is beyond a few lines. In Lab1, we tried to put it together for you since it could be much easier. Now we have more code, and have to make some changes.

**IMPORTANT: source code files of Lab1 have been splited into multiple modules.** Now they works like this:

Original structure of `lexical_analyzer.l`:
```
(header files declaration)
(global variables)
(definition of token type)

(flex patterns and operations)

(function analyzer for lab1)
(function getAllTestcase)
(function main for lab1)
```
We have the following changes:
 - Move definition of token type to `lexical_analyzer.h` header file for both lab1 and lab2 to access this definition
 - Move definition of function `getAllTestcase` to `common` module for lab1, lab2 and all future labs to better access this function. This function is declared in `common.h` and implemented in `common.c`. As a result, your implementation should be moved to `common.c` as well.
 - Rename `main` in Lab1 as `lex_main`. There is only 1 `main` function allowed per executable. Since we use lexical analyzer as a module in the future, we keeps back its right to have `main`. However, we do not mean giving up debugging or testing lab1. Another file `test_lex.c` is added into this subdirectory, which invokes `lex_main` to do the same thing. (However this file is not occupied in the lexical module in the future) The output executable is `build/test_lex`

## About lab2 itself
### Introduction
**Bison** grammar is very similar to **Flex** grammar, which could be easily learnt from the tutorial case.

You need to transform all C- productions to Bison rules. Hint: one of the productions given in Lab1 has ambiguity, could you find it out with Bison? (NOT REQUIRED BUT RECOMMENED to do this. However, the first one who gives out the answer with issues on the notice board will get bonus points for this course. Just race!)

Your goal is to generate a syntax tree for each input file. The procedures are similar to Lab1. As we mentioned above, we use `getAllTestcase` to get all input file names, and then we invoke `syntax` function to analyze that file. The output should be printed out to `FILENAME.syntax_tree` file in `syntree` directory.

### Syntax Tree
Now we have implemented syntax tree structure for you in `syntax_tree` module (under the root directory of your repository), with header file `syntax_tree/SyntaxTree.h` included in `syntax_analyzer.y`. The `syntax_tree` module is very ordinary for a single tree. We just help you with the `printSyntaxTree` method for you to generate output to `FILENAME.syntax_tree` file.

### Output Executable
Executable is at `build/test_syntax`.

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
