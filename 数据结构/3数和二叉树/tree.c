#include <stdio.h>
#include <stdlib.h>
#include <string.h>

enum{
	node,
	thread
};

typedef struct BNode{
    char key;
    struct BNode* left;
    struct BNode* right;
    struct BNode* parent;
    int ltag;
    int rtag;
}BNode, *Btree;

typedef struct Stack{
	BNode* base[100];
	int top;
}NodeStack;

//MakeTree利用中序和先序序列创建完整二叉树，存在*T中 
void MakeTree(char* in, char* pre, Btree* T, BNode* parent){
    *T = (Btree)malloc(sizeof(BNode));
    (*T)->parent = NULL;
    (*T)->left = NULL;
    (*T)->right = NULL;
    (*T)->key = pre[0];
    (*T)->parent = parent;
    (*T)->ltag = node;
    (*T)->rtag = node;
    int index;
    for(index=0;index<strlen(in);index++) if(in[index]==pre[0]) break;
    int i;
    char in_new_left[index+1];
    char pre_new_left[index+1];
    char in_new_right[strlen(in)-index+1];
    char pre_new_right[strlen(in)-index+1];
    for(i=0;i<index;i++){
    	in_new_left[i] = in[i];
        pre_new_left[i] = pre[i+1];
    }
    in_new_left[i]='\0';
    pre_new_left[i]='\0';
    for(i=index+1;i<strlen(in);i++){
        in_new_right[i-index-1]=in[i];
        pre_new_right[i-index-1]=pre[i];
    }
    in_new_right[i-index-1]='\0';
    pre_new_right[i-index-1]='\0';
    if(strlen(in_new_left)) MakeTree(in_new_left, pre_new_left, &((*T)->left), *T);
    if(strlen(in_new_right)) MakeTree(in_new_right, pre_new_right, &((*T)->right), *T);
    
    return;

}

void PrintInorder(Btree T){
	int leftflag = 0, rightflag = 0;
	if(T->key == '*' || T->key == '/'){
		if(T->left->key != '+' && T->left->key != '-' && T->left->key != '+' && T->left->key != '/') leftflag = 0;
		else leftflag = 1;
		if(T->right->key != '+' && T->right->key != '-' && T->right->key != '*' && T->right->key != '/') rightflag = 0;
		else rightflag = 1;
	}
	if(leftflag) printf("(");
    if(T->left) PrintInorder(T->left);
	if(leftflag) printf(")");
    printf("%c", T->key);
	if(rightflag) printf("(");
    if(T->right) PrintInorder(T->right);
    if(rightflag) printf(")");
    return;
}

BNode* FIRST(BNode* t){
	BNode* temp = t;
	while(temp->ltag == node && temp->left != NULL) 
		temp = temp->left;
	if(temp->rtag == node && temp->right != NULL) return FIRST(temp->right);
	else return temp;
}

void Thread(Btree* T){
	int flag;
	if((*T)->parent){
		if((*T)->parent->ltag == node && (*T) == (*T)->parent->left) flag = 0;//T是左孩子 
		else flag = 1;//T是右孩子 
	}

	if((*T)->left == NULL){
		(*T)->ltag = thread;
		BNode* temp = (*T)->parent;
		if((*T)->right) (*T)->left = (*T)->right;//有右孩子，前驱为右孩子 
		else{
			if(temp){
				temp = (*T);
				while(temp->parent){
					if(temp == temp->parent->right && temp->parent->ltag == node && temp->parent->left) break;
					temp = temp->parent;
				}
				if(temp->parent) (*T)->left = temp->parent->left;
				else (*T)->left = temp->parent;
			}
			else (*T)->left = NULL;//根结点前驱为NULL
		} 
	}
	else Thread(&((*T)->left));
	
	if((*T)->right == NULL){
		(*T)->rtag = thread;
		BNode* temp = (*T)->parent;
		if(temp){
			if(!flag){//T是左孩子 
				if(temp->right){
					temp = temp->right;
					(*T)->right = FIRST(temp);
				}
				else (*T)->right = temp;
			}
			else{//T是右孩子 
				(*T)->right = temp; 
			}		
		}
		else (*T)->right = NULL; 
	}
	else Thread(&((*T)->right));
	return;
}

BNode* Next(BNode* t){
	if(t->rtag == thread) return t->right;
	else {
		if(t->parent == t) return NULL;//根结点 
		else{
			if(t->parent && t->parent->rtag == node && t->parent->right == t) return t->parent;
			else if(t->parent && t->parent->rtag == node && t->parent->left == t) return FIRST(t->parent->right);
			else if(t->parent && t->parent->rtag == thread) return t->parent; 
			else return NULL;
		}
		
	}
}

void PrintThread(Btree t){
	if(t == NULL) return;
	printf("%c", t->key);
	PrintThread(Next(t));
	return;
}

BNode* MakeNode(char c){
	BNode* p = (BNode*)malloc(sizeof(BNode));
	p->key = c;
	p->left = NULL;
	p->right = NULL;
	p->ltag = node;
	p->rtag = node;
	p->parent = NULL;
	return p;
}

void Push(NodeStack* S, BNode* p){
	S->base[S->top] = p;
	S->top++;
	return;
}

BNode* Pop(NodeStack* S){
	BNode* p = S->base[(S->top)-1];
	S->top--;
	return p;
}

void MakeTree_expression(char* exp, Btree* T){
	int len = strlen(exp);
	int i;
	NodeStack S;
	S.top = 0;
	BNode* temp=NULL;
	for(i=len-1;i>=0;i--){
		temp = MakeNode(exp[i]);
		if(exp[i] != '+' && exp[i] != '-' && exp[i] != '*' && exp[i] != '/'){
			Push(&S, temp);
		}
		else {
			BNode* t1 = Pop(&S);
			BNode* t2 = Pop(&S);
			temp->left = t1;
			temp->right = t2;
			temp->ltag = node;
			temp->rtag = node;
			t1->parent = temp;
			t2->parent = temp;
			Push(&S, temp);
		}
	}
	(*T) = Pop(&S);
	return;
}

void FREE(Btree* T){
	if((*T)->ltag == node) FREE(&((*T)->left));
	if((*T)->rtag == node) FREE(&((*T)->right));
	free(*T);
	return;
}


int main(){
	printf("Please input in-order and preorder of the tree:\n");
    char inorder[100];
    char preorder[100];
    printf("in-order:");
    gets(inorder);
    printf("pre-order:");
    gets(preorder);
    Btree* T = NULL;
    T = (Btree*)malloc(sizeof(Btree));
    MakeTree(inorder, preorder, T, NULL);
    printf("In-order travese sequence of the tree is:\n");
    PrintInorder(*T);
    Thread(T);
	printf("\nPost-order traverse sequence of the thread tree is:\n");
    PrintThread(FIRST(*T)); 
    printf("\nPleast input pre-order expression:\n");
	char pre[100];
	gets(pre);
	Btree* T_expression;
	T_expression = (Btree*)malloc(sizeof(Btree));
	MakeTree_expression(pre, T_expression); 
	printf("In-order Traverse of expression tree is:\n"); 
	PrintInorder(*T_expression); 
	printf("\nThe post-order of the expression is:\n");
	Thread(T_expression);
	PrintThread(FIRST(*T_expression));
	FREE(T);
	FREE(T_expression);
	free(T);
	free(T_expression);
    return 0;
}
