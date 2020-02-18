%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#include "common/common.h"
#include "syntax_tree/SyntaxTree.h"

#include "lab1_lexical_analyzer/lexical_analyzer.h"

// external functions from lex
extern int yylex();
extern int yyparse();
extern int yyrestart();
extern FILE * yyin;

// external variables from lexical_analyzer module
extern int lines;
extern char * yytext;

// Global syntax tree.
SyntaxTree * gt;

void yyerror(const char * s);
SyntaxTreeNode* CreateTree(char* name, int num, ...);
%}

%union {
/********** TODO: Fill in this union structure *********/
struct _SyntaxTreeNode* a;
int num;
char* name;
}

/********** TODO: Your token definition here ***********/

/* compulsory starting symbol */
%token <name> ERROR 258
%token <name> ADD 259 SUB 260 MUL 261 DIV 262 LT 263 LTE 264 GT 265 GTE 266 EQ 267 NEQ 268
%token <name> ASSIN 269
%token <name> SEMICOLON 270 COMMA 271 LPARENTHESE 272 RPARENTHESE 273 LBRACKET 274 RBRACKET 275 LBRACE 276 RBRACE 277
%token <name> ELSE 278 IF 279
%token <name> INT 280 
%token <name> RETURN 281 VOID 282
%token <name> WHILE 283
%token <name> IDENTIFIER 284
%token <num> NUMBER 285
%token <name> ARRAY 286

%type <a> identifier number
%type <a> program declaration-list declaration var-declaration type-specifier fun-declaration params 
%type <a> param-list param compound-stmt local-declarations statement-list statement expression-stmt 
%type <a> selection-stmt iteration-stmt return-stmt expression var simple-expression relop additive-expression addop term mulop factor call args arg-list
%start program

%%
/*************** TODO: Your rules here *****************/
program : 
	declaration-list {$$ = CreateTree("program", 1, $1);gt->root = $$;}
 	;
declaration-list:
	declaration-list declaration {$$ = CreateTree("declaration-list", 2, $1, $2);}
	|declaration {$$ = CreateTree("declaration-list", 1, $1);}
	;
declaration:
	var-declaration {$$ = CreateTree("declaration", 1, $1);}
	|fun-declaration {$$ = CreateTree("declaration", 1, $1);}
	;
var-declaration:
	 type-specifier identifier SEMICOLON {$$ = CreateTree("var-declaration", 3, $1, $2, newSyntaxTreeNode(";"));}
	|type-specifier identifier LBRACKET number RBRACKET SEMICOLON {$$ = CreateTree("var-declaration", 6, $1, $2, newSyntaxTreeNode("["), $4, newSyntaxTreeNode("]"), newSyntaxTreeNode(";"));}
	;
type-specifier:
	INT {$$ = CreateTree("type-specifier", 1, newSyntaxTreeNode("int"));}
	|VOID {$$ = CreateTree("type-specifier", 1, newSyntaxTreeNode("void"));}
	;
fun-declaration:
	type-specifier identifier LPARENTHESE params RPARENTHESE compound-stmt {$$ = CreateTree("fun-declaration", 6, $1, $2, newSyntaxTreeNode("("), $4, newSyntaxTreeNode(")"), $6);}
	;
params:
	param-list {$$ = CreateTree("params", 1, $1);}
	|VOID {$$ = CreateTree("params", 1, newSyntaxTreeNode("void"));}
	;
param-list:
	param-list COMMA param {$$ = CreateTree("param-list", 3, $1, newSyntaxTreeNode(","), $3);}
	|param {$$ = CreateTree("param-list", 1, $1);}
	;
param:
	type-specifier identifier {$$ = CreateTree("param", 2, $1, $2);}
	|type-specifier identifier ARRAY {$$ = CreateTree("param", 3, $1,$2,newSyntaxTreeNode("[]"));}
	;
compound-stmt:
	LBRACE local-declarations statement-list RBRACE {$$ = CreateTree("compound-stmt", 4, newSyntaxTreeNode("{"), $2, $3, newSyntaxTreeNode("}"));}
	;
