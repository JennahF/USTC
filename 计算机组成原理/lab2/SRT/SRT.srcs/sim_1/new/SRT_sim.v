`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/26 17:43:27
// Design Name: 
// Module Name: SRT_sim
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


module SRT_sim(

    );
    integer i;
    reg [3:0]x0;
    reg [3:0]x1;
    reg [3:0]x2;
    reg [3:0]x3;
    wire [3:0]s0;
    wire [3:0]s1;
    wire [3:0]s2;
    wire [3:0]s3;
    reg clk; 
    reg rst;
    
 RST R(.x0(x0),.x1(x1),.x2(x2),.x3(x3),.rst(rst),.clk(clk),.s0(s0),.s1(s1),.s2(s2),.s3(s3));
    
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    initial begin
        x0 = 4'b1111;//5
        x1 = 4'b1100;//3
        x2 = 4'b0000;//c
        x3 = 4'b0010;//a
    end
    initial begin
        rst = 0;
        #5 rst = 1;
        #1 rst = 0;
        #100000 rst = 1;
        #1 rst = 0;
    end
endmodule
