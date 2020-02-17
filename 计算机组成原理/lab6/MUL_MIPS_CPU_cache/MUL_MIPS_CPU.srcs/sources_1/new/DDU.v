`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/30 17:37:07
// Design Name: 
// Module Name: DDU
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


module DDU(
    input clk_100M,
    input rst,
    input cont,
    input step,
    input mem,
    input inc,
    input dec,
    
    output reg [15:0]led,
    output [7:0]an,
    output [6:0]seg
    );
    wire locked;
    wire clk_fast;//1hz
    wire clk_slow;
    wire [31:0]pc;
    wire [31:0]mem_data;
    wire [31:0]reg_data;
    wire [7:0]mem_addr;
    wire [4:0]reg_addr;
    wire [31:0]pc_temp = {2'B00,pc[31:2]};
    reg [7:0]mem_addr_dec;
    reg [7:0]mem_addr_inc;
    reg [4:0]reg_addr_dec;
    reg [4:0]reg_addr_inc;
    reg run;
    reg [31:0]cnt1;
    reg [31:0]cnt2;
    
    always@(posedge clk_100M or posedge rst)begin
        if(rst) cnt1<=32'b0;
        else begin
            if(cnt1 == (32'd100-32'd1))cnt1<=0;
            else cnt1 <= cnt1 + 1;
        end
    end
    
    assign clk_fast = (cnt1<32'd50) ? 0 : 1;

    always@(posedge clk_100M or posedge rst)begin
        if(rst) cnt2<=32'b0;
        else begin
            if(cnt2 == (32'd1000-32'd1))cnt2<=0;
            else cnt2 <= cnt2 + 1;
        end
    end
    
    assign clk_slow = (cnt2<32'd500) ? 0 : 1;
    
    always@(*)begin//run
        if(cont)begin
            run = clk_slow;
        end
        else run = step;
    end
    always@(posedge clk_slow or posedge rst)begin//led
        if(rst)begin
            led <= {8'b0,pc[7:0]};
        end 
        else begin
            led <= mem ? {mem_addr,pc[7:0]} : {reg_addr,3'b0,pc[7:0]};
        end
    end
    
    always@(posedge inc or posedge rst)begin//men_addr & reg_addr
        if(rst)begin
            mem_addr_inc<=0;
            reg_addr_inc<=0;
        end
        else begin
            mem_addr_inc <= mem_addr_inc+1;
            reg_addr_inc <= reg_addr_inc+1;
        end
    end
    always@(posedge dec or posedge rst)begin//men_addr & reg_addr
        if(rst)begin
            mem_addr_dec<=0;
            reg_addr_dec<=0;
        end
        else begin
            mem_addr_dec <= mem_addr_dec+1;
            reg_addr_dec <= reg_addr_dec+1;
        end
    end
    
    assign mem_addr = mem_addr_inc-mem_addr_dec;
    assign reg_addr = reg_addr_inc-reg_addr_dec;
    
    seg seg_dut(.clk(clk_slow),.rst(rst),.mem_data(mem_data),.reg_data(reg_data),.mem(mem),.an(an),.seg(seg));
    cpu cpu_dut(.clk(run),.clk_fast(clk_fast),.rst(rst),.mem_addr_ddu(mem_addr),.reg_addr_ddu(reg_addr),.reg_data_ddu(reg_data),.mem_data_ddu(mem_data),.PC(pc));
endmodule
