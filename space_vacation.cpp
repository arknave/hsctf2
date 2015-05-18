#include <iostream>
#include <vector>
#include <queue>
#include <algorithm>
#include <utility>

using namespace std;

struct edge {
    int start;
    int end;
    int cost;
    edge(int start, int end, int cost): start(start), end(end), cost(cost) {}
    edge(): start(0), end(0), cost(0) {}
};

bool operator<(const edge &e1, const edge &e2) {
    return e1.cost < e2.cost;
}

int V, E;
vector<vector<edge> > normal(100);
edge spec[5000];
bool visited[101];

long long dijkstra(edge& spec) {
    memset(visited, 0, sizeof(visited));
    priority_queue<edge> pq;
    for (edge e : normal[0]) {
        pq.push(e);
    }

    while (!pq.empty()) {
        edge cur = pq.top();
        pq.pop();
        if (cur.end == V - 1) {
            return cur.cost;
        }

        if (!visited[cur.end]) {
            for (edge e: normal[cur.end]) {
                pq.push(edge(e.start, e.end, cur.cost + e.cost));
            }

            if (spec.start == cur.end) {
                pq.push(edge(spec.start, spec.end, cur.cost + spec.cost));
            }
        }
    }

    return 1000000000LL;
}

int main() {
    cin >> V >> E; 
    int start, end, time, special;
    for (int i = 0; i < E; i++) {
        cin >> start >> end >> time >> special;
        if (special == 0) {
            normal[start].push_back(edge(start, end, time));
        } else {
            spec[i] = edge(start, end, time);
        }
    }

    long long best = 1e18;
    for (int i = 0; i < E; i++) {
        best = min(dijkstra(spec[i]), best);
    }

    cout << best << '\n';
    return 0;
}
