#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char BYTE;

BYTE TURNDOWN(char a){
	if('A' <= a && a <= 'Z')return a+32;
	else return a;
}

BYTE *path_decode(BYTE *path)
{
  BYTE *pathDecoded = (BYTE*)malloc(13 * sizeof(BYTE));
  int i=0;
  int num=0;
  while((*(path+i))!=' ' && i<8) *(pathDecoded+(i++))=TURNDOWN(*(path+(num++)));
  i=8;
  *(pathDecoded+(num++))='.';
  while(*(path+i)!=' ' && i<11) 
  	*(pathDecoded+(num++))=TURNDOWN(*(path+(i++)));
  if(num!=13) *(pathDecoded+num)='\0';
  return pathDecoded;
}

int main(){
	char path[]="FILEFILETXT";
	BYTE* path1=path_decode(path);
	puts(path1);
	return 0;
}
