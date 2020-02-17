#include <stdio.h>
#include <stdlib.h>
#include "pch.h"
#include <iostream>

struct data {
	int input_data;
	int times;
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

int IfExist(struct Heap* Heap, int num, int index) {
	if (index < Heap->next_avaiable && Heap->array[index].input_data == num) return index;
	else if (index < Heap->next_avaiable && num < Heap->array[index].input_data) {
		int l = IfExist(Heap, num, Left(index));//search in left child tree
		int r = IfExist(Heap, num, Right(index));//search in right child tree
		if (l != -1) return l;//found in left tree
		else if (r != -1) return r;//found in right tree
		else return -1;//not found
	}
	else return -1;
}

void exchange(struct Heap* Heap, int i, int j) {
	int data = Heap->array[i].input_data;
	int times = Heap->array[i].times;
	Heap->array[i].input_data = Heap->array[j].input_data;
	Heap->array[i].times = Heap->array[j].times;
	Heap->array[j].input_data = data;
	Heap->array[j].times = times;
	return;
}

void Max_Heapify_data(struct Heap* Heap, int index) {
	if (index == 0) return;
	int parent = Parent(index);
	if (Heap->array[parent].input_data >= Heap->array[index].input_data) return;
	else {
		exchange(Heap, parent, index);
		Max_Heapify_data(Heap, parent);
		return;
	}
}

void AddNumtoHeap(struct Heap* Heap) {
	int index = IfExist(Heap, Heap->array[Heap->next_avaiable].input_data, 0);
	if (index != -1) {//not exist before
		Heap->array[index].times++;//do not change next_avaiable
		return;
	}
	else {
		Max_Heapify_data(Heap, Heap->next_avaiable++);
		return;
	}
}

int Greater(struct Heap* Heap, int i, int j) {
	if (Heap->array[i].times > Heap->array[j].times) return 1;
	else if (Heap->array[i].times < Heap->array[j].times) return -1;
	else if (Heap->array[i].times == Heap->array[j].times && Heap->array[i].input_data < Heap->array[j].input_data) return 1;
	else if (Heap->array[i].times == Heap->array[j].times && Heap->array[i].input_data > Heap->array[j].input_data) return -1;
	else {
		printf("error");
		return 0;
	}
}

void Max_Heapify_times(struct Heap* Heap, int index) {
	int l = Left(index);
	int r = Right(index);
	int largest;
	if (l < Heap->next_avaiable && Greater(Heap, l, index) == 1) largest = l;
	else if (l < Heap->next_avaiable && Greater(Heap, index, l) == 1) largest = index;
	else return;

	if (r < Heap->next_avaiable && Greater(Heap, r, largest) == 1) largest = r;
	if (largest != index) {
		exchange(Heap, index, largest);
		Max_Heapify_times(Heap, largest);
	}
	return;
}

void HeapSortByTimes(struct Heap* Heap) {
	int i;
	for (i = Parent(Heap->next_avaiable - 1); i >= 0; i--) {//build a heap
		Max_Heapify_times(Heap, i);
	}
	for (i = Heap->next_avaiable - 1; i >= 0; i--) {
		exchange(Heap, 0, i);
		printf("%d %d\n", Heap->array[i].input_data, Heap->array[i].times);
		Heap->next_avaiable--;
		Max_Heapify_times(Heap, 0);
	}
	return;
}

int main() {
	struct Heap Heap;
	//printf("size=");
	scanf("%d", &Heap.size);
	Heap.array = (struct data*)malloc(sizeof(struct data)*Heap.size);
	Heap.next_avaiable = 0;
	int input_num;
	while (Heap.size--) {
		//printf("input one:");
		scanf("%d", &input_num);
		//printf("input_num=%d\n",input_num);
		Heap.array[Heap.next_avaiable].input_data = input_num;
		Heap.array[Heap.next_avaiable].times = 1;
		p = &Heap.array[Heap.next_avaiable];
		AddNumtoHeap(&Heap);
	}
	HeapSortByTimes(&Heap);
	free(Heap.array);
	return 0;
}
