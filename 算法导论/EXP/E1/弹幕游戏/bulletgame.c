#include <stdio.h>
#include <stdlib.h>
#define random(a,b) ((a)+rand()%((b)-(a)+1))

int n;

void exchange(int* a,int i,int j){
	int temp=a[i];
	a[i]=a[j];
	a[j]=temp;
	return;
}

void quicksort(int* a,int left,int right){
	if(left>=right)return;
	int index=random(left,right);
	int x = a[index];
	exchange(a, index, right);
	int i=left-1;
	int j;
	for(j=left;j<right;j++){
		if(a[j]<x){
			i++;
			exchange(a,i,j);
		}
	}
	exchange(a,i+1,right);
	quicksort(a,left,i);
	quicksort(a,i+2,right);
	return;
}

int main(){
	scanf("%d",&n);
	int a[n];
	int i;
	for(i=0;i<n;i++) scanf("%d", &a[i]);
	quicksort(a,0,n-1);
	int max=0; 
	for(i=0;i<n-1;i++){
		a[i]=a[i+1]-a[i];
		if(max<a[i]) max=a[i];
	}
	printf("%d",max);
	return 0;
}
