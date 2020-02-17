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
    input pixel_clk,
    input rst,
    
    output hs,
    output vs,
    output reg [11:0]x_cnt,
    output reg [11:0]y_cnt,
    output vga_de
    );
    
    parameter H_Total = 1040;
    parameter H_Sync_start=542;//160+120+198+56
    parameter H_Sync_end = 661;//654+120
//    parameter H_Start1 = 0;
//    parameter H_End1 = 654;
//    parameter H_Start1 = 1035;
//    parameter H_End1 = 1040;
    parameter H_board_start=0;
    parameter H_board_end=170;
    
    parameter V_Total = 666;
    parameter V_Sync_start=383;
    parameter V_Sync_end = 388;
//    parameter V_Start1 = 0;
//    parameter V_End1 = 537;
//    parameter V_Start1 = 661;
//    parameter V_End1 = 666;
    parameter V_board_start=0;
    parameter V_board_end=90;
    
    //行信号计数器
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

    assign hs = hsync_r;
    assign vs = vsync_r;
    assign vga_de = hs_de & vs_de;  //只有当行信号和场信号同时有效时数据才有效
    
endmodule
