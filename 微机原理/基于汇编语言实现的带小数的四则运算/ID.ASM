PUBLIC      INPUTDECIMAL

DECM_DATA   SEGMENT
    BCDSPC  DB      10 DUP (?)
    DEBUGSAVE DQ    ?
    DEBUGSAVE2 DQ   ?
    DEBUGGING_ =    1
    ENDOFSTR   DW   ?
DECM_DATA   ENDS
    
DECM_CODE        SEGMENT
            
ISTHISDIGITVALID:
;判断这个位是否还是该小数的内容。判断依据：
;  小数只能出现一次小数点(1)，也有可能不出现(0)，记录在AH中
;  存储小数的字符在内存中的起始位置，记录在BX中
;返回DL，指示该位是否是小数的内容；返回AH，指示小数点是否被用过
;返回SI，指示读取过小数之后的终止位置的下一个字节
            MOV     DL, [BX]
            CMP     DL, '0'
            JAE     DIGITNEXT
    DIGITNOTNUM:
            CMP     DL, '.'
            JE      DIGITDOT
    INVALID:MOV     DL, 0H
            RET
    DIGITDOT:
            ;若是第一次碰到点，CX+1，因为这个点不算数字，在循环中不计
            INC     CX
            OR      AH, AH
            JNZ     INVALID
            MOV     AH, 1H
            JMP     VALID
            
    DIGITNEXT:
            CMP     DL, '9'
            JA      DIGITNOTNUM
    VALID:  MOV     DL, 1H
            RET
            
INPUTDECIMAL PROC FAR
;输入：DS:SI 字符串首地址；ES:BX 64位浮点数的目标内存首地址
;输出：在ES:BX输出目标浮点数
            ASSUME  DS:DECM_DATA, CS:DECM_CODE
            PUSH    AX
            PUSH    BX
            PUSH    CX
            PUSH    DX

            PUSH    DI
            PUSHF
            PUSH    ES
            PUSH    DS
            PUSH    BX
            
            MOV     AX, DECM_DATA   ;先将DS和ES设置成本过程自用的数据段
            MOV     ES, AX
            
            MOV     BX, SI          ; 判断是否有符号“+/-”，并根据情况将DH置1(NEGATIVE)或0
            MOV     DL, [BX]
            CMP     DL, '+'
            JE      SIGNPOSITIVE
            CMP     DL, '-'
            JE      SIGNNEGATIVE
            MOV     DH, 0H
            PUSH    DX
            JMP     GOTOENDOFSTR
            
    SIGNPOSITIVE:
            MOV     DH, 0H
            PUSH    DX
            INC     BX
            INC     SI
            JMP     GOTOENDOFSTR
    SIGNNEGATIVE:
            MOV     DH, 1H
            PUSH    DX
            INC     BX
            INC     SI
            
            
            ; 指针走到最后一个符号
    GOTOENDOFSTR:
            MOV     CX, 18D
            XOR     AH, AH
    GOTOENDOFSTR_LOOP:
            CALL    ISTHISDIGITVALID
            OR      DL, DL
            JZ      HEREISENDOFSTR
            INC     BX
            LOOP    GOTOENDOFSTR_LOOP
            
    HEREISENDOFSTR:
            PUSH    DS
            MOV     AX, DECM_DATA
            MOV     DS, AX
            MOV     ENDOFSTR, BX
            POP     DS
            
            MOV     AX, Offset BCDSPC
            MOV     DI, AX
            XOR     AX, AX
            XOR     DH, DH
            
            
            MOV     CX, 18D + 1D     ;最多支持18个有效位，当然精确后没有
            CLD
            JMP     SENDTOSPACE_LOOP?
            
    SENDTOSPACE_LOOP:
            DEC     BX
            MOV     DL, [BX]
            CMP     DL, '.'
            JE      SENDTOSPACE_LOOP?_DOT
            AND     DL, 0FH
            OR      AH, AH
            JNZ     UPPERPART
            MOV     AL, DL
            NOT     AH
            JMP     SENDTOSPACE_LOOP?
    UPPERPART:
            PUSH    CX
            MOV     CL, 4H
            SHL     DL, CL
            POP     CX
            OR      AL, DL
            STOSB
            ;载入完一个字节后，送入SPACE，相关指针增
            XOR     AX, AX
            
    SENDTOSPACE_LOOP?:
            CMP     BX, SI
            LOOPNE  SENDTOSPACE_LOOP
            JMP     PADDING_ZEROS
            
    SENDTOSPACE_LOOP?_DOT:
            ;碰到小数点后，记录一下出现的位置于DH，即小数点后有多少位（没出现时，DH为0）
            MOV     DH, CL
            SUB     DH, 18D
            NEG     DH
            CMP     BX, SI
            JNE     SENDTOSPACE_LOOP
            
    PADDING_ZEROS:  ;若有AL剩余，填入SPACE；高位补0补到10个字节
            OR      AH, AH
            JZ     PADDING_START
            AND     AL, 0FH
            STOSB
            DEC     CX
    PADDING_START:
            SAR     CX, 1H
            
            XOR     AL, AL
            REP     STOSB
            POP     BX              ;此时BH记录该数正负性
            OR      BH, BH
            JZ      GIVING_MSBSIGN
            OR      AL, 80H
    GIVING_MSBSIGN:
            STOSB
            
            MOV     AX, DECM_DATA
            MOV     DS, AX
            

    ;开始将10字节的BCD转换为实数
            FBLD    TByte Ptr BCDSPC
    IF DEBUGGING_ EQ 1
            PUSH    DS
            MOV     AX, DECM_DATA
            MOV     DS, AX
            FST     QWord Ptr DEBUGSAVE
            POP     DS
            
    ENDIF
    ;TODO:  除法
            MOV     CX, 10D
            MOV     DI, Offset BCDSPC
            XOR     AL, AL
            REP     STOSB
            
            TEST    DH, 1H
            JZ      DH_EVEN
            MOV     AL, 10H
            JMP     GEN_DIVISOR
    DH_EVEN:
            MOV     AL, 01H
    GEN_DIVISOR:
            SHR     DH, 1H
            MOV     DI, Offset BCDSPC
            PUSH    AX
            MOV     AL, DH
            CBW
            ADD     DI, AX
            POP     AX
            STOSB
            
            
            FBLD    TByte Ptr BCDSPC
    IF DEBUGGING_ EQ 1
            PUSH    DS
            MOV     AX, DECM_DATA
            MOV     DS, AX
            FST     QWord Ptr DECM_DATA : DEBUGSAVE2
            POP     DS
            
    ENDIF
            FDIV                ;此时ST(0)存有目标数
            
            POP     BX
            POP     DS
            POP     ES
            FSTP    QWord Ptr ES:[BX]
            
            PUSH    DS
            MOV     AX, DECM_DATA
            MOV     DS, AX
            MOV     SI, ENDOFSTR
            POP     DS
            
            
            POPF
            POP     DI

            POP     DX
            POP     CX
            POP     BX
            POP     AX
            
            RET
INPUTDECIMAL ENDP
DECM_CODE    ENDS
             END