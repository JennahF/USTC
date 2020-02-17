#include <bits/stdc++.h>
#define int long long
struct Edge {
    int from, to, cap, flow, cost;
    Edge(int u, int v, int c, int f, int w) : from(u), to(v), cap(c), flow(f), cost(w){};
};

struct Graph {
    static const int maxn = 10005, INF = 1000000000;
    int n, m;
    std::vector<Edge> edges;
    std::vector<int> G[maxn];
    int in[maxn];
    int d[maxn];
    int p[maxn];
    int a[maxn];

    void init(int n, int m) {
        this->n = n;
        this->m = m;
        for (int i = 0; i < n; i++) G[i].clear();
        edges.clear();
    }

    void addedge(int from, int to, int cap, int cost) {
        edges.push_back(Edge(from, to, cap, 0, cost));
        edges.push_back(Edge(to, from, 0, 0, -cost));
        m = edges.size();
        G[from].push_back(m - 2);
        G[to].push_back(m - 1);
    }

    bool spfa(int s, int t, int &flow, int &cost) {
        for (int i = 0; i <= n; i++) d[i] = INF;
        memset(in, 0, sizeof(in));
        d[s] = 0;
        in[s] = 1;
        p[s] = -1;
        a[s] = INF;
        std::queue<int> Q;
        Q.push(s);
        while (!Q.empty()) {
            int now = Q.front();
            Q.pop();
            in[now] = 0;
            int sz = G[now].size();
            for (int i = 0; i < sz; i++) {
                Edge &e = edges[G[now][i]];
                if (e.cap > e.flow && d[e.to] > d[now] + e.cost) {
                    d[e.to] = d[now] + e.cost;
                    p[e.to] = G[now][i];
                    a[e.to] = std::min(a[now], e.cap - e.flow);
                    if (!in[e.to]) {
                        Q.push(e.to);
                        in[e.to] = 1;
                    }
                }
            }
        }
        if (d[t] == INF)
            return false;
        flow += a[t];
        cost += d[t] * a[t];
        for (int u = t; u != s; u = edges[p[u]].from) {
            edges[p[u] ^ 1].flow -= a[t];
            edges[p[u]].flow += a[t];
        }
        return true;
    }
    void MCMF(int s, int t, int &cost, int &flow) {
        while (spfa(s, t, flow, cost))
            ;
        return;
    }
} G;

signed main() {
    int n, m, s, t;
    scanf("%lld %lld %lld %lld", &n, &m, &s, &t);
    int ui, vi, wi, fi;
    G.init(n, m);
    while (m--) {
        scanf("%lld %lld %lld", &ui, &vi, &wi);
        G.addedge(ui, vi, wi, 0);
    }
    int cost = 0, flow = 0;
    G.MCMF(s, t, cost, flow);
    printf("%lld", flow);
}
