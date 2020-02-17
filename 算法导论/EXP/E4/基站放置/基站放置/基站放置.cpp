// 基站放置.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
int n;

void Sort(int* X) {
	int i, j;
	for (i = n - 1; i > 1; i--) {
		for (j = 0; j < i; j++) {
			if (X[j] > X[j + 1]) {
				int temp = X[j];
				X[j] = X[j + 1];
				X[j + 1] = temp;
			}
		}
	}
	return;
}

void exchange(int* X, int i, int j) {
	int temp = X[i];
	X[i] = X[j];
	X[j] = temp;
	return;
}

void Random_Sort(int* X, int p, int r) {
	if (r >= n || p < 0 || p >= r)return;
	int index = p + rand() % (r - p + 1);
	int x = X[index];
	int i = p - 1;
	int j;
	exchange(X, index, r);
	for (j = p; j < r; j++) {
		if (X[j] < x) {
			i++;
			exchange(X, i, j);
		}
	}
	exchange(X, i + 1, r);
	if (p < i + 1) Random_Sort(X, p, i);
	if (i + 2 < r)Random_Sort(X, i + 2, r);
	return;
}

int main()
{
	int r;
	scanf("%d %d", &n, &r);
	int* X = (int*)malloc(sizeof(int)*n);
	int i;
	for (i = 0; i < n; i++) {
		scanf("%d", &X[i]);
	}
	//Sort(X);
	Random_Sort(X, 0, n-1);
	int index = 0;//标识第一个没有被覆盖的点
	int num = 0;
	while (index < n) {
		int low = X[index]; 
		int mid = low + r;
		i = index;
		while (i < n && X[i] <= mid) {
			i++;
		}
		mid = X[i - 1];
		int high = mid + r;
		num++;
		while (index < n && X[index] <= high) {
			index++;
		}
	}
	printf("%d", num);
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
