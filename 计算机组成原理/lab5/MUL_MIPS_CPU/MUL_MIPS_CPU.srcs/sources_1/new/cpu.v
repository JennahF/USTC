`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/13 00:43:47
// Design Name: 
// Module Name: cpu
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


module cpu(
    input clk,
    input rst,
    input [7:0]mem_addr_ddu,
    input [4:0]reg_addr_ddu,
    
    output [31:0]reg_data_ddu,
    output [31:0]mem_data_ddu,
    output [31:0]PC
    );
    wire [5:0]op;
    wire [31:0]A;
    wire [31:0]B;
    wire [31:0]ALUresult;
    wire [31:0]ALUout;
    wire Zero;
    wire [31:0]Jump_addr;
    wire [31:0]Instruction;
    
    wire PCWriteCond,PCWrite,lorD,MemRead,MemWrite,MemtoReg,IRWrite,ALUSrcA,RegWrite,RegDst,isbne;
    wire [1:0]ALUSrcB, PCSource;
    wire [2:0]ALUop;
    
    control_unit cu(.clk(clk),
        .rst(rst),
        .op(op),
        
        .PCWriteCond(PCWriteCond),
        .PCWrite(PCWrite),
        .lorD(lorD),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .MemtoReg(MemtoReg),
        .IRWrite(IRWrite),
        .PCSource(PCSource),
        .ALUop(ALUop),
        .ALUSrcB(ALUSrcB),
        .ALUSrcA(ALUSrcA),
        .RegWrite(RegWrite),
        .RegDst(RegDst),
        .isbne(isbne)
        );
        
//    assign Jump_addr = {PC[31:28],Instruction[25:0], 2'b00};
    assign Jump_addr = {PC[31:28],Instruction[25:0],2'b00};
    wire [31:0]next_pc;
    
    next_PC next_pc_dut(
        .PCSource(PCSource),
        .ALUresult(ALUresult),
        .ALUout(ALUout),
        .Jump_addr(Jump_addr),
        
        .next_pc(next_pc)
        );
    wire opisbne;
    PC1 PC_dut(
            .clk(clk),
            .rst(rst),
            .PCWrite(PCWrite),
            .Zero(Zero),
            .PCWriteCond(PCWriteCond),
            .next_pc(next_pc),
            .PC(PC),
            .isbne(isbne)
            );

    wire [7:0]rw_addr;
    wire [31:0]WriteData_mem;
    assign WriteData_mem=B;
    
    MEM mem_dut(
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .lorD(lorD),
        .PC(PC[7:0]),
        .ALUout(ALUout[7:0]),
        
        .rw_addr(rw_addr)
        );
    
    wire [31:0]MemData;
    //mem_addr-mem_data-DDU
    //rd_addr-writedata_mem-memdata
    dist_mem_gen_0 MEM_dut(
        .a(rw_addr),
        .d(WriteData_mem),
        .dpra(mem_addr_ddu),
        .clk(clk),
        .we(MemWrite),
        
        .spo(MemData),
        .dpo(mem_data_ddu)
        );
    
    wire [31:0]Memery_data_register;
    
    wire [4:0] ReadRegAddr_1;
    wire [4:0] ReadRegAddr_2;
    wire [15:0]instant;
    
    IRnMDR IRnMDR_dut(
        .clk(clk),
        .rst(rst),
        .MemData(MemData),
        .IRWrite(IRWrite),
        
        .op(op),
        .Memery_data_register(Memery_data_register),
        .Instruction(Instruction),
        .ReadRegAddr_1(ReadRegAddr_1),
        .ReadRegAddr_2(ReadRegAddr_2),
        .instant(instant)
        );
    
    wire [31:0]WriteData_reg;
    wire [4:0]Write_reg_dst;
    
    wire [31:0]ReadReg_1;
    wire [31:0]ReadReg_2;
    
    con_IR_RF IR_RF_dut(
        .MemtoReg(MemtoReg),
        .RegDst(RegDst),
        .Memery_data_register(Memery_data_register),
        .ALUout(ALUout),
        .instant(instant[15:11]),
        .ReadRegAddr_2(ReadRegAddr_2),
        
        .WriteData_reg(WriteData_reg),
        .Write_reg_dst(Write_reg_dst)
        );
    
    RF RF_dut(
        .ra0(ReadRegAddr_1),//直接从IR连过来
        .ra1(ReadRegAddr_2),
        .we(RegWrite),
        .wa(Write_reg_dst),
        .wd(WriteData_reg),
        .clk(clk),
        .rst(rst),
        .ddu_out(reg_data_ddu),
        
        .rd0(ReadReg_1),
        .rd1(ReadReg_2),
        .ddu_rd(reg_addr_ddu)
        );
        
    RFout_AB AB_dut(.clk(clk),
            .rst(rst),
            .ReadReg_1(ReadReg_1),
            .ReadReg_2(ReadReg_2),
            
            .A(A),
            .B(B)
            );
    
    wire [31:0]ALU_a;
    wire [31:0]ALU_b;
    
    wire [2:0]ALUoperation;
    wire [2:0]flag;
    
    ALU_control ALU_control_dut(
        .ALUop(ALUop),
        .func(instant[5:0]),
        
        .ALUoperation(ALUoperation)
        );
    
    ALU_Operands ALU_AnB_dut(
        .instant(instant),
        .PC(PC),
        .A(A),
        .B(B),
        .ALUSrcA(ALUSrcA),
        .ALUSrcB(ALUSrcB),
        
        .ALU_a(ALU_a),
        .ALU_b(ALU_b)
        );
    
    ALU alu_dut(.a(ALU_a),.b(ALU_b),.s(ALUoperation),.y(ALUresult),.f(flag));
    assign Zero = flag[0];
    
    ALU_out ALU_out_dut(
        .clk(clk),
        .rst(rst),
        .ALUresult(ALUresult),
        
        .ALUout(ALUout)
        );
    
endmodule
