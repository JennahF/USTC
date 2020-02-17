#include <stdio.h>
#include <stdlib.h>

struct Node {
	int key;
	struct Node* parent;
	int rank;
};


int n;

void Make_Set(struct Node** arr, int stu) {
	arr[stu] = (struct Node*)malloc(sizeof(struct Node));
	arr[stu]->key = stu;
	arr[stu]->rank = 0;
	arr[stu]->parent = arr[stu];
	return;
}

struct Node* Find_Set(struct Node** arr,  int stu) {
	if (arr[stu]->parent != arr[stu]) {
		return Find_Set(arr, arr[stu]->parent->key);
	}
	else return arr[stu];
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

void Union(struct Node** arr, int stu1, int stu2) {
	Link(Find_Set(arr, stu1), Find_Set(arr, stu2));
	return;
}

void FREE(struct Node** arr) {
	int i;
	for (i = 0; i < n; i++) {
		if (arr[i] != NULL) {
			free(arr[i]);
		}
	}
	free(arr);
	return;
}


int main() {
	
	int k, m;
	scanf("%d %d %d", &n, &k, &m);
	struct Node** arr = (struct Node**)malloc(sizeof(struct Node*)*n);
	int i;
	for (i = 0; i < n; i++) arr[i] = NULL;
	int stu1, stu2;
	for (i = 0; i < m; i++) {
		scanf("%d %d", &stu1, &stu2);
		if (arr[stu1] == NULL) Make_Set(arr, stu1);
		if (arr[stu2] == NULL) Make_Set(arr, stu2);
		if(Find_Set(arr, stu1) != Find_Set(arr, stu2)) Union(arr, stu1, stu2);
	}
	for (i = 0; i < k; i++) {
		scanf("%d %d", &stu1, &stu2);
		if (Find_Set(arr, stu1) == Find_Set(arr, stu2)) printf("1 ");
		else printf("0 ");
	}
	FREE(arr);
	return 0;
}

