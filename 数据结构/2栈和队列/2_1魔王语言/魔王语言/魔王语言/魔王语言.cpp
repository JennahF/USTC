// 魔王语言.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_STACK_SIZE 100
#define STACK_INCREMENT 10 

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
		else {
			printf("\n%c appears in the stack", e);
		}
	}
	else {
		QueueSize++;//记录（）内有多少个	
	}
	
}


int main(int argc, char* argv[]) {
	char s[50];
	scanf("%s", s);
	//strcpy(Mlan, argv[1]);
	//Mlan = (char*)malloc(sizeof(char)*strlen(argv[1]));
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
	while (S.base != S.top) printf("%c", Pop(&S));
	return 0;
}

// 运行程序: Ctrl + F5 或调试 >“开始执行(不调试)”菜单
// 调试程序: F5 或调试 >“开始调试”菜单

// 入门提示: 
//   1. 使用解决方案资源管理器窗口添加/管理文件
//   2. 使用团队资源管理器窗口连接到源代码管理
//   3. 使用输出窗口查看生成输出和其他消息
//   4. 使用错误列表窗口查看错误
//   5. 转到“项目”>“添加新项”以创建新的代码文件，或转到“项目”>“添加现有项”以将现有代码文件添加到项目
//   6. 将来，若要再次打开此项目，请转到“文件”>“打开”>“项目”并选择 .sln 文件
