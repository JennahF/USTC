DATAS SEGMENT
inputstring DB 4 dup(0)
number DB 0
result DB 19 dup(0)
FLAG DB 0
DATAS ENDS

CODES SEGMENT
    ASSUME CS:CODES, DS:DATAS

CALCULATE proc near
    MOV BX, 0
    MOV CX, 0
LOOP1:
    CMP BX, 19
    JZ OUT1
    MOV AL, result[BX]
    MOV AH, 0
    MUL DL
    PUSH DX
    MOV DL, 10
    DIV DL ;AH余数
    POP DX
    ADD AH, CL 
    CMP AH, 10
    JB CONTINUE
    ADD AL, 1
    SUB AH, 10
CONTINUE:
    MOV result[BX], AH
    MOV CL, AL  ;CL放进位
    INC BX
    JMP LOOP1
OUT1:
    CMP DL, 2
    JZ OUT2
    DEC DL
    MOV BX, 0
    MOV CX, 0
    CALL CALCULATE

OUT2:
    RET
CALCULATE ENDP

PRINTC proc near;打印DL的字符
    PUSH AX 
    ADD DL, 30H
    MOV AH, 2
    INT 21h
    POP AX     
    RET
PRINTC ENDP

PRINT proc near
    MOV BX, 18
LOOP2:
    MOV DL, result[BX]
    CMP DL, 0
    JNZ PRINTG
    CMP FLAG, 1
    JNZ NEXT
PRINTG:
    CALL PRINTC
    MOV FLAG, 1
NEXT:
    CMP BX, 0
    JZ OUT3
    DEC BX
    JMP LOOP2
OUT3:
    RET
PRINT ENDP


MAIN:
    MOV AX, DATAS
    MOV DS, AX
;读入字符串
READNEXT:
    MOV	AH, 1		;输入并回显
	INT	21H
    CMP AL, 13
    JZ READOVER
    PUSH AX
    LEA	BX,	number
    MOV DX, [BX]
    MOV AX, 10
    MUL DX
    MOV DX, AX ;DX=DX*10
    POP AX
    SUB AL, 30H
    ADD DL, AL
    MOV [BX], DX
    JMP READNEXT

READOVER:
    MOV DL, number
    MOV result[0], 1

    CALL CALCULATE

    CALL PRINT

    
    
EXIT:
    MOV AX, 4C00H
    INT 21H

CODES ENDS
    END MAIN