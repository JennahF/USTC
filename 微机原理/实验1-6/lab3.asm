DATAS SEGMENT
inputfile DB 'INPUT3.txt', 0
outputfile DB 'OUTPUT3.txt', 0
inputhandle DW ?
outputhandle DW ?
buffer DW 2048 dup(0)
num DB ?
negative1 DB 0
negative2 DB 0
thousand DB 0
hundrad DB 0
DATAS ENDS
CODES SEGMENT
    ASSUME CS:CODES, DS:DATAS

Read proc near
    LEA DX, num         ;缓冲区地址
    MOV BX, inputhandle ;文件句柄
    MOV CX, 1           ;读1个字符
    MOV AH, 3FH         ;AH=3FH, 读文件
    INT 21H             ;读
    RET
Read ENDP

PRINT_MINUS PROC near;打印负号
    PUSH AX  
    PUSH DX  
    MOV AH, 2
    MOV DL, '-'
    INT 21h   
    POP DX 
    POP AX      
    RET
PRINT_MINUS ENDP

PRINT_BLANK PROC near;打印空格
    PUSH AX  
    PUSH DX  
    MOV AH, 2
    MOV DL, ' '
    INT 21h   
    POP DX 
    POP AX      
    RET
PRINT_BLANK ENDP

PRINTC proc near;打印DL的字符
    PUSH AX 
    ADD DL, 30H
    MOV AH, 2
    INT 21h
    POP AX     
    RET
PRINTC ENDP

DIVIDER_1K proc near
    PUSH AX
    CMP buffer[BX], 3E8H
    JB PLACE1
    MOV DL, 1
    POP AX
    RET
PLACE1:
    MOV DL, 0 ;<
    POP AX
    RET
DIVIDER_1K ENDP

DIVIDER_1H proc near
    PUSH AX
    MOV AX, buffer[BX]
    MOV DX, 64H
    DIV DL
    MOV DX, AX
    POP AX
    RET
DIVIDER_1H ENDP

DIVIDER_10 proc near
    PUSH AX
    MOV AX, buffer[BX]
    MOV DX, 10
    DIV DL
    MOV DX, AX
    POP AX
    RET
DIVIDER_10 ENDP


SORT PROC
		MOV CX,0H 
		SUB CX,1
	FORI:	
		INC CX      ;i=0
		MOV AL, num
        MOV AH, 0
		SUB AX, 1H  ;AX=num-1
		CMP CX, AX  ;for(i=0;i<num-1;i++)
		JB NEXT 
		RET
	NEXT:
		MOV BX,0    ;j=0
	FORJ:
		MOV AL, num
        MOV AH, 0
		SUB AX, 1H
		SUB AX, CX ;num-1-i
		CMP BX, AX ;for(j=0;j<num-1-i;j++)
		JNB FORI   ;j=num-i-i,返回上一层循环
		PUSH BX    

		MOV AX, BX
		MOV BL, 2 
		MUL BL
		MOV BX, AX ;BX=BX*2，数组下标
		PUSH BX 
		MOV AX, buffer[BX] ;buffer[j]
		CMP AX, 1000H
		JNA JPOS
		MOV negative1, 1H ;buffer[j]为负
	JPOS:
		ADD BX,2
		PUSH BX 
		MOV DX, buffer[BX] ;buffer[j+1]
		CMP DX, 1000H
		JNA J1POS
		MOV negative2, 1H

	J1POS: 
		CMP negative1, 1H 
		JNE JPOSleft
		JMP JNEGleft

	JPOSleft:;左边是正数
		CMP negative2, 1H
		JNE SAME 
		JMP Jpos_neg
	
	JNEGleft: ;左负
		CMP negative2, 1H
		JNE Jneg_pos
		JMP SAME

	SAME: ;左右同号
		CMP AX, DX ;比较左右两值
		JNA donothing
		POP BX ;DX在数组中的偏移
		MOV buffer[BX],AX
		POP BX ;AX在数组中的偏移
		MOV buffer[BX],DX
		JMP continue
	donothing:;左 <= 右
		POP BX
		POP BX
		JMP continue

	Jneg_pos: ;左负右正
		POP BX 
		POP BX
		JMP continue

	Jpos_neg: ;左正右负
		POP BX 
		MOV buffer[BX],AX
		POP BX 
		MOV buffer[BX], DX
		JMP continue
		

	continue:
		MOV negative1,0H
		MOV negative2,0H
		POP BX
		INC BX
		JMP FORJ

