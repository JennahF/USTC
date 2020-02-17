`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/26 21:29:25
// Design Name: 
// Module Name: DIV_sim
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


module DIV_sim(

    );
    reg [3:0]x;
    reg [3:0]y;
    reg clk;
    reg rst;
    wire [3:0]q;
    wire [3:0]r;
    integer i;
    DIV L(.x(x),.y(y),.clk(clk),.rst(rst),.q(q),.r(r));
    initial begin
        clk = 0;
        forever #50 clk = ~clk;
    end
    initial begin
        x = 4'b1111;
        y = 4'b0011;
    end
    initial begin
        rst = 0;
        #5 rst = 1;
        #5 rst = 0;
    end
endmodule
