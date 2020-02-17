`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/26 13:07:02
// Design Name: 
// Module Name: PCU
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
module PCU(
	input [11:0] rgb,
	input [3:0] dir,
	input draw,
	input clk,
	input rst_n,
	output [11:0] pdata,
	output [15:0] paddr,
	output we,
	output [7:0] x,
	output [7:0] y
    );
	reg [7:0] cntx;
	reg [7:0] cnty;
	wire sl,sr,su,sd,re;
	in_pro DUT_1(
	.x(dir[0]),
	.clk(clk),
	.rst(re),
	.x_pro(sl)
	);
	in_pro DUT_2(
	.x(dir[1]),
	.clk(clk),
	.rst(re),
	.x_pro(sr)
	);
	in_pro DUT_3(
	.x(dir[2]),
	.clk(clk),
	.rst(re),
	.x_pro(su)
	);
	in_pro DUT_4(
	.x(dir[3]),
	.clk(clk),
	.rst(re),
	.x_pro(sd)
	);
always@(posedge clk or negedge rst_n )
	if(!rst_n)
		cntx<=128;
	else if( sl)
		cntx<=cntx+1;
	else if( sr)
		cntx<=cntx-1;
	else if(cntx==255)
		cntx<=0;
always@(posedge clk or negedge rst_n )
	if(!rst_n)
		cnty<=128;
	else if( su)
		cnty<=cnty+1;
	else if( sd)
		cnty<=cnty-1;
	else if(cnty==255)
		cnty<=0;
assign re=~rst_n;
assign paddr={cntx,cnty};
assign pdata=rgb;
assign we=draw;
assign x=cntx;
assign y=cnty;
endmodule
