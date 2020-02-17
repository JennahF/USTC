#include <stdio.h>
#include <stdlib.h>

struct data {
	int sum;
	int math;
	int english;
	int num;
};

struct Heap {
	int size;
	struct data* array;
	int next_avaiable;
};

struct data* p;

int Left(int i) {
	return (i + 1) * 2 - 1;
}
int Right(int i) {
	return (i + 1) * 2;
}
int Parent(int i) {
	if (i % 2)return i / 2;
	else return i / 2 - 1;
}

void exchange(struct Heap* Heap, int i, int j) {
	int math = Heap->array[i].math;
	int english = Heap->array[i].english;
	int num = Heap->array[i].num;
	int sum = Heap->array[i].sum;
	Heap->array[i].english = Heap->array[j].english;
	Heap->array[i].math = Heap->array[j].math;
	Heap->array[i].num = Heap->array[j].num;
	Heap->array[i].sum = Heap->array[j].sum;

	Heap->array[j].english = english;
	Heap->array[j].math = math;
	Heap->array[j].num = num;
	Heap->array[j].sum = sum;
	return;
}

int Greater(struct Heap* Heap, int i, int j) {
	if (Heap->array[i].sum > Heap->array[j].sum) return 1;
	else if (Heap->array[i].sum < Heap->array[j].sum) return -1;
	else {
		if (Heap->array[i].math > Heap->array[j].math) return 1;
		else if (Heap->array[i].math < Heap->array[j].math) return -1;
		else {
			if (Heap->array[i].english > Heap->array[j].english) return 1;
			else if (Heap->array[i].english < Heap->array[j].english) return -1;
			else {
				if (Heap->array[i].num > Heap->array[j].num) return 1;
				else return -1;
			}
		}
	}
}

void Max_Heapify_Sum(struct Heap* Heap, int index) {
	int l = Left(index);
	int r = Right(index);
	int largest;
	if (l < Heap->next_avaiable && Greater(Heap, l, index) == 1) largest = l;
	else if (l < Heap->next_avaiable && Greater(Heap, index, l) == 1) largest = index;
	else return;

	if (r < Heap->next_avaiable && Greater(Heap, r, largest) == 1) largest = r;
	if (largest != index) {
		exchange(Heap, index, largest);
		Max_Heapify_Sum(Heap, largest);
	}
	return;
}

void HeapSortBySum(struct Heap* Heap) {
	int i;
	for (i = Parent(Heap->next_avaiable - 1); i >= 0; i--) {//build a heap
		Max_Heapify_Sum(Heap, i);
	}

	for (i = Heap->next_avaiable - 1; i >= 0; i--) {
		exchange(Heap, 0, i);
		printf("%d ", Heap->array[i].num);
		Heap->next_avaiable--;
		Max_Heapify_Sum(Heap, 0);
	}
	return;
}

int main() {
	struct Heap Heap;
	//printf("size=");
	scanf("%d", &Heap.size);
	Heap.array = (struct data*)malloc(sizeof(struct data)*Heap.size);
	Heap.next_avaiable = 0;
	int i;
	for(i=0;i<Heap.size;i++){
		Heap.array[i].english=0;
		Heap.array[i].math=0;
		Heap.array[i].num=0;
		Heap.array[i].sum=0;
	}
	while (Heap.size--){
		scanf("%d", &Heap.array[Heap.next_avaiable].num);
		scanf("%d", &Heap.array[Heap.next_avaiable].math);
		scanf("%d", &Heap.array[Heap.next_avaiable].english);
		Heap.array[Heap.next_avaiable].sum = Heap.array[Heap.next_avaiable].english + Heap.array[Heap.next_avaiable].math;
		Heap.next_avaiable++;
	}
	HeapSortBySum(&Heap);
	free(Heap.array);
	return 0;
}

