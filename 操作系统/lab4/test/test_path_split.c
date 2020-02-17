#include <stdio.h>
#include <string.h>
#include <stdlib.h>
char TURNUP(char a){
	if('a' <= a && a <= 'z')return a-32;
	else return a;
}

char **path_split(char *pathInput, int *pathDepth_ret)
{
  if(pathInput==NULL) return NULL;
  int length = strlen(pathInput);
  int pathDepth = 0;
  int i;
  for(i=0;i<length;i++) if(*(pathInput + i)=='/')pathDepth++;
  char **paths = (char**)malloc(pathDepth * sizeof(char *));

  int head = 0;
  int tail = 1;
  int num = 0;
  int dot=tail;
  while(head!=length){
    if(*(pathInput+head)=='/') head++;
    else{
      if(*(pathInput+tail)!='/' && tail!=length) tail++;
      else{
        int len = tail-head;

        int j;
        if(num==pathDepth-1){
        	for(dot=head;dot<=tail;dot++)if(*(pathInput+dot)=='.')break;
          *(paths+num)=malloc(11 * sizeof(char));
          if(dot!=tail){
            int namelen=dot-head;
            int extendlen=tail-dot-1;
            if(extendlen>3) extendlen=3;
            for(j=0;j<namelen;j++) *((*(paths+num))+j)=TURNUP(*(pathInput+head+j));
            if(namelen!=8) for(;j<8;j++) *((*(paths+num))+j)=' ';
            for(j=0;j<extendlen;j++) *((*(paths+num))+8+j)=TURNUP(*(pathInput+dot+1+j));
            if(extendlen!=3) for(;j<3;j++) *((*(paths+num))+8+j)=' ';
          }
          else{
            int namelen=tail-head;
            for(j=0;j<11;j++) {
                if(j<namelen) *((*(paths+num))+j)=TURNUP(*(pathInput+head+j));
                else *((*(paths+num))+j)=' ';
            }
          }
        }
        else{
          *(paths+num)=malloc(len * sizeof(char));
          for(j=0;j<len;j++)*((*(paths+num))+j)=*(pathInput+head+j);
          num++;
        }
      	head=tail;
		tail++;
      }
    }
  }
  *pathDepth_ret = pathDepth;
  return paths;
}

int main(){
	char s[]="/dir1/dir2/file.txt";
//	char s[]="/tests";
	int depth;
	char** p = path_split(s,&depth);
	int i;
	for(i=0;i<depth;i++) puts(*(p+i));
	printf("%d",strlen(*(p)));
	free(p);
	return 0; 
}
