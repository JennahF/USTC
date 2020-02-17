#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>
#define MAX_VERTEX_NUM 20
#define Inf 1000000

typedef struct ArcNode {
	int adjvex;
	struct ArcNode *nextArc;
	int weight;
} ArcNode;

typedef struct VNode {
	int data;
	ArcNode *firstarc;
} VNode, AdjList[MAX_VERTEX_NUM];

typedef struct {
	AdjList vertices;
	int** M;
	int vexnum, arcnum;
} AlGraph;

int count;
int min;
int low[MAX_VERTEX_NUM];
int Articul[MAX_VERTEX_NUM];
int MarkNum = 0;//records the number of recorded points

AlGraph buildAdjList(AlGraph G) {
	int i, j;
	G.arcnum = 0;
	for (i = 0; i < G.vexnum; i++) {
		char s[50];
		gets(s);
		int index = 0;
		int data[MAX_VERTEX_NUM];
		int low = 0, high = 0;
		int sum = 0;
		while (low < strlen(s)) {
			if (low == high) {
				high++;
				while (high < strlen(s) && s[high] != ' ')
					high++;
			} else {
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
		for (j = 1; j < index; j+=2) {
			p->adjvex = data[j];
			p->weight = data[j+1];
			if (j != index - 2) {
				p->nextArc = (ArcNode*)malloc(sizeof(ArcNode));
				p = p->nextArc;
				G.arcnum++;
			} else {
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
			G.M[i][j] = Inf;
		}
	}
	for (i = 0; i < n; i++) {
		VNode p = G.vertices[i];
		ArcNode* q = p.firstarc;
		while (q) {
			G.M[p.data][q->adjvex] = q->weight;
			q = q->nextArc;
		}
	}
	return G;
}

void printMatrix(AlGraph G) {
	int i, j;
	for (i = 0; i < G.vexnum; i++) {
		for (j = 0; j < G.vexnum; j++) {
			if(G.M[i][j]==Inf) printf("0 ");
			else printf("%d ", G.M[i][j]);
		}
		printf("\n");
	}
	return;
}

void DFSArticul(AlGraph G, int v0, int* visited) {
	visited[v0] = ++count;
	int min = count;
	ArcNode* p;
	for (p = G.vertices[v0].firstarc; p; p = p->nextArc) {//检查v0的每个邻接顶点 
		int w = p->adjvex;
		if (visited[w] == 0) {//w未访问 
			DFSArticul(G, w, visited);//dfs求low[w] 
			if (low[w] < min) min = low[w];
			if (low[w] >= visited[v0]) Articul[G.vertices[v0].data] = 1;
		} 
		else if (visited[w] < min) min = visited[w];//w已访问，那么w是v0在生成树上的祖先 
	}
	low[v0] = min;
	return;
}

void FindArticul(AlGraph G) {
	count = 1;
	int* visited = (int*)malloc(sizeof(int)*G.vexnum);
	visited[0] = 1;
	int i;
	for (i = 1; i < G.vexnum; i++) visited[i] = 0;
	ArcNode* p = G.vertices[0].firstarc;//0顶点是生成树的根 
	int v = p->adjvex;
	DFSArticul(G, v, visited);//从v除法DFS搜索关节点 
	if (count < G.vexnum) {//生成树的根不只有一个 
		Articul[G.vertices[0].data] = 1;//生成树的根就是关节点 
		while (p->nextArc) {
			p = p->nextArc;
			v = p->adjvex;
			if (visited[v] == 0) DFSArticul(G, v, visited);
		}
	}
	free(visited);
	return;
}

void printArticul(int n) {
	int i;
	for(i=0; i<n; i++) {
		if(Articul[i]) printf("%d ", i);
	}
	printf("\n");
}

void UpdateMark(AlGraph G, int* Mark, int *record, int* S) {
	if(Mark[0*G.vexnum+S[MarkNum-1]] == Inf) {
		MarkNum++;
		return;
	}
	int i;
	ArcNode* p = G.vertices[S[MarkNum-1]].firstarc;
	while(p) {
		if(record[p->adjvex]) {
			p = p->nextArc;
			continue;
		} else {
			if(Mark[0*G.vexnum+p->adjvex] > Mark[0*G.vexnum+S[MarkNum-1]] + G.M[S[MarkNum-1]][p->adjvex]) {
				Mark[0*G.vexnum+p->adjvex] = Mark[0*G.vexnum+S[MarkNum-1]] + G.M[S[MarkNum-1]][p->adjvex];
				Mark[1*G.vexnum+p->adjvex] = S[MarkNum-1];
			}
			p = p->nextArc;
		}
	}
	MarkNum++;
	return;
}

int MinMark(AlGraph G, int* Mark, int* record) {
	int min = Inf;
	int min_x = G.vexnum;
	int i;
	for(i=0; i<G.vexnum; i++) {
		if(record[i] == 0) {
			if(Mark[0*G.vexnum+i] < min) {
				min = Mark[0*G.vexnum+i];
				min_x = i;
			}
		}
	}
	return min_x;
}

void Dijkstra(int* paths, AlGraph G, int v0) {
	int Mark[2][G.vexnum];//0 for distance, 1 for former point on path
	int record[G.vexnum];//record whether every point is recorded, init as [0,0,0...] except for v0
	//int paths[G.vexnum][G.vexnum];//record every path from v0 to every points
	int S[G.vexnum];//record consequence of recorded points, init as [v0,-1,-1...]
	int i, j;
	for(i=0; i<G.vexnum; i++) {
		if(i==v0) {
			Mark[0][i] = 0;
			Mark[1][i] = -1;
		} else {
			Mark[0][i] = Inf;
			Mark[1][i] = -1;
		}
		record[i] = 0;
		S[i] = -1;
	}
	for(i=0; i<G.vexnum; i++) {
		for(j=0; j<G.vexnum; j++) {
			if(j==0) paths[i*G.vexnum+j] = v0;
			else paths[i*G.vexnum+j] = -1;
		}
	}
	record[v0] = 1;
	MarkNum++;//标记v0
	S[MarkNum-1] = v0;

	while(MarkNum != G.vexnum) {
		UpdateMark(G, (int*)Mark, record, S);
		S[MarkNum-1] = MinMark(G, (int*)Mark, record);
		record[S[MarkNum-1]] = 1;
	}
	int index;
	for(i=0; i<G.vexnum; i++) {
		index = 0;
		j = i;
		paths[i*G.vexnum+index++] = j;
		while(j!=-1) {
			j = Mark[1][j];
			paths[i*G.vexnum+index++] = j;
		}
	}
	return;
}

void printPaths(AlGraph G, int v0, int* paths) {
	int i, j;
	for(i=0; i<G.vexnum; i++) {
		if(i!=v0) {
			printf("%d to %d: ", v0, i);
			for(j=0; j<G.vexnum; j++) if(paths[i*G.vexnum + j] == v0) break;
			if(paths[i*G.vexnum+j] != v0) {
				printf("no path from %d to %d", v0, i);
			} else {
				for(; j>=0; j--) {
					printf("%d ", paths[i*G.vexnum+j]);
				}
			}
			printf("\n");
		}
	}
}

void DepthTraverse(AlGraph G) {
	int stack[MAX_VERTEX_NUM];
	int top = 0;
	int visited[G.vexnum];
	int instack[G.vexnum];
	int i;
	for(i=0; i<G.vexnum; i++) {
		visited[i]=0;
		instack[i]=0;
	}
	stack[top++]=G.vertices[0].data;
	instack[0]=1;
	while(top!=0) {
		int topnode = stack[--top];//pop
		if(visited[topnode]) continue;
		//visit topnode
		printf("%d ", topnode);
		visited[topnode] = 1;
		instack[topnode]=0;
		ArcNode* p = G.vertices[topnode].firstarc;
		while(p) {
			if(visited[p->adjvex] == 0 && instack[p->adjvex] == 0) {
				stack[top++] = p->adjvex;
			}
			p = p->nextArc;
		}
	}
	printf("\n");
	return;
}

void BreadthTraverse(AlGraph G) {
	int queue[MAX_VERTEX_NUM];
	int front=0,rare=0;
	int visited[G.vexnum];
	int inqueue[G.vexnum];
	int i;
	for(i=0; i<G.vexnum; i++) {
		visited[i]=0;
		inqueue[i]=0;
	}
	queue[rare++]=G.vertices[0].data;

	while(rare!=front) {
		int frontnode = queue[front++];//出队
		//visit topnode
		if(visited[frontnode]) continue;
		printf("%d ", frontnode);
		visited[frontnode] = 1;
		inqueue[frontnode] = 0;
		ArcNode* p = G.vertices[frontnode].firstarc;
		while(p) {
			if(visited[p->adjvex] == 0 && inqueue[p->adjvex] == 0) {
				queue[rare++] = p->adjvex;
			}
			p = p->nextArc;
		}
	}
	printf("\n");
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


int main() {
	AlGraph G;
	G.arcnum = 0;
	G.vexnum = 0;
	printf("请输入无向图的顶点个数:\n");
	scanf("%d", &G.vexnum);
	char enter;
	scanf("%c", &enter);
	printf("请输入无向图的邻接表(结点标号从0开始):\n");
	G = buildAdjList(G);
	printf("现在将邻接表转换成为邻接矩阵:\n");
	Delay();
	G = link2AdjMatrix(G);
	printf("邻接矩阵创建好了！\n");
	printMatrix(G);
	printf("现在利用非递归的深度优先遍历图：\n");
	DepthTraverse(G);
	printf("现在利用广度优先遍历图：\n");
	BreadthTraverse(G);
	printf("现在利用邻接表和DFS寻找所有关节点:\n");
	FindArticul(G);
	Delay();
	printf("关节点都找到了！\n");
	printArticul(G.vexnum);
	int v0;
	printf("现在寻找从v0开始到各个结点的最短路径！\n\n");
	printf("想从哪个顶点开始寻找呢？请输入v0：");
	scanf("%d", &v0);
	printf("正在利用Dijkstra算法计算从v0到各个顶点的最短路径！\n");
	Delay();
	int paths[G.vexnum][G.vexnum];
	Dijkstra((int*)paths, G, v0);
	printf("所有最短路径都找到了！\n");
	printPaths(G, v0, (int*)paths);
	return 0;
}

