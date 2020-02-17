`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/22 19:06:45
// Design Name: 
// Module Name: B2D
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


module B2D(
    input [5:0]fn,
    input [7:0]an,
    output reg [6:0]seg
    );
    
    integer num;
    always@(*)begin
        num = 1*fn[0] + 2*fn[1] + 4*fn[2] + 8*fn[3] + 16*fn[4] + 32*fn[5];
        case(an)
            8'b11111110:num = (num/10000000)%10;
            8'b11111101:num = (num/1000000)%10;
            8'b11111011:num = (num/100000)%10;
            8'b11110111:num = (num/10000)%10;
            8'b11101111:num = (num/1000)%10;
            8'b11011111:num = (num/100)%10;
            8'b10111111:num = (num/10)%10;
            8'b01111111:num = num%10;
        endcase
    end
    
    always@(num)begin
        case(num)
            0:seg = 7'b1000000;
            1:seg = 7'b1111001;
            2:seg = 7'b0100100;
            3:seg = 7'b0110000;
            4:seg = 7'b0011001;
            5:seg = 7'b0010010;
            6:seg = 7'b0000010;
            7:seg = 7'b1111000;
            8:seg = 7'b0000000;
            9:seg = 7'b0010000;
        endcase
//        seg = ~seg;
    end
    
endmodule
