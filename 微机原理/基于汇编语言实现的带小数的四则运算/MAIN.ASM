COUNT       =  80D

KEYBOARD    STRUCT
    maxInput    BYTE    COUNT
    inputCount  BYTE    ?
    buffer      BYTE    COUNT DUP (?)
KEYBOARD    ENDS

STACK           SEGMENT     STACK
                BYTE        80H     DUP     (?)
STACK           ENDS

DATA        SEGMENT

expData     KEYBOARD    <>
pmtinstr    DB          "Please input an expression.",0DH, 0AH, "S=$"
pmtsstr     DB          "Result: S = $"
result      DQ          ?
errorstr    DB          "<Error>$"
DATA        ENDS

CODE        SEGMENT
            ASSUME CS:CODE, DS:DATA
            EXTERN PARSEEXP:FAR, INPUTDECIMAL:FAR, OUTPUTDECIMAL:FAR
            
mWriteStr   MACRO       buffer
            PUSH        DX
            PUSH        AX
            MOV         DX, Offset buffer
            MOV         AH, 09H
            INT         21H
            POP         AX
            POP         DX
ENDM

mWriteChr   MACRO       chr
            PUSH        DX
            PUSH        AX
            MOV         DL, chr
            MOV         AH, 02H
            INT         21H
            POP         AX
            POP         DX
ENDM
            
MAIN        PROC        FAR
            PUSH        DS
            MOV         AX, 0H
            PUSH        AX
            
            MOV         AX, DATA
            MOV         DS, AX
            
            FINIT
            
            mWriteStr   pmtinstr
            
            MOV         AH, 0AH
            MOV         DX, Offset expData
            INT         21H
            
            mWriteChr   0DH
            mWriteChr   0AH
            
            MOV         BX, Offset expData.buffer
            MOV         AL, expData.inputCount
            CBW
            ADD         BX, AX
            MOV         Byte Ptr[BX], '$'
            
            MOV         SI, Offset expData.buffer
            MOV         BX, Offset result
            CALL        PARSEEXP
            
            mWriteStr   pmtsstr
            
            MOV         SI, BX
            
            CMP         Word Ptr[BX], 0FFFFH
            JNZ         NO_ERROR
            ADD         BX, TYPE Word
            CMP         Word Ptr[BX], 0FFFFH
            JNZ         NO_ERROR
            ADD         BX, TYPE Word
            CMP         Word Ptr[BX], 0FFFFH
            JNZ         NO_ERROR
            ADD         BX, TYPE Word
            CMP         Word Ptr[BX], 0FFFFH
            JNZ         NO_ERROR
            JMP         ERROR_OUT
            
    NO_ERROR:
            CALL        OUTPUTDECIMAL
            JMP         FINAL
    ERROR_OUT:
            mWriteStr   errorstr
        
    FINAL:
            mWriteChr   0dh
            mWriteChr   0ah
            
            RETF
            
MAIN        ENDP
CODE        ENDS
END         MAIN