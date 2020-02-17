#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#define max(a,b) (a>b)?a:b

int n, k;
int NameNum;
int LUT[20000000];

int Pos(char* str){
	int len=strlen(str);
	int sum=0;
	switch(len){
		case 1:sum+=(str[0]-'a')*pow(26,0);break;
		case 2:sum+=26+(str[1]-'a')*pow(26,0)+(str[0]-'a')*pow(26,1);break;
		case 3:sum+=26+676+(str[2]-'a')*pow(26,0)+(str[1]-'a')*pow(26,1)+(str[0]-'a')*pow(26,2);break;
		case 4:sum+=26+676+17576+(str[3]-'a')*pow(26,0)+(str[2]-'a')*pow(26,1)+(str[1]-'a')*pow(26,2)+(str[0]-'a')*pow(26,3);break;
		case 5:sum+=26+676+17576+456976+(str[4]-'a')*pow(26,0)+(str[3]-'a')*pow(26,1)+(str[2]-'a')*pow(26,2)+(str[1]-'a')*pow(26,3)+(str[0]-'a')*pow(26,4);break;
	}
	return sum;
}

int FindIndex(char* str, char** Q) {
	int i;
	int index = LUT[Pos(str)];
	if(index) return index-1;
	return -1;
}

int NameExist(char* str, char** Q) {
	int i;
	int index = LUT[Pos(str)];
	if(index) return 1;
	else return 0;
}

void Add(char* str, char** Q, int* num) {
	if (NameExist(str, Q)) {
		int index = FindIndex(str, Q);
		num[index]++;
	}
	else {
		int i;
		int index = Pos(str);
		i=NameNum;
		*((char*)Q+i*6+0) = str[0];
		*((char*)Q+i*6+1) = str[1];
		*((char*)Q+i*6+2) = str[2];
		*((char*)Q+i*6+3) = str[3];
		*((char*)Q+i*6+4) = str[4];
		*((char*)Q+i*6+5) = str[5];
		LUT[index] = i+1;
		num[i]++;
		NameNum++;
	}
	return;
}

void Delete(int index, char** Q, int* num, char* str) {
	int last = NameNum-1;
	*((char*)Q+index*6+0) = *((char*)Q+last*6+0);
	*((char*)Q+index*6+1) = *((char*)Q+last*6+1);
	*((char*)Q+index*6+2) = *((char*)Q+last*6+2);
	*((char*)Q+index*6+3) = *((char*)Q+last*6+3);
	*((char*)Q+index*6+4) = *((char*)Q+last*6+4);
	*((char*)Q+index*6+5) = *((char*)Q+last*6+5);
	*((char*)Q+last*6+0) = '\0';
	num[index] = num[last];
	num[last] = 0;
	NameNum--;		
	int i = Pos(str);
	LUT[i]=0;
	if(index!= last){
		char str1[6];
		str1[0]=*((char*)Q+index*6+0);
		str1[1]=*((char*)Q+index*6+1);
		str1[2]=*((char*)Q+index*6+2);
		str1[3]=*((char*)Q+index*6+3);
		str1[4]=*((char*)Q+index*6+4);
		str1[5]=*((char*)Q+index*6+5);
		i = Pos(str1);
		LUT[i] = index+1;
	}

	return;
}

int main() {
	scanf("%d", &n);
	scanf("%d", &k);
	char names[n][6];
	char Que[k][6];
	int num[k];
	int i;
	char string[6];

	for (i = 0; i < n; i++) {
		scanf("%s", string);
		strcpy(names[i], string);
	}
	for (i = 0; i < k; i++) {
		num[i] = 0;
		Que[i][0] = '\0';
	}
	int sum = 0;

	int low = 0, high = -1,mid=0;
	int left = 0, right = 1;
	
	for(low=0;low<n;low++){
		mid = max(mid, low);
		while(mid<n && NameNum < k){
			Add(names[mid], (char**)Que, num);
			mid++;
		}
		if(NameNum<k) break;
		high = mid;
		while(high<n && NameExist(names[high], (char**)Que)) high++;
		sum += high-mid+1;
		int index = FindIndex(names[low], (char**)Que);
		if(num[index]==1) Delete(index, (char**)Que, num, names[low]);
		else num[index]--;
	} 

	printf("%d", sum);
//	fclose(fr);
	//for (i = 0; i < n; i++) free(names[i]);
	//for (i = 0; i < k; i++) free(Que[i]);
	//free(names);
	//free(Que);
	//free(num);
	//free(string);

	return 0;
}
