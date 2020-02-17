#include <stdio.h>
#include <stdlib.h>

void exchange(int* a, int p, int q) {
	int t = a[p];
	a[p] = a[q];
	a[q] = t;
	return;
}

int Random_Sort(int* a, int p, int r) {
	int x = a[r];
	int i = p - 1;
	int j;
	for (j = p; j < r; j++) {
		if (a[j] < x) {
			i++;
			exchange(a, i, j);
		}
	}
	exchange(a, i + 1, r);
	return i + 1;
}

int Random_Select(int* a, int p, int r, int k) {
	if (p == r) return a[p];
	int q = Random_Sort(a, p, r);
	int i = q - p + 1;
	if (k == i) return a[q];
	else if (i < k) return Random_Select(a, q + 1, r, k - i);
	else return Random_Select(a, p, q - 1, k);
}

int main() {
	int n, k;
	scanf("%d %d", &n, &k);
	int* array=(int*)malloc(sizeof(int)*n);
	int i;
	for (i = 0; i < n; i++) scanf("%d", &array[i]);
	int result = Random_Select(array, 0, n - 1, k);
	printf("%d", result);
	free(array);
	return 0;
}
