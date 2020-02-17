`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/21 15:44:58
// Design Name: 
// Module Name: FIB_sim
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


module FIB_sim(

    );
reg clk_;
reg [5:0]f1_;
reg [5:0]f2_;
reg rst;
reg clk_100M;
wire[6:0]seg;
wire [7:0]an;
FIB_tube L(.f1(f1_),.f2(f2_),.clk_100M(clk_100M),.clk(clk_),.rst(rst),.seg(seg),.an(an));
initial begin
        clk_ = 0;
        forever #5 clk_ = ~clk_;
    end 
initial begin
    f1_=6'b000001;   end
    initial begin
    f2_=6'b000001;
    end
initial begin
    rst = 0;
    #500 rst = 1;
    #5 rst = 0;
end
initial begin
    clk_100M = 0;
    forever #5 clk_100M = ~clk_100M;
end
endmodule
