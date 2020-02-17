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
#define GET(p) (*(unsigned int*)(p))
#define PUT(p,val) (*(unsigned int *)(p)=(val))
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)
#define GET_PREV_ALLOC(p) (GET(p) & 0x2)
#define HDRP(bp) ((char *)(bp) - WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp) - DSIZE)
#define NEXT_BLKP(bp) ((char * )(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp) ((char * )(bp) - GET_SIZE(((char *)(bp) - DSIZE)))

static char* heap_listp;
char* head;

/* 
 * mm_init - initialize the malloc package.
 */

static void *coalesce(void *bp)
{
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if(prev_alloc && next_alloc) return bp;
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(GET(NEXT_BLKP(bp))+WSIZE, GET(NEXT_BLKP(bp)+WSIZE));//后块前驱的后继=后块的后继
        PUT(GET(NEXT_BLKP(bp)+WSIZE), GET(NEXT_BLKP(bp)));//后块的前驱=后块的前驱
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(GET(bp)+WSIZE, GET(bp+WSIZE));
        PUT(GET(bp+WSIZE), GET(bp));
        bp=PREV_BLKP(bp);
    }
    else{
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        //将当前块从链表中删除
        PUT(GET(bp)+WSIZE, GET(bp+WSIZE));
        PUT(GET(bp+WSIZE), GET(bp));
        //将当前块后块从链表中删除
        PUT(GET(NEXT_BLKP(bp))+WSIZE, GET(NEXT_BLKP(bp)+WSIZE));
        PUT(GET(NEXT_BLKP(bp)+WSIZE), GET(NEXT_BLKP(bp)));
        bp=PREV_BLKP(bp);
    }
    return bp;
}

static void *extend_heap(size_t words){

    char *bp;
    size_t size;
    size = (words % 2)?(words+1)*WSIZE : words * WSIZE;

    if((long)(bp = mem_sbrk(size))==-1) return NULL;
    
    PUT(HDRP(bp), PACK(size, 0));//未分配，前块也未分配
    PUT(FTRP(bp), PACK(size, 0));//未分配，后块也未分配
    
    PUT(bp, 0);//新分配的前块是NULL
    PUT(bp+WSIZE, GET(heap_listp));//新分配的块的后继为当前head指的头：头插
    PUT(GET(heap_listp), bp);//当前链表中的第一个块的前驱指新分配的这个块
    PUT(heap_listp, bp);//头指针指新分配的块
    
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));//结尾块
    return coalesce(bp);
}


static void *find_fit(size_t asize){
    void* bp = GET(heap_listp);
    size_t size = GET_SIZE(HDRP(bp));
    while(GET_SIZE(HDRP(bp)) < asize){
        bp = GET(bp+WSIZE);//bp=bp->next
        if(bp == 0) return NULL;
    }
    return bp;
}

static void place(void* bp, size_t asize){

    size_t fullsize;
    fullsize = GET_SIZE(HDRP(bp));
    if(fullsize < asize + 6*WSIZE){
        PUT(HDRP(bp),PACK(fullsize, 1));//当前块标记为1
        PUT(GET(bp), GET(bp+WSIZE));//当前块前驱的后继=当前块的后继
        PUT(GET(bp+WSIZE), GET(bp));//当前块后继的前驱=当前块的前驱
        //如果当前块前面的块没有被分配，就把前面块的脚部标志位改成2
        if(!GET_ALLOC(HDRP(PREV_BLKP(bp)))) PUT(FTRP(PREV_BLKP(bp)), PACK(GET_SIZE(FTRP(PREV_BLKP(bp))),2));
        //如果当前块后面的块没有被分配，就把后面块的头部部标志位改成2
        if(!GET_ALLOC(HDRP(NEXT_BLKP(bp)))) PUT(HDRP(PREV_BLKP(bp)), PACK(GET_SIZE(HDRP(PREV_BLKP(bp))),2));
    }
    else{
        PUT(HDRP(bp),PACK(asize, 1));
        PUT(HDRP(NEXT_BLKP(bp)), PACK(fullsize-asize, 2));//分割的后面的块头部标志位为2，说明他前面的块已经被分配了
        PUT(FTRP(NEXT_BLKP(bp)), PACK(fullsize-asize, 2));//当前块的下一块（分割块）的脚标志位一定为2
        PUT(GET(bp)+WSIZE, NEXT_BLKP(bp));//当前块的前驱的后继=当前块的下一块
        PUT(GET(bp+WSIZE), NEXT_BLKP(bp))//当前块的后继的前驱也=当前块的下一块
        PUT(NEXT_BLKP(bp), GET(bp));//当前块的下一块的前驱=当前块的前驱
        PUT(NEXT_BLKP(bp)+WSIZE, GET(bp+WSIZE));//当前块的下一块的后继=当前块的后继
        //如果当前块前面的块没有被分配，就把前面块的脚部标志位改成2
        if(!GET_ALLOC(HDRP(PREV_BLKP(bp)))) PUT(FTRP(PREV_BLKP(bp)), PACK(GET_SIZE(FTRP(PREV_BLKP(bp))),2));
    }
    return bp;
}

int mm_init(void)
{
    if((heap_listp=mem_sbrk(4*WSIZE))==(void *)-1) return -1;
    PUT(heap_listp, 0);
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2*WSIZE), 0);//initial head = 0
    PUT(heap_listp + (3*WSIZE), PACK(0, 1));//结尾块
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
    /*int newsize = ALIGN(size + SIZE_T_SIZE);
    void *p = mem_sbrk(newsize);
    if (p == (void *)-1)
	return NULL;
    else {
        *(size_t *)p = size;
        return (void *)((char *)p + SIZE_T_SIZE);
    }*/

    size_t asize;
    size_t extendsize;
    if(size == 0) return NULL;
    else if(size < DSIZE) asize = DSIZE;
    else asize = DSIZE * ((size + DSIZE-1 + 2 * WSIZE)/DSIZE);

    if((bp = find_fit(asize)) != NULL){
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
void mm_free(void *ptr)
{
    PUT(HDRP(bp),PACK(GET_SIZE(HDRP(bp)), GET_PREV_ALLOC(HDRP(bp))));
    PUT(FTRP(bp),PACK(GET_SIZE(HDRP(bp)), 2*GET_ALLOC(HDRP(NEXT_BLKP(bp)))));//后块的分配标志位在第0位，*2转成第1位
    PUT(bp,0);//prev=NULL
    PUT(bp+WSIZE, GET(heap_listp));//succ=head
    PUT(GET(heap_listp), bp);//head->next=bp
    PUT(heap_listp, bp);//head=bp
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














