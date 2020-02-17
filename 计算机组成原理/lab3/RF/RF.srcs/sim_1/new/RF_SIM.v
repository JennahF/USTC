`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/11 19:37:55
// Design Name: 
// Module Name: RF_SIM
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


module RF_SIM(

    );

    reg clk;
    reg rst;
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        rst = 0;
        #5 rst = 1;
        #5 rst = 0;
    end
    reg [2:0]wa;
    reg [3:0]wd;
    reg we;
    reg [2:0]ra0;
    reg [2:0]ra1;
    wire [3:0]rd0;
    wire [3:0]rd1;
    initial begin
        ra0 = 3'b000;
        ra1 = 3'b001;
        #20 ra0 = 3'b001;
        ra0 = 3'b010;
    end
    initial begin
        #15 wa = 3'b001;
        wd = 4'b1011;
        we = 1;
    end
    RF L(.ra0(ra0),.ra1(ra1),.wa(wa),.wd(wd),.we(we),.clk(clk),.rst(rst),.rd0(rd0),.rd1(rd1));
endmodule
