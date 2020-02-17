`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/22 18:56:36
// Design Name: 
// Module Name: board_top
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


module board_top(
    input [11:0]rgb,
    input [3:0]dir,//[up,down,left,right]
    input draw,//»­±ÊÊ¹ÄÜ
    input rst,
    input clk_100M,
    
    output [3:0] vga_r, //ÆÁÄ»ÏÔÊ¾£¨r£©
    output [3:0] vga_g, //ÆÁÄ»ÏÔÊ¾£¨g£©
    output [3:0] vga_b, //ÆÁÄ»ÏÔÊ¾£¨b£©
    output hs,      //ÆÁÄ»ÏÔÊ¾£¨ºáÏòÉ¨Ãè£©
    output vs       //ÆÁÄ»ÏÔÊ¾£¨×İÏòÉ¨Ãè£©
    );
    wire [15:0]paddr;
    wire [11:0]pdata;
    wire we;
    wire locked;
    wire clk;
    wire [15:0]vaddr;
    wire [11:0]vrgb;
    wire [11:0]vdata;
    wire [7:0]x;
    wire [7:0]y;
    assign {vga_r,vga_g,vga_b}=vrgb;
    PCU PCU_DUT(.rgb(rgb),.dir(dir),.draw(draw),.rst(rst),.clk(clk),.x(x),.y(y),.paddr(paddr),.pdata(pdata),.we(we));
    
    clk_wiz_0 clk_dut(.clk_out1(clk),.reset(rst), .locked(locked), .clk_in1(clk_100M));
    
    dist_mem_gen_0 VRAM_DUT(.a(paddr),.d(pdata),.dpra(vaddr),.we(we),.clk(clk),.dpo(vdata));
    
    DCU DCU_DUT(.x(x),.y(y),.pixel_clk(clk),.rst(rst),.vdata(vdata),.vrgb(vrgb),.vaddr(vaddr),.hs(hs),.vs(vs));
    
endmodule
