#include <stdlib.h>
#include <stdio.h>


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
	edge* firstarc;
}vertex;

vertex* G;

struct EDGE {
	int u;
	int v;
	int cost;
};

struct Heap {
	int size;
	int* array;
	int next_avaiable;
};

struct data* p;

int Left(int i) {
	return (i + 1) * 2 - 1;
}
int Right(int i) {
	return (i + 1) * 2;
}
int Parent(int i) {
	if (i % 2)return i / 2;
	else return i / 2 - 1;
}

void exchange(struct Heap* Heap, int i, int j) {
	G[Heap->array[i]].index = j;
	G[Heap->array[j]].index = i;
	int temp = j;
	Heap->array[j] = Heap->array[i];
	Heap->array[i] = temp;
	return;
}

int Greater(struct Heap* Heap, int i, int j) {
	if (G[Heap->array[i]].d >= G[Heap->array[j]].d) return 1;
	else return 0;
}

void Max_Heapify_Sum(struct Heap* Heap, int index) {
	int l = Left(index);
	int r = Right(index);
	int smallest;
	if (l < Heap->next_avaiable && Greater(Heap, l, index) == 0) smallest = l;
	else if (l < Heap->next_avaiable && Greater(Heap, index, l) == 0) smallest = index;
	else return;

	if (r < Heap->next_avaiable && Greater(Heap, r, smallest) == 0) smallest = r;
	if (smallest != index) {
		exchange(Heap, index, smallest);
		Max_Heapify_Sum(Heap, smallest);
	}
	return;
}

void HeapSortBySum(struct Heap* Heap) {
	int i;
	for (i = Parent(Heap->next_avaiable - 1); i >= 0; i--) {//build a heap
		Max_Heapify_Sum(Heap, i);
	}
	return;
}

bool cmp(int a, int b)
{
	return G[b].d > G[a].d;//升序排列
}

void relax(vertex* u, vertex* v, int w, struct Heap* H) {
	if (v->d > u->d + w) {
		v->d = u->d + w;
		Max_Heapify_Sum(H, Parent(v->index));
	}
	return;
}

void InsertEdge(vertex* v1, int v2, int cost) {
	if (v1->firstarc) {
		edge* temp = v1->firstarc;
		while (temp->nextarc && temp->nextarc->v != v2) temp = temp->nextarc;
		if (!temp->nextarc) {
			temp->nextarc = (edge*)malloc(sizeof(edge));
			temp->nextarc->cost = cost;
			temp->nextarc->nextarc = NULL;
			temp->nextarc->v = v2;
		}
		else {
			if (temp->cost > cost) temp->cost = cost;
			else free(p);
		}
	}
	else {
		v1->firstarc = (edge*)malloc(sizeof(edge));
		v1->firstarc->v = v2;
		v1->firstarc->cost = cost;
		v1->firstarc->nextarc = NULL;
	}
	return;
}

int main()
{
	int n, m, s, t;
	scanf("%d %d %d %d", &n, &m, &s, &t);
	struct Heap H;
	H.array = (int*)malloc(sizeof(int));
	H.size = n;
	H.next_avaiable = n;
	G = (vertex*)malloc(sizeof(vertex)*n);
	int i;
	for (i = 0; i < n; i++) {
		G[i].v = i; 
		G[i].d = 100;
		G[i].flag = 0;
		G[i].firstarc = NULL;
		H.array[i] = i;
		G[i].index = i;
	}
	G[s-1].d = 0;
	for (i = 0; i < m; i++) {
		int u, v, cost;
		scanf("%d %d %d", &u, &v, &cost);
		//InsertEdge(&G[u-1], v-1, cost);
		if (G[u-1].firstarc) {
			edge* temp = G[u - 1].firstarc;
			while (temp->nextarc && temp->nextarc->v != v) temp = temp->nextarc;
			if (!temp->nextarc) {
				temp->nextarc = (struct e*)malloc(sizeof(struct e));
				temp->nextarc->cost = cost;
				temp->nextarc->nextarc = NULL;
				temp->nextarc->v = v;
			}
			else {
				if (temp->cost > cost) temp->cost = cost;
				else free(p);
			}
		}
		else {
			G[u - 1].firstarc = (struct e*)malloc(sizeof(struct e));
			G[u - 1].firstarc->v = v;
			G[u - 1].firstarc->cost = cost;
			G[u - 1].firstarc->nextarc = NULL;
		}
	}
	HeapSortBySum(&H);

	for (i = 0; i < n; i++) {
		int vertex = H.array[0];
		exchange(&H, vertex, (H.next_avaiable--)-1);
		edge* p = G[vertex].firstarc;
		while (p) {
			if (G[p->v].flag == 0) relax(&G[vertex], &G[p->v], p->cost, &H);
			p = p->nextarc;
		}
		G[vertex].flag = 1;
	}
	if (G[t-1].d < 100) printf("%d", G[t-1].d);
	else printf("-1");
	return 0;
}