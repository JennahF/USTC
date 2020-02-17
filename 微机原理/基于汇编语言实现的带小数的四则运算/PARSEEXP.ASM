PUBLIC          PARSEEXP
PAEX_DATA       SEGMENT
;EVAL_MAP        DW          0, 0,  EVAL_ADD, EVAL_SUB, EVAL_MUL, EVAL_DIV
;地址表在用作PROC的程式中会出问题
ORIG_SS         DW          ?
ORIG_SP         DW          ?

ERR_INPUT_STR_MISMAT_PAR    DB  "Error: Mismatched Parenthesis", 0dh, 0ah, '$'
ERR_INPUT_STR_NO_OPERAND    DB  "Error: Missing Operand Somewhere", 0dh, 0ah, '$'
ERR_INPUT_STR_SYNTAX_ERROR  DB  "Error: Standard Syntax Error (No Operator between two operands)", 0dh, 0ah, '$'
ERR_INPUT_STR_UNEX_TOKEN    DB  "Error: Unexpected Token", 0dh, 0ah, '$'
ERR_INPUT_STR_UNKNOWN_1     DB  "Error: Unknown Error #1", 0dh, 0ah, '$'
ERR_INPUT_STR_UNKNOWN_2     DB  "Error: Unknown Error #2", 0dh, 0ah, '$'
ERR_INPUT_STR_UNKNOWN_3     DB  "Error: Unknown Error #3", 0dh, 0ah, '$'
ERR_INPUT_STR_INCOMPLETE_NUMBER     DB  "Error: Incomplete Number or Unexpected Arrangement of +/-", 0dh, 0ah, '$'
PAEX_DATA       ENDS

PAEX_STACK      SEGMENT     PRIVATE
;堆栈结构
;堆栈不与其他堆栈段组合；前80H字节作为放置运算符的堆栈区域，由SP控制，以两个字节为单位，内容与数字的对应见下面OP_前缀的宏定义；
;后80H字节作为放置双精度浮点数的堆栈区域，由BP控制，增长方向与SP相反 ，以八个字节为单位。
;初始时，SP与BP指向的区域均以FF字节填满，这样若用户输入的表达式为空（或存在错误，另行设置），返回时将返回栈顶浮点数FFFFFFFFFFFFFFFF，在MAIN中进行判定是否错误
                BYTE        80H     DUP     (?)
SP_BOTTOM       EQU         $
                WORD        OP_BOTTOM_SP
                ALIGN       QWORD
BP_BOTTOM       EQU         $
                
                BYTE        8H      DUP     (0FFH)
                BYTE        80H     DUP     (?)
PAEX_STACK      ENDS

OP_LBRA         EQU         0
OP_RBRA         EQU         1
OP_ADD          EQU         2
OP_SUB          EQU         3
OP_MUL          EQU         4
OP_DIV          EQU         5
OP_BOTTOM_SP    EQU         0FFFFH
OP_BOTTOM_BP    EQU         0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH
PAEX_DEBUG      EQU         1

PAEX_CODE       SEGMENT
                ASSUME CS:PAEX_CODE, DS:PAEX_DATA
                


                EXTERN      INPUTDECIMAL: FAR, OUTPUTDECIMAL: FAR
