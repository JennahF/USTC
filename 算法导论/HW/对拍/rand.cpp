#include<bits/stdc++.h>
using namespace std;
#define random(a,b) ((a)+rand()%((b)-(a)+1))

stringstream ss;

int main( int argc, char *argv[] )
{ 
	int seed=time(NULL);
	if(argc)
	{
		ss.clear();
		ss<<argv[1];
		ss>>seed;
	}
	srand(seed);
	//����Ϊ�������ʼ���������޸�
	//random(a,b)����[a,b]���������
	
	//����д���Լ����������ɴ��� 
//	printf("5\n");
	int n=20,k=10;
	int i, j;
	printf("%d %d\n", n, k);
	for(i=0;i<n;i++){
		printf(" ");
		int len = rand()%5+1;
		for(j=0;j<len;j++){
			printf("%c", 'a'+rand()%26);
		}
	}
	return 0;
	
	return 0;
}
