`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/19 19:42:27
// Design Name: 
// Module Name: add_sim
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


module add_sim(

    );
    reg clk_;
    integer i,j;
    reg [5:0]a;
    reg [5:0]b;
    reg [2:0]s;
    wire [5:0]y;
    wire [2:0]f;
    ALU L(.clk(clk_), .a(a), .b(b), .s(s), .y(y), .f(f));
    initial begin
        for(i=0;i<62;i=i+1) begin   
            #5 assign clk_=1;
            #5 assign clk_=0;
        end
    end 
    initial begin
        #4 a = 6'b000000;
        for(j=0;j<62;j=j+1) begin   
            #10 a <= a + 6'b000001;
        end
    end 
    initial begin
        #4 b = 6'b000000;
//        #320 b = 6'b111010;
    end 
    initial begin
        s = 3'b001;
        #10 s = 3'b010;
        #10 s = 3'b011;
        #10 s = 3'b100;
        #10 s = 3'b101;
        #10 s = 6'b110;
        end
endmodule
