// 货物运输.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
/*#include <iostream>
#include <queue>
#include <stdlib.h>
#include <stdio.h>
using namespace std;


typedef struct e {
	int v;
	int cost;
	struct e* nextarc;
}edge;

typedef struct v {
	int v;
	int d;
	int flag;
	int index;
	int hasadj;
	edge* firstarc;
}vertex;

int n;
int mincost;

void PRINT(int** costs) {
	int i, j;
	for (i = 0; i < n; i++) {
		for (j = 0; j < n; j++) {
			printf("%d ", costs[i][j]);
		}
		printf("\n");
	}
	printf("\n");
}

int* dfs(int** cf, int* p, int* index, int* visited, int t) {
	int v = p[*index - 1];
	int i;
	for (i = 0; i < n; i++) {
		if (cf[v][i] > 0 && visited[i] == 0) {
			p[*index] = i;
			(*index)++;
			visited[i] = 1;
			if (i == t) return p;
			else if (dfs(cf, p, index, visited, t)) return p;
			else (*index)--;
		}
	}
	return NULL;
}

int* AugmentingPath(int** f, int** costs, int s, int t) {
	int** cf = (int**)malloc(sizeof(int*)*n);
	int i;
	for (i = 0; i < n; i++) {
		cf[i] = (int*)malloc(sizeof(int)*n);
		for (int j=0; j < n; j++) {
			if (costs[i][j] < 101) {
				cf[i][j] = costs[i][j] - f[i][j];
			}
			else if (costs[j][i] < 101) {
				cf[i][j] = f[j][i];
			}
			else cf[i][j] = 0;
		}
	}
	//PRINT(cf);
	int* visited = (int*)malloc(sizeof(int)*n);
	for (i = 0; i < n; i++) visited[i] = 0;
	visited[s] = 1;

	int* pi = (int*)malloc(sizeof(int)*n);
	for (i = 0; i < n; i++) pi[i] = 0;
	pi[s] = -1;
	queue<int> q;
	q.push(s);
	while (!q.empty()) {
		int v = q.front();
		q.pop();
		if (v == t) {
			int r = t;
			int l = pi[r];
			mincost = 101;
			while (l != -1) {
				if (cf[l][r] < mincost) mincost = cf[l][r];
				r = l;
				l = pi[r];
			}
			return pi;
		}
		for (i = 0; i < n; i++) {
			if (cf[v][i] > 0 && visited[i] == 0) {
				pi[i] = v;
				visited[i] = 1;
				q.push(i);
			}
		}
	}
	return NULL;
}

void AddFlow(int** costs, int** f, int* pi, int s, int t) {
	int left = pi[t], right = t;
	while (left!=-1) {
		if (costs[left][right] < 101) f[left][right] += mincost;
		else f[right][left] -= mincost;
		right = left;
		left = pi[right];
	}
}

int flow(int** f, int s) {
	int i;
	int sum = 0;
	for (i = 0; i < n; i++) sum += f[s][i];
	return sum;
}

void PRINTP(int* p, int t) {
	int i=t;
	while(i != -1) {
		printf("%d ", i);
		i = p[i];
	}
	printf("\n");
}



int main()
{
	int m, s, t;
	scanf("%d %d %d %d", &n, &m, &s, &t);
	s--;
	t--;
	int** costs = (int**)malloc(sizeof(int*)*n);
	int** f = (int**)malloc(sizeof(int*)*n);
	int i;
	for (i = 0; i < n; i++) {
		costs[i] = (int*)malloc(sizeof(int)*n);
		f[i] = (int*)malloc(sizeof(int)*n);
		for (int j = 0; j < n; j++) {
			f[i][j] = 0;
			costs[i][j] = 101;
		}
	}
	for (i = 0; i < m; i++) {
		int u, v, cost;
		scanf("%d %d %d", &u, &v, &cost);
		costs[u - 1][v - 1] = cost;
	}
	//PRINT(costs);
	int* pi = NULL;
	while (pi = AugmentingPath(f, costs, s, t)) {
		//PRINTP(pi, t);
		//printf("mincost=%d\n", mincost);
		AddFlow(costs, f, pi, s, t);
		//PRINT(f);
	}
	printf("%d", flow(f, s));

	return 0;
}*/
/*
#include<queue>
#include<algorithm>
#include<cstdio>
#include<cstring>
using namespace std;
const int inf = 0x7fffffff;
const int maxn = (int)2e2 + 10;
int n, m;    //顶点数和边数
int G[maxn][maxn];  //存图G[i][j]=c 为点i到点j的边的容量为c
int pre[maxn];   //存储增广路，记录前驱，pre[i]=j为i的前驱为j
int flow[maxn];  //寻找增广路使记录流向每个节点的流量，flow[u]=k为起始点s流向u点的流量为k

int bfs(int s, int t) {  //寻找一条从s到t的增广路,如果找到返回增广路的可行流，如果没找到返回-1用于标记
	queue<int> q;
	for (int i = 0; i <= n; i++) pre[i] = -1;
	pre[s] = 0;
	flow[s] = inf;
	q.push(s);
	while (!q.empty()) {
		int p = q.front(); q.pop();
		if (p == t) break;   //找到一条增广路
		for (int u = 1; u <= n; u++) {
			//不是原点
			if (u != s && pre[u] == -1 && G[p][u] > 0) { //该点没被走过并且该点的流量大于0
				pre[u] = p;
				flow[u] = min(flow[p], G[p][u]);
				q.push(u);
			}
		}
	}
	if (pre[t] == -1) return -1;
	return flow[t];
}
int EK(int s, int t) {  //计算最大流,EK算法，复杂度O(n*m^2)
	int maxsum = 0, delta;
	while ((delta = bfs(s, t)) != -1) {
		//delta = bfs(s, t);
		//if (delta == -1) break;
		int p = t;    //从终点出发
		while (p != s) {
			G[pre[p]][p] -= delta;    //正向边
			G[p][pre[p]] += delta;    //反向边
			p = pre[p];               //更新当前点
		}
		maxsum += delta;
	}
	return maxsum;
}
int main()
{
	int a, b, c;
	int s, t;
	//cin >> n >> m >> s >> t;
	scanf("%d %d %d %d", &n, &m, &s, &t);
	memset(G, 0, sizeof(G));
	memset(flow, 0, sizeof(flow));

	for (int i = 0; i < m; i++) {
		scanf("%d%d%d", &a, &b, &c);

		G[a][b] += c;
	}
	printf("%d\n", EK(s, t));

	return 0;
}*/

