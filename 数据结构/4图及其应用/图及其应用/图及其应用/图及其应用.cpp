// 图及其应用.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>
#define MAX_VERTEX_NUM 20

typedef struct ArcNode{
	int adjvex;
	struct ArcNode *nextArc;
}ArcNode;

typedef struct VNode {
	int data;
	ArcNode *firstarc;
}VNode, AdjList[MAX_VERTEX_NUM];

typedef struct {
	AdjList vertices;
	int** M;
	int vexnum, arcnum;
}AlGraph;

int count;
int min;
int low[MAX_VERTEX_NUM];

AlGraph buildAdjList(AlGraph G) {
	int i, j;
	G.arcnum = 0;
	for (i = 0; i < G.vexnum; i++) {
		char s[50];
		gets_s(s);
		int index = 0;
		int data[MAX_VERTEX_NUM];
		int low = 0, high = 0;
		int sum = 0;
		while (low < strlen(s)) {
			if (low == high) {
				high++;
				while (high < strlen(s) && s[high] != ' ')
					high++;
			}
			else {
				char* str = (char*)malloc(sizeof(char)*(high - low + 1));
				int k;
				for (k = low; k < high; k++)
					str[k - low] = s[k];
				str[k] = '\0';
				data[index] = atoi(str);
				index++;
				//free(str);
				low = high;
			}
		}
		G.vertices[data[0]].data = data[0];
		G.vertices[data[0]].firstarc = NULL;
		if (index > 1) {
			G.vertices[data[0]].firstarc = (ArcNode*)malloc(sizeof(ArcNode));
		}
		ArcNode* p = G.vertices[data[0]].firstarc;
		for (j = 1; j < index; j++) {
			p->adjvex = data[j];
			if (j != index - 1) {
				p->nextArc = (ArcNode*)malloc(sizeof(ArcNode));
				p = p->nextArc;
				G.arcnum++;
			}
			else {
				p->nextArc = NULL;
			}
		}
	}
	return G;
}

AlGraph link2AdjMatrix(AlGraph G) {
	int n = G.vexnum;
	G.M = (int**)malloc(sizeof(int*)*n);
	int i, j;
	for (i = 0; i < n; i++) {
		G.M[i] = (int*)malloc(sizeof(int)*n);
	}
	for (i = 0; i < n; i++) {
		for (j = 0; j < n; j++) {
			G.M[i][j] = 0;
		}
	}
	for (i = 0; i < n; i++) {
		VNode p = G.vertices[i];
		ArcNode* q = p.firstarc;
		while (q) {
			G.M[p.data][q->adjvex] = 1;
			q = q->nextArc;
		}
	}
	return G;
}
void printMatrix(AlGraph G) {
	int i, j;
	for (i = 0; i < G.vexnum; i++) {
		for (j = 0; j < G.vexnum; j++) {
			printf("%d ", G.M[i][j]);
		}
		printf("\n");
	}
	return;
}

void DFSArticul(AlGraph G, int v0, int* visited) {
	visited[v0] = ++count;
	int min = count;
	for (ArcNode* p = G.vertices[v0].firstarc; p; p = p->nextArc) {
		int w = p->adjvex;
		if (visited[w] == 0) {
			DFSArticul(G, w, visited);
			if (low[w] < min) min = low[w];
			if (low[w] >= visited[v0]) printf("%d ", G.vertices[v0].data);
		}
		else if (visited[w] < min) min = visited[w];
	}
	low[v0] = min;
	return;
}

void FindArticul(AlGraph G) {
	count = 1;
	int* visited = (int*)malloc(sizeof(int)*G.vexnum);
	visited[0] = 1;//0为生成树的根
	int i;
	for (i = 1; i < G.vexnum; i++) visited[i] = 0;
	ArcNode* p = G.vertices[0].firstarc;
	int v = p->adjvex;
	DFSArticul(G, v, visited);
	if (count < G.vexnum) {
		printf("%d ", G.vertices[0].data);
		while (p->nextArc) {
			p = p->nextArc;
			v = p->adjvex;
			if (visited[v] == 0) DFSArticul(G, v, visited);
		}
	}
	free(visited);
	return;
}

void Delay() {
	Sleep(700);
	printf(". ");
	Sleep(700);
	printf(". ");
	Sleep(700);
	printf(". ");
	Sleep(700);
	printf("\n");
	return;
}


int main()
{
	AlGraph G;
	G.arcnum = 0;
	G.vexnum = 0;
	printf("请输入无向图的顶点个数：\n");
	scanf("%d", &G.vexnum);
	char enter;
	scanf("%c", &enter);
	printf("请输入无向图的邻接表(结点标号从0开始)：\n");
	G = buildAdjList(G);
	printf("现在将邻接表转换成为邻接矩阵：\n");
	Delay();
	G = link2AdjMatrix(G);
	printf("邻接矩阵创建好了！\n");
	printMatrix(G);
	printf("现在利用邻接表和DFS寻找所有关节点：\n");
	FindArticul(G);

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
