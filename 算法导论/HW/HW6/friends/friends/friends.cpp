// friends.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

struct Node {
	int key;
	struct Node* parent;
	int rank;
};


int n;

void Make_Set(struct Node** arr, int stu) {
	arr[stu] = (struct Node*)malloc(sizeof(struct Node));
	arr[stu]->key = stu;
	arr[stu]->rank = 0;
	arr[stu]->parent = arr[stu];
	return;
}

struct Node* Find_Set(struct Node** arr,  int stu) {
	if (arr[stu]->parent != arr[stu]) {
		return Find_Set(arr, arr[stu]->parent->key);
	}
	else return arr[stu];
}

void Link(struct Node* p1, struct Node* p2) {
	if (p1->rank > p2->rank) {
		p2->parent = p1;
	}
	else {
		p1->parent = p2;
		if (p1->rank == p2->rank) p2->rank++;
	}
}

void Union(struct Node** arr, int stu1, int stu2) {
	Link(Find_Set(arr, stu1), Find_Set(arr, stu2));
	return;
}

void FREE(struct Node** arr) {
	int i;
	for (i = 0; i < n; i++) {
		if (arr[i] != NULL) {
			free(arr[i]);
		}
	}
	free(arr);
	return;
}


int main() {
	/*FILE* fr;
	FILE* fw;
	fr = fopen("F:/1fr/10.in", "r");
	fw = fopen("F:/1fr/1.out", "w");*/
	int k, m;
	scanf("%d %d %d", &n, &k, &m);
	struct Node** arr = (struct Node**)malloc(sizeof(struct Node*)*n);
	int i;
	for (i = 0; i < n; i++) arr[i] = NULL;
	int stu1, stu2;
	for (i = 0; i < m; i++) {
		scanf("%d %d", &stu1, &stu2);
		if (arr[stu1] == NULL) Make_Set(arr, stu1);
		if (arr[stu2] == NULL) Make_Set(arr, stu2);
		if(Find_Set(arr, stu1) != Find_Set(arr, stu2)) Union(arr, stu1, stu2);
	}
	for (i = 0; i < k; i++) {
		scanf("%d %d", &stu1, &stu2);
		if (arr[stu1] == NULL || arr[stu2] == NULL) printf("0 ");
		else if (Find_Set(arr, stu1) == Find_Set(arr, stu2)) printf("1 ");
		else printf("0 ");
	}
	FREE(arr);
	/*fclose(fr);
	fclose(fw);*/
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
