/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8
#define WSIZE 4
#define DSIZE 8
#define CHUNKSIZE (1<<12)

/* rounds up to the nearest multiple of ALIGNMENT *//*找大于size距离size最近的8的倍数*/
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))
#define MAX(x , y) ((x)>(y)?(x):(y))
#define PACK(size, alloc) ((size)|(alloc))
#define GET(p) (*(unsigned int *)(p))
#define PUT(p,val) (*(unsigned int *)(p)=(val))
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)
#define HDRP(bp) ((char *)(bp) - WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)
#define NEXT_BLKP(bp) ((char * )(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp) ((char * )(bp) - GET_SIZE(((char *)(bp) - DSIZE)))
#define GET_PREV_ALLOC(p) (GET(p) & 0x2)
#define GET_SUCC_ALLOC(p) (GET(p) & 0x2)
#define PREV_LINKNODE_RP(bp) ((char*)(bp))
#define NEXT_LINKNODE_RP(bp) ((char*)(bp)+WSIZE)

//#define DEBUG 0
//#define DEBUG1 1
 
char* heap_listp;
char* head;
int cnt;

/* 
 * mm_init - initialize the malloc package.
 */


void PRINT(void){
    printf("heap_listp:%u,%u\n",heap_listp,GET(heap_listp));
    unsigned int* bp=GET(heap_listp);
    int i=1;
    if(bp==0) return;
    while(GET(bp+WSIZE)){
        printf("%d:%u,%u,%u,%u\n",i,bp,GET_SIZE(HDRP(bp)),GET(bp),GET(bp+WSIZE));
	i++;
	bp=GET(bp+WSIZE);
	if(i==10) return;
    }
    printf("%d:%u,%u,%u,%u\n",i,bp,GET_SIZE(HDRP(bp)),GET(bp),GET(bp+WSIZE));
    return;
}

void Delete(void* bp){

    char* prev=GET(PREV_LINKNODE_RP(bp));
    char* next=GET(NEXT_LINKNODE_RP(bp));

    if(prev!=heap_listp){//前驱是个node
        PUT(PREV_LINKNODE_RP(prev), next);
        if(next) PUT(PREV_LINKNODE_RP(next), prev);//如果有后继，后继放前驱
    }
    else{//前驱是heap_listp
        PUT(heap_listp,next);
        if(next) PUT(PREV_LINKNODE_RP(next), heap_listp);//如果有后继，后继放heap_listp
    }
    return;
}

void LINK(void* bp){
    PUT(PREV_LINKNODE_RP(bp), heap_listp);//prev
    PUT(NEXT_LINKNODE_RP(bp), GET(heap_listp));//succ
    if(GET(heap_listp)) PUT(PREV_LINKNODE_RP(GET(heap_listp)), bp);
    PUT(heap_listp, bp);
    return;
}

void Change_hnf(void* bp){//change head and foot
    size_t alloc=GET_ALLOC(HDRP(bp));
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp))/2;
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    if(alloc){
	    if(bp!=heap_listp+DSIZE)
		    if(!prev_alloc) PUT(FTRP(PREV_BLKP(bp)), PACK(GET_SIZE(FTRP(PREV_BLKP(bp))),2));
	    PUT(HDRP(NEXT_BLKP(bp)),PACK(GET_SIZE(HDRP(NEXT_BLKP(bp))),2+next_alloc));
    }
    else{
	    if(bp!=heap_listp+DSIZE)
		    if(!prev_alloc) PUT(FTRP(PREV_BLKP(bp)), PACK(GET_SIZE(FTRP(PREV_BLKP(bp))),0));
	    PUT(HDRP(NEXT_BLKP(bp)),PACK(GET_SIZE(HDRP(NEXT_BLKP(bp))),next_alloc));
    }
    return;
}

