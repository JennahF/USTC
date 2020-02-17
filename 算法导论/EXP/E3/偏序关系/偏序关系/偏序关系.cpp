// 偏序关系.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

struct point {
	int x;
	int y;
};

struct relation {
	int num;
	int xlow, ylow;
	int xhigh, yhigh;
};

int n;

struct point* CountingSort(struct point* p, int i) {
	int C[10000];
	int index;
	for (index = 0; index < 10000; index++) C[index]=0;
	struct point* temp = (struct point*)malloc(sizeof(struct point)*n);
	if (i == 0) {
		
		for (index = 0; index < n; index++) 
			C[p[index].x]++;
		for (index = 1; index < 10000; index++)
			C[index] += C[index-1];
		for (index = n - 1; index >= 0; index--) {
			temp[C[p[index].x]-1] = p[index];
			C[p[index].x]--;
		}
	}
	else {
		for (index = 0; index < n; index++) 
			C[p[index].y]++;
		for (index = 1; index < 10000; index++) 
			C[index] += C[index-1];
		for (index = n - 1; index >= 0; index--) {
			temp[C[p[index].y]-1] = p[index];
			C[p[index].y]--;
		}
	}

	free(p);
	return temp;
}

void RadixSort(struct point* P) {
	P = CountingSort(P, 0);
	P = CountingSort(P, 1);
	return;
}

int Greater(struct point p1, struct point p2) {
	if (p1.x > p2.x) return 1;
	else if (p1.x < p2.x) return 0;
	else {
		if (p1.y >= p2.y) return 1;
		else return 0;
	}
}

void Sort(struct point* p) {
	int i, j;
	for (i = n-1; i > 0; i--) {
		for (j = 0; j < i; j++) {
			if (Greater(p[j], p[j + 1])) {
				struct point temp= p[j + 1];
				p[j + 1] = p[j];
				p[j] = temp;
			}
		}
	}
}

struct relation AddOK(struct relation r, struct point p) {
	struct relation r1 = r;
	if ((p.x >= r.xhigh && p.y >= r.yhigh) || (p.x <= r.xlow && p.y <= r.ylow)) {
		if (p.x >= r.xhigh && p.y >= r.yhigh) {
			r1.num++;
			r1.xhigh = p.x;
			r1.yhigh = p.y;
		}
		else {
			r1.num++;
			r1.xlow = p.x;
			r1.ylow = p.y;
		}
	}
	else {
		r1.num = 1;
		r1.xhigh = p.x;
		r1.xlow = p.x;
		r1.yhigh = p.y;
		r1.ylow = p.y;
	}
	return r1;
}


int main()
{
	scanf("%d", &n);
	struct point* Points = (struct point*)malloc(sizeof(struct point)*n);
	struct relation* relations = (struct relation*)malloc(sizeof(struct relation)*n);
	int i,j;
	for (i = 0; i < n; i++) {
		scanf("%d %d", &Points[i].x, &Points[i].y);
	}
	//RadixSort(Points);
	Sort(Points);
	int sum = 1;
	for (i = 0; i < n; i++) {
		struct relation r;
		relations[i].num = 1;
		relations[i].xlow = Points[i].x;
		relations[i].xhigh = Points[i].x;
		relations[i].yhigh = Points[i].y;
		relations[i].ylow = Points[i].y;
		for (j = i - 1; j >= 0; j--) {
			r = AddOK(relations[j], Points[i]);
			if (r.num > relations[i].num) {
				relations[i] = r;
			}
		}
		if (relations[i].num > sum) sum = relations[i].num;
	}
	printf("%d", sum);
	free(Points);
	free(relations);
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
