module RF #(parameter N=3,M=3,RST_VALUE=0) (
	input [M-1:0] ra0,
	input [M-1:0] ra1,
	input [M-1:0] wa,
	input [N-1:0] wd,
	input we,
	input clk,
	input rst,
	output [N-1:0] rd0,
	output [N-1:0] rd1
	);
	reg [N-1:0] RF [7:0];

	always@(posedge clk or posedge rst)
	begin
		if(rst)
		    begin
			RF[0] <=RST_VALUE;
			RF[1] <=RST_VALUE;
			RF[2] <=RST_VALUE;
			RF[3] <=RST_VALUE;
			RF[4] <=RST_VALUE;
			RF[5] <=RST_VALUE;
			RF[6] <=RST_VALUE;
			RF[7] <=RST_VALUE;
			end
		else if(we)
			RF[wa] =wd;
	end
	
	assign rd0=RF[ra0];
	assign rd1=RF[ra1];
	
endmodule
			
			
					
			