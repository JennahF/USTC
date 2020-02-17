`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/23 17:21:38
// Design Name: 
// Module Name: ALU_Operands
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


module ALU_Operands(
    input [15:0]instant,
    input [31:0]PC,
    input [31:0]A,
    input [31:0]B,
    input ALUSrcA,
    input [1:0]ALUSrcB,
    output  reg [31:0]ALU_a,
    output reg [31:0]ALU_b
    );
    
    wire [31:0]sign_extend = instant[15] ? {16'b1111111111111111, instant} : {16'b0, instant};
    wire [31:0]left_shift = {sign_extend[29:0] ,2'b00};
    
    always@(*)begin
        case(ALUSrcA)
            0:ALU_a=PC;
            1:ALU_a=A;
        endcase
        case(ALUSrcB)
            0:ALU_b=B;
            1:ALU_b=32'd4;
            2:ALU_b=sign_extend;
            3:ALU_b=left_shift;
        endcase
    end
    
endmodule
