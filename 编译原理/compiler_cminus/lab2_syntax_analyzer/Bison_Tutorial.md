# Bison简单使用

Bison是一款通用的语法分析生成器，有关介绍以及软件的获取请参考官网

[GNU Bison]: https://www.gnu.org/software/bison/



## 安装Bison

在Ubuntu环境下: 

```bash
sudo apt-get install bison
```

推荐Bison版本3.0.4, 测试是否安装成功

```bash
[TA@TA example]$ bison --version
bison (GNU Bison) 3.0.4
```

## 使用Bison

假设我们要编写一个计算器，能够处理类似1\*2+3\*4+5这种简单的算术表达式，那么:

### 定义产生式

```
expression → factor | expression + factor
factor → NUMBER | factor * NUMBER
```

### Flex代码，词法分析

```c
%{
#include <stdio.h>
enum yytokentype { /*定义token*/
	NUMBER = 258,
	ADD = 259,
	SUB = 260,
	MUL = 261,
	DIV = 262,
	ABS = 263,
	EOL = 264
};
int yylval;
%}

%%
"+"			{ return ADD; }
"-"			{ return SUB; }
"*" 		{ return MUL; }
"/" 		{ return DIV; }
"|" 		{ return ABS; }
[0-9]+		{ yylval = atoi(yytext); return NUMBER; }
\n 			{ return EOL; }
[ \t] 		{ /*空白字符*/ }
.			{ printf("mystery character %c\n", *yytext); }
%%
```

### Bison代码，语法分析

```c
%{
//在%{和%}中的代码会被原样照抄到生成的name.tab.c文件的开头，可以在这里书写声明与定义
#include <stdio.h>
%}

/*声明tokens，告诉bison在语法分析程序中记号的名称*/
%token NUMBER
%token ADD SUB MUL DIV ABS
%token EOL

%%
/*该部分定义规则，C的动作代码在每条规则后用花括号括起*/
calclist: /*空规则*/
	| calclist exp EOL { printf("output = %d\n", $2); }
	;
exp:factor { $$ = $1; }
	| exp ADD factor { $$ = $1 + $3; }
	| exp SUB factor { $$ = $1 - $3; }
	;
factor:term { $$ = $1; }
	| factor MUL term { $$ = $1 * $3; }
	| factor DIV term { $$ = $1 / $3; }
	;
term:NUMBER { $$ = $1; }
	| ABS term { $$ = $2 >= 0 ? $2 : -$2; }
	;
%%

int main(int argc, char **argv){
    yyparse();
    return 0;
}
int yyerror(char *s) {
    fprintf(stderr, "error: %s\n", s);
}
```

每个bison规则中的词法符号都有一个语义值，冒号左边的目标符号的值在动作代码中用$$代替，冒号右边语法符号的语义值依次为$1, $2, ...

### 编写Makefile

```makefile
cal: cal.l cal.y
	bison -d cal.y
	flex cal.l
	gcc -o cal cal.tab.c lex.yy.c -lfl

clean:
	rm -rf cal.tab*
	rm -rf lex.yy.c
	rm -rf cal
```

### 运行测试

```bash
[TA@TA example]$ make cal
[TA@TA example]$ ./cal
1*2+3*4+5
output = 19
```

注: 在以stdin为输入时，需要按下ctrl+D以退出* 

### 总结

至此，你已经成功使用bison完成了一个简单计算器的语法分析，更加复杂的操作请自行查阅资料。



