#include<iostream>
#include<algorithm>
#include<cstring>
#include<cstdio>
#include<vector>
#include<stack>
#include<queue>
#include<cmath>
using namespace std;

const int maxn=1000+5;

int n,m;

vector<int> G[maxn];
int pre[maxn],lowlink[maxn],sccno[maxn],dfs_clock,scc_cnt;
int num[maxn];
int map[maxn][maxn];
int d[maxn];
stack<int> S;

void dfs(int u)
{
    pre[u]=lowlink[u]=++dfs_clock;
    S.push(u);
    for(int i=0;i<G[u].size();i++)
    {
        int v=G[u][i];
        if(!pre[v])
        {
            dfs(v);
            lowlink[u]=min(lowlink[u],lowlink[v]);
        }
        else if(!sccno[v])
        {
            lowlink[u]=min(lowlink[u],pre[v]);
        }
    }
    if(lowlink[u]==pre[u])
    {
        scc_cnt++;
        for(;;)
        {
            int x=S.top(); S.pop();
            sccno[x]=scc_cnt;
            if(x==u)  break;
        }
    }
}

void find_scc()
{
    dfs_clock=scc_cnt=0;
    memset(sccno,0,sizeof(sccno));
    memset(pre,0,sizeof(pre));
    for(int i=0;i<n;i++)
        if(!pre[i])  dfs(i);
}

int dp(int u)
{
    int& ans=d[u];
    if(ans!=-1)   return ans;
    ans=num[u];
    for(int i=1;i<=scc_cnt;i++)
    {
        if(i!=u && map[u][i])   ans=max(ans,num[u]+dp(i));
    }
    return ans;
}

int main()
{
    //freopen("D:\\input.txt","r",stdin);
    int T;
    scanf("%d",&T);
    while(T--)
    {
        scanf("%d%d",&n,&m);
        for(int i=0;i<n;i++)  G[i].clear();
        while(m--)
        {
            int u,v;
            scanf("%d%d",&u,&v);
            u--; v--;
            G[u].push_back(v);
        }
        find_scc();
        memset(num,0,sizeof(num));
        memset(map,0,sizeof(map));
        for(int i=0;i<n;i++)
            num[sccno[i]]++;
        for(int u=0;u<n;u++)
        {
            for(int i=0;i<G[u].size();i++)
            {
                int x=sccno[u];
                int y=sccno[G[u][i]];
                map[x][y]=1;
            }
        }
        int ans=0;
        memset(d,-1,sizeof(d));
        for(int i=1;i<=scc_cnt;i++)
            ans=max(ans,dp(i));
        printf("%d\n",ans);
    }
    return 0;
}