PARSEEXP        PROC        FAR
;输入：DS:SI，表达式的首地址；DS:BX，结果64bit浮点数的首地址
                PUSH        AX
                PUSH        CX
                PUSH        DX
                PUSH        BP
                PUSH        ES
                PUSHF
                PUSH        BX
                
                ;堆栈段和栈顶指针的保存不能再用堆栈了，要存在本程序自有的数据区
                MOV         AX, SS
                MOV         BX, Offset ORIG_SS
                MOV         CX, PAEX_DATA
                MOV         ES, CX
                MOV         ES:[BX], AX
                MOV         AX, SP
                MOV         BX, Offset ORIG_SP
                MOV         ES:[BX], AX

                CLI
                MOV         AX, PAEX_STACK
                MOV         SS, AX
                
                MOV         SP, Offset SP_BOTTOM             ;指示存储操作符用的堆栈头指针
                MOV         BP, Offset BP_BOTTOM             ;指示存储数字用的头指针
                STI
                
    ;对与SP增长方向相反的BP定义压栈、弹出的宏
    PUSHBP      MACRO       STH
                ADD         BP, TYPE STH
                MOV         [BP], STH
    ENDM
    POPBP       MACRO       STH
                MOV         STH, [BP]
                SUB         BP, TYPE STH
    ENDM
    PUSHBPFST   MACRO    
                ADD         BP, TYPE QWord
                FST         QWord Ptr SS:[BP]
    ENDM
    PUSHBPFSTP  MACRO     
                ADD         BP, TYPE QWord
                FSTP        QWord Ptr SS:[BP]
    ENDM
    POPBPFLD    MACRO       
                FLD         QWord Ptr SS:[BP]
                SUB         BP, TYPE Qword
    ENDM
    
    ;输出字符
    OUTCHAR    MACRO        CHR
                PUSH        DX
                PUSH        AX
                MOV         DL, CHR
                MOV         AH, 02H
                INT         21H
                POP         AX
                POP         DX
    ENDM
    
                MOV         CX, 0H          ;CX在本过程中作为一个全局量，指示刚刚读取的前一个TOKEN是否为一个数字。
                ;这样就可以为是否存在“1 2”这样堆叠数字的错误，和“+、-”到底表示加号减号还是正负号提供依据。
                JMP         READ_TOKEN_LOOP
             
    ;弹出栈顶的两个数和一个操作符，执行浮点运算，运算压入数栈。若开启了DEBUG，按逆波兰符号法输出符号
    EVAL_STACKTOP:
                POP         BX      ;因为要用到压在返回地址下面的AX，所以先弹出返回地址，存在BX里面。
                POP         AX
                
        REPEAT  2                   ;两次检测栈顶是否有数字，没有即错误；有即弹出数字，再执行FLD压入浮点运算栈。
                CMP         BP, BP_BOTTOM
                JBE         ERR_INPUT_NO_OPERAND
                
                POPBPFLD
        ENDM
        
                PUSH        BX      ;将之前备份的返回地址再次压入，之后的EVAL_ONCE过程不会改变栈。
                CALL        EVAL_ONCE
                ;POP         BX
                ;PUSH        BX
                RETN
                
    EVAL_ADD:
                FADD
        IF  PAEX_DEBUG
                OUTCHAR     '+'
        ENDIF
                JMP AFTER_EVAL
    EVAL_SUB:
                FSUBR
        IF  PAEX_DEBUG
                OUTCHAR     '-'
        ENDIF
                JMP AFTER_EVAL
    EVAL_MUL:
                FMUL
        IF  PAEX_DEBUG
                OUTCHAR     '*'
        ENDIF
                JMP AFTER_EVAL
    EVAL_DIV:
                FDIVR
        IF  PAEX_DEBUG
                OUTCHAR     '/'
        ENDIF
                JMP AFTER_EVAL
                
    EVAL_ONCE:
                CMP         AX, 02
                JE          EVAL_ADD
                CMP         AX, 03
                JE          EVAL_SUB
                CMP         AX, 04
                JE          EVAL_MUL
                CMP         AX, 05
                JE          EVAL_DIV
                JMP         ERR_INPUT_UNKNOWN_3
    AFTER_EVAL:
                
        IF  PAEX_DEBUG
                OUTCHAR     ' '
        ENDIF
                PUSHBPFSTP  ;运算结果再次压入栈
                RETN
                
    READ_TOKEN_LOOP:        ;主过程。不断移动指针SI，检测每一个字节表示的符号，采取操作
                MOV         DL, [SI]
                INC         SI
                
                CMP         DL, ' '
                JE          READ_TOKEN_LOOP
                CMP         DL, '('
                JE          GET_LBRA
                CMP         DL, ')'
                JE          GET_RBRA
                CMP         DL, '+'
                JE          GET_PLUSSIGN
                CMP         DL, '-'
                JE          GET_MINUSSIGN
                CMP         DL, '*'
                JE          GET_MULOP
                CMP         DL, '/'
                JE          GET_DIVOP
                CMP         DL, '.'
                JE          GET_FLOAT_SIGNED
                CMP         DL, '$'
                JE          GET_END_SIGN
                CMP         DL, '0'
                JB          ERR_INPUT_UNEX_TOKEN
                CMP         DL, '9'
                JA          ERR_INPUT_UNEX_TOKEN
                JMP         GET_FLOAT_NOSIGN
                
    GET_LBRA:               ;检测到(时，压入栈即可。
                MOV         AX, OP_LBRA
                PUSH        AX
                XOR         CX, CX
                JMP         READ_TOKEN_LOOP
                
    GET_RBRA:               ;检测到)时，不断执行操作符栈顶的操作符，将括号内的得数算出来，直到碰到(。之后弹出左括号。
    LOOP_OP_UNTIL_LBRA?:
                CMP         SP, SP_BOTTOM
                JE          ERR_INPUT_MISMAT_PAR
                MOV         BX, SP
                MOV         DX, SS:[BX]
                CMP         DX, OP_LBRA
                JE          AFTER_UNTIL_LBRA
                
                CALL        EVAL_STACKTOP
                JMP         LOOP_OP_UNTIL_LBRA?
                
    AFTER_UNTIL_LBRA:
                XOR         CX, CX
                ADD         SP, TYPE Word
                JMP         READ_TOKEN_LOOP
                
    GET_PLUSSIGN:                                       ;检测到+号时，检测下CX，判断到底是按正号（跳到INPUTDECIMAL）还是加号处理
                OR          CX, CX
                JZ          GET_FLOAT_SIGNED            ;之前没有输入过数字，所以+当正号处理
                ;否则当加号处理
                JMP         GET_ADDOP
                
    GET_ADDOP:
                MOV         DX, OP_ADD                  ;加号和减号优先级相同，故某些部分重合。DX指示当前运算的是加号还是减号
                JMP         START_ADDSUBOP
    GET_SUBOP:
                MOV         DX, OP_SUB
    START_ADDSUBOP:
                CMP         SP, SP_BOTTOM               ;栈里没东西的话，直接将+号进栈
                JE          PUSH_OPSTACK_ADDSUB
                MOV         BX, SP                      ;否则先看一下栈顶的运算符，如果优先级（或同优先级的左结合性先算）高于+号，先计算。
                MOV         AX, SS:[BX]                 ;当然，因为只有+-*/，并且都是左结合，所以不是碰到(的话都会先计算的。
                SHR         AX, 1H
                CMP         AX, 2                          ;第二优先级 */，对应4和5
                JE          EVAL_STACKTOP_ADDSUB
                CMP         AX, 1                           ;第一优先级 +-，对应2和3
                JE          EVAL_STACKTOP_ADDSUB
                CMP         AX, 0                           ;左括号
                JE          PUSH_OPSTACK_ADDSUB
                JMP         ERR_INPUT_UNKNOWN_1         ;循环直到可以将+号进栈即可。
        PUSH_OPSTACK_ADDSUB:
                PUSH        DX
                XOR         CX, CX
                JMP         READ_TOKEN_LOOP
        EVAL_STACKTOP_ADDSUB:
                CALL        EVAL_STACKTOP
                JMP         START_ADDSUBOP
        
    GET_MINUSSIGN:
                OR          CX, CX
                JZ          GET_FLOAT_SIGNED
                JMP         GET_SUBOP
                
    GET_MULOP:                                          ;乘除和加减基本相同，只是优先级不同而已。
                MOV         DX, OP_MUL
                JMP         START_MULDIVOP
    GET_DIVOP:
                MOV         DX, OP_DIV
             
    START_MULDIVOP: 
                CMP         SP, SP_BOTTOM
                JE          PUSH_OPSTACK_MULDIV
                MOV         BX, SP
                MOV         AX, SS:[BX]
                SHR         AX, 1H
                CMP         AX, 2                          ;第二优先级 */，对应4和5
                JE          EVAL_STACKTOP_MULDIV
                CMP         AX, 1                           ;第一优先级 +-，对应2和3
                JE          PUSH_OPSTACK_MULDIV             ;与加减不同，此处可以直接将乘除号压栈。
                CMP         AX, 0                           ;左括号
                JE          PUSH_OPSTACK_MULDIV
                JMP         ERR_INPUT_UNKNOWN_2
        PUSH_OPSTACK_MULDIV:
                PUSH        DX
                XOR         CX, CX
                JMP         READ_TOKEN_LOOP
        EVAL_STACKTOP_MULDIV:
                CALL        EVAL_STACKTOP
                JMP         START_MULDIVOP
                
    GET_FLOAT_SIGNED:
                MOV         DX, SI                      ;若是SIGNED，那么为了防止只出现一个+号或.号后面没有数字的情况
                JMP         GET_FLOAT                   ;需要将SI复制一份，然后比对读取数据之后的DX和SI。若SI没有走动，则判定为输入数字错误。
    GET_FLOAT_NOSIGN:
                MOV         DX, SI
                DEC         DX                          ;由于在主过程时，读取后SI马上加一，此时复制到的DX是往右偏移一位的，如果是没带符号的数字的话要修正过来
    GET_FLOAT:
                OR          CX, CX
                JNZ         ERR_INPUT_SYNTAX_ERROR
                
                DEC         SI                          ;同上，修正过来
                ADD         BP, TYPE Qword
               
                MOV         BX, BP
                PUSH        ES
                MOV         AX, SS
                MOV         ES, AX
                CALL        INPUTDECIMAL                ;备份、设置相应的段寄存器，调用输入数字的过程
                POP         ES
                NOT         CX
                
                CMP         DX, SI
                JAE         ERR_INPUT_INCOMPLETE_NUMBER
                
        IF  PAEX_DEBUG
        
                PUSH        DS
                PUSH        SI
                PUSH        AX
                MOV         AX, SS
                MOV         DS, AX
                MOV         SI, BP
                CALL        OUTPUTDECIMAL               ;按逆波兰符号法输出数字
                POP         AX
                POP         SI
                POP         DS
                
                OUTCHAR     ' '
        ENDIF
                
                JMP         READ_TOKEN_LOOP
                
    GET_END_SIGN:
                XOR         DL, DL          ;获取到endsign $后，设置一下DL表示是否出现错误
    GET_END_SIGN_LOOP:
                CMP         SP, SP_BOTTOM   ;要执行操作符栈存留的所有运算                
                JE          END_PARSING
                MOV         BX, SP
                MOV         AX, SS:[BX]
                CMP         AX, OP_LBRA     ;若碰到左括号，说明有括号没有闭合。
                JE          ERR_INPUT_MISMAT_PAR

                CALL        EVAL_STACKTOP
                JMP         GET_END_SIGN_LOOP
                
    END_PARSING:
    IF  PAEX_DEBUG
                OUTCHAR     0DH
                OUTCHAR     0AH
    ENDIF
                CLI                             ;将堆栈段寄存器复位
                MOV         BX, Offset ORIG_SP
                MOV         AX, ES:[BX]
                MOV         SP, AX
                MOV         BX, Offset ORIG_SS
                MOV         AX, ES:[BX]
                MOV         SS, AX
                STI
                CLD
                
                POP         BX                  ;此时可以POP出目标地址
                PUSH        DS
                PUSH        ES
                MOV         AX, DS
                MOV         ES, AX
                MOV         AX, PAEX_STACK
                MOV         DS, AX
                MOV         SI, BP
                MOV         DI, BX              ;将原数字栈的栈顶一个字节一个字节地MOVSB到目标地址，共8次
                MOV         CX, 8H
                MOV         AL, 0FFH            ;若出现异常（DL非0），返回0FFFFFFFFFFFFFFFF
                OR          DL, DL
                JNZ         MOV_FF
                REP         MOVSB
                JMP         AFTER_MOV
    MOV_FF:     REP         STOSB
    AFTER_MOV:
                POP         ES
                POP         DS
                
                
                
                POPF
                POP         ES
                POP         BP
                POP         DX
                POP         CX
                POP         AX
                RET
                
    ERR_INPUT_SHOW          MACRO   ERR_STR     ;定义错误宏。错误时统一将DL设置成FF返回
        ERR_INPUT_&ERR_STR :
        IF  PAEX_DEBUG
                OUTCHAR     0DH
                OUTCHAR     0AH
        ENDIF
                PUSH        DS
                MOV         AX, PAEX_DATA
                MOV         DS, AX
                
                MOV         DX, Offset ERR_INPUT_STR_&ERR_STR
                MOV         AH, 09H
                INT         21H
                POP         DS
                
                MOV         DL, 0FFH        ;表示出现错误
                JMP         END_PARSING
    ENDM
    
    ERR_INPUT_SHOW          MISMAT_PAR
    ERR_INPUT_SHOW          NO_OPERAND
    ERR_INPUT_SHOW          SYNTAX_ERROR
    ERR_INPUT_SHOW          UNEX_TOKEN
    ERR_INPUT_SHOW          UNKNOWN_1
    ERR_INPUT_SHOW          UNKNOWN_2
    ERR_INPUT_SHOW          UNKNOWN_3
    ERR_INPUT_SHOW          INCOMPLETE_NUMBER
             
PARSEEXP        ENDP
PAEX_CODE       ENDS
END