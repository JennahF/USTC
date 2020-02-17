`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/22 19:22:10
// Design Name: 
// Module Name: VRAM
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


module VRAM(
    input [15:0]paddr,
    input [11:0]pdata,
    input [15:0]vaddr,
    input we,
    input rst,
    input clk,
    
    output [11:0]vdata
    );
    
    reg [15:0]pixel[11:0];
    always@(posedge clk or posedge rst)begin
        if(rst)begin
            pixel[0]<=12'b1111_0000_0000;//°×
            pixel[1]<=12'b1111_0000_0000;
            pixel[2]<=12'b1111_0000_0000;
            pixel[3]<=12'b1111_0000_0000;
            pixel[4]<=12'b1111_0000_0000;
            pixel[5]<=12'b1111_0000_0000;
            pixel[6]<=12'b1111_0000_0000;
            pixel[7]<=12'b1111_0000_0000;
            pixel[8]<=12'b1111_0000_0000;
            pixel[9]<=12'b1111_0000_0000;
            pixel[10]<=12'b1111_0000_0000;
            pixel[11]<=12'b1111_0000_0000;
            pixel[12]<=12'b1111_0000_0000;
            pixel[13]<=12'b1111_0000_0000;
            pixel[14]<=12'b1111_0000_0000;
            pixel[15]<=12'b1111_0000_0000;
        end
        else begin
            if(we)pixel[paddr]<=pdata;
        end
    end
    assign vdata=pixel[vaddr];
endmodule
