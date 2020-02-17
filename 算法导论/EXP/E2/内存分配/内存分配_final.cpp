#include <stdio.h>
#include <stdlib.h>

#define max3(a, b, c) (((a>b) ? a : b)>c ? ((a>b) ? a : b): c)


enum {
	RED,
	BLACK
};

typedef struct INT {
	int low;
	int high;
}INT;

typedef struct RBNode {
	INT data;
	struct RBNode* parent;
	struct RBNode* left;
	struct RBNode* right;
	int color;
	int max;
}RBNode, *RBTree;

RBNode NIL = { {0, 0},NULL,NULL,NULL,BLACK,0 };

RBNode* Sibling(RBNode* p) {
	if (p == p->parent->left) return p->parent->right;
	else return p->parent->left;
}

void LeftRotate(RBTree* T, RBNode* p) {
	if (p == &NIL) {
		printf("Leaves can not be rotated!");
		return;
	}
	p->right->parent = p->parent;
	if (p->parent) {
		if (p == p->parent->left) p->parent->left = p->right;
		else p->parent->right = p->right;
	}
	p->parent = p->right;
	RBNode* temp = p->right->left;
	p->right->left = p;
	p->right = temp;
	if (temp != &NIL) temp->parent = p;
	if (p == *T) *T = p->parent;
	return;
}

void RightRotate(RBTree* T, RBNode* p) {
	if (p == &NIL) {
		printf("Leaves can not be rotated!");
		return;
	}
	p->left->parent = p->parent;
	if (p->parent) {
		if (p == p->parent->left) p->parent->left = p->left;
		else p->parent->right = p->left;
	}
	p->parent = p->left;
	RBNode* temp = p->left->right;
	p->left->right = p;
	p->left = temp;
	if (temp != &NIL) temp->parent = p;
	if (p == *T) *T = p->parent;
	return;
}

void RBInsertAdjust(RBTree* T, RBNode* p) {
	if (p == *T) {
		p->color = BLACK;
		return;
	}
	else if (p->parent->color == BLACK) {
		return;
	}
	else {
		if (Sibling(p->parent)->color == RED) {//case 1:����Ϊ��
			p->parent->color = BLACK;
			Sibling(p->parent)->color = BLACK;
			p->parent->parent->color = RED;
			RBInsertAdjust(T, p->parent->parent);
		}
		else {
			if (p->parent->parent->left == p->parent && p == p->parent->right) {//case 2:����Ϊ�ڣ��Լ��ǰְֵ��Һ���
				LeftRotate(T, p->parent);
				p->left->max = max3(p->left->left->max, p->left->right->max, p->left->data.high);
				p->max = max3(p->left->max, p->right->max, p->data.high);
				RBInsertAdjust(T, p->left);
			}
			else if (p->parent->parent->left == p->parent && p == p->parent->left) {//case 3:����Ϊ�ڣ��Լ��ǰְֵ���ڵ�
				RightRotate(T, p->parent->parent);
				p->parent->color = BLACK;
				Sibling(p)->color = RED;
				Sibling(p)->max = max3(Sibling(p)->left->max, Sibling(p)->right->max, Sibling(p)->data.high);
				p->parent->max = max3(p->max , Sibling(p)->max, p->parent->data.high);
			}
			else if (p->parent->parent->right == p->parent && p == p->parent->left) {//case 2����
				RightRotate(T, p->parent);
				p->right->max = max3(p->right->left->max, p->right->right->max, p->right->data.high);
				p->max= max3(p->left->max, p->right->max, p->data.high);
				RBInsertAdjust(T, p->right);
			}
			else if (p->parent->parent->right == p->parent && p == p->parent->right) {//case 3����
				LeftRotate(T, p->parent->parent);
				p->parent->color = BLACK;
				Sibling(p)->color = RED;
				Sibling(p)->max = max3(Sibling(p)->left->max, Sibling(p)->right->max, Sibling(p)->data.high);
				p->parent->max = max3(p->max, Sibling(p)->max, p->parent->data.high);
			}
			else {
				printf("WTF?\n");
			}
		}
	}
	return;
}

void RBInsert(RBTree* T, INT data) {
	if ((*T) == &NIL) {
		*T = (RBNode*)malloc(sizeof(RBNode));
		(*T)->color = BLACK;
		(*T)->data = data;
		(*T)->left = &NIL;
		(*T)->parent = NULL;
		(*T)->right = &NIL;
		(*T)->max = data.high;
	}
	else {
		RBNode* p = (*T);
		RBNode* parent = NULL;
		while (1) {
			if (data.low < p->data.low) {
				if (p->left == &NIL) break;
				else p = p->left;
			}
			else {
				if (p->right == &NIL) break;
				else p = p->right;
			}
		}//endwhile
		if (p->data.low > data.low) {
			p->left = (RBNode*)malloc(sizeof(RBNode));
			parent = p;
			p = p->left;
		}
		else {
			p->right = (RBNode*)malloc(sizeof(RBNode));
			parent = p;
			p = p->right;
		}
		p->color = RED;
		p->data = data;
		p->left = &NIL;
		p->parent = parent;
		p->right = &NIL;
		p->max = data.high;
		while (parent) {
			if (parent->max < max3(parent->left->max, parent->right->max, parent->data.high)) {
				parent->max = max3(parent->left->max, parent->right->max, parent->data.high);
				parent = parent->parent;
			}
			else break;
		}
		RBInsertAdjust(T, p);
	}
	return;
}

RBNode* FindSuccessor(RBNode* p) {
	if (p->right != &NIL) {
		RBNode* temp = p->right;
		while (temp->left != &NIL) temp = temp->left;
		return temp;
	}
	return NULL;
}

int Overlap(INT i1, INT i2) {
	if (i1.high >= i2.low && i2.high >= i1.low) return 1;
	else return 0;
}
/*
int IntervalSearch(RBTree T, INT data) {
	RBNode* p = T;
	while (p != &NIL && !Overlap(p->data, data)) {
		if (p->left != &NIL && p->left->max >= data.low) p = p->left;
		else p = p->right;
	}
	if (p == &NIL) return 0;
	else return -1;
}*/

int IntervalSearch(RBTree T, INT data) {
	if (T == &NIL) return 0;
	if (data.low > T->max) {
		return 0;
	}
	else {
		if (Overlap(T->data, data)) return 1;
		else {
			if (data.low >= T->data.low) return IntervalSearch(T->right, data);
			else return IntervalSearch(T->left, data);
		}
	}
}


int main() {
	RBTree T = &NIL;
	int n;
	scanf("%d", &n);
	int i = 0;
	int low;
	int high;
	INT data;
	while (i < n) {
		scanf("%d", &low);
		scanf("%d", &high);
		data.low = low;
        data.high= high;
		if (IntervalSearch(T, data) == 0) {
			printf("0\n");
			RBInsert(&T, data);
		}
		else printf("-1\n");
		i++;
	}
	return 0;
}
