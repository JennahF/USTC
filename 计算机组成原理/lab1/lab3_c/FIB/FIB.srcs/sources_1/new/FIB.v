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
    output reg [15:0]fn
    );
    reg [15:0]f1_old;
    reg [15:0]f2_old;
    reg flag;
    initial begin
        f1_old = 0;
        f2_old = 0;
        flag = 0;
    end
    always@(*)begin
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
        if(rst==1) fn = 0;
        else if(clk==1) fn = f1_old + f2_old;
    end
endmodule
