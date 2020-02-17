// 军训排队.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int n, k;
int NameNum;

int NameExist(char* str, char** Q) {
	int i;
	for (i = 0; i < k; i++) {
		if (strcmp(Q[i], str) == 0) return 1;
	}
	return 0;
}

int FindIndex(char* str, char** Q) {
	int i;
	for (i = 0; i < k; i++) {
		if (strcmp(Q[i], str) == 0) return i;
	}
	return -1;
}

void Add(char* str, char** Q, int* num) {
	if (NameExist(str, Q)) {
		int index = FindIndex(str, Q);
		num[index]++;
	}
	else {
		int i;
		for (i = 0; i < k; i++) {
			if (strlen(Q[i]) == 0) {
				strcpy(Q[i], str);
				num[i]++;
				NameNum++;
				break;
			}
		}
	}

	return;
}


void Delete(int index, char** Q, int* num) {
	Q[index][0] = '\0';
	num[index]--;
	NameNum--;
	return;
}

int main() {
/*	FILE* fr = fopen("F:/1fr/各科作业实验/算法导论/EXP/E2/军训排队/data.txt", "r");
	fscanf(fr, "%d", &n);
	fscanf(fr, "%d", &k);*/
	scanf("%d", &n);
	scanf("%d", &k);
	char** names;
	names = (char**)malloc(sizeof(char*)*n);
	char** Que;
	Que = (char**)malloc(sizeof(char*)*k);
	int* num;
	num = (int*)malloc(sizeof(int)*k);
	int i;
	char* string;
	string = (char*)malloc(sizeof(char) * 5);

	for (i = 0; i < n; i++) {
		scanf("%s", string);
		names[i] = (char*)malloc(sizeof(char) * 5);
		strcpy(names[i], string);
	}
	for (i = 0; i < k; i++) {
		num[i] = 0;
		Que[i] = (char*)malloc(sizeof(char) * 5);
		Que[i][0] = '\0';
	}
	int sum = 0;

	int low = 0, high = -1;
	int left = 0, right = 1;
	while (1) {
		if (right) {//increase
			if (NameNum < k) {
				if (high != n - 1) Add(names[++high], Que, num);//if not exist,add, else do nothing
				else break;
			}
			else if (NameNum == k) {
				sum++;
				if (high < n-1 && !NameExist(names[high + 1], Que)) {//decrease 
					left = 1;
					right = 0;
				}
				else if (high == n-1) {
					left = 1;
					right = 0;
				}
				else {//high < n && high+1 exist
					if (high - low + 1 > NameNum) {
						int* temp = (int*)malloc(sizeof(int)*(k));
						int j;
						for (j = 0; j < k; j++) temp[j] = num[j];
						int low_temp = low;
						int index = FindIndex(names[low_temp], Que);
						while (temp[index] != 1) {
							sum++;
							low_temp++;
							temp[index]--;
							index = FindIndex(names[low_temp], Que);
						}
						free(temp);
					}
					int index = FindIndex(names[high + 1], Que);
					num[index]++;
					high++;
				}
			}
			else {
				printf("?\n");
			}
		}
		else if (left) {//decrease
			int index = FindIndex(names[low++], Que);
			if (num[index] == 1) {
				Delete(index, Que, num);
				if (high < n-1) {
					left = 0;
					right = 1;
				}
				else break;
			}
			else {
				sum++;
				num[index]--;
			}
		}
		else {
			printf("error\n");
			break;
		}
	}

	printf("%d", sum);
//	fclose(fr);
	//for (i = 0; i < n; i++) free(names[i]);
	//for (i = 0; i < k; i++) free(Que[i]);
	free(names);
	free(Que);
	free(num);
	//free(string);

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
