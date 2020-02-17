`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 21:09:28
// Design Name: 
// Module Name: ALU_control
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


module ALU_control(
    input [2:0]ALUop,
    input [5:0]func,
    output reg [2:0]ALUoperation
    );
    
    always@(*)begin
        case(ALUop)
            3'b000,3'b001,3'b010,3'b011,3'b100,3'b101:ALUoperation=ALUop;//+,-,and,or,xor,slt
            3'b110:begin
                case(func)
                    6'b100000:ALUoperation=3'b000;//+
                    6'b100010:ALUoperation=3'b001;//-
                    6'b100100:ALUoperation=3'b010;//and
                    6'b100101:ALUoperation=3'b011;//or
                    6'b100110:ALUoperation=3'b100;//xor
                    6'b101010:ALUoperation=3'b101;//slt
                    6'b100111:ALUoperation=3'b110;//nor
                    default:;
                endcase
            end
            3'b111:;
        endcase
    end
    
endmodule
