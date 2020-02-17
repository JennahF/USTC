#include <stdio.h>
#include <stdlib.h>

#define MAXQSIZE 1000
#define IncrementSize 100

struct DoubleEndedQ{
	int base[100000];
	int front;
	int rear;
};

void initQ(struct DoubleEndedQ* Q){
	Q->front = 0;
	Q->rear = 0;
	return;
}

void EnQ_rear(struct DoubleEndedQ* Q, int e){
	Q->base[Q->rear]=e;
	Q->rear++;
	return;
}

int Empty(struct DoubleEndedQ* Q){
	if(Q->front==Q->rear) return 1;
	else return 0;
}

void DeQ_rear(struct DoubleEndedQ* Q){
	if(Empty(Q)){
		printf("The queue is empty!\n");
		return;
	}
	Q->rear--;
	return;
}

int Back(struct DoubleEndedQ* Q){
	return Q->base[Q->rear-1];
}

void DeQ_front(struct DoubleEndedQ* Q){
	if(Empty(Q)){
		printf("The queue is empty!\n");
		return;
	}
	Q->front++;
	return;
}

int main(){
	int n, k;
	scanf("%d %d", &n, &k);
	int arr[n];
	int i;
	for(i=0;i<n;i++) scanf("%d", &arr[i]);
	struct DoubleEndedQ Q;
	initQ(&Q);
	int maxk=0;
	for(i=0;i<k;i++){
		if(Empty(&Q)) EnQ_rear(&Q, i);
		else {
			while(!Empty(&Q) && arr[i]>arr[Back(&Q)]) DeQ_rear(&Q);
			EnQ_rear(&Q, i);
		}
	}
	for(i=0;i<n-k+1;i++){
		if(i!=0){
			if(Empty(&Q)) EnQ_rear(&Q, i+k-1);
			else{
				while(!Empty(&Q) && arr[i+k-1]>arr[Back(&Q)]) DeQ_rear(&Q);
				EnQ_rear(&Q, i+k-1);
			}
		}
		while(!Empty(&Q)&&Q.base[Q.front]<i) DeQ_front(&Q);
		printf("%d ", arr[Q.base[Q.front]]);
	}
	return 0;
	
} 
