`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/22 19:22:31
// Design Name: 
// Module Name: DCU
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


module DCU(
    input [7:0]x,
    input [7:0]y,
    input pixel_clk,
    input rst,
    input [11:0]vdata,
    
    output reg [11:0]vrgb,
    output [15:0]vaddr,
    output hs,
    output vs
    );
    
    parameter H_Total = 1040;
    parameter H_Sync_start=585;
    parameter H_Sync_end = 704;
    parameter H_Start1 = 0;
    parameter H_End1 = 584;
    parameter H_Start2 = 704;
    parameter H_End2 = 1040;
    parameter H_board_start=0;
    parameter H_board_end=256;
    
    parameter V_Total = 666;
    parameter V_Sync_start=466;
    parameter V_Sync_end = 471;
    parameter V_Start1 = 0;
    parameter V_End1 = 465;
    parameter V_Start2 = 472;
    parameter V_End2 = 666;
    parameter V_board_start=0;
    parameter V_board_end=256;
    
    //行信号计数器
    reg [11:0] x_cnt;
    always @(posedge pixel_clk or posedge rst)
    begin
        if(rst)
            x_cnt <= 12'd1;
        else if(x_cnt == H_Total)
            x_cnt <= 12'd1;
        else
            x_cnt <= x_cnt + 1'b1;
    end
    
    //根据时序图参数，产生行同步信号
    reg hsync_r;
    always @(posedge pixel_clk or posedge rst)
    begin
        if(rst)
            hsync_r <= 1'b1;
        else if(x_cnt>=H_Sync_start && x_cnt < H_Sync_end)
            hsync_r <= 1'b0;
        else
            hsync_r <= 1'b1;
    end
    
    //行信号有效，即当前数据有效
    reg hs_de;
    always @(posedge pixel_clk or posedge rst)
    begin
        if(rst)
            hs_de <= 1'b0;
        else if(x_cnt>=H_board_start && x_cnt <= H_board_end)
            hs_de <= 1'b1;
        else
            hs_de <= 1'b0;
    end
    
    //场信号计数器
    reg [11:0] y_cnt;
    always @(posedge pixel_clk or posedge rst)
    begin
        if(rst)
            y_cnt <= 12'd1;
        else begin
            if(x_cnt==H_Total)begin
                if(y_cnt==V_Total)y_cnt <= 12'd1;
                else y_cnt <= y_cnt + 1'b1;
            end
        end
    end
    
    //根据时序图参数，产生场同步信号
    reg vsync_r;
    always @(posedge pixel_clk or posedge rst)
    begin
        if(rst)
            vsync_r <= 1'b1;
        else if(y_cnt>=V_Sync_start && y_cnt<V_Sync_end)
            vsync_r <= 1'b0;
        else
            vsync_r <= 1'b1;
    end
    
    //列信号有效，即当前数据有效
    reg vs_de;
    always @(posedge pixel_clk or posedge rst)
    begin
        if(rst)
            vs_de <= 1'b0;
        else if(y_cnt>=V_board_start && y_cnt <= V_board_end)
            vs_de <= 1'b1;
        else
            vs_de <= 1'b0;
    end
    reg mouse_en;
    always@(posedge pixel_clk or posedge rst)begin
        if(rst)mouse_en<=0;
        else begin
            if((x_cnt==x&&y_cnt==y)||(x_cnt==x-1&&y_cnt==y)||(x_cnt==x+1&&y_cnt==y)||(x_cnt==x&&y_cnt==y-1)||(x_cnt==x&&y_cnt==y+1))mouse_en=1;
            else mouse_en<=0;
        end
    end
    wire vga_de;
    assign hs = hsync_r;
    assign vs = vsync_r;
    assign vga_de = hs_de & vs_de;  //只有当行信号和场信号同时有效时数据才有效
    
    always@(posedge pixel_clk or posedge rst)begin
        if(rst)vrgb<=12'b0;
        else begin
            if(hs_de & vs_de)begin
                if(mouse_en)vrgb<=12'h0;
                else vrgb<=vdata;
            end
            else vrgb<=12'b0;
        end
    end
    
    wire [7:0]x_read;
    wire [7:0]y_read;
    assign x_read = x_cnt;
    assign y_read = y_cnt;
    assign vaddr = {x_read,y_read};
    
endmodule
