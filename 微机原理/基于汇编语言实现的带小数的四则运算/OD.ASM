PUBLIC          OUTPUTDECIMAL

OUTD_DATA       SEGMENT
    PRECISION   EQU     6   ;一定要是偶数MUST BE EVEN
    BIGDECM     DQ      1000000.0
    BCDSPC      DT      ?
    MOSTSIG     DB      ?
    LESTSIG     DB      ?
OUTD_DATA       ENDS

OUTD_CODE       SEGMENT
                ASSUME CS:OUTD_CODE, DS:OUTD_DATA
                
                
    OUTPUTDECIMAL       PROC    FAR
            ;输出一个小数。
            ;输入：SI，64bit小数的偏移地址。
            ;正常输出范围：-100000~-0.00000001, 0.00000001~100000
            ;输出格式：最多8位小数，如25.00152225, 33.441。
            PUSH        AX
            PUSH        BX
            PUSH        CX
            PUSH        DX
            PUSHF
            
            PUSH        DS
            
            FLD         QWord Ptr [SI]
            MOV         AX, OUTD_DATA
            MOV         DS, AX
            
            FMUL        QWord Ptr BIGDECM       ;乘一百万，就可以先化成整数
            
            FBSTP       BCDSPC      ;计算得到BCD
            
            ;开始找BCD的最高位、最低位有效数字
            MOV         BX, Offset BCDSPC
            MOV         CX, 0H
            
            MOV         MOSTSIG, 0D
            MOV         LESTSIG, 17D
            
    EVENBIT:
            SHR         CX, 1H
            MOV         DI, CX
            AND         DI, 0FH
            MOV         DL, [BX][DI]
            SHL         CX, 1H
            TEST        DL, 0FH
            JNZ         CHKUPDATESIG
    CHKEND_EVEN: 
            INC         CX
            
    ODDBIT:
            TEST        DL, 0F0H
            JNZ         CHKUPDATESIG
    CHKEND_ODD: 
            INC         CX
            CMP         CX, 17D
            JBE         EVENBIT
            JMP         AFTERSETSIG
            
    CHKUPDATESIG:
            CMP         MOSTSIG, CL
            JNB         CHKUPDATELESTSIG
            MOV         MOSTSIG, CL
    CHKUPDATELESTSIG:
            CMP         LESTSIG, CL
            JNA         CHKUPDATELESTSIG_END
            MOV         LESTSIG, CL
    CHKUPDATELESTSIG_END:
            TEST        CL, 1H
            JZ          CHKEND_EVEN
            JMP         CHKEND_ODD
            
    ;此时MOSTSIG和LESTSIG分别储存小数的最高位和最低位
    AFTERSETSIG:
            CMP         MOSTSIG, 6D
            JAE         AFTER_CORRECT_MOSTSIG
            MOV         MOSTSIG, 6D
    AFTER_CORRECT_MOSTSIG:
            CMP         LESTSIG, 6D
            JBE         AFTER_CORRECT_LESTSIG
            MOV         LESTSIG, 6D
    AFTER_CORRECT_LESTSIG:
            
    ;开始打印
    PRINTDIGIT          MACRO   digit
            PUSH        DX
            MOV         DL, digit
            AND         DL, 0FH
            OR          DL, 30H
            MOV         AH, 02H
            INT         21H
            POP         DX
    ENDM
    ;先打印符号
            MOV         DL, 9[BX]
            TEST        DL, 80H
            JZ          PRINTDIGITS
            PUSH        DX
            MOV         DL, '-'
            MOV         AH, 02H
            INT         21H
            POP         DX
            
    PRINTDIGITS:
            XOR         CX, CX
            MOV         CL, MOSTSIG
            TEST        CL, 1H
            JNZ         PRINTDIGIT_ODD
            ROR         CX, 1H
            MOV         DI, CX
            ROL         CX, 1H
            AND         DI, 0FH
            MOV         DL, [BX][DI]
            JMP         PRINTDIGIT_EVEN
            
    PRINTDIGIT_ODD:
            PUSH        CX
            SHR         CX, 1H
            MOV         DI, CX
            AND         DI, 0FH
            MOV         DL, [BX][DI]
            MOV         CL, 4H
            ROR         DL, CL
            POP         CX
            
            CMP         CL, PRECISION - 1D
            JNZ         DIRECT_PRINTDIGIT
            
            PUSH        DX
            MOV         DL, '.'
            MOV         AH, 02H
            INT         21H
            POP         DX
            
    DIRECT_PRINTDIGIT:
            PRINTDIGIT  DL
            
            PUSH        CX
            MOV         CL, 4H
            ROR         DL, CL
            POP         CX
            
            DEC         CL
            CMP         CL, LESTSIG
            JL          PRINTDIGIT_END
    PRINTDIGIT_EVEN:
            PRINTDIGIT  DL
            DEC         CL
            CMP         CL, LESTSIG
            JNL         PRINTDIGIT_ODD
            
    PRINTDIGIT_END:
    
            POP         DS
            POPF
            POP         DX
            POP         CX
            POP         BX
            POP         AX
            RET
            
    OUTPUTDECIMAL       ENDP
    
OUTD_CODE               ENDS
END