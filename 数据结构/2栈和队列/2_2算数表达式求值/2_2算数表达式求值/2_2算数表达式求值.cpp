// 2_2算数表达式求值.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#define INITSIZE 100
#define INCREMENTSIZE 10

char RelationChart[7][7] =
{ {'>','>', '<', '<', '<', '>', '>'},
{'>','>', '<', '<', '<', '>', '>'},
{'>','>', '>', '>', '<', '>', '>'},
{'>','>', '>', '>', '<', '>', '>'},
{'<', '<', '<', '<', '<', '=', '$'},
{'>','>', '>', '>', '$', '>', '>'},
{'<', '<', '<', '<', '<', '$', '='} };

typedef struct opnd{
	char* base;
	int top;
	int stacksize;
}OPNDstruct;

typedef struct optr{
	int* base;
	int top;
	int stacksize;
}OPTRstruct;

void initOPNDStack(OPNDstruct* S) {
	S->base = (char*)malloc(sizeof(char)*INITSIZE);
	S->top = 0;
	S->stacksize = INITSIZE;
	return;
}

void initOPTRStack(OPTRstruct* S) {
	S->base = (int*)malloc(sizeof(int)*INITSIZE);
	S->top = 0;
	S->stacksize = INITSIZE;
	return;
}

void PushOPND(OPNDstruct* S, char c) {
	if (S->top == S->stacksize - 1) {
		S->base = (char*)realloc(S->base, (S->stacksize + INCREMENTSIZE) * sizeof(char));
		S->stacksize += INCREMENTSIZE;
	}
	S->base[S->top] = c;
	S->top++;
	return;
}

void PushOPTR(OPTRstruct* S, int n) {
	if (S->top == S->stacksize - 1) {
		S->base = (int*)realloc(S->base, (S->stacksize + INCREMENTSIZE) * sizeof(int));
		S->stacksize += INCREMENTSIZE;
	}
	S->base[S->top] = n;
	S->top++;
	return;
}

char GetTopOPND(OPNDstruct* S) {
	return S->base[S->top - 1];
}

int GetTopOPTR(OPTRstruct* S) {
	return S->base[S->top - 1];
}

int Opnd2Int(char a) {
	switch (a) {
	case '+':return 0;
	case '-':return 1;
	case '*':return 2;
	case '/':return 3;
	case '(':return 4;
	case ')':return 5;
	case '#':return 6;
	default:printf("Invalid operand!"); exit(0);
	}
}

char Precede(char a, char b) {
	int indexa = Opnd2Int(a);
	int indexb = Opnd2Int(b);
	return RelationChart[indexa][indexb];
}

char PopOPND(OPNDstruct* S) {
	S->top--;
	return 	S->base[S->top];
}

int PopOPTR(OPTRstruct* S) {
	S->top--;
	return 	S->base[S->top];
}

int Calculate(int n1, char op, int n2) {
	int result = 0;
	switch (op) {
	case '+': result = n1 + n2; break;
	case '-': result = n1 - n2; break;
	case '*': result = n1 * n2; break;
	case '/': if (n2 == 0) printf("Integer division by zero!\n"); exit(0); result = n1 / n2; break;
	default:printf("Invalid Operand!"); break;
	}
	return result;

}



int main()
{
	struct opnd* OPND = NULL;//operand
	struct optr* OPTR = NULL;//operator
	OPND = (OPNDstruct*)malloc(sizeof(OPNDstruct));
	OPTR = (OPTRstruct*)malloc(sizeof(OPTRstruct));
	initOPNDStack(OPND);
	initOPTRStack(OPTR);
	PushOPND(OPND, '#');
	char c = getchar();
	char op = NULL;
	int num1 = NULL;
	int num2 = NULL;
	int flag = 0;
	while (1) {
		if (c <= '9' && c >= '0') {
			char str[20];
			str[0] = c;
			int i = 1;
			while (c <= '9' && c >= '0') {
				c = getchar();
				if (!(c <= '9' && c >= '0')) {
					str[i] = '\0';
					break;
				}
				else {
					str[i] = c;
					i++;
				}
			}
			PushOPTR(OPTR, atoi(str));
		}
		else {
			switch (Precede(GetTopOPND(OPND), c)) {
			case '<':
				PushOPND(OPND, c);
				c = getchar();
				break;
			case '>':
				op = PopOPND(OPND);
				num2 = PopOPTR(OPTR);
				num1 = PopOPTR(OPTR);
				num1 = Calculate(num1, op, num2);
				PushOPTR(OPTR, num1);
				if (c == '#' && OPTR->top==1) flag = 1;
				break;
			case '=':
				if (c == '#')flag = 1;
				else {
					PopOPND(OPND);
					c = getchar();
				}
				break;
			case '$':
				printf("Invalid input!");
				break;
			default:
				printf("Invalid retionship!");
				break;
			}
		}
		if (flag) break;
	}

	printf("The result = %d\n", GetTopOPTR(OPTR));
	free(OPND->base);
	free(OPND);
	free(OPTR->base);
	free(OPTR);
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
