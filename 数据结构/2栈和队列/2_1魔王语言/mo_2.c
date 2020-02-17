#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_STACK_SIZE 100
#define STACK_INCREMENT 10 
#define LINE 50

typedef struct {
	char* base;
	char* top;
	int stacksize;
}SqStack;

typedef struct {
	char* base;
	char* front;
	char* rear;
}SqQueue;//顺序队列，非循环 

char* Mlan;
int Index;
int QueueSize;
int Queue_flag;
char X;
char* Xrule;

void ProcessTop(SqStack* S);

void initStack(SqStack* S) {
	S->stacksize = MAX_STACK_SIZE;
	S->base = (char*)malloc(sizeof(char)*S->stacksize);
	S->top = S->base;
	return;
}

void incrementStack(SqStack* S) {
	S->base = (char*)realloc(S->base, sizeof(char)*(S->stacksize + STACK_INCREMENT));
}

void Push(SqStack* S, char m) {
	if ((S->top - S->base) == S->stacksize) incrementStack(S);
	*S->top = m;
	S->top++;
	ProcessTop(S);
	return;
}

char GetTop(SqStack* S) {
	if (S->base == S->top) return '#';
	else return *(S->top - 1);
}

char Pop(SqStack* S) {
	if (S->base == S->top) return '#';
	else {
		S->top--;
		return *(S->top);
	}
}

void initQueue(SqQueue* Q) {
	Q->base = (char*)malloc(sizeof(char)*QueueSize);
	Q->front = Q->base;
	Q->rear = Q->base;
	return;
}

void EnQueue(SqQueue* Q, char e) {
	*Q->rear = e;
	Q->rear++;
	return;
}

char DeQueue(SqQueue* Q) {
	char e = *Q->front;
	Q->front++;
	return e;
}

void Push_s(SqStack* S, char* str){
	int i;
	for(i=strlen(str)-1;i>=0;i--){
		Push(S,str[i]);
	}
}

void ProcessTop(SqStack* S) {
	char e = GetTop(S);
	if (e == '(') Queue_flag = 0;//处理‘（’后第一个字母为大写的情况
	if (!Queue_flag) {
		if ('a' <= e && e <= 'z') return;
		else if (e == 'A') {
			Pop(S);
			Push(S, 'e');
			Push(S, 'a');
			Push(S, 's');
			return;
		}
		else if (e == 'B') {
			Pop(S);
			Push(S, 'A');
			Push(S, 'd');
			Push(S, 'A');
			Push(S, 't');
		}
		else if (e == ')') {
			Queue_flag = 1;
		}
		else if (e == '(') {
			if (QueueSize) {
				Queue_flag = 0;
				SqQueue Q;
				initQueue(&Q);
				Pop(S);
				e = Pop(S);
				char theta = e;
				while (e != ')') {
					EnQueue(&Q, e);
					e = Pop(S);
				}
				DeQueue(&Q);
				Push(S, theta);
				while (Q.front != Q.rear) {
					Push(S, DeQueue(&Q));
					Push(S, theta);
				}
				free(Q.base);
				QueueSize = 0;
			}
			else {//处理（）（）
				Pop(S);
				Pop(S);
			}
		}
		else if(e == X){
			Pop(S);
			Push_s(S, Xrule);
		}
		else if(e == '\n'){
			Pop(S);
		}
		else {
			printf("\n%c appears in the stack", e);
		}
	}
	else {
		QueueSize++;//记录（）内有多少个	
	}
	
}

	/*命令行输入模式
	mo_1.exe 输入文件名 输出文件名 新规则表达式左部 新规则表达式右部 
	*/
	
int main(int argc, char* argv[]) {


	FILE* fr = fopen(argv[1], "r");
	FILE* fw = fopen(argv[2], "w"); 
	
	X = argv[3][0];
	Xrule = (char*)malloc(sizeof(char)*strlen(argv[4]));
	strcpy(Xrule, argv[4]);
	
	if(!fr || !fw){
		printf("read file open failed!\n");
		return 0;
	}
	char s[50];
	while(fgets(s, LINE, fr)){
		puts(s);
		Mlan = (char*)malloc(sizeof(char)*strlen(s));
		strcpy(Mlan, s);
		SqStack S;
		initStack(&S);
		int len = strlen(Mlan);
		Index = len - 1;
		char e;
		while (Index >= 0) {
			Push(&S, Mlan[Index]);
			Index--;
		}
		while (S.base != S.top) fputc(Pop(&S), fw);
		fputc('\n', fw);
	}
	fclose(fr);
	fclose(fw);
	free(Xrule);
	return 0;
}
