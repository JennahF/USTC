#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

void STRCPY(char* cmd, char cmdline[256], int a, int b){
	int i;
	for(i=a;i<b;i++){
		*(cmd+i-a)=cmdline[i];
	}
	*(cmd+i-a)='\0';
	return;
}

int main(){
	char cmdline[256];
	int cmd_num;
	int cmd_start,cmd_end;
	int pipe=0;
	int findcmd=0;
	int i,p;
	FILE* fp1;
	FILE* fp2;
	while (1) {
		printf("OSLab2->");
		fgets(cmdline,256,stdin);
		cmd_num=strlen(cmdline);
		cmd_start=0;
		
		for (i=0; i<cmd_num; i++) {
			if(cmdline[i]=='|')pipe=i;
			if(cmdline[i]==';' || i==cmd_num-1){
				findcmd=1;
				cmd_end=i;
			}
			if(findcmd){
				if (pipe) {
					char *cmd1;
					char *cmd2;
					cmd1 = malloc((pipe-cmd_start)*sizeof(char));
					cmd2 = malloc((cmd_end-pipe-1)*sizeof(char));
					STRCPY(cmd1,cmdline,cmd_start,pipe);
					STRCPY(cmd2,cmdline,pipe+1,cmd_end);

					fp1 = popen(cmd1,"r");
					if(fp1==NULL){printf("file open failed!");break;}

					fp2 = popen(cmd2, "w");
					if(fp2==NULL){printf("file open failed!");break;}
					char *buffer;
					buffer=(char*)malloc(200*sizeof(char));

					while(fgets(buffer,200,fp1)!=NULL)fputs(buffer,fp2);

					pclose(fp1);
					pclose(fp2);
					free(buffer);
					free(cmd1);
					free(cmd2);
				}
				else {
					char *cmd;
					cmd = (char*)malloc((cmd_end-cmd_start)*sizeof(char));
					STRCPY(cmd,cmdline,cmd_start,cmd_end);
					system(cmd);
					free(cmd);
            			}
				findcmd=0;
				cmd_start=cmd_end+1;
				pipe=0;  
			}      
		}    
	}
	return 0;}
