`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/29 10:26:09
// Design Name: 
// Module Name: cache_memory_module
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


module cache_memory_module(
    input clk,
    input rst,
    input [3:0]cache_addr,//��д��ַ
    input we,//дʹ��
    input [7:0]mem_addr,//cache��mem�ĵ�ַ
    input cpuwrite,//д�������Ƿ���Դ��cpu
    input [31:0]cpudata,//cpuд������
    
    output [31:0]cache_data//cache�ж���������
    );
    
    reg [31:0]cache [0:15];
    wire [31:0]mem_data;//��mem
    
    always@(posedge clk or posedge rst)begin
        if(rst)begin
            cache[0]<=0;cache[1]<=0;cache[2]<=0;cache[3]<=0;
            cache[4]<=0;cache[5]<=0;cache[6]<=0;cache[7]<=0;
            cache[8]<=0;cache[9]<=0;cache[10]<=0;cache[11]<=0;
            cache[12]<=0;cache[13]<=0;cache[14]<=0;cache[15]<=0;
        end
        else begin
            if(we)begin
                if(cpuwrite)cache[cache_addr] = cpudata;//writehit
                else cache[cache_addr] = mem_data;//readmiss
            end
        end
    end
    assign cache_data = cache[cache_addr];
    dist_mem_gen_0 mem_cache(.a(mem_addr), .clk(clk),.spo(mem_data));
    
endmodule
