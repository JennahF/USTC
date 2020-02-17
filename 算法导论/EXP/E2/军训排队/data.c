#include <stdio.h>
#include <stdlib.h>

int main(){
	FILE* fw = fopen("data.txt", "w");
	int n=100000,k=100;
	int i, j;
	fprintf(fw, "%d %d\n", n, k);
	for(i=0;i<n;i++){
		int len = rand()%5+1;
		for(j=0;j<len;j++){
			fprintf(fw, "%c", 'A'+rand()%26);
		}
		fprintf(fw, " ");
	}
	return 0;
	
}
