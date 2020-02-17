`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/19 17:54:28
// Design Name: 
// Module Name: lab1_1
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
module ALU(
    input clk,
    input [5:0] a, 
    input [5:0]b,
    input [2:0]s,
    output reg [5:0]y,
    output reg [2:0]f//[进位/借位，溢出，零标志]
    );
    initial begin
        f = 3'b000;
    end
    reg [6:0]y1;
    reg [5:0]_y;
    reg [5:0]b1;
    reg c;
    always@(posedge clk)begin
    f = 3'b000;
        case(s)
            3'b001://add
                begin
                y1 = a + b;
                //判断进位
                   {f[2], y} = y1;
                //判断溢出
                   if(a[5]==0 && b[5]==0)begin //ab均正
                        if(y[5]==1) f[1] = 1;//溢出
                        else f[1] = 0;
                   end
                   else if(a[5]==1 && b[5]==1) //ab均负
                        if(y[5]==0) f[1] = 1;
                        else f[1]=0;
                 end
            3'b010://sub
                begin
                   b1 = ~b + 1;//b1=-b
                   y1 = a + ~b + 6'b000001;
                   {f[2], y} = y1;//判断借位
                   //判断溢出
                   if(a[5]==0 && b1[5]==0)begin //a,-b均正
                        if(y[5]==1) f[1] = 1;//溢出
                        else f[1] = 0;
                   end
                   else if(a[5]==1 && b1[5]==1) //a,-b均负
                        if(y[5]==0) f[1] = 1;
                        else f[1]=0;
                   //由于100000求反+1后仍为100000，因此单独考虑
                   if(b==6'b100000)begin
                        if(a[5]==0) f[1]=1;
                        else f[1]=0;
                   end
                end
            3'b011://and
                begin
                    y <= a&b;
                end
            3'b100://or
                begin
                    y <= a|b; 
                end
            3'b101://not
                begin
                    y <= ~a;
                end
            3'b110://xor
                begin
                    y <= a^b;
                end
        endcase
        f[0] = (&(~y));//zero flag
    end
endmodule
