DATAS SEGMENT
	NUMBER DB 100 DUP (?)
DATAS ENDS
CODES SEGMENT
	ASSUME CS:CODES, DS:DATAS

PRINT_N PROC near;打印换行符 
    PUSH AX  
    PUSH DX  
    MOV AH, 2
    MOV DL, 0Ah
    INT 21h   
    POP DX 
    POP AX      
    RET
PRINT_N ENDP	
	
PRINTC proc near;打印DL的字符
    PUSH AX 
    MOV AH, 2
    INT 21h
    POP AX     
    RET
PRINTC ENDP
	
START:
	MOV  AX, DATAS	;初始化DS
    MOV  DS, AX
	
	MOV	 AH, 1		;输入并回显
	INT	 21H
	SUB  AL, 30H
	MOV  DH, AL      
	SUB  DH, 1		;DH放N-1

	MUL  AL			;AL=AL*AL
	MOV  BX, AX
	MOV  CX, AX      ;CL放N^2
;初始化数组
LOOP0:
	DEC  BX
	MOV  NUMBER[BX], CL
	LOOP  LOOP0		
;打印换行
	CALL PRINT_N

	MOV  CH, 0       ;CH存行号
LINE:
	CMP  CH, DH      ;行号和N-1比较
	JG	 EXIT2      ;CH>N,跳出
;CH小于N
	MOV  CL, 0       ;CL存列号
    
ROW:
	CMP  CL, CH      ;列号>行号 
	JG   EXIT1      ;列号+1，打印换行符
;此时CH存行，CL存列
	MOV  AL, DH		;AL=N-1
	ADD  AL, 1
	MUL  CH			;AL=N*CH
	ADD  AL,CL		;AL=N*CH+CL
	
	MOV  BX, AX
	MOV  AL, NUMBER[BX]

	MOV  DL, 10
	DIV  DL         ;AL放商，AH放余数
	MOV  DL, AL      
	ADD  DL, 0
	JZ   OUT1       ;若为0，不打印
	ADD  DL, 30H
	CALL PRINTC     ;打印十位

OUT1:	
	MOV  DL, AH      
	ADD  DL, 30H
	CALL PRINTC     ;打印个位
	
	MOV DL, 32       
    CALL PRINTC     ;打印空格
	
	INC  CL         ;列号+1
	JMP  ROW

EXIT1:	
	INC  CH
	CALL PRINT_N
	JMP  LINE
	
EXIT2:	
	MOV  AX, 4C00H
    INT  21H
CODES ENDS
END  START