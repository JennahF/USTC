`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/23 17:16:47
// Design Name: 
// Module Name: RFout_AB
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


module RFout_AB(
    input clk,
    input rst,
    input [31:0]ReadReg_1,
    input [31:0]ReadReg_2,
    output reg [31:0]A,
    output reg [31:0]B
    );
    always@(posedge clk or posedge rst)begin
        if(rst)begin A<=0;B<=0;end
        else begin
            A<=ReadReg_1;
            B<=ReadReg_2;
        end
    end
endmodule
