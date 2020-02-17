#include <stdio.h>
#include <stdlib.h>


enum {
	RED,
	BLACK
};

typedef struct RBNode {
	int data;
	struct RBNode* parent;
	struct RBNode* left;
	struct RBNode* right;
	int color;
	int size;
}RBNode, *RBTree;

RBNode NIL = {0,NULL,NULL,NULL,BLACK,0};

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
		if(p == p->parent->left) p->parent->left = p->right;
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
		if (Sibling(p->parent)->color == RED) {//case 1:????
			p->parent->color = BLACK;
			Sibling(p->parent)->color = BLACK;
			p->parent->parent->color = RED;
			RBInsertAdjust(T, p->parent->parent);
		}
		else {
			if (p->parent->parent->left == p->parent && p == p->parent->right) {//case 2:????,?????????
				LeftRotate(T, p->parent);
				p->left->size = p->left->left->size + p->left->right->size + 1;
				p->size = p->left->size + p->right->size + 1;
				RBInsertAdjust(T, p->left);
			}
			else if (p->parent->parent->left == p->parent && p == p->parent->left) {//case 3:????,?????????
				RightRotate(T, p->parent->parent);
				p->parent->color = BLACK;
				Sibling(p)->color = RED;
				Sibling(p)->size = Sibling(p)->left->size + Sibling(p)->right->size + 1;
				p->parent->size = p->size + Sibling(p)->size + 1;
			}
			else if (p->parent->parent->right == p->parent && p == p->parent->left) {//case 2??
				RightRotate(T, p->parent);
				p->right->size = p->right->left->size + p->right->right->size + 1;
				p->size = p->left->size + p->right->size + 1;
				RBInsertAdjust(T, p->right);
			}
			else if (p->parent->parent->right == p->parent && p == p->parent->right) {//case 3??
				LeftRotate(T, p->parent->parent);
				p->parent->color = BLACK;
				Sibling(p)->color = RED;
				Sibling(p)->size = Sibling(p)->left->size + Sibling(p)->right->size + 1;
				p->parent->size = p->size + Sibling(p)->size + 1;
			}
			else {
				printf("WTF?\n");
			}
		}
	}
	return;
}

