`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/23 21:10:31
// Design Name: 
// Module Name: PC1
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


module PC1(
    input clk,
    input rst,
    input PCWrite,
    input Zero,
    input PCWriteCond,
    input [31:0]next_pc,
    input isbne,
    output reg [31:0]PC
    );
   wire isbne_cond = (~Zero && PCWriteCond);
   wire notbne_cond = (Zero && PCWriteCond);
   always@(posedge clk or posedge rst)begin
         if(rst)PC<=0;
         else begin 
            if(PCWrite) PC = next_pc;
            else begin
                if((isbne&&isbne_cond)||(~isbne && notbne_cond)) PC = next_pc;
            end
         end 
     end
    
endmodule