#include <stack>
#include <queue>
#include <stdlib.h>
#include <stdio.h>
using namespace std;


typedef struct e {
	int v;
	int cost;
	struct e* nextarc;
}edge;

typedef struct v {
	int v;
	int d;
	int flag;
	int index;
	int hasadj;
	edge* firstarc;
}vertex;

int n;
int mincost;
int** cf;
int* pi;
int* visited;
int** costs;

void PRINT(int** costs) {
	int i, j;
	for (i = 0; i < n; i++) {
		for (j = 0; j < n; j++) {
			printf("%d ", costs[i][j]);
		}
		printf("\n");
	}
	printf("\n");
}


int* AugmentingPath(int** f, int** costs, int s, int t) {
	int** cf = (int**)malloc(sizeof(int*)*n);
	int i;
	for (i = 0; i < n; i++) {
		cf[i] = (int*)malloc(sizeof(int)*n);
		for (int j = 0; j < n; j++) {
			if (costs[i][j] < 101) {
				cf[i][j] = costs[i][j] - f[i][j];
			}
			else if (costs[j][i] < 101) {
				cf[i][j] = f[j][i];
			}
			else cf[i][j] = 0;
		}
	}
	//PRINT(cf);
	int* visited = (int*)malloc(sizeof(int)*n);
	for (i = 0; i < n; i++) visited[i] = 0;
	visited[s] = 1;

	int* pi = (int*)malloc(sizeof(int)*n);
	for (i = 0; i < n; i++) pi[i] = 0;
	pi[s] = -1;
	queue<int> q;
	q.push(s);
	while (!q.empty()) {
		int v = q.front();
		q.pop();
		if (v == t) {
			int r = t;
			int l = pi[r];
			mincost = 101;
			while (l != -1) {
				if (cf[l][r] < mincost) mincost = cf[l][r];
				r = l;
				l = pi[r];
			}
			return pi;
		}
		for (i = 0; i < n; i++) {
			if (cf[v][i] > 0 && visited[i] == 0) {
				pi[i] = v;
				visited[i] = 1;
				q.push(i);
			}
		}
	}
	return NULL;
}

