`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/03 16:16:10
// Design Name: 
// Module Name: control_unit
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


module control_unit(
    input clk,
    input rst,
    input [5:0]op,
    
    output reg PCWriteCond,
    output reg PCWrite,
    output reg lorD,
    output reg MemRead,
    output reg MemWrite,
    output reg MemtoReg,
    output reg IRWrite,
    output reg [1:0]PCSource,
    output reg [2:0]ALUop,
    output reg [1:0]ALUSrcB,
    output reg ALUSrcA,
    output reg RegWrite,
    output reg RegDst,
    output reg isbne,
    output reg read,
    output reg write
    );
    parameter Rtype = 6'b000000;
    parameter addi = 6'b001000;
    parameter andi = 6'b001100;
    parameter ori = 6'b001101;
    parameter xori = 6'b001110;
    parameter slti = 6'b001010;
    parameter lw = 6'b100011;
    parameter sw = 6'b101011;
    parameter beq = 6'b000100;
    parameter bne = 6'b000101;
    parameter j = 6'b000010;
   
    parameter S0 = 5'b0000;
    parameter S1 = 5'b0001;
    parameter S2 = 5'b0010;
    parameter S3 = 5'b0011;
    parameter S4 = 5'b0100;
    parameter S5 = 5'b0101;
    parameter S6 = 5'b0110;
    parameter S7 = 5'b0111;
    parameter S8 = 5'b1000;
    parameter S9 = 5'b1001;
    parameter S10 =5'b1010;
    parameter S11 = 5'b1011;
    parameter S12 = 5'b1100;
    parameter S13 = 5'b1101;
    parameter S14 = 5'b1110;
    parameter S15 = 5'b1111;
    parameter S16 = 5'b10000;
    
    reg [4:0]current_state;
    reg [4:0]next_state;
    
    always@(posedge clk or posedge rst)begin
        if(rst)current_state <= S0;
        else current_state<=next_state;
    end
    
    always@(*)begin//next_state
        case(current_state)
            S0:next_state=S1;
            S1:begin
                if(op == lw || op == sw)next_state=S2;
                else if(op == addi)next_state=S3;
                else if(op == andi)next_state=S4;
                else if(op == ori)next_state=S5;
                else if(op == xori)next_state=S6;
                else if(op == slti)next_state=S7;
                else if(op == Rtype)next_state=S8;
                else if(op == beq)next_state=S9;
                else if(op == j)next_state=S10;
                else if(op == bne)next_state=S16;
                else next_state=S0;
            end
            S2:begin if(op==lw)next_state=S11;else next_state=S12;end
            S3,S4,S5,S6,S7:next_state=S13;
            S8:next_state=S14;
            S9,S10,S12,S13,S14,S15,S16:next_state=S0;
            S11:next_state=S15;
        endcase
    end
    
    always@(op or current_state)begin//ALUop
        case(current_state)
            S0,S1,S2,S3:ALUop=3'b000;
            S4:ALUop=3'b010;//Rtype
            S5:ALUop=3'b011;//bne/beq
            S6:ALUop=3'b100;
            S7:ALUop=3'b101;
            S8:ALUop=3'b110;
            S9,S16:ALUop=3'b001;
            default:ALUop=3'b111;
        endcase
    end
    always@(op or current_state)begin//ALUSrcA&ALUSrcB
        case(current_state)
            S0:begin ALUSrcA=0;ALUSrcB=2'b01;end
            S1:begin ALUSrcA=0;ALUSrcB=2'b11;end
            S2,S3,S4,S5,S6,S7:begin ALUSrcA=1;ALUSrcB=2'b10;end
            S8,S9,S16:begin ALUSrcA=1;ALUSrcB=2'b00;end
            default:begin ALUSrcA=0;ALUSrcB=2'b01;end
        endcase
    end 
    always@(current_state)begin//RegWrite&RegDst
        case(current_state)
            S13:begin RegWrite<=1;RegDst<=0;end
            S14:begin RegWrite<=1;RegDst<=1;end
            S15:begin RegWrite<=1;RegDst<=0;end
            default:begin RegWrite<=0;RegDst<=0;end
        endcase
    end
    always@(current_state)begin//PCSource&PCWriteCond
        case(current_state)
            S0:begin PCSource=2'b00;PCWriteCond=0;end
            S9,S16:begin PCSource=2'b01;PCWriteCond=1;end
            S10:begin PCSource=2'b10;PCWriteCond=0;end
            default:begin PCSource=2'b00;PCWriteCond=0;end
        endcase
    end
    always@(current_state)begin//PCWrite
        case(current_state)
            S0,S10:PCWrite=1;
            default:PCWrite=0;
        endcase
    end
    always@(current_state)begin//lorD
        case(current_state)
            S11,S12:lorD=1;
            default:lorD=0;
        endcase
    end
    always@(current_state)begin//MemRead
        case(current_state)
            S0,S11:MemRead=1;
            default:MemRead=0;
        endcase
    end
    always@(current_state)begin//MemRead
        case(current_state)
            S12:MemWrite=1;
            default:MemWrite=0;
        endcase
    end
    always@(current_state)begin//MemtoReg
        case(current_state)
            S15:MemtoReg=1;
            default:MemtoReg=0;
        endcase
    end
    always@(current_state)begin//IRWrite
        case(current_state)
            S0:IRWrite=1;
            default:IRWrite=0;
        endcase
    end
    
    always@(current_state)begin
        case(current_state)
            S16:isbne=1;
            default:isbne=0;
    endcase
    end
    
endmodule
