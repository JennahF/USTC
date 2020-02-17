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


module FIB_tube(
    input [5:0]f1,
    input [5:0]f2,
    input clk_100M,
    input clk,
    input  rst,
    output [6:0]seg,
    output reg [7:0]an
    );
    wire clk_5M;
    wire locked;
    reg [5:0]fn;
    reg clk_500;
    reg [21:0]count;
    
    reg [5:0]f1_old;
    reg [5:0]f2_old;
    reg flag;
    reg [2:0]s;
    wire [2:0]f;
    wire [5:0]fn_;
    
    clk_wiz_0 clk1(clk_5M,rst,locked,clk_100M);
    
    always@(posedge clk_5M)begin
        if(count>=21'd9999)begin
            count<=0;
        end
        else begin
            count<=count+1;
        end
    end
    always@(posedge clk_5M)begin
        clk_500<=(count>=21'd4999)?1:0;
    end

    initial begin
        f1_old = 0;
        f2_old = 0;
        flag = 0;
        s = 3'b001;
        an = 8'b11111110;
        count = 0;
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
        else if(clk==1) fn = fn_;
    end
    
    always@(posedge clk_500)begin
        case(an)
            8'b11111110:an<=8'b11111101;
            8'b11111101:an<=8'b11111011;
            8'b11111011:an<=8'b11110111;
            8'b11110111:an<=8'b11101111;
            8'b11101111:an<=8'b11011111;
            8'b11011111:an<=8'b10111111;
            8'b10111111:an<=8'b01111111;
            8'b01111111:an<=8'b11111110;
        endcase
    end
    
    B2D ff(.fn(fn),.an(an),.seg(seg));
    
    ALU L(.a(f1_old),.b(f2_old),.s(s),.y(fn_),.f(f));
endmodule
