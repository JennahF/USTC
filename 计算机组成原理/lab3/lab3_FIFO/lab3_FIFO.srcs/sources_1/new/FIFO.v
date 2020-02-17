`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/18 15:40:38
// Design Name: 
// Module Name: FIFO
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


module FIFO(
    input [3:0]in,
    input en_in,
    input en_out,
    input clk,
    input rst,
    output full,
    output empty,
    output [3:0] outer,
    output [7:0] an,
    output [6:0] seg,
    output dp
    );
    wire en_in_pe,en_out_pe;
    wire [7:0] valid;
    wire [2:0] head;
    wire [2:0] ra1;
    wire [3:0] rd1;
    debouncer debouncer_in_DUT(.x(en_in),.clk(clk),.rst(rst),.x_ne(),.x_pe(en_in_pe));
    debouncer debouncer_out_DUT(.x(en_out),.clk(clk),.rst(rst),.x_ne(),.x_pe(en_out_pe));
    LCU_RF LCU_RF_DUT (.in(in),.en_in_pe(en_in_pe),.en_out_pe(en_out_pe),.ra1(ra1),.clk(clk),.rst(rst),.full(full),.empty(empty),.rd1(rd1),.outer(outer),.valid(valid),.head(head));
    SCU SCU_DUT(.rd1(rd1),.valid(valid),.head(head),.clk(clk),.rst(rst),.ra1(ra1),.an(an),.seg(seg),.dp(dp));
endmodule
module SCU(
    input [3:0] rd1,
    input [7:0] valid,
    input [2:0] head,
    input clk,
    input rst,
    output [2:0] ra1,
    output [7:0] an,
    output [6:0] seg,
    output dp
    );
    wire rst_n,sclk;
    wire [2:0] ra_w;
    display display_DUT(.ra1(ra_w),.rd1(rd1),.head(head),.valid(valid),.an(an),.seg(seg),.dp(dp));
    divider divider_DUT (.clk(clk),.rst(rst),.rst_n(rst_n),.sclk(sclk));
    counter_3BIT counter_DUT(.sclk(sclk),.rst_n(rst_n),.cnt(ra_w));
    assign ra1=ra_w;
endmodule

module LCU_RF(
	input [3:0]in,
	input en_in_pe,
	input en_out_pe,
	input [2:0]ra1,
	input clk,
	input rst,
	output full,
	output empty,
	output [3:0]rd1,
	output [3:0] outer,
	output [7:0] valid,
	output [2:0] head
	);
	wire [2:0] a,b;
	wire [3:0] c,d;
	wire e;
	
	LCU DUT_LCU(.in(in),.en_in_pe(en_in_pe),.en_out_pe(en_out_pe),.clk(clk),.rst(rst),.rd0(c),.ra0(a),.wa(b),.wd(d),.we(e),.full(full),.empty(empty),.outer(outer),.valid(valid),.head_o(head));
	RF RF_DUT (.ra0(a),.ra1(ra1),.wa(b),.wd(d),.we(e),.clk(clk),.rst(rst),.rd0(c),.rd1(rd1));
endmodule
	
module LCU(
	input [3:0]in,
	input en_in_pe,
	input en_out_pe,
	input clk,
	input rst,
	input [3:0] rd0,
	output [2:0]ra0,
	output reg [2:0]wa,
	output reg [3:0]wd,
	output reg we,
	output reg full,
	output reg empty,
	output reg [3:0]outer,
	output reg [7:0] valid,
	output  [2:0] head_o
	);
	
	reg [2:0] state,next_state;
	reg [2:0] tail,head;
	parameter WAIT=3'b000;
	parameter INQ=3'b001;
	parameter CHECK_FULL= 3'b010;
	parameter OUTQ=	3'b011;
	parameter CHECK_EMPTY=3'b100;
	parameter PRE=3'b101;
	assign head_o =head;
    assign ra0=head;
/*state*/
always@(posedge clk or posedge rst)
	begin
		if(rst) 
			begin
				state<=PRE;
			end
		else state<=next_state;
	end
/*next state function*/
always@(state or en_in_pe or en_out_pe or full or empty)
	begin
		case(state)
		    PRE:next_state=WAIT;
			WAIT:
			begin
				if(en_in_pe&!full)
					next_state=INQ;
				else if(en_out_pe&!empty)
					next_state=OUTQ;
				else
					next_state=WAIT;
			end
			INQ: next_state=CHECK_FULL;
			CHECK_FULL: next_state=WAIT; 
			OUTQ: next_state=CHECK_EMPTY;
			CHECK_EMPTY: next_state=WAIT;
			default next_state=WAIT;
		endcase
	end
/*out reg*/
always@(posedge clk or posedge rst)

    if(rst)
        begin
           	full<=0;
            empty<=1;
            we<=0;
        end
    else
	case(next_state)
		INQ: 
			begin 
				we<=1;empty<=0;
			end
		OUTQ:
			begin
				we<=0;full<=0;
			end
		CHECK_FULL:
			if(tail+1'b1==head)
				full<=1;
		CHECK_EMPTY:
			if(tail==head+1'b1)
				empty<=1;
		default we<=0;
	endcase

/*data path*/
always@(posedge clk)
	begin
		case(state)
		    PRE:
		        begin
		        tail<=0;
                head<=0;
                outer<=4'b0000;
                valid<=8'd0;
		        end
			INQ: 
				begin
/*????order*/			
					wa<=tail;
					wd<=in;
					valid[tail]<=1;
                    tail<=tail+1'b1;	
				end
			OUTQ:
				begin
					valid[head]<=0;
					outer<=rd0;
	                head=head+1'b1;
					
				end
			default ;
		endcase
	end
endmodule

module RF #(parameter N=4,M=3,RST_VALUE=0) (
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
module display(
    input [2:0]ra1,
    input [3:0]rd1,
    input [2:0]head,
    input [7:0] valid,
    output [7:0] an,
    output [6:0] seg,
    output dp
    );
    wire [7:0] seg_sel;
    wire en,dp_en;
    assign en=valid[ra1];
    assign dp_en=(ra1==head);
    decoder decoder_DUT(.in(ra1),.en(en),.out(seg_sel));
    seg_ctrl seg_ctrl_DUT(.x(rd1),.y(dp_en),.sel(seg_sel),.an(an),.seg(seg),.dp(dp));
endmodule

module divider(
    input clk,
    input rst,
    output rst_n,
    output reg sclk
	);
	wire clk_5m;

	reg [11:0] cnt1;
	parameter N=12'd2500;

	clk_wiz_0  d1( .clk_in1 (clk),.clk_out1(clk_5m),.reset (rst),.locked (rst_n));   
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
//                    sclk <= !sclk;
                    if(sclk==0) sclk=1;
                    else sclk=0;
                end
        end
	
endmodule

module counter_3BIT(
    input sclk,
    input rst_n,
    output reg [2:0]cnt
    );
    parameter M=3'd7;
    always@(posedge sclk or negedge rst_n)
             begin
                   if (!rst_n)
                             cnt <= M; 
                   else if (cnt == 0) 
                             cnt <= M;
                   else cnt <= cnt-1;
             end
endmodule
module decoder(
    input [2:0] in,
    input en,
    output reg [7:0] out
    );
always@(in or en)
    begin
        if(en)
              case(in)
                  3'b000: out=8'b1111_1110;
                  3'b001: out=8'b1111_1101;
                  3'b010: out=8'b1111_1011;
                  3'b011: out=8'b1111_0111;
                  3'b100: out=8'b1110_1111;
                  3'b101: out=8'b1101_1111;
                  3'b110: out=8'b1011_1111;
                  3'b111: out=8'b0111_1111;
                  default ;
              endcase
        else
            out=8'b1111_1111;
   end
endmodule


module seg_ctrl(
    input [3:0]x,
    input y,
    input [7:0]sel,
    output [7:0]an,
    output [6:0]seg,
    output dp
    );
     assign seg[0]=(~x[3]&~x[2]&~x[1]&x[0])||(~x[3]&x[2]&~x[1]&~x[0]);
     assign seg[1]=(~x[3]&x[2]&~x[1]&x[0])||(~x[3]&x[2]&x[1]&~x[0]);
     assign seg[2]=(~x[3]&~x[2]&x[1]&~x[0]);
     assign seg[3]=(~x[3]&~x[2]&~x[1]&x[0])||(~x[3]&x[2]&~x[1]&~x[0])||(~x[3]&x[2]&x[1]&x[0]);
     assign seg[4]=(~x[3]&~x[2]&~x[1]&x[0])||(~x[3]&~x[2]&x[1]&x[0])||(~x[3]&x[2]&~x[1]&~x[0])||(~x[3]&x[2]&~x[1]&x[0])||(~x[3]&x[2]&x[1]&x[0])||(x[3]&~x[2]&~x[1]&x[0]);
     assign seg[5]=(~x[3]&~x[2]&~x[1]&x[0])||(~x[3]&~x[2]&x[1]&~x[0])||(~x[3]&~x[2]&x[1]&x[0])||(~x[3]&x[2]&x[1]&x[0]);
     assign seg[6]=(~x[3]&~x[2]&~x[1]&~x[0])||(~x[3]&~x[2]&~x[1]&x[0])||(~x[3]&x[2]&x[1]&x[0]);
     assign dp=~y;
     assign an=sel;
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
 //   parameter M=20'd4;
	parameter M=20'd1000000;
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
always@(posedge clk )
	begin
		if (!ss) 
			begin td <= 0; cnt <= M; end 
		else if 
			(cnt == 0)  td <= 1;
		else cnt <= cnt-1;
	end

endmodule

