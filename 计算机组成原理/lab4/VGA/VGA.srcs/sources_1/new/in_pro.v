`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/26 12:37:27
// Design Name: 
// Module Name: in_pro
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
module in_pro(
	input x,
	input clk,
	input rst,
	output x_pro
	);
	//clk should be  25hz;
	//for 2s maintain;
	reg [2:0] state,next_state;
	reg [5:0] cnt;
	reg td;
	wire ss;
	parameter PRE=3'b101;
	parameter S0=3'b000;
	parameter S1=3'b001;
	parameter S2=3'b010;
	parameter S3=3'b011;
	parameter S4=3'b100;
   parameter M=16'd4;
	//parameter M=6'd50;
/*state reg*/
always@(posedge clk or posedge rst)
	begin
		if(rst) state<=PRE;
		else state<=next_state;
	end
/*next state function*/
always@(state or x or td)
	begin
		case(state)
			PRE:	next_state=S0;
			S0:
			begin
				if(x)
					next_state=S1;
				else
					next_state=S0;
			end
			S1: next_state=S2;
			S2:
			begin
				if(td&!x)
					next_state=S0;
				else if(td&x)
					next_state=S3;
				else
					next_state=S2;
			end
			S3: 
			begin
				if(!x)next_state=S0;
				else next_state=S4;
			end
			S4: 
			begin
				if(!x)next_state=S0;
				else next_state=S3;
			end		
			default next_state=PRE;
		endcase
	end
	
/*out_signal*/
	assign  ss = (state == S2 );
	assign  x_pro=(state ==S1 ||state==S3);
/*counter*/
always@(posedge clk )
	begin
		if (!ss) 
			begin td <= 0; cnt <= M; end 
		else if 
			(cnt == 0)  td <= 1;
		else cnt <= cnt-1;
	end

endmodule
