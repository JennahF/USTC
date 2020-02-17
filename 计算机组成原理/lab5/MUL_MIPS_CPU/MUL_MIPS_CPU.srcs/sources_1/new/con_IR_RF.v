`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/23 17:42:18
// Design Name: 
// Module Name: con_IR_RF
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


module con_IR_RF(
    input MemtoReg,
    input RegDst,
    input [31:0]Memery_data_register,
    input [31:0]ALUout,
    input [4:0]instant,
    input [4:0]ReadRegAddr_2,
    
    output [31:0]WriteData_reg,
    output [4:0]Write_reg_dst
    );
    
    assign WriteData_reg = MemtoReg ? Memery_data_register : ALUout;
    assign Write_reg_dst = RegDst ? instant :ReadRegAddr_2;
    
endmodule
