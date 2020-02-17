;float数字的计算 使用8087指令和Irvine-floatio的WriteFloat
.386
INCLUDE    irvine32.inc
INCLUDE    macros.inc

.data
OP0		REAL8 ?
OP1  REAL8 ?
OP2  REAL8 ?
OP3  REAL8 ?
Buffer BYTE 500 DUP(?)
ten    REAL8 10.0
itmp SDWORD ?
first  REAL8 123.456
second REAL8 10.0
third  REAL8 ?
power REAL8 ?

.code
main PROC

	finit					; initialize FPU
	MOV ecx, 4
FourTime:
	PUSH ecx
	MOV edx, 4
	SUB edx, ecx
	.IF(edx == 0)
		mWrite "Please enter x "
		MOV bh, 1;需要负数处理
	.ELSE
		mWrite "Please enter a"
		MOV eax, edx
		CALL WriteDec
		mWrite " "
		MOV bh, 0;不需要负数处理
	.ENDIF
    MOV edx, OFFSET Buffer
	MOV ecx, 500
	CALL ReadString
	MOV edx, OFFSET Buffer;读入的起点
	MOV bl, 0;默认正数
	CALL ReadAFloat
	POP ecx
	LOOP FourTime
	fstp OP3
	call	ShowFPUStack
	fstp OP2
	call	ShowFPUStack
	fstp OP1
	call	ShowFPUStack
	fstp OP0
	call	ShowFPUStack
	fld	OP2
	fld OP0
	fyl2x
	call	ShowFPUStack
	fld OP0
	fsqrt
	fld OP1
	fmul
	call	ShowFPUStack
	fld OP0
	fsin
	fld OP3
	fmul 
	call	ShowFPUStack
	fadd 
	call	ShowFPUStack
	fadd 
	call	ShowFPUStack
	CALL	WriteFloat
	;INVOKE  ExitProcess, 0
    MOV AH, 4CH
    INT 21H
main ENDP

DealError PROC
	mWrite "Error: x<0"
	;INVOKE ExitProcess, 0
    MOV AH, 4CH
    INT 21H
DealError ENDP

ReadAFloat PROC
		MOV al, BYTE PTR [edx]
		inc edx
		cmp  al,'+'
		jne  R1
		; is a '+' -- ignore it; sign= 0
		MOV al, BYTE PTR [edx]
		inc edx
		jmp  R2
	R1:
		cmp  al,'-'
		jne  R2
		MOV bl, 1;标记为负数
		.IF(bh == 1)
			call DealError
		.ELSE
			MOV al, BYTE PTR [edx]
			inc edx
		.ENDIF
		; here we are done with the optional sign flag
	R2:
		; look for a digit in the mantissa part
		.IF (al >= '0' && al <= '9') || (al == '.')	
		  fldz     ; push a 0.  ONE thing in FPU stack
		  .WHILE (al >= '0' && al <= '9')
			sub    al,'0'
			and    eax,0Fh
			mov    itmp,eax
			fmul   ten
			fild   itmp
			fadd
			MOV al, BYTE PTR [edx]
			inc edx
		  .ENDW

		  ; 处理小数部分
		  .IF (al == '.')
			MOV al, BYTE PTR [edx]
			inc edx
			fldz     ; LOAD 0.0
			fld   ten  ; get the power part started
			fstp  power  ; will be 10, 100, 1000, etc.
			.WHILE (al >= '0' && al <= '9')
			  sub  al,'0'
			  and  eax,0Fh
			  mov  itmp,eax
			  fild itmp
			  fdiv power
			  fadd
			  fld  power
			  fmul ten
			  fstp power
			  MOV al, BYTE PTR [edx]
			  inc edx
			.ENDW
			fadd       ; add the front end to the back end
		  .ENDIF
		.ELSE
		  call DealError
		.ENDIF
		.IF(bl == 1)
			fchs
		.ENDIF
		MOV bh, 0
		ret
ReadAFloat ENDP
END main