`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/23 17:03:42
// Design Name: 
// Module Name: board_sim
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


module board_sim(

    );
    
    reg clk;
    reg [3:0]dir;
    reg draw;
    reg rst;
    reg [11:0]penrgb;
    wire [11:0]vrgb;
    wire hs;
    wire vs;
    wire en;
    initial begin
        clk=0;
        draw=0;
        penrgb=0;
        forever #1 clk=~clk;
    end
    initial begin
        dir=0;
        #200 dir[0]=1;#200 dir[1]=1;#200 dir[2]=1; #200 dir[3]=1;
        #500000 dir=0;
    end
    initial begin
        rst=0;
        #5 rst=1;
        #5 rst=0;
    end
    board_top board_sim(.rgb(penrgb),.dir(dir),.draw(draw),.rst(rst),.clk_100M(clk),.vga_r(vrgb[11:8]),.vga_g(vrgb[7:4]),.vga_b(vrgb[3:0]),.hs(hs),.vs(vs));
    
endmodule
