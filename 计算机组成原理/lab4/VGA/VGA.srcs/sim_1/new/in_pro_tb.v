`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/26 12:57:27
// Design Name: 
// Module Name: in_pro_tb
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


module in_pro_tb(

    );
    reg x;
    reg clk;
    reg rst;
    wire x_pro;
    in_pro pro_DUT(
        .x(x),
        .clk(clk),
        . rst(rst),
        . x_pro(x_pro)
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
    rst=0;
    #10;rst=1;
    #20;rst=0;
    end

 initial
        begin
        x=0;
        #40;x=1;
        #300;x=0;
        #40;x=1;
        #300;x=0;
        
        end   
    
endmodule
