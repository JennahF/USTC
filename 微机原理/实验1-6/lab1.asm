DATA_SEG    SEGMENT
INPUTFILE   DB  'INPUT1.txt$', 0
OUTPUTFILE  DB  'OUTPUT1.txt$', 0
INPUTSTRING DB  100 DUP(?)  ;保留100字节给键盘输入
READSTRING  DB  100 DUP(?)  ;保留100字节给文件读入
INPUTHANDLE DW  ?
INPUTHANDLE1 DW  ?
OUTPUTHANDLE    DW      ?
OUTPUTHANDLE1   DW      ?
; PROMPT0 DB 0DH, 0AH, 'Create File Error. $'
; PROMPT1 DB 0DH, 0AH, 'Open File Error. $'
; PROMPT2 DB 0DH, 0AH, 'Write File Error. $'
; PROMPT3 DB 0DH, 0AH, 'Read File Error. $'
; PROMPT4 DB 0DH, 0AH, 'Close File Error. $'
DATA_SEG    ENDS        

CODE_SEG    SEGMENT
        ASSUME  CS:CODE_SEG,DS:DATA_SEG

MAIN:
        MOV AX, DATA_SEG
        MOV DS, AX
        MOV SI, 0   ;标识输入到字符数组第几个了
        LEA BX,	INPUTSTRING
;建立input1.txt
        MOV AH, 3CH
	MOV CX, 0
	LEA DX, INPUTFILE
	INT 21H
	MOV INPUTHANDLE, AX

INPUT:        
        MOV AH, 01H   
        INT 21H     ;接收键盘输入
        CMP AL, 0DH  ;看是否是回车
        JZ  WRITE
        MOV [BX+SI], AL
        INC SI
        JMP INPUT
WRITE:
        MOV [BX+SI], AL        ;将$存入字符数组
        MOV CX, SI
 
;键盘读入的字符串写到input1.txt
        LEA DX, INPUTSTRING ;缓冲区地址
        MOV BX, INPUTHANDLE ;文件句柄
        ;写入的字节数已经在CX中
        MOV AH, 40H         ;写文件
        INT 21H             ;写

;关闭input1.txt
        MOV AH, 3EH         ;关闭文件
        MOV BX, INPUTHANDLE
        INT 21H             ;关

;打开input1.txt
        MOV AH, 3DH
        LEA DX, INPUTFILE
        MOV AL, 00H
        INT 21H
        MOV INPUTHANDLE1, AX
;读input1.txt
        LEA DX, READSTRING  ;缓冲区地址
        MOV BX, INPUTHANDLE1 ;文件句柄
        ;读取字节数在CX中
        MOV AH, 3FH         ;AH=3FH, 读文件
        INT 21H             ;读
;给读到的字符串末尾加‘$’
        LEA BX, READSTRING
        MOV AL, '$'
        ADD BX, CX
        MOV [BX], AL
;关闭input1.txt
        MOV AH, 3EH         ;关闭文件
        MOV BX, INPUTHANDLE1
        INT 21H             ;关

        PUSH CX
;建立OUTPUT文件
        MOV AH, 3CH         ;建立文件
        LEA DX, OUTPUTFILE
        MOV CX, 0           ;普通文件
        INT 21H
        MOV OUTPUTHANDLE, AX ;保存文件句柄
;小写转大写
        MOV SI, 0
L2H:
        LEA BX, READSTRING
        ADD BX, SI
        MOV AL, [BX]
        CMP AL, '$'
        JZ  PRINT
        CMP AL, 'a'
        JNB TRANS
CONTINUE:
        MOV [BX], AL
        INC SI
        JMP L2H
TRANS:
        SUB AL, 20H
        JMP CONTINUE

;打印读到的字符串
PRINT:
        MOV AH, 9
        LEA DX, READSTRING
        INT 21H

;写output1.txt
        LEA DX, READSTRING ;缓冲区地址
        MOV BX, OUTPUTHANDLE ;文件句柄
        POP CX              ;CX放写入字数
        MOV AH, 40H         ;写文件
        INT 21H             ;写

;关闭output.txt
CLOSE:
        MOV AH, 3EH         ;关闭文件
        MOV BX, OUTPUTHANDLE
        INT 21H             ;关

EXIT:
        MOV AX, 4C00H
        INT 21H
; ERR0:   
;         MOV AH, 9
;         LEA DX, PROMPT0
;         INT 21H
;         JMP EXIT
; ERR1:   
;         MOV AH, 9
;         LEA DX, PROMPT1
;         INT 21H
;         JMP EXIT
; ERR2:
;         MOV AH, 9
;         LEA DX, PROMPT2
;         INT 21H
;         JMP EXIT
; ERR3:   
;         MOV AH, 9
;         LEA DX, PROMPT3
;         INT 21H
;         JMP EXIT
; ERR4:   
;         MOV AH, 9
;         LEA DX, PROMPT4
;         INT 21H
;         JMP EXIT


CODE_SEG    ENDS
        END MAIN