void AddFlow(int** costs, int** f, int* pi, int s, int t) {
	int left = pi[t], right = t;
	while (left != -1) {
		if (costs[left][right] < 101) f[left][right] += mincost;
		else f[right][left] -= mincost;
		right = left;
		left = pi[right];
	}
}

int flow(int** f, int s) {
	int i;
	int sum = 0;
	for (i = 0; i < n; i++) sum += f[s][i];
	return sum;
}

void PRINTP(int* p, int t) {
	int i = t;
	while (i != -1) {
		printf("%d ", i);
		i = p[i];
	}
	printf("\n");
}

bool dfs(int s, int t) {  //广度优先寻找可增广路
	int i;
	for (i = 0; i < n; i++) {
		visited[i] = 0;
		pi[i] = -1;
	}
	stack<int> stack;
	visited[s] = true;
	stack.push(s);
	while (!stack.empty()) {
		int now = stack.top();
		stack.pop();
		for (int i = 1; i <= n; i++) {
			if (!visited[i] && costs[now][i] > 0) {
				visited[i] = true;
				pi[i] = now;
				if (i == t)
					return true;  //找到可增光路
				stack.push(i);
			}
		}
	}
	return false;
}

int FordFulkerson(int s, int t) {
	int u, v;
	int maxflow = 0, d;
	while (dfs(s, t)) {
		v = t;
		d = 100000;
		while (v != s) {
			u = pi[v];
			if (d > costs[u][v]) d = costs[u][v];
			v = u;
		}
		maxflow += d;
		v = t;
		while (v != s) {
			u = pi[v];
			costs[u][v] -= d;
			costs[v][u] += d;
			v = u;
		}
	}
	return maxflow;
}



int main()
{
	int m, s, t;
	scanf("%d %d %d %d", &n, &m, &s, &t);
	s--;
	t--;
	costs = (int**)malloc(sizeof(int*)*n);
	int** f = (int**)malloc(sizeof(int*)*n);
	visited = (int*)malloc(sizeof(int)*n);
	pi = (int*)malloc(sizeof(int)*n);
	int i;
	for (i = 0; i < n; i++) {
		costs[i] = (int*)malloc(sizeof(int)*n);
		f[i] = (int*)malloc(sizeof(int)*n);
		for (int j = 0; j < n; j++) {
			f[i][j] = 0;
			costs[i][j] = 0;
		}
	}
	for (i = 0; i < m; i++) {
		int u, v, cost;
		scanf("%d %d %d", &u, &v, &cost);
		costs[u - 1][v - 1] = cost;
	}
	printf("%d", FordFulkerson(s, t));
	//PRINT(costs);
	/*int* pi = NULL;
	while (pi = AugmentingPath(f, costs, s, t)) {
		//PRINTP(pi, t);
		//printf("mincost=%d\n", mincost);
		AddFlow(costs, f, pi, s, t);
		//PRINT(f);
	}*/
	//printf("%d", flow(f, s));

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
