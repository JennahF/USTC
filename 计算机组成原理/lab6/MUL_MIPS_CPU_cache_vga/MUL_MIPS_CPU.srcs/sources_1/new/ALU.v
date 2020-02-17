`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/03 19:34:22
// Design Name: 
// Module Name: ALU
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
    input [31:0]a, 
    input [31:0]b,
    input [2:0]s,
    output reg [31:0]y,
    output reg [2:0]f//[进位/借位，溢出，零标志]
    );
    initial begin
        f = 3'b000;
    end
    reg [32:0]y1;
    reg [31:0]_y;
    reg [31:0]b1;
    reg c;
    always@(*)begin
        f = 3'b000;
        case(s)
            3'b000://add
                begin
                y1 = a + b;
                //判断进位
                   {f[2], y} = y1;
                //判断溢出
                   if(a[31]==0 && b[31]==0)begin //ab均正
                        if(y[31]==1) f[1] = 1;//溢出
                        else f[1] = 0;
                   end
                   else if(a[31]==1 && b[31]==1) //ab均负
                        if(y[31]==0) f[1] = 1;
                        else f[1]=0;
                 end
            3'b001://sub
                begin
                   b1 = ~b + 1;//b1=-b
                   y1 = a + ~b + 6'b000001;
                   {f[2], y} = y1;//判断借位
                   //判断溢出
                   if(a[31]==0 && b1[31]==0)begin //a,-b均正
                        if(y[31]==1) f[1] = 1;//溢出
                        else f[1] = 0;
                   end
                   else if(a[31]==1 && b1[31]==1) //a,-b均负
                        if(y[31]==0) f[1] = 1;
                        else f[1]=0;
                   //由于100000求反+1后仍为100000，因此单独考虑
                   if(b==32'b10000000000000000000000000000000)begin
                        if(a[31]==0) f[1]=1;
                        else f[1]=0;
                   end
                end
            3'b010://and
                begin
                    y <= a&b;
                end
            3'b011://or
                begin
                    y <= a|b; 
                end
           /* 4'b0101://not
                begin
                    y <= ~a;
                end*/
            3'b100://xor
                begin
                    y <= a^b;
                end
            3'b110://nor
                begin 
                    y <= ~(a|b);
                end
            3'b101://slt
                begin
                    if(a<b)y<=1;
                    else y<=0;
                end
            default:;
        endcase
        f[0] = (&(~y));//zero flag
    end
endmodule