// 归并排序.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

int sum(int* len, int i, int j) {
	int index;
	int sum = 0;
	for (index = i; index <= j; index++) {
		sum += len[index];
	}
	return sum;
}

int main()
{
	int n;
	scanf("%d", &n);
	int i, j;
	int* len = (int*)malloc(sizeof(int)*(n+1));
	int* m = (int*)malloc(sizeof(int)*(n+1)*(n+1));
	for (i = 1; i <= n; i++) scanf("%d", &len[i]);
	for (i = 1; i <= n; i++)
		m[i*(n+1) + i+1] = 0;
	int l;
	int k;
	for (l = 2; l <= n; l++) {
		for (i = 1; i <= n - l + 1; i++) {
			j = i + l - 1;
			m[i*(n+1) + j+1] = 2147483647;
			int s = sum(len, i, j);
			for (k = i; k < j; k++) {
				int q = m[i*(n+1) + k+1] + m[(k + 1)*(n+1) + j+1] + s;
				if (q < m[i*(n+1) + j+1]) {
					m[i*(n+1) + j+1] = q;
				}
			}
		}
	}
	printf("%d", m[1 * (n+1) + n+1]);
	//free(m);
	//free(len);
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
