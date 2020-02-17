`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/11 20:52:27
// Design Name: 
// Module Name: FIFO_sim
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


module FIFO_sim(

    );
    
    reg clk_100M;
    reg clk;
    reg en_out;
    reg en_in;
    reg [3:0] in;
    reg rst;
    wire [3:0] out;
    wire empty;
    wire full;
    wire [6:0]seg;
    wire [7:0]an;
    wire dot;
    
    initial begin
        clk_100M = 0;
        forever #1 clk_100M = ~clk_100M;
    end
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        rst = 0;
        #5 rst = 1;
        #5 rst = 0;
    end
    initial begin
        en_out = 0;
        en_in = 0;
        in = 4'b0001;
        #10 en_in = 1;
        #10 en_in = 1;
        #10 en_in = 1;
        #10 en_in = 1;
        #10 en_in = 1;
        #10 en_in = 1;
        #10 en_in = 1;
        #10 en_in = 1;
        #10 en_in = 1;
        #10 en_in = 0;
        #10 en_out = 1;
        #10 en_out = 1;
        #10 en_out = 1;
        #10 en_out = 1;
        #10 en_out = 1;
        #10 en_out = 1;
        #10 en_out = 1;
        #10 en_out = 1;
    end
    FIFO L(.clk_100M(clk_100M),.en_out(en_out),.en_in(en_in),.in(in),. rst(rst),.clk(clk),.out(out),.empty(empty),.full(full),.seg(seg),.an(an),.dot(dot));
endmodule
