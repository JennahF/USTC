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
    output reg [2:0]f//[��λ/��λ����������־]
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
                //�жϽ�λ
                   {f[2], y} = y1;
                //�ж����
                   if(a[5]==0 && b[5]==0)begin //ab����
                        if(y[5]==1) f[1] = 1;//���
                        else f[1] = 0;
                   end
                   else if(a[5]==1 && b[5]==1) //ab����
                        if(y[5]==0) f[1] = 1;
                        else f[1]=0;
                 end
            3'b010://sub
                begin
                   b1 = ~b + 1;//b1=-b
                   y1 = a + ~b + 6'b000001;
                   {f[2], y} = y1;//�жϽ�λ
                   //�ж����
                   if(a[5]==0 && b1[5]==0)begin //a,-b����
                        if(y[5]==1) f[1] = 1;//���
                        else f[1] = 0;
                   end
                   else if(a[5]==1 && b1[5]==1) //a,-b����
                        if(y[5]==0) f[1] = 1;
                        else f[1]=0;
                   //����100000��+1����Ϊ100000����˵�������
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
