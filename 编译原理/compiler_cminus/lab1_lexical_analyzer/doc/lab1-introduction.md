# lab1_lexical_analyzer
PB17111623 范睿
## 正则定义设计	
空格

	delim [\t]		tab键
	ws {delim}+		多个tab
	
	%%
	{ws}	{return BLANK;}
	" "		{return BLANK;}
	%%

标识符与数字
	
	letter [A-Z|a-z]
	ID {letter}{letter}*
	NUM {digit}{digit}*
	%%
	{ID}	{return IDENTIFIER;}
	{NUM}	{return NUMBER;}
	%%

换行符

	eol [\n]
	%%
	{eol}	{return EOL;}
	%%

## 翻译规则
关键词

	%%
	"int"		{return INT;}
	"return"	{return RETURN;}
	"if"		{return IF;}
	"else"		{return ELSE;}
	"void"		{return VOID;}
	"while"		{return WHILE;}
	%%
	
运算符等

	%%
	"+"	{return ADD;}
	"-"	{return SUB;}
	"*"	{return MUL;}
	"/"	{return DIV;}
	......
	%%
	
注释
	
	%%
	"/*"	{return COMMENT;}
	"*/"	{return COMMENT;}
	%%
	
数组

	%%
	"[]"	{return ARRAY;}
	%%
	
## 细节实现
### getAllTestcase（）
利用dirent.h中的DIR，struct dirent类型，opendir()和readdir()函数。

首先，定义一个指向文件夹等指针和一个文件等入口。
```
DIR *dir;
struct dirent *entry;
```
其次，用opendir()函数打开./testcase文件夹。
```
if((dir=opendir("./testcase"))==NULL){
	printf("fail to open directory");
	exit(0);
}
```	
然后，用readdir()函数依次指向每个文件。
```
while(entry=readdir(dir)){
	/*visit every file in sequence*/
}
closedir(dir);
```
最后，读取entry指向的文件的名字，找到以.cminus结尾的文件，将其名字存入数组。(此段代码为while循环等主体)
其中，ex = “.cminus”
```
len=strlen(entry->d_name);
if(len>7){
int x=strncmp(&(entry->d_name[len-7]),ex,6);
	if(x==0){
		files_count++;
		strcpy(filename[i],entry->d_name);
		i++;
	}
}
```
### analyzer()
此函数的功能是不断调用yylex()函数进行匹配，將匹配的结果（yytext）进行分析，存入文件。（这里只放了补全等代码段）
#### 处理注释
```
case COMMENT:{
	if(comment_flag==0&&!strcmp(yytext,"/*")) comment_flag=1;
	else if(comment_flag==1&&!strcmp(yytext,"*/"))comment_flag=0;
	pos_end = pos_start+strlen(yytext);
}
```
设置comment_flag来标志此时是否在注释内。

1. comment_flag初始化为0，当遇到一个“/*”，且comment_flag为0时，表示此时将由非注释代码段进入注释代码段，将comment_flag置为1，不再向文件中写内容（但是pos等计数仍在进行）。

2. 当**comment_flag为1，且遇到了一个“*/”时，表示此时将有注释代码段进入非注释代码断，将comment_flag置位0。

#### 处理空格
```
case BLANK:
	pos_end = pos_start+strlen(yytext);
	break;
```
遇到空格，不做特殊处理，只更新pos_end
#### 处理换行符
```
case EOL:
	lines++;
	pos_start=1;
	pos_end=1;
	break;
```
遇到换行符，先将lines增加1，表示到了新的一行；再将pos_start和pos_end都置位1，表示重新回到一行等开头。

#### 处理其他情况
```
default :
	pos_end = pos_start+strlen(yytext);
	if(!comment_flag) fprintf(fp, "%s\t%d\t%d\t%d\t%d\n",yytext, token, lines, pos_start, pos_end);
```
遇到其他情况时，现更新pos_end，再把当前token的信息记录到文件中。

switch语句结束后，将pos_start置位pos_end，读下一个token，如此进行循环，直到文件末尾。

## 正确样例
```
void main(){
/*int gcd (int u, int v) { 
    if (v == 0) return u;
    else return gcd(v, u - u / v * v); 
}*/
    /**/int a = 5;/**/
	int b[];
	int c = 10;
	c = c+a;
	if(a!=c) b[0] = b[0]+1;
	else b[0] = b[0]-1;
	while(c){
		a = a*a;
		c = c/a;
	}
    return;
}

```
## 错误样例

	I'm in lo^\ with *!!


## 遇到的问题

### .l文件的各部分的意义
刚拿到实验时，不知道.l文件是做什么用的，看到文件中有c代码，但是还有%%...%%这些部分，感觉有点摸不着头脑。然后我试着做了一下仓库中的[Flex的简单使用.md](210.45.114.30/staff/compiler_cminus/blob/master/lab1_lexical_analyzer/Flex简单使用.md)，对于flex的编译，再用gcc编译等整个过程和目的都大概清楚了。
我现在的理解是：

1. %{...%}中包含的代码内容，格式是c代码的样子，flex编译时会把其中的内容原样搬到目标c代码的前部，一般会在%{...%}内部放#include、一些声明、结构体等定义等。
2. %%....%%内部包含翻译规则，由“xxx”	{/\*c code\*/} 这样的形式组织，xxx表示匹配的模式，后面大括号中等内容表示，如果匹配上了前面的模式，要做后面等动作，后面等动作也是用c代码写的。
3. %{...%}和%%....%%之间包含着一些正则式的定义，这个是为了方便在%%...%%内部直接引用，便于阅读。
4. 最后也是一些c代码，这些代码也原样办到目标c代码中。我可以在后面的部分中实现任意我想实现的功能。

文件的执行过程：

从.l文件中最后写的main函数开始执行，如果在执行过程中调用了yylex()，就去识别token，yylex()中做的动作由%%...%%中{}内部的c代码决定。在这个实验中，一旦匹配成功，yylex()将返回匹配上的token的序号。继续执行。

### 正则式和翻译规则在代码中的格式
刚开始写代码时，不知道正则式在%%...%%外部定义完后怎样在其内部引用。
通过查询参考github上其他人的flex代码发现，所有被定义过等正则式在%%...%%内部要用大括号引起来，比如
```
{ws}	{return BLANK;}
```
而所有直接识别得符号，比如加号、减号、int、while等，都要用双引号引起来。比如
```
"+"	{return ADD;}
"int"	{return INT;}
```
### 注释内部出现/*的情况等其他注释的坑
刚开始处理注释的实现不是像现在这样，而是遇到/*和*/都返回COMMENT，然后直接一遇到COMMENT就将comment_flag翻转。但是这样我发现无法处理/\*.../\*...\*/的情况。然后我改进了代码。加入了comment_flag翻转等判断条件。

## 实验用时
从开始做实验到完成报告花了大概6个小时，1个小时了解flex和cminus，2个小时写代码完成基本功能，2个小时debug和判断更多输入情况，1个小时报告。


