`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/21 15:19:26
// Design Name: 
// Module Name: FIB
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


module FIB(
    input [5:0]f1,
    input [5:0]f2,
    input clk,
    input  rst,
    output reg [5:0]fn
    );
    reg [5:0]f1_old;
    reg [5:0]f2_old;
    reg flag;
    reg [2:0]s;
    wire [2:0]f;
    wire [5:0]fn_;
    initial begin
        f1_old = 0;
        f2_old = 0;
        flag = 0;
        s = 3'b001;
    end
    always@(posedge clk or posedge rst)begin
        if(rst == 1) flag = 0;
        else if(flag == 0)begin
            f1_old = f1;
            f2_old = f2;
            flag = 1;
        end
        else if(flag == 1)begin
             f1_old = f2_old;
             f2_old = fn;
        end
    end
    always@(*)begin
        if(rst==1)fn = 0;
        else fn=fn_;
    end
    ALU L(.a(f1_old),.b(f2_old),.s(s),.y(fn_),.f(f));
endmodule
