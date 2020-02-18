#include "SyntaxTree.h"

int main()
{
	SyntaxTree * tree = newSyntaxTree();
	tree->root = newSyntaxTreeNode("root");
	SyntaxTreeNode * newNode;
	SyntaxTreeNode * aNode;
	newNode = newSyntaxTreeNode("a");
	aNode = newNode;
	SyntaxTreeNode_AddChild(tree->root, newNode);
	newNode = newSyntaxTreeNode("b");
	SyntaxTreeNode_AddChild(tree->root, newNode);
	newNode = newSyntaxTreeNode("c");
	SyntaxTreeNode_AddChild(tree->root, newNode);
	newNode = newSyntaxTreeNode("aa");
	SyntaxTreeNode_AddChild(aNode, newNode);
	newNode = newSyntaxTreeNode("ac");
	SyntaxTreeNode_AddChild(aNode, newNode);

	printSyntaxTree(stdout, tree);
	return 0;
}
