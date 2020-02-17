#include <stdio.h>
#include <stdlib.h>

int n;

void exchange(int* a, int p, int q) {
	int t = a[p];
	a[p] = a[q];
	a[q] = t;
	return;
}

void Random_Sort(int* a, int p, int r) {
	if (r >= n || p < 0 || p >= r)return;
	int index = p + rand()%(r-p+1);
	int x = a[index];
	int i = p - 1;
	int j;
	exchange(a, index, r);
	for (j = p; j < r; j++) {
		if (a[j] < x) {
			i++;
			exchange(a, i, j);
		}
	}
	exchange(a, i + 1, r);
	if(p<i+1) Random_Sort(a, p, i);
	if(i+2<r)Random_Sort(a, i + 2, r);
	return;
}


int main() {
	scanf("%d", &n);
	int* array = (int*)malloc(sizeof(int)*n);
	int i;
	for (i = 0; i < n; i++) scanf("%d", &array[i]);

	Random_Sort(array, 0, n - 1);

	for (i = 0; i < n; i++) printf("%d ", array[i]);
	free(array);
	return 0;
}

