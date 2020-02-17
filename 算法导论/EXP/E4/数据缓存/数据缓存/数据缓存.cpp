// 数据缓存.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <queue>
#include <vector>

using namespace std;

int InCache[10001];
int nxt[10001];


struct cmp {
	bool operator ()(int a, int b) {
		return nxt[a] < nxt[b];//大的放左边
	}
};

int main()
{
	int i;
	int n, cachesize;
	scanf("%d %d", &n, &cachesize);
	int* input = (int*)malloc(sizeof(int)*n);
	int previous[10001];
	for (i = 0; i < 10001; i++) {
		previous[i] = 10001;
		nxt[i] = 10001;
	}
	for (i = 0; i < n; i++) {
		scanf("%d", &input[i]);
		if (previous[input[i]] != 10001) {
			nxt[previous[input[i]]] = i;
		}
		previous[input[i]] = i;
	}
	int sum = 0;
	int cachenum = 0;
	priority_queue<int, vector<int>, cmp> queue;

	for (i = 0; i < n; i++) {
		if (InCache[input[i]]) {//hit
		}
		else {
			sum++;//miss
			if (cachenum < cachesize) {
				InCache[input[i]] = 1;
				queue.push(i);
				cachenum++;
			}
			else {
				int x = queue.top();
				queue.pop();
				InCache[input[x]] = 0;
				InCache[input[i]] = 1;
				queue.push(i);
			}
		}
		int* temp = (int*)malloc(sizeof(int)*queue.size());
		int index = 0;
		while (input[(temp[index] = queue.top())] != input[i]) {
			queue.pop();
			index++;
		}
		queue.pop();
		queue.push(i);
		index--;
		while (index >= 0) {
			queue.push(temp[index]);
			index--;
		}
		free(temp);
	}
	printf("%d", sum);
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
