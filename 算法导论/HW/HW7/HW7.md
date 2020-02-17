## Homework7

姓名：左顺

学号：PB17111642

### 1. 最长加权简单路径

当我们求解`s`到`t`的最长路径时，此时由于这个问题的图是**有向无环图**，从而该问题是可以使用**动态规划**的方法解决的。我们用`path(s,t)`表示从`s`到`t`的最长加权路径，可以得到该问题对应的子问题是
$$
path(s,t)=max\{path(s,w)+E(w,t)\}((w,t)\in E)
$$
从而得到自底向上的动态规划算法：

```c
getLongestPath(V, E, s, t, path):	// path 记录两点的最长值，默认值是-1
	for i in V:
		for j in V:
			path[i][j] = 0
			if(i == j):	// 无环图
				break;
			for k in V && (k, j) in E:
				if(path[i][k] == -1):
					path[i][k] == getLongestPath(V, E, i, k, path);	// 备忘
				path[i][j] = max(path[i][k] + E[k][j])
	return path[s][t]
```

### 2. 0-1背包问题

设计动态规划算法的关键在于找到原问题和子问题的联系，对于本道题目，我们可以使用`d[i][j]`表示在剩余空间为`j`，选择物品`i`后的最大价值。那么相应的递推式是
$$
d[i][j] = max(d[i-1][j], d[i-1][j-w[i]] + v[i])
$$
其中`w[i]`是`i`的重量，`v[i]`是`i`的价值。设计算法如下：

```c
getMaxValue(w, v, n, W, d):
	for(i = 0; i < n; ++i):
		for(j = 0; j <= W; ++j):				
			d[i][j] = 0
			if(i == 0 && j >= w[i]):
				d[i][j] = v[i]
			else:
				d[i][j] = max(d[i-1][j], d[i-1][j-w[j]] + v[i])
	return d[n-1][W]
```

上面的算法共有两个循环体，从而对应的算法复杂度是`O(nW)`。

### 3. 聚会方案

当我们对员工的所属节点讨论时，我们可以选择这个节点代表的人去参加宴会，或者不选择。我们令`m[p]`为抉择`p`时的最大宴会交际能力，那么，我们只需要使用自底向上的方法就可以了。相应的递推式
$$
m[p]=max(p.value + \sum_{i \in grandson(p)}m[i], \sum_{j \in som(p)}m[j])
$$
相应的算法如下：

```c
getMax(root, m):
	tmp1 = root.value, tmp2 = 0
	for(i = root.child; i != NULL; i = i.sibings):
		if(m[i] == -1):
			m[i] = getMax(i, m)
		tmp2 += m[i]
		for(j = i.child; j != NULL; j = j.sibings):
			if(m[j] != -1):
				m[j] = getMax(j, m)
			tmp1 += m[j]
	m[root] = max(tmp1, tmp2)
	return m[root]
```

这个算法的时间主要花费在对每个节点进行了一次`getMax(p, m)`的操作，该操作和该元素的儿子节点和孙子节点的个数有关，从而总的时间复杂度是`O(n)`，`n`是员工的个数。

### 4. 闭区间集合

算法：从坐标最小的点开始，直到最接近的单位闭区间长度的点，这一段，用一个闭区间来覆盖。接下来选择出去闭区间覆盖的点的下一个最小的点，重复，直至结束。

```c
getMinSet(x, n):
	set = []
	qsort(x, n)
	while(x.empty() == false):
        set.push(x.shift())
        while(x.peek() != NULL && x.peek() <= set.last() + 1):
            x.shift()
```

证明：

**贪心选择性质**：

现假设一最优解A={a1,a2……an}为单位闭区间集合。对m个点以坐标排序，从小到大。

现有一个单位区间ak，从m个点中最小的点开始，长度为单位长度。a1的起始坐标必然<=ak的起始坐标（第一点的坐标），a1覆盖点的数目必然<=ak的数目（因为ak是从第一个点开始的）(A-a1) U ak，（剪切黏贴）也是一个最优解。

**最优子问题性质**：

做出第一步的贪心ak之后，A-ak是子问题m-1的最优解。

反证法：假设存在有一个更优的解B，B U ak必然是比A更优的解，矛盾。

贪心选择ak和子问题可以合并成一个最优解。

### 5. 找零问题

由于该问题中`n`是整数，并且找零的面额中含有`1美分`的硬币，那么显然这样的找零情况总是存在的。我们设计的算法如下：首先判断硬币面额是否大于25，如果是，用25美分的硬币找零；当剩余的硬币小于25美分时，使用相同的情况进行10美分硬币找零。

```c
minCoins(n):
	num = 0
	while(n >= 25):
		num++;
		n -= 25;
	while(n >= 10):
		num++;
		n -+ 10;
	while(n >= 5):
		num++;
		n-=5;
	num += n
	return num
```

反证：首先如果n大于25美分，但是我们选择使用小面额找零，这样的话找零使用的硬币数必定比直接使用25美分的多，从而得证原命题。（贪心选择性质和最优子问题性质和上文证明相同）