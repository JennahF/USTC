INCLUDE Irvine16.INC
DATAS SEGMENT
READOVERFLAG DB 0
hundrad DB 0
outnow DB 0
justlbracket DB 1
justrbracket DB 0
belowzero DB 0
fitsttime DB 1
DATAS ENDS
STACK SEGMENT STACK
DB 1024 dup(0)
STACK ENDS

CODES SEGMENT
    ASSUME CS:CODES, DS:DATAS, SS:STACK

PRINTC proc near;打印DL的字符
    PUSH AX 
    ADD DL, 30H
    MOV AH, 2
    INT 21h
    POP AX     
    RET
PRINTC ENDP

PRINTMINUS proc near;打印符号
    PUSH AX 
    MOV DL, '-'
    MOV AH, 2
    INT 21h
    POP AX     
    RET
PRINTMINUS ENDP

MAIN:
    MOV AX, DATAS
    MOV DS, AX
    MOV AX, '$'
    PUSH AX
    MOV DX, 0

READNEXT:
    MOV AL, READOVERFLAG ;如果为1，退出读入
    CMP AL, 1
    JZ READOVER
    MOV	AH, 1		;输入并回显
	INT	21H
    MOV AH, 0
    CMP fitsttime, 1
    JNZ NEXT
    CMP AL, '-'
    JZ NEXT
    MOV justlbracket, 0
    
NEXT:
    CMP justrbracket, 1 ;若刚处理完右括号，说明读进来的一定是个符号，立即处理
    MOV justrbracket, 0
    JZ SYMBOL
    CMP AL, 40 ;(   ;若为左括号，立即处理
    JZ SYMBOL

    CMP AL, '-'
    JNZ CMPNEXT6
    CMP justlbracket, 1
    JNZ CMPNEXT6

    MOV belowzero, 1    ;如果读进来一个‘-’且刚刚处理完一个(，说明此-是一个符号
    MOV justlbracket, 0
    JMP READNEXT

CMPNEXT6:
    CMP AL, 48 ;0
    JB PROCESSNUM   ;若比0小，即是一个符号，说明数字输入完毕，去处理一下数字
    SUB AL, 48  ;否则读入一个数字，计算该数
    PUSH AX
    MOV AX, 10
    MUL DX
    MOV DX, AX
    POP AX
    ADD DX, AX
    JMP READNEXT

PROCESSNUM:
    PUSH AX
    MOV AX, DX  ;AX保存当前数字
    POP CX  ;CX保存下一个符号
    CMP belowzero, 1
    JNZ PUSHNUMBER
    NEG AX  ;如果是负数，将AX取补码
    MOV belowzero, 0
    JMP PUSHNUMBER


PROCESS:
    CMP CX, 0
    JZ READNEXT
    MOV AX, CX
    MOV CX, 0
    CMP AL, 13      ;回车表示输入完毕
    JNZ SYMBOL
    MOV READOVERFLAG, 1
    JMP READNEXT

PUSHNUMBER: ;PUSHNUMBER将AX中的数字PUSH进栈，不过会将栈顶一直运算到不能再运算
    POP DX
    CMP DX, '$'
    JNZ CMPNEXT3
    PUSH DX
    PUSH AX
    JMP PROCESS
CMPNEXT3:
    CMP DX, 43  ;+
    JNZ CMPNEXT4
    POP DX
    ADD AX, DX
    JMP PUSHNUMBER
CMPNEXT4:
    CMP DX, 45  ;-
    JNZ CMPNEXT5
    POP DX
    SUB DX, AX
    MOV AX, DX
    JMP PUSHNUMBER
CMPNEXT5:
    PUSH DX
    PUSH AX
    JMP PROCESS

SYMBOL:
    CMP AL, 13      ;回车表示输入完毕
    JNZ CMPNEXT0
    MOV READOVERFLAG, 1
    JMP READNEXT
CMPNEXT0:
    CMP AL, 40  ;(
    JNZ CMPNEXT1
    PUSH AX
    MOV DX, 0
    MOV justlbracket, 1
    JMP READNEXT
CMPNEXT1:
    CMP AL, 41  ;)
    JNZ CMPNEXT2
    POP AX
    POP DX  ;DX里是(
    MOV DX, 0
    MOV justrbracket, 1
    JMP PUSHNUMBER
CMPNEXT2:
    PUSH AX
    MOV DX, 0
    JMP READNEXT

READOVER:
    POP AX  ;最后计算完毕，结果在栈顶

    CMP AX, 1000H
    JB PRINT
    CALL PRINTMINUS
    NEG AX

PRINT:
    MOV DX, 100
    DIV DL
    CMP AL, 0
    JZ PRINTNEXT
PRINTH:
    MOV DL, AL
    CALL PRINTC
    MOV hundrad, 1
PRINTNEXT:
    MOV AL, AH
    MOV AH, 0
    MOV DX, 10
    DIV DL
    CMP AL, 0
    JNZ PRINTS
    CMP hundrad, 0
    JZ PRINTNEXT1
PRINTS:
    MOV DL, AL
    CALL PRINTC
PRINTNEXT1:
    MOV DL, AH
    CALL PRINTC

EXIT1:
    MOV AX, 4C00H
    INT 21H
CODES ENDS
    END MAIN
