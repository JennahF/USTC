%option noyywrap
%{
/*****************声明和选项设置  begin*****************/
#include <stdio.h>
#include <stdlib.h>

#include "lab1_lexical_analyzer/lexical_analyzer.h"
#include "common/common.h"

#ifndef LAB1_ONLY
#include "syntax_analyzer.h"
#endif

int files_count;
int lines;
int pos_start;
int pos_end;

/*****************声明和选项设置  end*****************/

%}

commentPattern "/*"([^\*]|(\*)*[^\*/])*(\*)*"*/"
digitPattern [0-9]
numberPattern {digitPattern}+
identifierPattern [a-zA-Z][a-zA-Z]*

%%

 /******************TODO*********************/
 /****请在此补全所有flex的模式与动作  start******/

{commentPattern} {/*return COMMENT;*/}
"+" {return ADD;}
"-" {return SUB;}
"*" {return MUL;}
"/" {return DIV;}

"<" {return LT;}
"<=" {return LTE;}
">" {return GT;}
">=" {return GTE;}
"==" {return EQ;}
"!=" {return NEQ;}
"=" {return ASSIN;}
";" {return SEMICOLON;}
"," {return COMMA;}
"(" {return LPARENTHESE;}
")" {return RPARENTHESE;}
"[" {return LBRACKET;}
"]" {return RBRACKET;}
"{" {return LBRACE;}
"}" {return RBRACE;}
"[]" {return ARRAY;}
"else" {return ELSE;}
"if" {return IF;}
"int" {return INT;}
"return" {return RETURN;}
"void" {return VOID;}
"while" {return WHILE;}
{identifierPattern} {return IDENTIFIER;}
{numberPattern} {return NUMBER; }

\n {lines++;/*return EOL;*/}
[ \t] {/*return BLANK;*/}

. {return ERROR;}



 /****请在此补全所有flex的模式与动作  end******/
%%
/****************C代码 start*************/

/// \brief analysize a *.cminus file
///
///	\param input_file_name
/// \param output_file_name
void analyzer(char* input_file_name, char* output_file_name){
	lines = 1;
	pos_start = 1;
	pos_end = 1;
	char input_path[256] = "./testcase/";
	strcat(input_path, input_file_name);
	char output_path[256] = "./tokens/";
	strcat(output_path, output_file_name);
	if(!(yyin = fopen(input_path,"r"))){
		printf("[ERR] No input file\n");
		exit(1);
	}
	printf("[START]: Read from: %s\n", input_file_name);
	FILE *fp = fopen(output_path,"w+");

	int token;
	while ((token = yylex())) {
		pos_start = pos_end;
		pos_end += strlen(yytext);
		switch (token) {
			case ERROR:
				fprintf(fp, "[ERR]: unable to analysize %s at %d line, from %d to %d\n", yytext, lines, pos_start, pos_end);
				break;
			case COMMENT: {
				pos_end -= strlen(yytext);
				int i = 0;
				for ( i = 0; i < strlen(yytext); i++)
				{
					if (yytext[i] == '\n') {
						pos_start = pos_end = 1;
						lines++;
        	        }
					else {
                		pos_end++;
					}
				}
				break;
			}
			case BLANK:
				break;
			case EOL:
				lines++;
				pos_start = 1,pos_end = 1;
				break;
			case NUMBER:
				fprintf(fp, "%d\t%d\t%d\t%d\t%d\n",atoi(yytext), token, lines, pos_start, pos_end);
				break;
			default :
				fprintf(fp, "%s\t%d\t%d\t%d\t%d\n",yytext, token, lines, pos_start, pos_end);
		}
	}
	fclose(fp);
	printf("[END]: Analysis completed.\n");
}

/// \brief process all *.cminus file
///
/// note that: use relative path for all i/o operations
int lex_main(int argc, char **argv){
	char filename[50][256];
	char output_file_name[256];
	char suffix[] = ".tokens";
	files_count = getAllTestcase(filename);
	for(int i = 0; i < files_count; i++){
			int name_len = strstr(filename[i], ".cminus")-filename[i];
			strncpy(output_file_name, filename[i], name_len);
			strcpy(output_file_name+name_len, suffix);
			analyzer(filename[i],output_file_name);
	}
	return 0;
}
/****************C代码 end*************/

