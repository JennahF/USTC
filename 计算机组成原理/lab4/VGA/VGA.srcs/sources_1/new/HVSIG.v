`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/24 16:28:57
// Design Name: 
// Module Name: HVSIG
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
module TOP(
    input [11:0] rgb,
    input [3:0] dir,
    input draw,
    input clk,
    input rst,
    output hs,
    output vs,
    output [11:0] vrgb
    );
    wire [11:0]vdata,pdata;
    wire [15:0]vaddr,paddr;
    wire pclk,clk_25,rst_n,rst_n_25,clk_25_2;
    wire [7:0] x;
    wire [7:0] y;
    wire we;
    clk_wiz_0  d1( .clk_in1 (clk),.clk_out1(pclk),.reset (rst),.locked (rst_n));  // for display
    divider dut_25Hz(// for ram
        .clk(pclk),
        .rst(rst),
        . rst_n(rst_n_25),
        . sclk(clk_25)
        );
     divider dut_25(// for ram
            .clk(pclk),
            .rst(rst),
            . rst_n(),
            . sclk(clk_25_2)
            );
    dist_mem_gen_0   mem_DUT (
      .a(paddr),            // input wire [14 : 0] a
      .d(pdata),            // input wire [11 : 0] d
      .dpra(vaddr),      // input wire [14 : 0] dpra
      .clk(clk),        // input wire clk
      .we(we),          // input wire we
      .dpo(vdata)        // output wire [11 : 0] dpo
    );
    HVSIG d3(
        . x(x),
        . y(y),
        . vdata(vdata),
        . vaddr(vaddr),     
        . pclk(pclk),
        . rst_n(rst_n),
        . vrgb(vrgb),
        . hs(hs),
        . vs(vs)
        );
    PCU PCU_DUT(
            .rgb(rgb),
            .dir(dir),
            . draw(draw),
            . clk(clk_25),
            . rst_n(rst_n_25),
            . pdata(pdata),
            . paddr(paddr),
            . we(we),
            . x(x),
            . y(y)
            );
endmodule
module HVSIG(
	input [7:0] x,
	input [7:0] y,
	input [11:0] vdata,
	output [15:0] vaddr, 	
	input pclk,
	input rst_n,
	output [11:0] vrgb,
	output reg hs,
	output reg vs
	);
	wire hen,ven,xen,yen;
	reg [10:0] hcnt;
	reg [9:0] vcnt;
    wire[7:0] a;
    wire[7:0] b;
/*h counter*/
always @(posedge pclk, negedge rst_n) 
    if (!rst_n) hcnt <= 856;
    else if (hcnt == 1039) hcnt <= 0;
    else hcnt <= hcnt + 1;

/*Hsync generator*/
always @(posedge pclk, negedge rst_n)
    if (!rst_n) hs <= 0;
    else if (hcnt == 975) hs <= 1;
    else if (hcnt == 855) hs <= 0;

/*v counter*/
always @(posedge pclk, negedge rst_n) 
    if (!rst_n) vcnt <= 637;
    else if (hcnt == 855) 
		begin
			if (vcnt == 665) vcnt <= 0;
			else vcnt <= vcnt + 1;  
		end
/*Vsync generator*/
always @(posedge pclk, negedge rst_n)
    if (!rst_n) vs <= 0;
    else if (vcnt == 642) vs <= 1;
    else if (vcnt == 636) vs <= 0;
/*display ctr*/

assign hen = hcnt < 593 & hcnt >336;
assign ven = vcnt < 452 & vcnt >195;
assign xen = hcnt < x+337+8 & hcnt > x+337-8 &vcnt ==y+196;
assign yen = vcnt < y+196+8 & vcnt > y+196-8 &hcnt ==x+337;
assign vrgb = (ven & hen & ~xen & ~yen) ? vdata: 0;
assign a=hcnt-337;
assign b=vcnt-196;
assign vaddr={a,b};
endmodule

module divider(
    input clk,
    input rst,
    output rst_n,
    output reg sclk
	);
	wire clk_5m;

	reg [19:0] cnt1;
	parameter N=20'd49999;

	clk_wiz_0  d2( .clk_in1 (clk),.clk_out1(clk_5m),.reset (rst),.locked (rst_n));   
/*counter*/
always@(posedge clk_5m or negedge rst_n)
        begin
            if (!rst_n) 
                 cnt1 <= N; 
            else if (cnt1 == 0) 
                 cnt1 <=N ;
            else cnt1 <= cnt1-1;
        end
always @(posedge clk_5m or negedge  rst_n)
         begin
            if (!rst_n)
                begin
                    sclk <= 0;
                end
            else if (cnt1 == N) 
                begin
                    sclk <= !sclk;
                end
        end
endmodule