local-declarations:
	local-declarations var-declaration {$$ = CreateTree("local-declarations", 2, $1, $2);}
	| {$$ = CreateTree("local-declarations", 1, newSyntaxTreeNode("epsilon"));}
	;
statement-list:
	statement-list statement {$$ = CreateTree("statement-list", 2, $1, $2);}
	| {$$ = CreateTree("statement-list", 1, newSyntaxTreeNode("epsilon"));}
	;
statement:
	expression-stmt {$$ = CreateTree("statement", 1, $1);}
	|compound-stmt {$$ = CreateTree("statement", 1, $1);}
	|selection-stmt {$$ = CreateTree("statement", 1, $1);}
	|iteration-stmt {$$ = CreateTree("statement", 1, $1);}
	|return-stmt {$$ = CreateTree("statement", 1, $1);}
	;
expression-stmt:
	expression SEMICOLON {$$ = CreateTree("expression-stmt", 2, $1, newSyntaxTreeNode(";"));}
	;
selection-stmt:
	IF LPARENTHESE expression RPARENTHESE statement {$$ = CreateTree("selection-stmt", 5, newSyntaxTreeNode("if"), newSyntaxTreeNode("("), $3, newSyntaxTreeNode(")"), $5);}
	|IF LPARENTHESE expression RPARENTHESE statement ELSE statement {$$ = CreateTree("selection-stmt", 7, newSyntaxTreeNode("if"), newSyntaxTreeNode("("), $3, newSyntaxTreeNode(")"), $5, newSyntaxTreeNode("else"), $7);}
	;
iteration-stmt:
	WHILE LPARENTHESE expression RPARENTHESE statement {$$ = CreateTree("iteration-stmt", 5, newSyntaxTreeNode("while"), newSyntaxTreeNode("("), $3, newSyntaxTreeNode(")"), $5);}
	;
return-stmt:
	RETURN SEMICOLON {$$ = CreateTree("return-stmt", 2, newSyntaxTreeNode("return"), newSyntaxTreeNode(";"));}
	|RETURN expression SEMICOLON {$$ = CreateTree("return-stmt", 3, newSyntaxTreeNode("return"), $2, newSyntaxTreeNode(";"));}
	;
expression:
	var ASSIN expression {$$ = CreateTree("expression", 3, $1, newSyntaxTreeNode("="), $3);}
	|simple-expression {$$ = CreateTree("expression", 1, $1);}
	;
var:
	identifier {$$ = CreateTree("var", 1, $1);}
	|identifier LBRACKET expression RBRACKET {$$ = CreateTree("var", 4, $1, newSyntaxTreeNode("["), $3, newSyntaxTreeNode("]"));}
	;
simple-expression:
	additive-expression relop additive-expression {$$ = CreateTree("simple-expression", 3, $1, $2, $3);}
	|additive-expression {$$ = CreateTree("simple-expression", 1, $1);}
	;
relop:
	LTE {$$ = CreateTree("relop", 1, newSyntaxTreeNode("<="));}
	|LT {$$ = CreateTree("relop", 1, newSyntaxTreeNode("<"));}
	|GT {$$ = CreateTree("relop", 1, newSyntaxTreeNode(">"));}
	|GTE {$$ = CreateTree("relop", 1, newSyntaxTreeNode(">="));}
	|EQ {$$ = CreateTree("relop", 1, newSyntaxTreeNode("=="));}
	|NEQ {$$ = CreateTree("relop", 1, newSyntaxTreeNode("!="));}
	;	
additive-expression:
	additive-expression addop term {$$ = CreateTree("additive-expression", 3, $1, $2, $3);}
	|term {$$ = CreateTree("additive-expression", 1, $1);}
	;
addop:
	ADD {$$ = CreateTree("addop", 1, newSyntaxTreeNode("+"));}
	|SUB {$$ = CreateTree("addop", 1, newSyntaxTreeNode("-"));}
	;
term: 
	term mulop factor {$$ = CreateTree("term", 3, $1, $2, $3);}
	|factor {$$ = CreateTree("term", 1, $1);}
	;
