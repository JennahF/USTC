`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/12 17:20:12
// Design Name: 
// Module Name: controlunit_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module controlunit_sim(

    );
    
    parameter Rtype = 6'b000000;
    parameter addi = 6'b001000;
    parameter andi = 6'b001100;
    parameter ori = 6'b001101;
    parameter xori = 6'b001110;
    parameter slti = 6'b001010;
    parameter lw = 6'b100011;
    parameter sw = 6'b101011;
    parameter beq = 6'b000100;
    parameter bne = 6'b000101;
    parameter j = 6'b000010;
    
    reg clk;
    reg rst;
    reg [5:0]op;
    initial begin
        clk=0;
        forever #5 clk=~clk;
    end
    initial begin
        rst=0;
        #20 rst=1;
        #10 rst=0;
    end
    initial begin
        op=Rtype;
        #65 op=addi;
        #40 op=andi;
        #40 op=ori;
        #40 op=xori;
        #40 op=slti;
        #40 op=lw;
        #50 op=sw;
        #40 op=beq;
        #40 op=bne;
        #40 op=j;
    end
    control_unit cu_dut(.clk(clk),.rst(rst),.op(op));
    
endmodule
