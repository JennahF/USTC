`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/13 14:03:56
// Design Name: 
// Module Name: sim
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


module sim(

    );
    reg clk100M;
    reg key;
    reg left;
    reg right;
    reg rst;
    wire hs;
    wire vs;
    vga_disp L(
        .clk100M(clk100M),
        .rst(rst),
        .key(key),
        .left(left),
        .right(right),
        .vga_r(),
        .vga_g(),
        .vga_b(),
        .vga_hs(hs),
        .vga_vs(vs),
        .temp(),
        .jump(),
        .fall()
        );
    integer i;
    initial begin
    clk100M=0;
    forever clk100M=~clk100M;
    end
    initial begin
    key=0;left=0;right=0;
    end
endmodule