mulop:
 	MUL {$$ = CreateTree("mulop", 1, newSyntaxTreeNode("*"));}
	|DIV {$$ = CreateTree("mulop", 1, newSyntaxTreeNode("/"));}
	;
factor:
	LPARENTHESE expression RPARENTHESE {$$ = CreateTree("factor", 3, newSyntaxTreeNode("("), $2, newSyntaxTreeNode(")"));}
	|var {$$ = CreateTree("factor", 1, $1);}
	|call {$$ = CreateTree("factor", 1, $1);}
	|number {$$ = CreateTree("factor", 1, $1);}
	;
call:
	identifier LPARENTHESE args RPARENTHESE {$$ = CreateTree("call", 4, $1, newSyntaxTreeNode("("), $3, newSyntaxTreeNode(")"));}
	;
args:
	arg-list {$$ = CreateTree("args", 1, $1);}
	| {$$ = CreateTree("args", 1, newSyntaxTreeNode("epsilon"));}
	;
arg-list:
	arg-list COMMA expression {$$ = CreateTree("arg-list", 3, $1, newSyntaxTreeNode(","), $3);}
	|expression {$$ = CreateTree("arg-list", 1, $1);}
	;
identifier:
	IDENTIFIER {$$ = newSyntaxTreeNode(yytext);}
	;
number:
	NUMBER {$$ = newSyntaxTreeNodeFromNum(atoi(yytext));}
	;
	

%%

SyntaxTreeNode* CreateTree(char* name, int num, ...){
	va_list valist;
	SyntaxTreeNode* root = newSyntaxTreeNode(name);
	va_start(valist, num);
	SyntaxTreeNode* temp;
	while(num){
		temp = va_arg(valist, SyntaxTreeNode*);
		SyntaxTreeNode_AddChild(root, temp);
		num--;
	}
	return root;
}


void yyerror(const char * s)
{
	// TODO: variables in Lab1 updates only in analyze() function in lexical_analyzer.l
	//       You need to move position updates to show error output below
	fprintf(stderr, "%s:%d syntax error for %s\n", s, lines+1, yytext);
	deleteSyntaxTree(gt);
	gt=0;
	gt = newSyntaxTree();
}

/// \brief Syntax analysis from input file to output file
///
/// \param input basename of input file
/// \param output basename of output file
void syntax(const char * input, const char * output)
{
	gt = newSyntaxTree();

	char inputpath[256] = "./testcase/";
	char outputpath[256] = "./syntree/";
	strcat(inputpath, input);
	strcat(outputpath, output);

	if (!(yyin = fopen(inputpath, "r"))) {
		fprintf(stderr, "[ERR] Open input file %s failed.", inputpath);
		exit(1);
	}
	lines=0;
	yyrestart(yyin);
	printf("[START]: Syntax analysis start for %s\n", input);
	FILE * fp = fopen(outputpath, "w+");
	if (!fp)	return;

	// yyerror() is invoked when yyparse fail. If you still want to check the return value, it's OK.
	// `while (!feof(yyin))` is not needed here. We only analyze once.	
	yyparse();
	printf("[OUTPUT] Printing tree to output file %s\n", outputpath);
	printSyntaxTree(fp, gt);
	deleteSyntaxTree(gt);
	gt = 0;
	

	fclose(fp);
	printf("[END] Syntax analysis end for %s\n", input);
}

/// \brief starting function for testing syntax module.
///
/// Invoked in test_syntax.c
int syntax_main(int argc, char ** argv)
{
	char filename[50][256];
	char output_file_name[256];
	const char * suffix = ".syntax_tree";
	int fn = getAllTestcase(filename);
	for (int i = 0; i < fn; i++) {
			int name_len = strstr(filename[i], ".cminus") - filename[i];
			//printf("***********");puts(filename[i]);
			strncpy(output_file_name, filename[i], name_len);
			strcpy(output_file_name+name_len, suffix);
			syntax(filename[i], output_file_name);
	}
	return 0;
}
