#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>


int main(){
	char str[20];
	printf("Give me a string:\n");
	fgets(str,20,stdin);
	int num;
	int str_len = strlen(str);
	int a = syscall(328, str, str_len-1,&num);

	int b = syscall(327, num);
	return 0;
}
