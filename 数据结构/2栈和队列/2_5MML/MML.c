#include <stdio.h>
#include <stdlib.h>
#include <ctype.h> 
#include <string.h>

#define START 0
#define EXIT 9
#define INITSIZE 100;
#define INCREMENTSIZE 10
#define DoubleQuotes 1
#define SingleQuotes 2 

char CommandWords[50][50];
char Params[200][50];

typedef struct Node{
	char e;
	struct Node* next;
}Node;

typedef struct Queue{
	Node* front;
	Node* rear;
	int Qsize;
}Queue; 

void initQueue(Queue* Q){
	Q->front=(Node*)malloc(sizeof(Node));
	Q->front->next=NULL;
	Q->rear=Q->front;
	Q->Qsize=0;
	return;
}

void EnQueue(Queue* Q, char e){
	Q->rear->e=e;
	Q->rear->next=(Node*)malloc(sizeof(Node));
	Q->rear=Q->rear->next;
	Q->rear->next=NULL;
	Q->Qsize++;
	return;
}

char DeQueue(Queue* Q){
	if(Q->Qsize==0){
		printf("There is no element in the queue!\n");	
		return '#';
	}
	else{
		Node* p=Q->front;
		Q->front=Q->front->next;
		char e = p->e;
		free(p);
		Q->Qsize--;
		return e;
	}
}

int isEmpty(Queue* Q){
	return !Q->Qsize;
}