;	FINISHSORT:
;		RET 
	SORT ENDP


MAIN:
    MOV AX, DATAS
    MOV DS, AX
;打开inputfile
    MOV AH, 3DH
    LEA DX, inputfile
    MOV AL, 00H
    INT 21H
    MOV inputhandle, AX
;读数字
    MOV BX, 0   ;数组下标
    MOV DX, 0
    MOV CX, 0
readnum:
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    CALL Read   ;读一个字符
    POP DX
    POP CX
    POP BX
    POP AX
    MOV CL, num

    CMP CL, '$' ;读完了，跳出
    JZ readover

    CMP CL, ' '
    JNZ judgenext
    CMP CH, 0
    JZ storenum
    ;MOV CX, 0
    ;SUB CX, DX
    ;MOV DX, CX
    NEG DX
storenum:       ;数字存在DX中
    MOV buffer[BX], DX

    ADD BX, 2
    MOV DX, 0   ;清空
    MOV CX, 0
    JMP	readnum
    
judgenext:
    CMP CL, '-'
    JNZ CALCULATE
    MOV CH, 1
    JMP	readnum
CALCULATE:
    SUB CL, 30H
    MOV AX, 10
    MUL DX
    MOV DX, AX  ;DX = DX*10
    PUSH CX
    MOV CH, 0
    ADD DX, CX
    POP CX
    JMP	readnum

readover:
    CMP CH, 0
    JZ storenum1
    MOV CX, 0
    SUB CX, DX
    MOV DX, CX
storenum1:       ;数字存在DX中
    MOV buffer[BX], DX
    MOV AX, BX
    MOV BX, 2
    DIV BL
    MOV BX, AX
    ADD BL, 1
    MOV num, BL

    call SORT

    MOV CL, num
    MOV CH, 0
    MOV BX, 0
PRINTLOOP:
    CMP buffer[BX], 1000H
    JNA POS
    CALL PRINT_MINUS
    MOV DX, buffer[BX]
    NEG DX  ;求补
    MOV buffer[BX], DX
POS:
    CALL DIVIDER_1K ;商在DL，余数在DH
    CMP DL, 0
    JZ printnext1
    CALL PRINTC ;打印千位
    MOV thousand, 1
    MOV DX, buffer[BX]
    SUB DX, 3E8H
    MOV buffer[BX], DX

printnext1:
    CALL DIVIDER_1H ;商在DL，余数在DH
    CMP thousand, 1
    JZ printh
    CMP DL, 1
    JB printnext2
printh:
    CALL PRINTC ;打印百位
    MOV hundrad, 1
    MOV DL, DH
    MOV DH, 0
    MOV buffer[BX], DX

printnext2:
    CALL DIVIDER_10 ;商在DL，余数在DH
    CMP hundrad, 1
    JZ prints
    CMP DL, 1
    JB printnext3
prints:
    CALL PRINTC  ;打印十位
printnext3:
    MOV DL, DH
    CALL PRINTC

    CALL PRINT_BLANK
    ADD BX, 2
    SUB CX, 1
    CMP CX, 0
    JZ EXIT
    MOV thousand, 0
    MOV hundrad, 0
    JMP PRINTLOOP

EXIT:
    MOV AX, 4C00H
    INT 21H

CODES   ENDS
        END MAIN


