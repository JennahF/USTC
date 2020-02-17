#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
 
typedef struct CclinkNode{
	int passward;
	int seat;
	struct CclinkNode *next;
}CclinkNode,*cclink; 

cclink initlist(int n){
	cclink L;
	struct CclinkNode *p;
	int i;
	L = (cclink)malloc(sizeof(struct CclinkNode));
	p = L;
	for(i=1;i<n;i++){
		p->next = (struct CclinkNode*)malloc(sizeof(struct CclinkNode));
		p = p->next; 
	} 
	p->next = L;
	return L;
}

void Delete(struct CclinkNode* p){
	struct CclinkNode* temp = p;
	while(temp->next!=p)temp = temp->next;
	temp->next = p->next;
	free(p);
	return;
}

struct CclinkNode* Joseph(struct CclinkNode* p, int* thresh, FILE* fp){
	int i;
	struct CclinkNode* temp = p;
	for(i=0;i<(*thresh)-1;i++){
		temp = temp->next;
	}
	int seat = temp->seat;
	*thresh = temp->passward;
	if(temp->next == temp) p = NULL;
	else p = temp->next;
	Delete(temp);
	printf("%d ", seat);
	fprintf(fp,"%d ",seat);
	return p;
} 

int decode(char* s){
	int len=strlen(s);
	int sum=0;
	int i;
	for(i=len-1;i>=0;i--){
		sum+=(s[i]-'0')*pow(10,len-i-1); 
	}
	return sum;
}

int main(int argc, char** argv){
	int n = decode(argv[1]);
	//int n; 
	//scanf("%d", &n);
	cclink L;
	L = initlist(n); 
	//int m;
	int m = decode(argv[2]); 
	//scanf("%d", &m);
	struct CclinkNode *p;
	p = L;
	int i;
	for(i=0;i<n;i++){
		p->passward=decode(argv[i+3]);
		//scanf("%d", &p->passward);
		p->seat = i+1;
		p = p->next;
	}
	struct CclinkNode* q=L;
	FILE *fp;
	fp = fopen("result.txt","w"); 
	int thresh = m;
	p = L;//p表示每次递归的开始结点 
	while(p){
		p = Joseph(p, &thresh, fp); 
	}
	fclose(fp);
	return 0;
}
