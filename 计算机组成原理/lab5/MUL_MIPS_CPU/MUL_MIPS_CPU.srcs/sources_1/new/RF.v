`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/13 00:46:39
// Design Name: 
// Module Name: RF
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

module RF #(parameter reg_num=5,width=32) (
	input [reg_num-1:0] ra0,//读的地址
	input [reg_num-1:0] ra1,//读的地址
	input [reg_num-1:0] wa,//写的地址
	input [width-1:0] wd,//写的数据
	input we,
	input clk,
	input [reg_num-1:0] ddu_rd,
	input rst,
	output [width-1:0] ddu_out,
	output [width-1:0] rd0,//被读的数据
	output [width-1:0] rd1//被读的数据
	);
	reg [reg_num:0] RF [0:width-1];
	always@(posedge clk or posedge rst)
	begin
		if(rst)
		    begin
		    RF[0]<=0;RF[1] <=0;RF[2] <=0;RF[3] <=0;
			RF[4] <=0;RF[5] <=0;RF[6] <=0;RF[7] <=0;
			RF[8] <=0;RF[9] <=0;RF[10] <=0;RF[11] <=0;
			RF[12] <=0;RF[13] <=0;RF[14] <=0;RF[15] <=0;
			RF[16] <=0;RF[17] <=0;RF[18] <=0;RF[19] <=0;
			RF[20] <=0;RF[21] <=0;RF[22] <=0;RF[23] <=0;
			RF[24] <=0;RF[25] <=0;RF[26] <=0;RF[27] <=0;
			RF[28] <=0;RF[29] <=0;RF[30] <=0;RF[31] <=0;
			end
		else if(we)
			RF[wa] <= wd;
	end
	
	assign rd0=RF[ra0];
	assign rd1=RF[ra1];
	assign ddu_out=RF[ddu_rd];
	
endmodule
