#include <bits/stdc++.h>
using namespace std;
#define maxn 1000005
char text[maxn], patten[maxn];
int net[maxn];
void Cal(){
	scanf("%s %s", patten,text);
    int la = strlen(text);
    int lb = strlen(patten);
    memset(net, 0, sizeof(net));
    for (int i = 1; i < lb; ++i) {
        int j = i;
        while (j > 0) {
            j = net[j];
            if (patten[j] == patten[i]) {
                net[i + 1] = j + 1;
                break;
            }
        }
    }
    int cnt = 0;
    for (int i = 0, j = 0; i < la; ++i) {
        if (j < lb && patten[j] == text[i]) {
            j++;
        } else {
            while (j > 0) {
                j = net[j];
                if (text[i] == patten[j]) {
                    j++;
                    break;
                }
            }
        }
        if (j == lb)
            cnt++;
    }
    printf("%d\n", cnt);
}

int main() {
	int N;
	cin>> N;
	while(N){
		Cal();
		N--;
	} 
	return 0;
}
