#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define INITSIZE 100
#define INCREMENTSIZE 10

//#define debug 1

char RelationChart[8][8] =
{ {'>','>', '<', '<', '<', '>', '>', '$'},
{'>','>', '<', '<', '<', '>', '>', '$'},
{'>','>', '>', '>', '<', '>', '>', '$'},
{'>','>', '>', '>', '<', '>', '>', '$'},
{'<', '<', '<', '<', '<', '=', '$', '$'},
{'>','>', '>', '>', '$', '>', '>', '$'},
{'<', '<', '<', '<', '<', '$', '=', '$'},
{'$', '$', '$', '$', '$', '$', '$', '$'}};

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
#ifdef debug
	int i;
	printf("Push:");
	for(i=0;i<S->top;i++) printf("%c", S->base[i]);
	printf("\n");
#endif
	return;
}

void PushOPTR(OPTRstruct* S, int n) {
	if (S->top == S->stacksize - 1) {
		S->base = (int*)realloc(S->base, (S->stacksize + INCREMENTSIZE) * sizeof(int));
		S->stacksize += INCREMENTSIZE;
	}
	S->base[S->top] = n;
	S->top++;
#ifdef debug
	printf("PushNum:");
	int i;
	for(i=0;i<S->top;i++) printf("%d ", S->base[i]);
	printf("\n");
#endif
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
	case 10:return 7; 
	default:printf("%d, Invalid operand!",a); exit(0);
	}
}

char Precede(char a, char b) {
	int indexa = Opnd2Int(a);
	int indexb = Opnd2Int(b);
	return RelationChart[indexa][indexb];
}

char PopOPND(OPNDstruct* S) {
	S->top--;
#ifdef debug
	int i;
	printf("Pop:");
	for(i=0;i<S->top;i++) printf("%c", S->base[i]);
	printf("\n");
#endif
	return 	S->base[S->top];
}

int PopOPTR(OPTRstruct* S) {
	S->top--;
#ifdef debug
	printf("PopNum:");
	int i;
	for(i=0;i<S->top;i++) printf("%d ", S->base[i]);
	printf("\n");
#endif
	return 	S->base[S->top];
}

int Calculate(int n1, char op, int n2) {
	int result = 0;
	switch (op) {
	case '+': result = n1 + n2; break;
	case '-': result = n1 - n2; break;
	case '*': result = n1 * n2; break;
	case '/': if (n2 == 0) {printf("Integer division by zero!\n"); exit(0);} result = n1 / n2; break;
	default:printf("Invalid Operand!"); break;
	}
	return result;
}

	/*命令行输入模式
	cal.exe 输入文件名 输出文件名 
	*/

int main(int argc, char* argv[])
{
	
	FILE* fr = fopen(argv[1], "r");
	FILE* fw = fopen(argv[2], "w");
	
	if(!fr){
		printf("File open failed!\n");
		exit(0);
	} 
	
	struct opnd* OPND = NULL;//operand
	struct optr* OPTR = NULL;//operator
	OPND = (OPNDstruct*)malloc(sizeof(OPNDstruct));
	OPTR = (OPTRstruct*)malloc(sizeof(OPTRstruct));
	initOPNDStack(OPND);
	initOPTRStack(OPTR);
	PushOPND(OPND, '#');
	char c = fgetc(fr);
	char op;
	int num1 = 0;
	int num2 = 0;
	int flag = 0;
	while(1){
		while (1) {
			if (c <= '9' && c >= '0') {
				char str[20];
				str[0] = c;
				int i = 1;
				while (c <= '9' && c >= '0') {
					c = fgetc(fr);
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
#ifdef debug
				printf("\nInputchar=%c\nGetTopOPND=%c OPND->top-1=%d\n", c, GetTopOPND(OPND), OPND->top-1);
#endif
				switch (Precede(GetTopOPND(OPND), c)) {
				case '<':
					PushOPND(OPND, c);
					c = fgetc(fr);
					break;
				case '>':
					op = PopOPND(OPND);
					num2 = PopOPTR(OPTR);
					num1 = PopOPTR(OPTR);
#ifdef debug
					printf("op=%c num1=%d num2=%d\n", op, num1, num2);
#endif
					num1 = Calculate(num1, op, num2);
#ifdef debug
					printf("num1=%d\n", num1);
#endif
					PushOPTR(OPTR, num1);
					if (c == '#' && OPTR->top==1) flag = 1;
#ifdef debug
					printf("flag=%d\n",flag);
#endif
					break;
				case '=':
					if (c == '#') flag = 1;
					else {
						PopOPND(OPND);
						c = fgetc(fr);
					}
					break;
				case '$':
					if(c=='\n') flag=1;
					printf("Invalid input!");
					break;
				default:
					printf("Invalid retionship!");
					break;
				}
			}
			if (flag) break;
		}
		//printf("%d\n", GetTopOPTR(OPTR));
		fprintf(fw, "%d\n", GetTopOPTR(OPTR));
		c = fgetc(fr);
		while(c=='\n') c = fgetc(fr);
		free(OPND->base);
		free(OPTR->base);
		initOPNDStack(OPND);
		initOPTRStack(OPTR);
		PushOPND(OPND, '#');
		flag = 0;
		if(c==EOF)break;
	} 
	printf("\nAll expressions are calculated!\n");
	free(OPND->base);
	free(OPND);
	free(OPTR->base);
	free(OPTR);
	fclose(fr);
	fclose(fw); 
	return 0;
}
