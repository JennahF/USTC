// 抽奖.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>

#include <stdio.h>
#include <stdlib.h>

void exchange(int* a, int p, int q) {
	int t = a[p];
	a[p] = a[q];
	a[q] = t;
	return;
}

int Random_Sort(int* a, int p, int r) {
	int x = a[r];
	int i = p - 1;
	int j;
	for (j = p; j < r; j++) {
		if (a[j] < x) {
			i++;
			exchange(a, i, j);
		}
	}
	exchange(a, i + 1, r);
	return i + 1;
}

int Random_Select(int* a, int p, int r, int k) {
	if (p == r) return a[p];
	int q = Random_Sort(a, p, r);
	int i = q - p + 1;
	if (k == i) return a[q];
	else if (i < k) return Random_Select(a, q + 1, r, k - i);
	else return Random_Select(a, p, q - 1, k);
}

int main() {
	int n, k;
	scanf("%d %d", &n, &k);
	int* array=(int*)malloc(sizeof(int)*n);
	int i;
	for (i = 0; i < n; i++) scanf("%d", &array[i]);
	int result = Random_Select(array, 0, n - 1, k);
	printf("%d", result);
	free(array);
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
