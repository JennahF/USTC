`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/18 19:13:59
// Design Name: 
// Module Name: FIFO_tb
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


module FIFO_tb(

    );
    reg [3:0]in;
    reg en_in;
    reg en_out;
    reg clk;
    reg rst;
    wire [3:0] outer;
    wire [7:0] an;
    wire [6:0] seg;
    wire dp;
    FIFO FIFO_DUT (.in(in),.en_in(en_in),.en_out(en_out),.clk(clk),.rst(rst),.outer(outer),.an(an),.seg(seg),.dp(dp));
	
    initial
    begin
    clk=0;
    forever
    begin
    #15;clk=~clk;
    end
    end
    
    initial
    begin
    rst=0;
    #15;rst=1;
    #15;rst=0;
    end
    
    initial
    begin
    in=4'd1;
    #150;in=4'd6;
    #150;in=4'd3;
    #150;in=4'd5;
    #150;in=4'd4;
    #150;in=4'd2;
    #150;in=4'd3;
    #150;in=4'd1;
    #150;in=4'd9;
    #150;in=4'd7;
    #150;in=4'd6;
    #150;in=4'd8;
    #150;in=4'd4;
    #150;in=4'd4;
    #150;in=4'd2;
    #150;in=4'd3;
    #150;in=4'd1;
    #150;in=4'd9;
    #150;in=4'd7;
    end
    initial
    begin
    en_in=0;#45;en_in=1;#100;en_in=0;#90;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    en_in=0;#15;en_in=1;#100;en_in=0;#120;
    en_in=0;#15;en_in=1;#100;en_in=0;#120;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    en_in=0;#15;en_in=1;#100;en_in=0;#120;
    en_in=0;#15;en_in=1;#100;en_in=0;#120;
    en_in=0;#15;en_in=1;#100;en_in=0;#120;
    en_in=0;#15;en_in=1;#100;en_in=0;#120;
    en_in=0;#15;en_in=1;#100;en_in=0;#120;
    en_in=0;#15;en_in=1;#100;en_in=0;#120;
    en_in=0;#15;en_in=1;#100;en_in=0;#120;
    en_in=0;#15;en_in=1;#100;en_in=0;#120; 
    en_in=0;#15;en_in=1;#100;en_in=0;#120;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    en_out=0;#15;en_out=1;#15;en_out=0;#120;
    end
endmodule
