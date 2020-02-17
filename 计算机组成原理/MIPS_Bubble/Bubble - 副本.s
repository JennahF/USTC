#######data segment#######

    .data
fin:
    .asciiz "fin.txt"
buffer:
    .space 1024
start_time:
    .asciiz "start time:"
input_num:
    .asciiz "\nplease input the number of digits in the sequence:"
input:
    .asciiz "please input the sequence(seperated by enter):\n"
read_finished:
    .asciiz "read finished!\n"
sort_start:
    .asciiz "sort start time:"
sort_finish:
    .asciiz "\nsort result:\n"
space:
    .asciiz " "
finish_time:
    .asciiz "\nfinish time:"

#######text segment#######

    .text
    .globl main
    j main

get_time:
    li $v0, 30          #get time
    syscall
    li $v0, 1
    add $s0, $a0, $0
    add $a0, $a1, $0
    syscall
    add $a0, $s0, $0
    syscall
    jr $ra

main:
    li $v0, 4           #print "start time"
    la $a0, start_time
    syscall

    jal get_time        #call get_time function to print current time

    li $v0, 4           #print 
    la $a0, input_num   
    syscall

    li $v0, 13          #syscall for open a file
    la $a0, fin
    li $a1, 0           #open for read
    syscall
    move $s6, $v0       #$s6 saves the pointer to the file

    li $v0, 14          #syscal for reading a file
    add $a0, $s6, $0    #file discriptor
    la $a1, buffer      #address of buffer
    li $a2, 2           #read a integer once
    syscall
    sw $v0, 0($gp)      #Mem[gp] stores the total number of the digits
    sw $sp, 4($gp)      #Mem[gp+4] stores the base address of the satck 

loop_read:
    li $v0, 14          #syscal for reading a file
    add $a0, $s6, $0    #file discriptor
    la $a1, buffer      #address of buffer
    li $a2, 1024        #read a integer once
    syscall
    beq $v0, $0, sort
    sw $v0, 0($sp)
    addi $sp, $sp, 4
    j loop_read

    add $a0, $s6, $0
    li $v0, 16
    syscall

sort:
    li $v0, 4           #print a string
    la $a0, sort_start 
    syscall
    jal get_time        #call get_time function to print current time

    addi $t1, $sp, 0    #t1 = i, loop from sp-1 -> [gp+4] (iterate the stack)
BiggerLoop:
    lw $t2, 4($gp)      #t2 = j, loop from [gp+4] -> i-1
    addi $t1, $t1, -4
    beq $t1, $t2, done  #done when #t1==the stack's base address
SmallLoop:
    lw $t3, 0($t2)
    lw $t4, 4($t2)
    slt $t5, $t4, $t3
    beq $t5, $0, NoChange   #if(Mem[$t2]<= Mem[$t2+4]) NoChange
    sw $t3, 4($t2)          #else exchange
    sw $t4, 0($t2)
NoChange:
    addi, $t2, $t2, 4
    beq $t1, $t2, BiggerLoop
    j SmallLoop

done:
    li $v0, 4           #print a string
    la $a0, sort_finish  
    syscall

print_loop:
    li $v0, 1
    lw $a0, 0($t2)
    syscall

    li $v0, 4           
    la $a0, space
    syscall

    addi $t2, $t2, 4
    beq $t2, $sp, finish
    j print_loop
finish:
    la $a0, finish_time
    syscall
    jal get_time
