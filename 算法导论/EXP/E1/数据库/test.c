#include <stdio.h>

int main(){
	int i;
	FILE* fp1 = fopen("INSERT.txt","w");
	FILE* fp2 = fopen("FIND.txt","w");
	for(i=0;i<100000;i++){
		fprintf(fp1,"INSERT %d %d\n",rand(),rand());
		fprintf(fp2, "FIND %d\n",rand());	
	}
	fclose(fp1);
	fclose(fp2);
	return 0;
} 
