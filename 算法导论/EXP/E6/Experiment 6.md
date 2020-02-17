# Experiment 6

PB17111623

范睿

## EX6-1 字符串匹配  

**解题思路**：

利用KMP算法解决每组问题。

**算法**：

```c
cin >> pattern;
cin >> text;
plen = strlen(pattern);
tlen = strlen(text);

for i = 1 to plen 
    j = i
    while(j > 0){
        j = net[j];
        if(pattern[j] == pattern[j]){
			net[i+1] = j+1;
            break;
        }
	}
cnt = 0;
j = 0;
for i = 1 to tlen
    if(j < plen && pattern[j] == test[i]) j++;
	else{
        while(j>0){
            j = net[j];
            if(text[i] == pattern[j]){
                j++;
                break;
			}
		}
	}
	if(j == plen) cnt++;
cout << cnt
```

**复杂度分析**：

$\mathcal{O}(plen+tlen)$

