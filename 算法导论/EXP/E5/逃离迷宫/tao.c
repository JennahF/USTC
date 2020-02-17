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
	int hasadj;
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
	int temp = Heap->array[j];
	Heap->array[j] = Heap->array[i];
	Heap->array[i] = temp;
	return;
}

int Greater(struct Heap* Heap, int i, int j) {
	if (G[Heap->array[i]].d > G[Heap->array[j]].d) return 1;
	else return 0;
}

void Max_Heapify_Sum(struct Heap* Heap, int index) {
	if(index<0)return;
	int l = Left(index);
	int r = Right(index);
	int smallest;
	int j;
	//for(j=0;j<Heap->size;j++) printf("%d ",Heap->array[j]);
	//	printf("\n");

	//printf("	left=%d right=%d Greater(Heap, l, index)=%d Greater(Heap, index, l)=%d\n",l,r, Greater(Heap, l, index),Greater(Heap, index, l));
	if (l < Heap->next_avaiable && Greater(Heap, l, index) == 0) smallest = l;
	else if (l < Heap->next_avaiable && Greater(Heap, index, l) == 0) smallest = index;
	else return;
	if (r < Heap->next_avaiable && Greater(Heap, r, smallest) == 0) smallest = r;

	//printf("	index=%d smallest=%d h->array[smallest]=%d\n",index,smallest,Heap->array[smallest]);
	if (smallest != index) {
		exchange(Heap, index, smallest);
		Max_Heapify_Sum(Heap, Parent(index));
	}
	return;
}

void Down(struct Heap* H, int index){
	int l=Left(index);
	int r=Right(index);
	if(l<H->next_avaiable && r<H->next_avaiable){
		if(G[H->array[index]].d>G[H->array[l]].d && G[H->array[index]].d>G[H->array[r]].d){
			if(G[H->array[l]].d>=G[H->array[r]].d){
				exchange(H, index,r);
				Down(H,r);
			}
			else{
				exchange(H,index,l);
				Down(H,l);
			}
		}
		else if (G[H->array[index]].d<=G[H->array[l]].d && G[H->array[index]].d>G[H->array[r]].d){
			exchange(H, index, r);
			Down(H,r);
		}
		else if(G[H->array[index]].d>G[H->array[l]].d && G[H->array[index]].d<=G[H->array[r]].d){
			exchange(H,index,l);
			Down(H, l);
		}
	}
	else if(l<H->next_avaiable && r>=H->next_avaiable){
		if(G[H->array[index]].d>G[H->array[l]].d){
			exchange(H,index,l);
			Down(H,l);
		}
	}
}

void HeapSortBySum(struct Heap* Heap) {
	int i,j;
	for (i = Parent(Heap->next_avaiable - 1); i >= 0; i--) {//build a heap
		Max_Heapify_Sum(Heap, i);
	}
	return;
}

void relax(vertex* u, vertex* v, int w, struct Heap* H) {
	if (v->d > u->d + w) {
		v->d = u->d + w;
	}
	return;
}

void InsertEdge(vertex* v1, int v2, int cost) {
	printf("0");
	if (v1->hasadj) {
		printf("2");
		if(v1->firstarc->v==v2){
			if(v1->firstarc->cost>cost) v1->firstarc->cost=cost;
			else free(p);
		}
		else{
			edge* temp = v1->firstarc;
			while (temp->nextarc && temp->nextarc->v != v2) temp = temp->nextarc;
			if (!temp->nextarc) {
				temp->nextarc = (edge*)malloc(sizeof(edge));
				temp->nextarc->cost = cost;
				temp->nextarc->nextarc = NULL;
				temp->nextarc->v = v2;
			}
			else {
				if (temp->nextarc->cost > cost) temp->nextarc->cost = cost;
				else free(p);
			}
		}
	}
	else {
		printf("1");
		v1->hasadj=1;
		v1->firstarc = (edge*)malloc(sizeof(edge));
		v1->firstarc->v = v2;
		v1->firstarc->cost = cost;
		v1->firstarc->nextarc = NULL;
	}
	return;
}

void PRINT(int n){
	int i;
	for(i=0;i<n;i++){
		printf("%d:",i);
		edge* p=G[i].firstarc;
		while(p){
			printf(" %d %d,",p->cost,p->v);
			p=p->nextarc;
		}
		printf("\n");
	}
}

void PRINTCOST(int n){
	int i;
	for(i=0;i<n;i++){
		printf("	%d:%d",i,G[i].d);
		printf("\n");
	}
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
		G[i].hasadj=0;
	}
	G[s-1].d = 0;
	printf("%d")
	for (i = 0; i < m; i++) {
		int u, v, cost;
		scanf("%d %d %d", &u, &v, &cost);
		printf("%d %d %d %d\n",u,v,cost,G[u-1].hasadj);
		InsertEdge(&G[u-1], v-1, cost);
	}
	//PRINT(n);
	HeapSortBySum(&H);
	int j;
	//printf("\n");
	for (i = 0; i < n; i++) {
		int vertex = H.array[0];
		exchange(&H, 0, (H.next_avaiable--)-1);
		Down(&H,0);
		//printf("H.next_avaiable=%d vertex=%d\n", H.next_avaiable,vertex);
		edge* p = G[vertex].firstarc;
		while (p) {
			relax(&G[vertex], &G[p->v], p->cost, &H);
			if (G[p->v].flag == 0) Max_Heapify_Sum(&H, Parent(G[p->v].index));
			p = p->nextarc;
			//printf("\n");
		}
		G[vertex].flag = 1;
		//PRINTCOST(n);
		//for(j=0;j<H.size;j++) printf("%d ",H.array[j]);
		//printf("\n");
	}
	if (G[t-1].d < 100) printf("%d", G[t-1].d);
	else printf("-1");
	return 0;
}
