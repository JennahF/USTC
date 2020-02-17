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
#define HDRP(bp) ((char *)(bp) - WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp) - DSIZE)
#define NEXT_BLKP(bp) ((char * )(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp) ((char * )(bp) - GET_SIZE(((char *)(bp) - DSIZE)))

/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    if((heap_listp=mem_sbrk(4*WSIZE))==(void *)-1) return -1;
    PUT(heap_listp, 0);
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (3*WSIZE), PACK(0, 1));
    heap_listp += (2*WSIZE);

    if(extend_heap(CHUNKSIZE/WSIZE)==NULL) return -1;

    return 0;
}

static void *extend_heap(size_t words)
{
    char *bp;
    size_t size;
    size = (words % 2)?(words+1)*WSIZE : words * WSIZE;
    if((long)(bp = mem_sbrk(size))==-1) return NULL;
    
    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));
    return coalesce(bp);
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
    char *bp;

    //asize:所有载荷数（byte）（从头到“脚”）
    if(size == 0) return NULL;
    if(size <= DSIZE) asize = 2*DSIZE;
    else asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1))/DSIZE);

    if(bp = find_fit(asize) != NULL){
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
    size_t size = GET_SIZE(HDRP(bp));

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    coalesce(bp);
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

static void *coalesce(void *bp)
{
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if(prev_alloc && next_alloc) return bp;
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    else{
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    return bp;
}

static void *find_fit(size_t asize){
    void *bp;
    bp  = *heap_listp;
    int size = GET_SIZE(HDRP(bp));
    while(size < asize){
        bp = *bp;
        size = GET_SIZE(HDRP(bp));
        if(size == 0){
            bp = NULL;
            break;
        }
    }
    return bp;
}

static void place(void *bp, size_t asize){//asize:byte数
    int fullsize = GET_ALLOC(HDRP(bp));
    PUT(FTRP(bp), PACK(fullsize-ALIGN(asize), 0));
    PUT(HDRP(bp), PACK(ALIGN(asize), 1));
    PUT(FTRP(bp), PACK(ALIGN(asize), 1));
    if((fullsize-ALIGN(asize))>=CHUNKSIZE/WSIZE){
        PUT(HDRP(NEXT_BLKP(bp)), PACK(fullsize-ALIGN(asize), 0));
    }
    return;
}











