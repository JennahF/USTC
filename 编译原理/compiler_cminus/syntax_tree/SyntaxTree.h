#ifndef __SYNTAXTREE_H__
#define __SYNTAXTREE_H__

#include <stdio.h>

struct _SyntaxTreeNode {
	struct _SyntaxTreeNode * parent;
	struct _SyntaxTreeNode * children[1000];
	int children_num;

	char name[30];
};
typedef struct _SyntaxTreeNode SyntaxTreeNode;

SyntaxTreeNode * newSyntaxTreeNodeNoName();
SyntaxTreeNode * newSyntaxTreeNode(const char * name);
SyntaxTreeNode * newSyntaxTreeNodeFromNum(const int num);
int SyntaxTreeNode_AddChild(SyntaxTreeNode * parent, SyntaxTreeNode * child);
void deleteSyntaxTreeNodeNoRecur(SyntaxTreeNode * node);
void deleteSyntaxTreeNode(SyntaxTreeNode * node, int recursive);

struct _SyntaxTree {
	SyntaxTreeNode * root;
};
typedef struct _SyntaxTree SyntaxTree;

SyntaxTree * newSyntaxTree();
void deleteSyntaxTree(SyntaxTree * tree);
void printSyntaxTree(FILE * fout, SyntaxTree * tree);

#endif /* SyntaxTree.h */
