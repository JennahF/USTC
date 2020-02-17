// 正方形技术.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#define min(x, y, z) (((x<y)?x:y)<z?((x<y)?x:y):z)

int main()
{
	int n, m;
	scanf("%d %d", &n, &m);
	int i;
	int** matrix = (int**)malloc(sizeof(int*)*(n + 2));
	for (i = 0; i < n + 2; i++) {
		matrix[i] = (int*)malloc(sizeof(int)*(m + 2));
	}
	int** count = (int**)malloc(sizeof(int*)*(n + 2));
	for (i = 0; i < n + 2; i++) {
		count[i] = (int*)malloc(sizeof(int*)*(m + 2));
	}
	for (i = 0; i < m + 2; i++) {
		matrix[0][i] = 1;
		matrix[n + 1][i] = 1;
		count[0][i] = 0;
		count[n + 1][i] = 0;
	}
	for (i = 0; i < n + 2; i++) {
		matrix[i][0] = 1;
		matrix[i][m + 1] = 1;
		count[i][0] = 0;
		count[i][m + 1] = 0;
	}
	int j;
	for (i = 1; i <= n; i++) {
		for (j = 1; j <= m; j++) {
			scanf("%d", &matrix[i][j]);
		}
	}
	int sum = 0;
	for (i = 1; i <= n; i++) {
		for (j = 1; j <= m; j++) {
			if (matrix[i][j] == 1) {
				count[i][j] = 0;
			}
			else {
				count[i][j] = min(count[i - 1][j], count[i][j - 1], count[i - 1][j - 1]) + 1;
				sum += count[i][j];
			}
		}
	}
	printf("%d", sum);
	for (i = 0; i < n + 2; i++) {
		free(matrix[i]);
	}
	for (i = 0; i < n + 2; i++) {
		free(count[i]);
	}
	free(matrix);
	free(count);
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
