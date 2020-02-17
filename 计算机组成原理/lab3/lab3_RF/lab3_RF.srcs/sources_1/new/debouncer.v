`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/17 12:39:58
// Design Name: 
// Module Name: debouncer
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
module test(
	input x,
	input sel,
	input clk,
	input rst,
	output reg [2:0] q 
	);
	wire a,cp;
	debouncer DUT(.x(x),.clk(clk),.rst(rst),.x_pe(a),.x_ne());
	assign cp=sel&x|~sel&a;
	always@(posedge cp or posedge rst)
	begin
		if(rst) q<=0;
		else q<=q+1;
	end
endmodule

module debouncer(
	input x,
	input clk,
	input rst,
	output x_ne,
	output x_pe
	);
	reg [2:0] state,next_state;
	reg [19:0] cnt;
	reg td;
	wire ss;
	parameter S0=3'b000;
	parameter S1=3'b001;
	parameter S2p=3'b010;
	parameter S2=3'b011;
	parameter S3=3'b100;
	parameter S3p=3'b101;
    parameter M=20'd20;
//	parameter M=20'd1000000;
/*state reg*/
always@(posedge clk or posedge rst)
	begin
		if(rst) state<=S0;
		else state<=next_state;
	end
/*next state function*/
always@(state or x or td)
	begin
		case(state)
			S0:
			begin
				if(x)
					next_state=S1;
				else
					next_state=S0;
			end
			S1:
			begin
				if(td&!x)
					next_state=S0;
				else if(td&x)
					next_state=S2p;
				else
					next_state=S1;
			end
			S2p: next_state=S2;
			S2: 
			begin
				if(!x)next_state=S3;
				else next_state=S2;
			end
			S3:  
			begin
                if(td&x)
					next_state=S2;
                else if(td&!x)
					next_state=S3p;
				else
					next_state=S3;
            end
			S3p: next_state=S0;
			default next_state=S0;
		endcase
	end
	
/*out_signal*/
	assign  ss = (state == S1)|(state == S3);
	assign  x_pe = (state==S2p);
	assign  x_ne = (state==S3p);
	
/*counter*/
always@(posedge clk)
	begin
		if (!ss) 
			begin td <= 0; cnt <= M; end 
		else if 
			(cnt == 0)  td <= 1;
		else cnt <= cnt-1;
	end

endmodule

