// 任务调度.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

#define Inf 10000001

typedef struct worknode {
	int num;
	int starttime;
	int p;
	struct worknode* next;
}worknode;

typedef struct {
	int time;
	worknode* firstwork;
	worknode* lastwork;
}work;

int n;

worknode* minwork(work w, int time) {
	worknode* p = w.firstwork;
	int mintime = Inf;
	int minduringtime = Inf;
	worknode* minp = NULL;
	while (p) {
		if (p->p <= minduringtime) {
			if (p->p == minduringtime) {
				if (time - p->starttime < mintime) {
					minp = p;
					mintime = time - p->starttime;
				}
			}
			else {
				minp = p;
				minduringtime = p->p;
				mintime = time - p->starttime;
			}/*
			minp = p;
			minduringtime = p->p;*/
		}
		p = p->next;
	}
	return minp;
}

void Deletework(work* W, worknode* p) {
	worknode* temp = W->firstwork;
	if (temp == p) {
		if (temp->next == NULL) {
			free(W->firstwork);
			W->lastwork = NULL;
			W->firstwork = NULL;
		}
		else {
			W->firstwork = W->firstwork->next;
			free(temp);
		}
	}
	else {
		while (temp->next != p) temp = temp->next;
		temp->next = temp->next->next;
		if (W->lastwork == p) W->lastwork = temp;
		free(p);
	}
	return;

}

void Addworks(work* W1, work* W2) {
	if (W2->firstwork == NULL) return;
	else {
		if (W1->firstwork == NULL) {
			W1->firstwork = W2->firstwork;
			W1->lastwork = W2->lastwork;
			W2->firstwork = NULL;
			W2->lastwork = NULL;
		}
		else {
			W1->lastwork->next = W2->firstwork;
			W1->lastwork = W2->lastwork;
			W2->firstwork = NULL;
			W2->lastwork = NULL;
		}
	}
	return;
}

void exchange(work* X, int i, int j) {
	work temp = X[i];
	X[i] = X[j];
	X[j] = temp;
	return;
}

void Random_Sort(work* X, int p, int r) {
	if (r >= n || p < 0 || p >= r)return;
	int index = p + rand() % (r - p + 1);
	int x = X[index].time;
	int i = p - 1;
	int j;
	exchange(X, index, r);
	for (j = p; j < r; j++) {
		if (X[j].time < x) {
			i++;
			exchange(X, i, j);
		}
	}
	exchange(X, i + 1, r);
	if (p < i + 1) Random_Sort(X, p, i);
	if (i + 2 < r) Random_Sort(X, i + 2, r);
	return;
}


int main()
{
	scanf("%d", &n);
	work* works = (work*)malloc(sizeof(work)*(n + 1));
	int i;



	for (i = 0; i < n; i++) {
		works[i].firstwork = (worknode*)malloc(sizeof(worknode));
		scanf("%d %d", &works[i].firstwork->starttime, &works[i].firstwork->p);
		works[i].firstwork->next = NULL;
		works[i].time = works[i].firstwork->starttime;
		works[i].lastwork = works[i].firstwork;
	}

	Random_Sort(works, 0, n - 1);

	for (i = 0; i < n; i++) works[i].firstwork->num = i + 1;

	works[i].firstwork = NULL;
	works[i].lastwork = NULL;
	works[i].time = Inf;
	int totaltime = 0;
	int index = 0;
	while (works[index].time != Inf) {
		int currenttime = works[index].time;
		worknode* w = minwork(works[index], currenttime);
		if (w == NULL) {
			index++;
			continue;
		}
		if (currenttime + w->p < works[index + 1].time) {
			works[index].time += w->p;
			currenttime = works[index].time;;
			totaltime += currenttime - w->starttime;
			//printf("%d: starttime=%d finishtime=%d totaltime=%d\n", w->num, w->starttime, currenttime, currenttime - w->starttime);
			Deletework(&works[index], w);
		}
		else {
			w->p -= works[index + 1].time - works[index].time;
			currenttime = works[index + 1].time;
			if (w->p == 0) {
				totaltime += works[index + 1].time - w->starttime;
				//printf("%d: starttime=%d finishtime=%d totaltime=%d\n", w->num, w->starttime, currenttime, currenttime - w->starttime);
				Deletework(&works[index], w);
			}
			Addworks(&works[index + 1], &works[index]);
			index++;
		}
	}
	printf("%d", totaltime);
	return 0;
}

// 运行程序: Ctrl + F5 或调试 >“开始执行(不调试)”菜单
// 调试程序: F5 或调试 >“开始调试”菜单

// 入门提示: 
//   1. 使用解决方案资源管理器窗口添加/管理文件
//   2. 使用团队资源管理器窗口连接到源代码管理
//   3. 使用输出窗口查看生成输出和其他消息
//   4. 使用错误列表窗口查看错误
//   5. 转到“项目”>“添加新项”以创建新的代码文件，或转到“项目”>“添加现有项”以将现有代码文件添加到项目
//   6. 将来，若要再次打开此项目，请转到“文件”>“打开”>“项目”并选择 .sln 文件