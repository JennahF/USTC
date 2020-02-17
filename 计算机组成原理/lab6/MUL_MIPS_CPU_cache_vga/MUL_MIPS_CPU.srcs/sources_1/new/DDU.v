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
    input up,down,left,right,
    input enter,
    
    output reg [15:0]led,
    output [7:0]an,
    output [6:0]seg,
    
    output [3:0] vga_r, //ÆÁÄ»ÏÔÊ¾£¨r£©
    output [3:0] vga_g, //ÆÁÄ»ÏÔÊ¾£¨g£©
    output [3:0] vga_b, //ÆÁÄ»ÏÔÊ¾£¨b£©
    output hs,      //ÆÁÄ»ÏÔÊ¾£¨ºáÏòÉ¨Ãè£©
    output vs       //ÆÁÄ»ÏÔÊ¾£¨×İÏòÉ¨Ãè£©
    );
    wire locked;
    wire clk_fast;//1hz
    wire clk_slow;
    wire pixel_clk;
    wire seg_clk;
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
    reg [31:0]cnt_pixel;
    reg [31:0]cnt_seg;
    wire [11:0]x_cnt;
    wire [11:0]y_cnt;
    wire vga_de;
    
    always@(posedge clk_100M or posedge rst)begin
        if(rst) cnt1<=32'b0;
        else begin
            if(cnt1 == (32'd10-32'd1))cnt1<=0;
            else cnt1 <= cnt1 + 1;
        end
    end
    assign clk_fast = (cnt1<32'd5) ? 0 : 1;//CACHE

    always@(posedge clk_100M or posedge rst)begin
        if(rst) cnt2<=32'b0;
        else begin
            if(cnt2 == (32'd10-32'd1))cnt2<=0;//1000
            else cnt2 <= cnt2 + 1;
        end
    end
    assign clk_slow = (cnt2<32'd5) ? 0 : 1;//CPU//500

    always@(posedge clk_100M or posedge rst)begin
        if(rst) cnt_pixel<=32'b0;
        else begin
            if(cnt_pixel == (32'd2-32'd1))cnt_pixel<=0;
            else cnt_pixel <= cnt_pixel + 1;
        end
    end
    assign pixel_clk = (cnt_pixel<32'd1) ? 0 : 1;//VGA,50M
    
    always@(posedge clk_100M or posedge rst)begin
        if(rst) cnt_seg<=32'b0;
        else begin
            if(cnt_seg == (32'd20000-32'd1))cnt_seg<=0;
            else cnt_seg <= cnt_seg + 1;
        end
    end
    assign seg_clk = (cnt_seg<32'd10000) ? 0 : 1;//seg,500hz
    
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
    
    seg seg_dut(.clk(seg_clk),.rst(rst),.mem_data(mem_data),.reg_data(reg_data),.mem(mem),.an(an),.seg(seg));
    cpu cpu_dut(
        .pixel_clk(pixel_clk),
        .clk(run),
        .cache_clk(clk_fast),
        .rst(rst),
        .mem_addr_ddu(mem_addr),
        .reg_addr_ddu(reg_addr)
        ,.reg_data_ddu(reg_data),
        .mem_data_ddu(mem_data),
        .PC(pc),.vga_r(vga_r),
        .vga_g(vga_g), 
        .vga_b(vga_b),
        .hs(hs),
        .vs(vs),
        .right(right),
        .left(left),
        .up(up),
        .down(down),
        .enter(enter)
         );

endmodule