static void *coalesce(void *bp)
{

#ifdef DEBUG
    printf("before coalesce:\n");
    PRINT();
    printf("\n");
#endif

    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));
    size_t next_alloc = GET_SUCC_ALLOC(FTRP(bp));
    size_t size = GET_SIZE(HDRP(bp));

    if(prev_alloc && next_alloc) return bp;
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        Delete(NEXT_BLKP(bp));
	    PUT(FTRP(bp), PACK(size, GET_SUCC_ALLOC(NEXT_BLKP(bp))));
        PUT(HDRP(bp), PACK(size, 2));
    }
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, GET_PREV_ALLOC(HDRP(PREV_BLKP(bp)))));
        PUT(FTRP(bp), PACK(size, 2));
        Delete(bp);
        bp=PREV_BLKP(bp);
    }
    else{
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
	    PUT(FTRP(NEXT_BLKP(bp)), PACK(size, GET_SUCC_ALLOC(NEXT_BLKP(bp))));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, GET_PREV_ALLOC(HDRP(PREV_BLKP(bp)))));
	    Delete(bp);//将当前块从链表中删除
	    Delete(NEXT_BLKP(bp));//将当前块后块从链表中删除
        bp=PREV_BLKP(bp);
    }

#ifdef DEBUG
    printf("after coalesce:\n");
    PRINT();
    printf("\n");
#endif

    return bp;
}

static void *extend_heap(size_t words){

#ifdef DEBUG
    printf("before extend:\n");
    PRINT();
    printf("\n");
#endif

    char *bp;
    size_t size;
    size = (words % 2)?(words+1)*WSIZE : words * WSIZE;

    if((long)(bp = mem_sbrk(size))==-1) return NULL;

    PUT(HDRP(bp), PACK(size, GET_PREV_ALLOC(HDRP(bp))));
    PUT(FTRP(bp), PACK(size, 2));
    PUT(PREV_LINKNODE_RP(bp), 0);
    PUT(NEXT_LINKNODE_RP(bp), 0);

    LINK(bp);
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));//结尾块

#ifdef DEBUG
    printf("after extend:\n");
    PRINT();
    printf("\n");
#endif

    return coalesce(bp);
}


static void *find_fit(size_t asize){
    void* bp = GET(heap_listp);
    if(bp==0) return NULL;
    while(GET_SIZE(HDRP(bp)) < asize){
        bp = GET(NEXT_LINKNODE_RP(bp));//bp=bp->next
        if(bp == 0) return NULL;
    }
    return bp;
}

static void place(void* bp, size_t asize){

#ifdef DEBUG1
    printf("********************\nmalloc:%u\n",asize);
    printf("remain:%u\n",GET_SIZE(HDRP(GET(heap_listp))));
    printf("before place:\n");
    PRINT();
    printf("\n");
#endif

#ifdef DEBUG
	printf("bp=%u\n*bp=%u\n",bp,GET(bp));
	printf("*HDRP(bp)=%u\n*heap_listp=%u\n*HDRP(NEXT_BLKP(bp))=%u\n",GET(HDRP(bp)),GET(heap_listp),GET(HDRP(NEXT_BLKP(bp))));
	printf("HDRP(bp)=%u\nheap_listp=%u\nHDRP(NEXT_BLKP(bp))=%u\n",HDRP(bp),heap_listp,HDRP(NEXT_BLKP(bp)));
	printf("*NEXT_BLKP(bp)=%u\n*NEXT_BLKP(bp)+WSIZE=%u\n",GET(NEXT_BLKP(bp)),GET(NEXT_BLKP(bp)+WSIZE));
	printf("NEXT_BLKP(bp)=%u\nNEXT_BLKP(bp)+WSIZE=%u\n",NEXT_BLKP(bp),NEXT_BLKP(bp)+WSIZE);
	printf("*(bp+WSIZE)=%u\nbp+WSIZE=%u\n",GET(bp+WSIZE),bp+WSIZE);
#endif

    size_t fullsize;
    fullsize = GET_SIZE(HDRP(bp));
    Delete(bp);
    if(fullsize < asize + 6*WSIZE){
        PUT(HDRP(bp),PACK(fullsize, GET_PREV_ALLOC(HDRP(bp))+1));//当前块标记为1
        Change_hnf(bp);
    }
    else{
        PUT(HDRP(bp),PACK(asize, GET_PREV_ALLOC(HDRP(bp))+1));
        Change_hnf(bp);

        bp = NEXT_BLKP(bp);

        PUT(HDRP(bp), PACK(fullsize-asize, 2));//分割的后面的块头部标志位为2，说明他前面的块已经被分配了
        PUT(FTRP(bp), PACK(fullsize-asize, 2));//当前块的下一块（分割块）的脚标志位一定为2

        PUT(PREV_LINKNODE_RP(bp)), 0);
        PUT(NEXT_LINKNODE_RP(bp)), 0);

	    LINK(bp);
	    Change_hnf(bp);
    }

