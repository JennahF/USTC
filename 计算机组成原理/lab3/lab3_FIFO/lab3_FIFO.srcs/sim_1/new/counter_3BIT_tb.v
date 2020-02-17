`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/19 17:28:52
// Design Name: 
// Module Name: counter_3BIT_tb
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


module counter_3BIT_tb(

    );
    reg clk;
    reg rst_n;
    wire [2:0]cnt;
    counter_3BIT counter_test(.sclk(clk),.rst_n(rst_n),.cnt(cnt));
    initial
    begin
    clk=0;
    forever
    begin
    #10;clk=1;
    #10;clk=0;
    end
    end
    initial
    begin
    rst_n=1;
    #10;rst_n=0;
    #10;rst_n=1;
    end
    
endmodule
