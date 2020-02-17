#ifndef FAT16_H
#define FAT16_H

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

/* Unit size */
#define BYTES_PER_SECTOR 512
#define BYTES_PER_DIR 32

/* File property */
#define ATTR_DIRECTORY 0x10
#define ATTR_ARCHIVE 0x20

#define MAX_SHORT_NAME_LEN 13

typedef uint8_t BYTE;
typedef uint16_t WORD;
typedef uint32_t DWORD;

/* FAT16 BPB Structure */
typedef struct {
  BYTE BS_jmpBoot[3];//跳转命令
  BYTE BS_OEMName[8];//OEM NAME
  WORD BPB_BytsPerSec;//每扇区字节数
  BYTE BPB_SecPerClus;//每簇扇区数
  WORD BPB_RsvdSecCnt;//保留扇区数
  BYTE BPB_NumFATS;//FAT数量
  WORD BPB_RootEntCnt;//根目录项数
  WORD BPB_TotSec16;
  BYTE BPB_Media;
  WORD BPB_FATSz16;//每个FAT所占扇区数
  WORD BPB_SecPerTrk;
  WORD BPB_NumHeads;
  DWORD BPB_HiddSec;//隐藏扇区数
  DWORD BPB_TotSec32;
  BYTE BS_DrvNum;
  BYTE BS_Reserved1;
  BYTE BS_BootSig;
  DWORD BS_VollID;
  BYTE BS_VollLab[11];
  BYTE BS_FilSysType[8];
  BYTE Reserved2[448];
  WORD Signature_word;
} __attribute__ ((packed)) BPB_BS;

/* FAT Directory Structure */
typedef struct {
  BYTE DIR_Name[11];
  BYTE DIR_Attr;//Attrebutes
  BYTE DIR_NTRes;//reserved
  BYTE DIR_CrtTimeTenth;//
  WORD DIR_CrtTime;
  WORD DIR_CrtDate;
  WORD DIR_LstAccDate;//Creation and access time information
  WORD DIR_FstClusHI;//High 2 bytes of the first cluster address 
  WORD DIR_WrtTime;//
  WORD DIR_WrtDate;//Written time information
  WORD DIR_FstClusLO;//Low 2 bytes of first cluster address.
  DWORD DIR_FileSize;//filesize
} __attribute__ ((packed)) DIR_ENTRY;

/* FAT16 volume data with a file handler of the FAT16 image file */
typedef struct
{
  FILE *fd;
  DWORD FirstRootDirSecNum;
  DWORD FirstDataSector;
  BPB_BS Bpb;
} FAT16;

void sector_read(FILE *fd, unsigned int secnum, void *buffer);

int find_root(FAT16 *, DIR_ENTRY *Dir, const char *path);
int find_subdir(FAT16 *, DIR_ENTRY *Dir, char **paths, int pathDepth, int curDepth);
char **path_split(char *pathInput, int *pathSz);
FAT16 *pre_init_fat16(void);
WORD fat_entry_by_cluster(FAT16 *fat16_ins, WORD ClusterN);
void first_sector_by_cluster(FAT16 *fat16_ins, WORD ClusterN, WORD *FatClusEntryVal, WORD *FirstSectorofCluster, BYTE *buffer);
BYTE *path_decode(BYTE *);

void *fat16_init(struct fuse_conn_info *conn);
void fat16_destroy(void *data);
int fat16_getattr(const char *path, struct stat *stbuf);
int fat16_readdir(const char *path, void *buffer, fuse_fill_dir_t filler,
                  off_t offset, struct fuse_file_info *fi);
int fat16_open(const char *path, struct fuse_file_info *fi);
int fat16_read(const char *path, char *buffer, size_t size, off_t offset,
               struct fuse_file_info *fi);

#endif