#include <stdio.h>
#include <stdlib.h>

//#define DEBUG 0

long sum;

void Merge(int* arr, int p, int r, int q){
#ifdef DEBUG
	printf("p=%d r=%d q=%d\n",p,r,q);
#endif
	int n1 = r-p+1;
	int n2 = q-r;
	int A[n1],B[n2];
	int i;
	for(i=p;i<=q;i++){
		if(i<=r) A[i-p]=arr[i];
		else B[i-r-1]=arr[i];
	}
	int j,k;
	for(k=p,i=0,j=0;k<=q;k++){
		if(i<n1 && j<n2){
			if(A[i]<=B[j]){
				arr[k]=A[i];
				i++;
			}
			else{
				sum+=(n1-i);
#ifdef DEBUG
	int p;
	printf("A:\n");
	for(p=0;p<n1;p++)printf("%d ",A[p]);
	printf("\nB:\n");
	for(p=0;p<n2;p++)printf("%d ",B[p]);
	printf("\nsum=%d i=%d j=%d A[i]=%d B[j]= %d\n",sum,i,j,A[i],B[j]);
#endif
				arr[k]=B[j];
				j++;
			}
		}
		else if(i<n1){
			arr[k]=A[i];
			i++;
		}
		else{
			arr[k]=B[j];
			j++;
		}
	}

	return;
}

void MergeSort(int* arr, int p, int q){
#ifdef DEBUG
	printf("p=%d q=%d\n",p,q);
#endif
	if(p<q){
		int mid = (p+q)/2;
		MergeSort(arr, p, mid);
		MergeSort(arr, mid+1, q);
		Merge(arr, p, mid, q);
	}
#ifdef DEBUG
	printf("return p=%d q=%d\n\n",p,q);
#endif
	return;
}

int main(){
	int n;
	scanf("%d", &n);
	int arr[n];
	int i;
	for(i=0;i<n;i++) scanf("%d", &arr[i]);
	MergeSort(arr, 0, n-1);
	printf("%ld",sum % 10000019);
	return 0;
}
