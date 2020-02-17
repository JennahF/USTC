// 数据库.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

#define INSERT 0
#define FIND 1
#define EXIT 2
#define ERROR 3
#define MAX_SIZE 1000000
#define Heap_Increment 10000

typedef struct Data{
	int id;
	int attribute;
}Data;

typedef struct Heap {
	Data* database;
	int heapsize;
	int heapcapacity;
}Heap;

int Left(int i) {
	return (i + 1) * 2 - 1;
}
int Right(int i) {
	return (i + 1) * 2;
}
int Parent(int i) {
	if (i % 2)return i / 2;
	else return i / 2 - 1;
}


int DecodeIns(char* ins) {
	if (strncmp(ins, "INSERT", 6) == 0) return 0;
	else if (strncmp(ins, "FIND", 4) == 0) return 1;
	else if (strncmp(ins, "EXIT", 4) == 0) return 2;
	else return 3;
}

int readnum(char* ins, int start, int end) {
	int i;
	int num = 0;
	for (i = end - 1; i > start; i--) num += (ins[i] - '0')*pow(10, end - 1 - i);
	return num;
}

Data DecodeData(char* ins) {//Insert instruction
	int i;
	for (i = 7; i < strlen(ins); i++) if (ins[i] == ' ') break;
	Data data;
	data.id = readnum(ins, 6, i);
	data.attribute = readnum(ins, i, strlen(ins));
	return data;
}

int DecodeAttr(char* ins) {
	return readnum(ins, 4, strlen(ins));
}

void exchange(Heap* H, int i, int j) {
	int attr = H->database[i].attribute;
	int id = H->database[i].id;
	H->database[i].attribute = H->database[j].attribute;
	H->database[i].id = H->database[j].id;
	H->database[j].attribute = attr;
	H->database[j].id = id;
	return;
}

void Insert(Heap* H, Data data) {
	H->heapsize++;
	/*if (H->heapsize >= H->heapcapacity) {
		H->database = (Data*)realloc(H->database, (H->heapcapacity + Heap_Increment) * sizeof(Data));
		H->heapcapacity += Heap_Increment;
	}*/
	H->database[H->heapsize - 1] = data;
	return;
}



int Find(Heap* H, int left, int right, int Attr){//二分
	if (left > right) return 0;
	if (H->database[left].attribute > Attr || H->database[right].attribute < Attr) return 0;
	int mid = (left + right) / 2;
	if (H->database[mid].attribute == Attr) {
		printf("%d\n", H->database[mid].id);
		return 1;
	}
	else {
		if (H->database[mid].attribute < Attr) return Find(H, mid + 1, right, Attr);
		else return Find(H, left, mid-1, Attr);
	}
}

void Random_Sort(Heap* H, int p, int r) {
	int n = H->heapsize;
	if (r >= n || p < 0 || p >= r)return;
	int index = p + rand() % (r - p + 1);
	int x = H->database[index].attribute;
	int i = p - 1;
	int j;
	exchange(H, index, r);
	for (j = p; j < r; j++) {
		if (H->database[j].attribute < x) {
			i++;
			exchange(H, i, j);
		}
	}
	exchange(H, i + 1, r);
	if (p < i + 1) Random_Sort(H, p, i);
	if (i + 2 < r)Random_Sort(H, i + 2, r);
	return;
}

int main(){
	char instruction[50];
	int insType;
	Data data;
	Heap H;
	H.database = (Data*)malloc(sizeof(Data)*1000000);
	H.heapsize = 0;
	H.heapcapacity = 1000000;
	int attribute;
	int flag = 1;
	int size=0;
	while (1) {
		gets_s(instruction);
		insType = DecodeIns(instruction);
		if (insType == EXIT) break;
		else if (insType == INSERT) {
			data = DecodeData(instruction);
			Insert(&H, data);
		}
		else if (insType == FIND) {
			if (flag) {
				Random_Sort(&H, 0, H.heapsize-1);
				flag = 0;
			}
			attribute = DecodeAttr(instruction);
			if (Find(&H, 0, H.heapsize-1, attribute) == 0) printf("-1\n");
		}
		else {
			printf("The instruction does not exist");
			break;
		}
	}
	free(H.database);
	return 0;
}
