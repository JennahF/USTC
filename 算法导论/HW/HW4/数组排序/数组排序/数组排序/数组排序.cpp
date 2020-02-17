// 数组排序.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>

#include <stdio.h>
#include <stdlib.h>

int n;

void exchange(int* a, int p, int q) {
	int t = a[p];
	a[p] = a[q];
	a[q] = t;
	return;
}

void Random_Sort(int* a, int p, int r) {
	if (r >= n || p < 0 || p >= r)return;
	int index = p + rand()%(r-p+1);
	int x = a[index];
	int i = p - 1;
	int j;
	exchange(a, index, r);
	for (j = p; j < r; j++) {
		if (a[j] < x) {
			i++;
			exchange(a, i, j);
		}
	}
	exchange(a, i + 1, r);
	if(p<i+1) Random_Sort(a, p, i);
	if(i+2<r)Random_Sort(a, i + 2, r);
	return;
}


int main() {
	scanf("%d", &n);
	int* array = (int*)malloc(sizeof(int)*n);
	int i;
	for (i = 0; i < n; i++) scanf("%d", &array[i]);

	Random_Sort(array, 0, n - 1);

	for (i = 0; i < n; i++) printf("%d ", array[i]);
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
