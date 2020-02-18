# gcc
本文件夹由@gbxu 提供。不属于实验任务，仅作分享。

```sh
#不妨使用cd命令，到达gcd.c下载到的目录下 
cd 指向gcd.c文件所在的目录的路径
#尝试一下用命令行，会发现注视被移除了，头文件被引入
gcc -E gcd.c -o gcd.i
cat gcd.i
#再继续执行编译，会得到熟悉的汇编语言（如果是GNU使用的是AT&T样式的语法，和Intel的有些许不同。）
gcc -S gcd.i -o gcd.s
cat gcd.s
# 汇编，把助记符(Memoni)换成操作码，把地址符号(Symbol)或标号(Label)换成地址码
gcc -c gcd.s -o gcd.o
od gcd.o
# 链接，得到可执行文件gcd
gcc gcd.o -o gcd
./gcd
#如果感兴趣，还可以了解make, cmake等
```