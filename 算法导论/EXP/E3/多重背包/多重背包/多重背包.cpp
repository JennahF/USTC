// 多重背包.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdlib.h>
#include <stdio.h>

struct good {
	int w, v, num;//size, value, number
};

int main()
{
	int n, W;
	scanf("%d %d", &n, &W);
	struct good* G = (struct good*)malloc(sizeof(struct good)*(n));
	int i,j,k;
	for (i = 0; i < n; i++) {
		scanf("%d %d %d", &G[i].w, &G[i].v, &G[i].num);
	}
	int* KS = (int*)malloc(sizeof(int)*(n+1)*(W+1));
	for (i = 0; i < W+1; i++)
		KS[i*(n + 1) + n] = 0;
	for (i = n - 1; i >= 0; i--) {
		for (j = 0; j < W+1; j++) {
			KS[j*(n + 1) + i] = 0;
			int value = 0;
			for (k = 0; k <= j / G[i].w; k++) {//物品i放k个
				if (k > G[i].num) {
					value = G[i].v*G[i].num + KS[(j - G[i].num*G[i].w)*(n + 1) + i + 1];
				}
				else
					value = G[i].v*k+ KS[(j - k*G[i].w)*(n + 1) + i + 1];
				if (value > KS[j*(n + 1) + i]) {
					KS[j*(n + 1) + i] = value;
					//printf("i=%d, j=%d, k=%d, value=%d\n", i, j, k, value);
				}
			}
		}
	}
	printf("%d", KS[W*(n + 1) + 0]);
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
