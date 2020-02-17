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
integer i;
reg clk_;
reg [5:0]f1_;
reg [5:0]f2_;
wire [5:0]fn_;
reg rst;
FIB L(.f1(f1_),.f2(f2_),.clk(clk_),.fn(fn_),.rst(rst));
initial begin
        for(i=0;i<62;i=i+1) begin   
            #5 assign clk_=1;
            #5 assign clk_=0;
        end
    end 
initial begin
    f1_=6'b000001;    #500 f1_=6'b000011;end
    initial begin
    f2_=6'b000001;
    #500 f2_=6'b000011;
    end
initial begin
    rst = 0;
    #500 rst = 1;
    #5 rst = 0;
end
endmodule
