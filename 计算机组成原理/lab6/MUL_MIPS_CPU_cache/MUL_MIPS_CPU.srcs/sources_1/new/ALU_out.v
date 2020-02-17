`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/23 17:35:31
// Design Name: 
// Module Name: ALU_out
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


module ALU_out(
    inout clk,
    input rst,
    input [31:0]ALUresult,
    output reg [31:0]ALUout
    );
    
    always@(posedge clk or posedge rst)begin
        if(rst)ALUout<=0;
        else ALUout<=ALUresult;
    end
    
endmodule