#ifdef DEBUG
	printf("*bp=%u\nbp=%u\n",bp,GET(bp));
	printf("*********\n*HDRP(bp)=%u\n*heap_listp=%u\n*HDRP(NEXT_BLKP(bp))=%u\n",GET(HDRP(bp)),GET(heap_listp),GET(HDRP(NEXT_BLKP(bp))));
	printf("HDRP(bp)=%u\nheap_listp=%u\nHDRP(NEXT_BLKP(bp))=%u\n",HDRP(bp),heap_listp,HDRP(NEXT_BLKP(bp)));
	printf("*NEXT_BLKP(bp)=%u\n*NEXT_BLKP(bp)+WSIZE=%u\n",GET(NEXT_BLKP(bp)),GET(NEXT_BLKP(bp)+WSIZE));
	printf("NEXT_BLKP(bp)=%u\nNEXT_BLKP(bp)+WSIZE=%u\n",NEXT_BLKP(bp),NEXT_BLKP(bp)+WSIZE);
	printf("*(bp+WSIZE)=%u\nbp+WSIZE=%u\n",GET(bp+WSIZE),bp+WSIZE);
#endif

#ifdef DEBUG1
    printf("after place:\n");
    if(GET(heap_listp)) printf("remain:%u\n",GET_SIZE(HDRP(GET(heap_listp))));
    else printf("remain:0\n");
    PRINT();
    printf("\n********************\n");
#endif
    //printf("*NEXT_BLKP(bp)=%u\n*NEXT_BLKP(bp)+WSIZE=%u\n",GET(NEXT_BLKP(bp)),GET(NEXT_BLKP(bp)+WSIZE));
    return;
}

int mm_init(void)
{
    if((heap_listp=mem_sbrk(4*WSIZE))==(void *)-1) return -1;
    PUT(heap_listp, 0);
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2*WSIZE), 0);//initial head = 0
    PUT(heap_listp + (3*WSIZE), PACK(0, 3));//结尾块
    heap_listp += (2*WSIZE);

    if(extend_heap(CHUNKSIZE/WSIZE)==NULL) return -1;

    return 0;
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    //printf("cnt=%d\n",cnt++);

    size_t asize;
    size_t extendsize;
    void* bp;
    if(size == 0) return NULL;
    else if(size < DSIZE) asize = DSIZE;
    else asize = DSIZE * ((size + DSIZE-1 + 2 * WSIZE)/DSIZE);

    if((bp = find_fit(asize)) != NULL){
	//printf("\nbp=%u,*bp=%u\n",bp,GET(bp));
        place(bp, asize);
        return bp;
    }

    extendsize = MAX(asize, CHUNKSIZE);
    if((bp = extend_heap(extendsize/WSIZE))==NULL) return NULL;
    place(bp, asize);

    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *bp)
{
    PUT(HDRP(bp),PACK(GET_SIZE(HDRP(bp)), GET_PREV_ALLOC(HDRP(bp))));
    PUT(FTRP(bp),PACK(GET_SIZE(HDRP(bp)), 2*GET_ALLOC(HDRP(NEXT_BLKP(bp)))));//后块的分配标志位在第0位，*2转成第1位
    PUT(PREV_LINKNODE_RP(bp), 0);
    PUT(NEXT_LINKNODE_RP(bp), 0);
    LINK(bp);
    return;
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    void *oldptr = ptr;
    void *newptr;
    size_t copySize;
    
    newptr = mm_malloc(size);
    if (newptr == NULL)
      return NULL;
    copySize = *(size_t *)((char *)oldptr - SIZE_T_SIZE);
    if (size < copySize)
      copySize = size;
    memcpy(newptr, oldptr, copySize);
    mm_free(oldptr);
    return newptr;
}














