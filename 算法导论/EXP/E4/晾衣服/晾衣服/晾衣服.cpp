// 晾衣服.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <queue>
#include <vector>

int n, m;
using namespace std;

typedef struct edge {
	int left;
	int right;
	int len;
	int lnum;
	int rnum;
}edge;

struct cmp {
	bool operator ()(edge a, edge b) {
		return a.len > b.len;//大的放左边
	}
};

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
	if (i + 2 < r) Random_Sort(X, i + 2, r);
	return;
}

int ok(int mid, int* pos) {
	int last = 0;
	int i;
	for (i = 0; i < n-m-1; i++) {
		int current = last + 1;
		while (current < n && pos[current] - pos[last] < mid) current++;
		if (current == n) return 0;
		last = current;
	}
	return 1;
}

int main()
{
	scanf("%d %d", &n, &m);
	int* pos = (int*)malloc(sizeof(int)*n);
	int* flag = (int*)malloc(sizeof(int)*n);
	int i;
	for (i = 0; i < n; i++) {
		scanf("%d", &pos[i]);
		flag[i] = 1;
	}
	Random_Sort(pos, 0, n - 1);
	int start = pos[0];
	for (i = 0; i < n; i++) {
		pos[i] -= start;
	}
	int length = pos[n - 1];
	int low = 0;
	int high = length+1;
	while (high - low > 1) {
		int mid = (high + low) / 2;
		if (ok(mid, pos)) low = mid;
		else high = mid;
	}
	printf("%d", low);
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
