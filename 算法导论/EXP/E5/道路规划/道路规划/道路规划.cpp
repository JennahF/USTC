// 道路规划.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <queue>
#include <vector>

using namespace std;

typedef struct e {
	int v;
	int cost;
	struct e* nextarc;
}edge;

typedef struct v {
	int v;
	edge* firstarc;
	int rank;
	struct v* parent;
}vertex;

struct EDGE {
	int u;
	int v;
	int cost;
};

struct cmp {
	bool operator ()(struct EDGE a, struct EDGE b) {
		return b.cost < a.cost;//小的放左边
	}
};

void InsertEdge(vertex* v1, int v2, int cost) {
	edge* p = (edge*)malloc(sizeof(edge));
	p->v = v2;
	p->cost = cost;
	if (v1->firstarc) {
		edge* temp = v1->firstarc;
		while (temp->v != v2) temp = temp->nextarc;
		if (!temp) {
			p->nextarc = v1->firstarc;
			v1->firstarc = p;
		}
		else {
			if (temp->cost > cost) temp->cost = cost;
			else free(p);
		}
	}
	else v1->firstarc = p;
	return;
}

void Make_Set(vertex* v, int i) {
	v->parent = v;
	v->rank = 0;
	v->v = i;
	return;
}

vertex* Find_Set(vertex* a) {
	if (a->parent != a) {
		return Find_Set(a->parent);
	}
	else return a;
}

void Link(vertex* a, vertex* b) {
	if (a->rank > b->rank) {
		b->parent = a;
	}
	else {
		a->parent = b;
		if (a->rank == b->rank) b->rank++;
	}
}

void Union(vertex* a, vertex* b) {
	Link(Find_Set(a), Find_Set(b));
	return;
}

int main()
{
	int n, m;
	scanf("%d %d", &n, &m);
	priority_queue<struct EDGE, vector<struct EDGE>, cmp> queue;
	vertex* G;
	G = (vertex*)malloc(sizeof(vertex)*n);
	int i;
	for (i = 0; i < m; i++) {
		int x, y, c;
		scanf("%d %d %d", &x, &y, &c);
		//InsertEdge(&G[x], y, c);
		//InsertEdge(&G[y], x, c);
		struct EDGE e;
		e.cost = c;
		e.u = x;
		e.v = y;
		queue.push(e);
	}
	int sum = 0;
	for (i = 0; i < n; i++) Make_Set(&G[i], i+1);
	while (!queue.empty()) {
		struct EDGE e = queue.top();
		queue.pop();
		if (Find_Set(&G[e.u-1]) != Find_Set(&G[e.v-1])) {
			sum += e.cost;
			Union(&G[e.u-1], &G[e.v-1]);
		}
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