int main(int argc, char* argv[]){
	printf("Please input your command below:\n");
	int index=0;
	Queue* Q=(Queue*)malloc(sizeof(Queue));
	initQueue(Q);
	int state = START;
	int flag=0; 
	int Command_num = 0;
	int CommandWord_num = 0;
	int ParamChunk_num = 0;
	int Param_num = 0;
	int CommandWordValid = 1;
	int WordBit=0;
	int ParamBit=0;
	int ParamValid = 1;
	int quotes=0; 
	int comma=0;
	int LeftBraceFlag=0;
	char c='\0';
	while(1){
		//if(c!='\n') c=argv[1][index++];
		if(c!='\n') c=getchar();
		//printf("state=%d\n",state);
		switch(state){
			case START:{
				if(c == '\n' || c == EOF) state=EXIT;
				else{
					if(!isalpha(c)) CommandWordValid=0;			//设置标志位
					EnQueue(Q, c);								//命令字入队 
					state=1;									//改状态
				}
				break;
			}
			case 1 :{
				LeftBraceFlag=0;
				if(isalpha(c)){
					EnQueue(Q, c);	 
					state=1;
				}
				else if(c == ' ') {
					
				}
				else if(c == ':' || c == '{'){
					CommandWord_num++;
					Command_num++;
					EnQueue(Q, '\0'); 
					while(!isEmpty(Q)){
						CommandWords[CommandWord_num-1][WordBit++]=DeQueue(Q);
					}
					if(!CommandWordValid){//命令字无效 
						printf("%s command word is invalid!\n", CommandWords[CommandWord_num-1]);
						CommandWord_num--;
					}
					if(strlen(CommandWords[CommandWord_num-1])==0){//命令字缺失 
						printf("Command word missing!(Command number:%d)\n", Command_num);
						CommandWord_num--;
					}
					CommandWordValid=1;
					WordBit=0;
					if(c == '{'){
						printf("Colon missing!(Command number:%d)\n", Command_num);
						state = 3;
						LeftBraceFlag=1;
					}
					else state = 2;
				}
				else{//...
					CommandWordValid=0;
					EnQueue(Q, c);
				}
				break;
			}
			case 2:{
				LeftBraceFlag=0;
				if(c == '{'){
					state = 3;
					LeftBraceFlag=1;
					//ParamChunk_num++;
				}
				else if(c == 34 || c == 39){
					if(c==34) quotes=DoubleQuotes;
					else quotes = SingleQuotes;
					printf("Left Brace Missing!(Command number:%d)\n",Command_num);
					state = 4;
				}
				else if(c == ','){
					printf("Extra comma!(Command number:%d, Param Chunk number:%d)\n",Command_num, ParamChunk_num);
				}
				else{
					printf("Invalid Command!(Command number:%d)\n",Command_num);
					state=EXIT;
				}
				break;
			}
			case 3:{
				if(c == 34 || c == 39){//c=" 或 c=' 
					if(c==34) quotes=DoubleQuotes;
					else quotes = SingleQuotes;
					Param_num++;
					state = 4;
				}
				else if(c == ','){
					printf("Extra comma!(Command number:%d, Param Chunk number:%d, Parameter number:%d)\n",Command_num, ParamChunk_num, Param_num);
				}
				else if(c == '}'){
					if(comma){
						printf("Extra comma!(Command number:%d, Param Chunk number:%d)\n",Command_num, ParamChunk_num);
						comma=0;
					}
					state = 7;
				}
				else{
					if(!(isalpha(c) || c == '_')) ParamValid = 0;
					printf("Left Quote Missing!(Command number:%d, Param Chunk number:%d, Parameter number:%d)\n",Command_num, ParamChunk_num, Param_num);
					EnQueue(Q, c);
					state = 5;
				}
				break;
			}
			case 4:{
				if(isalpha(c) || c == '_'){
					EnQueue(Q, c);
					state=5;
				}
				else{
					EnQueue(Q, c);
					ParamValid = 0;
					state=5;
				}
				break;
			}
			case 5:{
				if(isalpha(c)||isdigit(c)||c=='_'){
					EnQueue(Q, c);
				}
				else if(c == 34 || c == 39 || c == ',' || c == '}'){//c=",c='
					EnQueue(Q, '\0');
					while(!isEmpty(Q)){
						Params[Param_num-1][ParamBit++] = DeQueue(Q);
					}
					ParamBit=0;
					if(!ParamValid){
						printf("%s parameter is invalid!\n", Params[Param_num-1]);
						Param_num--;
					}
					if((c==34 && quotes== SingleQuotes) || (c==39 && quotes== DoubleQuotes)){
						printf("%s parameter's quotes do not match!\n", Params[Param_num-1]);
					}
					ParamValid=1;
					state=6;
					if(c == ','){
						printf("Right Quote missing!(Command number:%d, Param Chunk number:%d, Parameter number:%d)\n", Command_num, ParamChunk_num, Param_num);
						state = 3;
					}
					if(c == '}'){
						if(LeftBraceFlag) ParamChunk_num++;
						LeftBraceFlag=0;
						printf("Right Quote missing!(Command number:%d, Param Chunk number:%d, Parameter number:%d)\n", Command_num, ParamChunk_num, Param_num);
						state = 7;
					}
				}
				else{
					ParamValid=0;
					EnQueue(Q, c);
				}
				break;
			}
			case 6:{
				if(c == ','){
					state=3;
					comma=1;
				}
				else if(c == '}'){
					if(LeftBraceFlag) ParamChunk_num++;
					LeftBraceFlag=0;
					state=7;
				}
				else if(c == ';') {
					printf("Right Brace missing!(Command number:%d, Param Chunk number:%d)\n", Command_num, Param_num);
					state=1;
				}
				else{//...
					if(c == '\n'){
						printf("Right Brace missing!(Command number:%d, Param Chunk number:%d)\n", Command_num, Param_num);
					}
					state = EXIT;
				}
				break;
			}
			case 7:{
				if(c == ';') state=1;
				else if(c == ',') state = 2;
				else state=EXIT;
				break;
			}
			case EXIT:{
				if(c=='\n'){
					while(!isEmpty(Q)) DeQueue(Q);
					free(Q);
					flag = 1;	
				}
				else if(c == '{'){
					LeftBraceFlag=1;
					state = 3;
				}
				else if(c == 34 || c == 39){
					if(c==34) quotes=DoubleQuotes;
					else quotes = SingleQuotes;
					Param_num++;
					state = 4;
				}
				else if(c == '}'){
					if(LeftBraceFlag) ParamChunk_num++;
					LeftBraceFlag=0;
					state=7;
				}
				break;
			}	
		}
		//printf("leftbraceflag=%d char=%c\n",LeftBraceFlag,c);
		if(flag) break;
	}
	printf("\nTotal:\nTotal Command Words:%d\nTotal Parameter Chunks:%d\nTotal Parameters:%d\n\n", CommandWord_num, ParamChunk_num, Param_num);
	int i;
	printf("Command Wrods:\n");
	for(i=0;i<CommandWord_num;i++)puts(CommandWords[i]);
	printf("\nParams:\n");
	for(i=0;i<Param_num;i++)puts(Params[i]);
	return 0;
}
