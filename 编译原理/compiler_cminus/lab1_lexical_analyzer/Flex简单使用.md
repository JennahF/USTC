# Flex简单使用

Flex在Linux环境下很容易获取，其使用也十分简单，根据以下步骤，你将明白如何安装并使用Flex完成你的第一个词法分析器。

## 安装Flex

在Ubuntu环境下: 

```bash
sudo apt-get install flex
```

在CentOS环境下 (CenotOS一般自带Flex):

```bash
sudo yum install flex flex-devel
```

推荐Flex版本应大于2.5.34, 测试是否安装成功

```bash
[TA@TA example]$ flex --version
flex 2.5.37
```

## 使用Flex

我们以一个简单的单词数量统计的程序wc.l为例: 

```c
%{
//在%{和%}中的代码会被原样照抄到生成的lex.yy.c文件的开头，您可以在这里书写声明与定义
#include <string.h>
int chars = 0;
int words = 0;
%}

%%

[a-zA-Z]+ { chars += strlen(yytext);words++;}
 /*你可以在这里使用你熟悉的正则表达式来编写模式*/
 /*你可以用C代码来指定模式匹配时对应的动作*/
 /*yytext指针指向本次匹配的输入文本*/

. {}
 /*对其他所有字符，不做处理，继续执行*/

%%

int main(int argc, char **argv){
    yylex();
    //yylex()是flex提供的词法分析例程，默认读取stdin                                                                     
    printf("look, I find %d words of %d chars\n", words, chars);
    return 0;
}
```

使用Flex生成lex.yy.c

```bash
[TA@TA example]$ flex wc.l 
[TA@TA example]$ gcc lex.yy.c -lfl
[TA@TA example]$ ./a.out 
hello world
^D
look, I find 2 words of 10 chars
[TA@TA example]$ 
```

*注: 在以stdin为输入时，需要按下ctrl+D以退出* 

至此，你已经成功使用Flex完成了一个简单的分析器！

关于Flex的更为复杂的操作，可以参考实验提供的框架代码，框架代码已经帮你定义好了token_type，给出了循环读取yylex()和修改yyin指针读取文件的例子，相信你已经完全具备了完成整个实验的所有知识(确信)。

剩下的实验，就看你操作啦！
