`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/17 15:56:26
// Design Name: 
// Module Name: test_tb
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


module test_tb(

    );
	reg x;
	reg sel;
	reg clk;
	reg rst;
	wire [2:0] q;
	wire a;
	test  DUT (.x(x),.sel(sel),.clk(clk),.rst(rst),.q(q));
	
	initial
	begin
	sel=1;
	clk=0;
	forever
	begin
	#10;clk=1;
	#10;clk=0;
	end
	end
	
	initial
	begin
	x=0;
	#10 x=1;
	#50 x=0;
	#10 x=1;
	#50 x=0;
	end
	
	initial
	begin
	rst=0;
	#10;rst=1;
	#10;rst=0;
	end
	
endmodule
