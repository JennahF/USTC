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
	//以上为随机数初始化，请勿修改
	//random(a,b)生成[a,b]的随机整数
	
	//以下写你自己的数据生成代码 
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