void RBInsert(RBTree* T, int data) {
	if (*T == NULL) {
		*T = (RBNode*)malloc(sizeof(RBNode));
		(*T)->color = BLACK;
		(*T)->data = data;
		(*T)->left = &NIL;
		(*T)->parent = NULL;
		(*T)->right = &NIL;
		(*T)->size = 1;
	}
	else {
		RBNode* p = (*T);
		RBNode* parent = NULL;
		while (1) {
			if (data < p->data) {
				if (p->left == &NIL) break;
				else p = p->left;
			}
			else {
				if (p->right == &NIL) break;
				else p = p->right;
			}
		}//endwhile
		if (p->data > data) {
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
		p->size = 1;
		while (parent) {
			parent->size++;
			parent = parent->parent;
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

RBNode* farnaphew(RBNode* p) {
	if (p == p->parent->left) return Sibling(p)->right;
	else return Sibling(p)->left;
}

void RBDeleteAdjust(RBTree* T, RBNode* p) {
	if (p == *T) {
		p->color = RED;
		return;
	}
	if (Sibling(p)->color == RED) {//case 1
		if (p == p->parent->left) LeftRotate(T, p->parent);
		else RightRotate(T, p->parent);
		p->parent->color = RED;
		p->parent->parent->color = BLACK;
		p->parent->size = p->size + Sibling(p)->size + 1;
		p->parent->parent->size = p->parent->size + Sibling(p->parent)->size + 1;
		RBDeleteAdjust(T, p);
	}
	else {
		if (farnaphew(p)->color == RED) {//case 3, end
			if (p == p->parent->left) LeftRotate(T, p->parent);
			else RightRotate(T, p->parent);
			int color = p->parent->color;
			p->parent->color = p->parent->parent->color;
			p->parent->parent->color = color;
			Sibling(p->parent)->color = BLACK;
			p->parent->size = p->size + Sibling(p)->size + 1;
			RBNode* temp = p->parent->parent;
			while (temp) {
				temp->size = temp->left->size + temp->right->size + 1;
				temp = temp->parent;
			}
		}
		else if (Sibling(p) != &NIL && Sibling(farnaphew(p))->color == RED) {//case 4,back to 3
			if (p == p->parent->left) RightRotate(T, Sibling(p));
			else LeftRotate(T, Sibling(p));
			int color = Sibling(p)->color;
			Sibling(p)->color = farnaphew(p)->color;
			farnaphew(p)->color = color;
			farnaphew(p)->size = farnaphew(p)->left->size + farnaphew(p)->right->size + 1;
			Sibling(p)->size = Sibling(p)->left->size + Sibling(p)->right->size + 1;
			RBDeleteAdjust(T, p);
		}
		else {//case 2
			Sibling(p)->color = RED;
			if (p->parent->color == RED) {//end
				p->parent->color = BLACK;
				RBNode* temp = p->parent;
				while (temp) {
					temp->size = temp->left->size + temp->right->size + 1;
					temp = temp->parent;
				}
			}
			else {
				p->parent->size = p->size + Sibling(p)->size + 1;
				RBDeleteAdjust(T, p->parent);
			}
		}
	}
	return;
}

void RBDelete(RBTree* T, int data) {
	RBNode* p = (*T);
	while (p->data != data) {
		if (data < p->data) p = p->left;
		else p = p->right;
	}
	if (p->left != &NIL && p->right != &NIL) {
		RBNode* successor = FindSuccessor(p);
		if (successor == NULL) printf("NULL?\n");
		int temp = successor->data;
		successor->data = p->data;
		p->data = temp;
		p = successor;
	}
	//??p
	if (p->color == RED) {//??,??????
		if (p == p->parent->left) p->parent->left = &NIL;
		else p->parent->right = &NIL;
		RBNode* temp = p->parent;
		while (temp) {
			temp->size--;
			temp = temp->parent;
		}
		free(p);
	}
	else {
		if (p->left != &NIL || p->right != &NIL) {//??,??????
			RBNode* child = NULL;
			if (p->left != &NIL) child = p->left;
			else child = p->right;

			if (p->parent) {
				if (p == p->parent->left) p->parent->left = child;
				else p->parent->right = child;
			}
			else *T = child;

			child->parent = p->parent;
			child->color = BLACK;
			RBNode* temp = child->parent;
			while (temp) {
				temp->size--;
				temp = temp->parent;
			}
			free(p);
		}
		else {//??,???

			if (p->parent) {
				if (p == p->parent->left) {
					p->parent->left = &NIL;
					NIL.parent = p->parent;
					p->parent->size--;
					RBDeleteAdjust(T, p->parent->left);
				}
				else {
					p->parent->right = &NIL;
					NIL.parent = p->parent;
					p->parent->size--;
					RBDeleteAdjust(T, p->parent->right);
				}
			}
			else *T = NULL;
			
			free(p);
		}
	}
}

int SearchKMin(RBTree T, int k) {
	if (T->left->size + 1 == k) return T->data;
	else if (T->left->size + 1 < k) return SearchKMin(T->right, k - T->left->size - 1);
	else return SearchKMin(T->left, k);
}

int main() {
	RBTree T = NULL;
	int n;
	scanf("%d", &n);
	int i = 0;
	char instruction;
	char enter;
	int data;
	scanf("%c", &enter);
	while (i < n) {
		scanf("%c", &instruction);
		scanf("%d", &data);
		//printf("ins=%c,data=%d", instruction, data);
		if(i != n-1) scanf("%c", &enter);
		switch (instruction) {
		case 'I': {
			RBInsert(&T, data);
			break;
		}
		case 'K': {
			data = SearchKMin(T, data);
			printf("%d\n", data);
			break;
		}
		case 'D': {
			RBDelete(&T, data);
			break;
		}
		default:printf("Invalid Instruction!\n"); break;
		}
		i++;
	}
	return 0;
}

