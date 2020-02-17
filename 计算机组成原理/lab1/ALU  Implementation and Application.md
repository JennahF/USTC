# ALU : Implementation and Application

## Project Introduction

* __Project Type :__ RTL Project
* __Source File Type :__ Verilog
* __Project board/Project Part :__ xc7a100tcsg324-1

## Project Function

* Accomplishing __ALU__ with Verilog
  * ALU performs __ADD__, __SUB__, __AND__, __OR__, __NOT__, __XOR__ on __6bits-signed numbers__.
  * ALU gives signals when __carry__, __borrow__, __overflow__ and __resulting in 0__ happen.
* Accomplishing __Fibonacci__ with ALU on __Nixie Tubes__.

## Implementation Details

### ALU

#### Operations

* __ADD :__ Verilog add
* __SUB :__ Firstly not the subtrahend. Then add 1 to it. Finally use add.
* __AND, OR, NOT, XOR :__ Verilog AND, OR, NOT, XOR

#### Carry/Borrow Judgment

* __Carry __ 
  * Only ADD leads to carry.
  * <img src="F:\COD\lab1\img\1564411306167.png" width="250px">
  * f[2] stores carry/borrow flag
  * a and b are two operators. 
  * y1 is a intermediate variable which has __7 bits__.(1 bit more than a and b) 
  * y stores the result.
* __Borrow :__
  * Only SUB leads to borrow.
  * 

### Fibonacci

