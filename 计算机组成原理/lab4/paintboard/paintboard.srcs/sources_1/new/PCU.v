`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/22 19:21:39
// Design Name: 
// Module Name: PCU
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


module PCU(
    input [11:0]rgb,
    input [3:0]dir,
    input draw,
    input rst,
    input clk,
    
    output  [7:0]x,
    output  [7:0]y,
    output reg [15:0]paddr,
    output reg [11:0]pdata,
    output we
    );
    reg[7:0]y1,y2,x1,x2;
    wire dir_clk0,dir_clk1,dir_clk2,dir_clk3;
    wire [7:0]step0,step1,step2,step3;
    FSM l0(.clk(clk),.rst(rst),.dir(dir[0]),.dir_clk0(dir_clk0),.step0(step0));
    FSM l1(.clk(clk),.rst(rst),.dir(dir[1]),.dir_clk0(dir_clk1),.step0(step1));
    FSM l2(.clk(clk),.rst(rst),.dir(dir[2]),.dir_clk0(dir_clk2),.step0(step2));
    FSM l3(.clk(clk),.rst(rst),.dir(dir[3]),.dir_clk0(dir_clk3),.step0(step3));
//    always@(posedge dir_clk0 or posedge dir_clk1 or posedge rst)begin//y
//        if(rst)begin
//             y<=8'd128;
//        end
//        else begin
//            if(dir[0] || dir_clk0)y<=y-step0;
//            else;
//            if(dir[1] ||dir_clk1)y<=y+step1;
//            else;
//        end
//    end
    always@(posedge dir_clk0 or posedge rst)begin
        if(rst)y1<=8'd128;
        else y1<=y1+step0;
    end
    always@(posedge dir_clk1 or posedge rst)begin
        if(rst)y2<=8'd0;
        else y2<=y2-step1;
    end
    assign y=y1+y2;
    
//    always@(posedge dir_clk2 or posedge dir_clk3 or posedge rst)begin//x
//        if(rst)begin
//             x<=8'd128;
//        end
//        else begin
//            if(dir[2] ||dir_clk2)x<=x-step2;
//            else;
//            if(dir[3]||dir_clk3)x<=x+step3;
//            else;
//        end
//    end
    always@(posedge dir_clk2 or posedge rst)begin
    if(rst)x1<=8'd128;
    else x1<=x1+step2;
end
always@(posedge dir_clk3 or posedge rst)begin
    if(rst)x2<=8'd0;
    else x2<=x2-step3;
end
assign x=x1+x2;

    assign we = draw;
    always@(posedge clk or posedge rst)begin
        if(rst)begin
            paddr<=0;
            pdata<=0;
        end
        else begin
            paddr <= {x,y};
            pdata<=rgb;
        end
    end
endmodule
