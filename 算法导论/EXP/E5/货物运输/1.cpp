#include <iostream>
#include <iomanip>
#include <cstring>
#include <stack>
using namespace std;
#define LL long long
const int N = 105;                  //��󶥵���
const LL INF = 0x7fffffffffffffff;  //�����
LL g[N][N];                         //�������磨��ʼʱ��������Ϊ0��
bool vis[N];                        //��������
int pre[N];                         //ǰ������
int n, m;                           //�������ͱ߸���

    static bool dfs(int s, int t) {  //�������Ѱ�ҿ�����·
        memset(vis, 0, sizeof(vis));
        memset(pre, -1, sizeof(pre));
        stack<int> sta;
        vis[s] = true;
        sta.push(s);
        while (!sta.empty()) {
            int now = sta.top();
            sta.pop();
            for (int i = 1; i <= n; i++) {
                if (!vis[i] && g[now][i] > 0) {
                    vis[i] = true;
                    pre[i] = now;
                    if (i == t)
                        return true;  //�ҵ�������·
                    sta.push(i);
                }
            }
        }
        return false;
    }

LL FordFulkerson(int s, int t) {
        int u, v;
        LL maxflow = 0, d;
        while (dfs(s, t)) {
            v = t;
            d = INF;
            while (v != s) {
                u = pre[v];
                if (d > g[u][v])
                    d = g[u][v];
                v = u;
            }
            maxflow += d;
            v = t;
            while (v != s) {
                u = pre[v];
                g[u][v] -= d;
                g[v][u] += d;
                v = u;
            }
        }
        return maxflow;
    }



int main() {
    int u, v, w;
    int src, sink;
    memset(g, 0, sizeof(g));
    cin >> n >> m >> src >> sink;
    for (int i = 0; i < m; i++) {
        cin >> u >> v >> w;
        g[u][v] += w;
    }
    cout << FordFulkerson(src, sink) << endl;
    return 0;
}
