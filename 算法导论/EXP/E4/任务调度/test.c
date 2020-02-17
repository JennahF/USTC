
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
 
int N;
 
int getMin(int *p,int* r,int t)
{
	int j=-1;
	int i; 
	for(i=0;i<N;i++)
	{
		if(r[i]<=t && p[i]>0)
		{
			j=i;
			break;
		}
	}
	return j;
}
 
int isShortest(int *p,int j)
{
	int b=1;
	int i;
	for(i=0;i<j;i++)
	{
		if(p[i]>0)
			b=0;
	}
	return b;
}
 
int greedy(int *p,int* r)
{
	int sum=0,t=0,j=getMin(p,r,t);
	while(j!=-1)
	{
		if(isShortest(p,j))
		{
			t+=p[j];
			sum+=t;
			p[j]=0;
			
		}
		else
		{
			t++;
			p[j]--;
			sum+=t;
		}
		j=getMin(p,r,t);
	}
	return sum;
}

void exchange(int* X, int*Y, int i, int j) {
	int temp = X[i];
	X[i] = X[j];
	X[j] = temp;
	temp = Y[i];
	Y[i] = Y[j];
	Y[j] = temp;
	return;
}

void Random_Sort(int* X, int* Y, int p, int r) {
	if (r >= N || p < 0 || p >= r)return;
	int index = p + rand() % (r - p + 1);
	int x = X[index];
	int i = p - 1;
	int j;
	exchange(X, Y, index, r);
	for (j = p; j < r; j++) {
		if (X[j] < x) {
			i++;
			exchange(X, Y, i, j);
		}
	}
	exchange(X, Y, i + 1, r);
	if (p < i + 1) Random_Sort(X, Y, p, i);
	if (i + 2 < r) Random_Sort(X, Y, i + 2, r);
	return;
}
 
void main()
{
	scanf("%d", &N);
	int p[N];
	int r[N];
	int i;
	for(i=0;i<N;i++){
		scanf("%d %d", &r[i], &p[i]);
		r[i]--;
	}
	Random_Sort(p,r,0,N-1);
	int t=greedy(p,r);
	printf("%d\n",t);
	getchar();
}
