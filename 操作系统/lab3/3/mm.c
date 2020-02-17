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
#define MAKE_0(p) (GET(p) & ~0x2)
#define MAKE_1(p) (GET(p) | 0x2)

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
    while(bp){
        printf("%d:%u,%u,prev:%u,next:%u\n",i,bp,GET_SIZE(HDRP(bp)),GET(PREV_LINKNODE_RP(bp)),GET(NEXT_LINKNODE_RP(bp)));
        i++;
        bp=GET(NEXT_LINKNODE_RP(bp));
    }
    return;
}

void Delete(void* bp){

    char* prev=GET(PREV_LINKNODE_RP(bp));
    char* next=GET(NEXT_LINKNODE_RP(bp));

    if(prev==0&&next==0) return;

    if(prev!=heap_listp){//前驱是个node
	//printf("prev=%u\n",prev);
        PUT(NEXT_LINKNODE_RP(prev), next);
        if(next) PUT(PREV_LINKNODE_RP(next), prev);//如果有后继，后继放前驱
    }
    else{//前驱是heap_listp
        PUT(heap_listp,next);
        if(next) PUT(PREV_LINKNODE_RP(next), heap_listp);//如果有后继，后继放heap_listp
    }
    PUT(PREV_LINKNODE_RP(bp), 0);
    PUT(NEXT_LINKNODE_RP(bp), 0);
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
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    if(alloc){
	    if(bp!=heap_listp+DSIZE)
		    if(!prev_alloc) PUT(FTRP(PREV_BLKP(bp)), MAKE_1(FTRP(PREV_BLKP(bp))));
	    PUT(HDRP(NEXT_BLKP(bp)),MAKE_1(HDRP(NEXT_BLKP(bp))));
    }
    else{
	    if(bp!=heap_listp+DSIZE)
		    if(!prev_alloc) PUT(FTRP(PREV_BLKP(bp)), MAKE_0(FTRP(PREV_BLKP(bp))));
	    PUT(HDRP(NEXT_BLKP(bp)),MAKE_0(HDRP(NEXT_BLKP(bp))));
    }
    return;
}

static void *coalesce(void *ptr)
{

    void* bp=ptr;
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));//前块是否分配
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));//后块是否分配
    size_t size = GET_SIZE(HDRP(bp));//此块大小
    //若前块后块都已分配，不需要合并
    if(prev_alloc && next_alloc);
    //前块已分配，后块未分配，将本块和后块合并
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        Delete(NEXT_BLKP(bp));//将后块从链表中删除
        PUT(HDRP(bp), PACK(size, 2));//写大块的头
	    PUT(FTRP(bp), PACK(size, GET_SUCC_ALLOC(FTRP(bp))));//写大块的脚
    }
    //前块未分配，后块已分配，将本块和前块合并
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        Delete(PREV_BLKP(bp));
        bp=PREV_BLKP(bp);
        PUT(HDRP(bp), PACK(size, GET_PREV_ALLOC(HDRP(bp))));
        PUT(FTRP(bp), PACK(size, 2));
    }
    //前后块都未分配，将此三块合并
    else{
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
	    Delete(NEXT_BLKP(bp));//将当前块从链表中删除
	    Delete(PREV_BLKP(bp));//将后块从链表中删除
	    bp=PREV_BLKP(bp);
	    PUT(HDRP(bp), PACK(size, GET_PREV_ALLOC(HDRP(bp))));//写大块的头
	    PUT(FTRP(bp), PACK(size, GET_SUCC_ALLOC(FTRP(bp))));//写大块的脚
    }

    LINK(bp);//将合并后的空闲块头插进链表
    return bp;
}

static void *extend_heap(size_t words){
    char *bp;
    size_t size;
    //计算可对齐的字长asize
    size = (words % 2)?(words+1)*WSIZE : words * WSIZE;
    //请求asize的空间
    if((long)(bp = mem_sbrk(size))==-1) return NULL;

    /*init head and feet*/
    PUT(HDRP(bp), PACK(size, GET_PREV_ALLOC(HDRP(bp))));
    PUT(FTRP(bp), PACK(size, 2));

    /*init prev and next*/
    PUT(PREV_LINKNODE_RP(bp), 0);
    PUT(NEXT_LINKNODE_RP(bp), 0);

    /*epilogue header*/
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));
    //将bp合并/加入链表
    return coalesce(bp);
}

static void *find_fit(size_t asize){
    void* bp = GET(heap_listp);
    while(bp){
        if(GET_SIZE(HDRP(bp))>=asize) break;
        bp = GET(NEXT_LINKNODE_RP(bp));//bp=bp->next
    }
    return bp;
}

static void place(void* ptr, size_t asize){
    void* bp=ptr;
    size_t fullsize = GET_SIZE(HDRP(bp));
    //当前块要被分配了，先从链表中删除
    Delete(bp);
    //当前块大小分割后不能再变成一个空闲块
    if(fullsize < asize + 4*WSIZE){
        PUT(HDRP(bp),PACK(fullsize, GET_PREV_ALLOC(HDRP(bp))+1));//当前块标记为1
        Change_hnf(bp);//改前块的脚和后块的头
    }
    //当前块大小分割后可以变成一个空闲块
    else{
        PUT(HDRP(bp),PACK(asize, GET_PREV_ALLOC(HDRP(bp))+1));//当前块标记为1
        //分割的后面的块头部0位标志位为0，表示它是空闲块    
        PUT(HDRP(NEXT_BLKP(bp)), PACK(fullsize-asize, 0));
        Change_hnf(bp);//改前块的脚和后块的头

        bp = NEXT_BLKP(bp);
        PUT(FTRP(bp), PACK(fullsize-asize, GET_SUCC_ALLOC(FTRP(bp))));//当前块的下一块（分割块）的脚标志位
        //下一块的前驱后继指针都为NULL
        PUT(PREV_LINKNODE_RP(bp), 0);
        PUT(NEXT_LINKNODE_RP(bp), 0);

	    coalesce(bp);//合并空闲块
    }
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
    size_t asize;
    size_t extendsize;
    void* bp;
    //计算asize
    if(size == 0) return NULL;
    else if(size <= DSIZE) asize = 2*DSIZE;
    else asize = DSIZE * ((size + DSIZE-1 + DSIZE)/DSIZE);
    //找大小大于asize的空闲块（首次适配）
    if((bp = find_fit(asize)) != 0){
        place(bp, asize);
        return bp;
    }
    //若没找到，扩展堆
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
    if(bp==0) return;
    PUT(HDRP(bp),PACK(GET_SIZE(HDRP(bp)), GET_PREV_ALLOC(HDRP(bp))));
    PUT(FTRP(bp),PACK(GET_SIZE(HDRP(bp)), 2*GET_ALLOC(HDRP(NEXT_BLKP(bp)))));//后块的分配标志位在第0位，*2转成第1位
    PUT(PREV_LINKNODE_RP(bp),0);
    PUT(NEXT_LINKNODE_RP(bp),0);
    Change_hnf(bp);
    coalesce(bp);
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














