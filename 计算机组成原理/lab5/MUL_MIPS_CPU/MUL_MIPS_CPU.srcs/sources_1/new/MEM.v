`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/23 16:49:16
// Design Name: 
// Module Name: MEM
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


module MEM(
    input MemRead,
    input MemWrite,
    input lorD,
    input [7:0]PC,
    input [7:0]ALUout,
    output [7:0]rw_addr
    );
    
    assign rw_addr = (MemRead || MemWrite) ? (lorD ? {2'b0,ALUout[7:2]} : {2'b0,PC[7:2]}) : 8'b0;
    
endmodule
