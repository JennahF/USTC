`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/23 17:03:30
// Design Name: 
// Module Name: IRnMDR
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


module IRnMDR(
    input clk,
    input rst,
    input [31:0]MemData,
    input IRWrite,
    output reg [31:0]Memery_data_register,
    output reg [31:0]Instruction,
    output [5:0]op,
    output [4:0] ReadRegAddr_1,
    output [4:0] ReadRegAddr_2,
    output [15:0]instant
    );
    
    always@(posedge clk or posedge rst)begin
        if(rst)Memery_data_register<=0;
        else Memery_data_register<=MemData;
    end
    
    always@(posedge clk or posedge rst)begin
        if(rst) Instruction=0;
        else if(IRWrite) Instruction=MemData;
    end
    
    assign op = Instruction[31:26];
    assign ReadRegAddr_1 = Instruction[25:21];
    assign ReadRegAddr_2 = Instruction[20:16];
    assign instant = Instruction[15:0];
    
endmodule
