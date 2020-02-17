`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/26 13:37:12
// Design Name: 
// Module Name: PCU_tb
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


module PCU_tb(

    );
    reg [11:0]rgb;
    reg [3:0]dir;
    reg draw;
    reg clk;
    reg rst_n;
    wire [11:0]pdata;
    wire [15:0]paddr;
    wire we;
    wire [7:0]x;
    wire [7:0]y;
    
    PCU PCU_DUT(
        . rgb(rgb),
        . dir(dir),
        . draw(draw),
        . clk(clk),
        . rst_n(rst_n),
        . pdata(pdata),
        . paddr(paddr),
        . we(we),
        . x(x),
        . y(y)
        );
    initial
        begin
        clk=0;
        forever
        begin
        #10;clk=1;
        #10;clk=0;
        end
        end
    initial
        begin
        rst_n=1;
        #10;rst_n=0;
        #20;rst_n=1;
        end
    initial
        begin
        draw=0;
        rgb=12'd127;
        end
    initial
        begin
             dir=4'b1000;
             #200;dir=4'b0100;
             #200;dir=4'b0010;
             #200;dir=4'b0001;
             #200;dir=4'b0000;
       end
endmodule
