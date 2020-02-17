`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/23 16:34:12
// Design Name: 
// Module Name: PC
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


module next_PC(
    input [1:0]PCSource,
    input [31:0]ALUresult,
    input [31:0]ALUout,
    input [31:0]Jump_addr,
    output reg [31:0]next_pc
    );
    always@(*)begin
        case(PCSource)
            0:next_pc=ALUresult;
            1:next_pc=ALUout;
            2:next_pc=Jump_addr;
       endcase
    end
endmodule
