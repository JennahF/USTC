// 数据库.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

#define INSERT 0
#define FIND 1
#define EXIT 2
#define ERROR 3
#define MAX_SIZE 1000000
#define Heap_Increment 10000



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

RBNode NIL = { 0,NULL,NULL,NULL,BLACK,0 };

RBNode* Sibling(RBNode* p) {
	if (p == p->parent->left) return p->parent->right;
	else return p->parent->left;
}

int DecodeIns(char* ins) {
	if (strncmp(ins, "INSERT", 6) == 0) return 0;
	else if (strncmp(ins, "FIND", 4) == 0) return 1;
	else if (strncmp(ins, "EXIT", 4) == 0) return 2;
	else return 3;
}

int DecodeData(char* ins) {//Insert instruction
	int i;
	int data = 0;
	for (i = strlen(ins) - 1; i >= 0; i--) {
		if (ins[i] == ' ') break;
		data += (ins[i] - '0')*pow(10, strlen(ins) - i - 1);
	}
	return (int)data;
}

RBNode* FindSuccessor(RBNode* p) {
	if (p->right != &NIL) {
		RBNode* temp = p->right;
		while (temp->left != &NIL) temp = temp->left;
		return temp;
	}
	return NULL;
}

RBNode* FindPrecessor(RBNode* p) {
	if (p->parent) {
		if (p == p->parent->right) return p->parent;
		else {
			RBNode* temp = p->parent;
			while (temp->parent && temp == temp->parent->left) temp = temp->parent;
			return temp->parent;
		}
	}
	return NULL;
}

RBNode* farnaphew(RBNode* p) {
	if (p == p->parent->left) return Sibling(p)->right;
	else return Sibling(p)->left;
}

RBNode* nearnaphew(RBNode* p) {
	if (p == p->parent->left) return Sibling(p)->left;
	else return Sibling(p)->right;
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
		if (Sibling(p->parent)->color == RED) {//case 1:叔叔为红
			p->parent->color = BLACK;
			Sibling(p->parent)->color = BLACK;
			p->parent->parent->color = RED;
			RBInsertAdjust(T, p->parent->parent);
		}
		else {
			if (p->parent->parent->left == p->parent && p == p->parent->right) {//case 2:叔叔为黑，自己是爸爸的右孩子
				LeftRotate(T, p->parent);
				p->left->size = p->left->left->size + p->left->right->size + 1;
				p->size = p->left->size + p->right->size + 1;
				RBInsertAdjust(T, p->left);
			}
			else if (p->parent->parent->left == p->parent && p == p->parent->left) {//case 3:叔叔为黑，自己是爸爸的左节点
				RightRotate(T, p->parent->parent);
				p->parent->color = BLACK;
				Sibling(p)->color = RED;
				Sibling(p)->size = Sibling(p)->left->size + Sibling(p)->right->size + 1;
				p->parent->size = p->size + Sibling(p)->size + 1;
			}
			else if (p->parent->parent->right == p->parent && p == p->parent->left) {//case 2镜像
				RightRotate(T, p->parent);
				p->right->size = p->right->left->size + p->right->right->size + 1;
				p->size = p->left->size + p->right->size + 1;
				RBInsertAdjust(T, p->right);
			}
			else if (p->parent->parent->right == p->parent && p == p->parent->right) {//case 3镜像
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

void find(RBTree T, int data) {
	if (T->data == data) printf("%d\n", T->data);
	else if (T->data < data) {
		if (T->right != &NIL) return find(T->right, data);
		else printf("%d\n", T->data);
	}
	else {
		if (T->left != &NIL) return find(T->left, data);
		else printf("%d\n", FindPrecessor(T)->data);
	}
}

void FREE(RBTree T) {
	if (T == NULL) return;
	FREE(T->left);
	FREE(T->right);
	free(T);
}

int main() {
	char instruction[50];
	int insType;
	RBTree T = NULL;
	int data;
	while (1) {
		gets_s(instruction);
		insType = DecodeIns(instruction);
		data = DecodeData(instruction);
		if (insType == EXIT) break;
		else if (insType == INSERT) {
			RBInsert(&T, data);
		}
		else if (insType == FIND) {
			find(T, data);
		}
		else {
			printf("The instruction does not exist");
			break;
		}
	}
	//FREE(T);
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
