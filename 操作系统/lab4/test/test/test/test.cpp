#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "pch.h"

char **path_split(char *pathInput, int *pathDepth_ret)
{
	if (pathInput == NULL) return NULL;
	int length = strlen(pathInput);
	int pathDepth = 0;
	int i;
	for (i = 0; i < length; i++) if (*(pathInput + i) == '/')pathDepth++;
	char **paths = (char**)malloc(pathDepth * sizeof(char *));

	int head = 0;
	int tail = 1;
	int num = 0;
	int dot;
	while (head != length) {
		if (*(pathInput + head) == '/') head++;
		else {
			if (*(pathInput + tail) == '.') dot = tail;
			if (*(pathInput + tail) != '/' && tail != length) tail++;
			else {
				int len = tail - head;

				int j;
				if (num == pathDepth - 1) {
					*(paths + num) = (char*)malloc(11 * sizeof(char));
					int namelen = dot - head;
					int extendlen = tail - dot - 1;
					for (j = 0; j < namelen; j++) *((*(paths + num)) + j) = *(pathInput + head + j);
					if (namelen != 8) for (; j < 8; j++) *((*(paths + num)) + j) = ' ';
					for (j = 0; j < extendlen; j++) *((*(paths + num)) + 8 + j) = *(pathInput + dot + 1 + j);
					if (extendlen != 3) for (; j < 3; j++) *((*(paths + num)) + 8 + j) = ' ';
				}
				else {
					*(paths + num) = (char*)malloc(len * sizeof(char));
					for (j = 0; j < len; j++)*((*(paths + num)) + j) = *(pathInput + head + j);
					num++;
				}
			}
			head = tail;
		}
	}
	*pathDepth_ret = pathDepth;
	return paths;
}

int main() {
	char s[] = "/dir1/dir2/file.txt";
	int depth;
	char** p = path_split(s, &depth);
	int i;
	for (i = 0; i < depth; i++) puts(*(p + i));
	free(p);
	return 0;
}