#include <stdio.h>
#include <stdlib.h>
#include <algorithm>

struct Node {
	int key;
	struct Node* parent;
	int rank;
	int flag; 
};

struct data{
	int i, j, alpha;
};

void Make_Set(struct Node** arr, int stu, int flag) {
	arr[stu] = (struct Node*)malloc(sizeof(struct Node));
	arr[stu]->key = stu;
	arr[stu]->rank = 0;
	arr[stu]->parent = arr[stu];
	arr[stu]->flag = flag;
	return;
}

int n, m;

struct Node* Find_Set(struct Node** a, struct Node** b, int stu, int flag) {
	if(flag == 0){
		if (a[stu]->parent != a[stu]) {
			return Find_Set(a, b, a[stu]->parent->key, a[stu]->parent->flag);
		}
		else return a[stu];
	}
	else{
		if (b[stu]->parent != b[stu]) {
			return Find_Set(a, b, b[stu]->parent->key, b[stu]->parent->flag);
		}
		else return b[stu];
	}
}

void Link(struct Node* p1, struct Node* p2) {
	if (p1->rank > p2->rank) {
		p2->parent = p1;
	}
	else {
		p1->parent = p2;
		if (p1->rank == p2->rank) p2->rank++;
	}
}

void Union(struct Node** a, struct Node** b, int stu1, int stu2) {
	Link(Find_Set(a, b, stu1, 0), Find_Set(a, b, stu2, 1));
	return;
}


bool cmp(struct data i, struct data j){
	return i.alpha > j.alpha;
}

int main(){
	scanf("%d %d", &n, &m);
	struct data Ns[m];
	int i;
	for(i=0;i<m;i++) scanf("%d %d %d", &Ns[i].i, &Ns[i].j, &Ns[i].alpha);
	std::sort(Ns, Ns+m, cmp); 
	
	struct Node** a = (struct Node**)malloc(sizeof(struct Node*)*n);
	struct Node** b = (struct Node**)malloc(sizeof(struct Node*)*n);
	for(i=0;i<n+1;i++){
		a[i]=NULL;
		b[i]=NULL;
	}
	int flag = 0;
	for(i=0;i<m;i++){
		if (a[Ns[i].i] == NULL) Make_Set(a, Ns[i].i, 0);
		if (a[Ns[i].j] == NULL) Make_Set(a, Ns[i].j, 0);
		if (b[Ns[i].i] == NULL) Make_Set(b, Ns[i].i, 1);
		if (b[Ns[i].j] == NULL) Make_Set(b, Ns[i].j, 1);
		if(Find_Set(a, b, Ns[i].i, 0) == Find_Set(a, b, Ns[i].j, 0)){
			flag = 1;
			break;
		}
		Union(a, b, Ns[i].i, Ns[i].j);
		Union(a, b, Ns[i].j, Ns[i].i);
	}
	if(flag) printf("%d", Ns[i].alpha);
	else printf("0");
	
	return 0;
} 
