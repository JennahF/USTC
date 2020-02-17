`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/14 13:38:17
// Design Name: 
// Module Name: score
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


module lab8_2_1(
    input reset,
    input clk_100M,
    input [3:0]score,
    input [3:0]max_score,
    output reg [6:0]seg,
    output reg [7:0]an
    );
    wire locked;
    wire [6:0]seg1;
    reg [6:0]seg2;
    wire [6:0]seg3;
    reg [6:0]seg4;
    wire z1;
    wire z2;
    reg [30:0]count;
    
    part2 L1(.v(score),.seg(seg1),.z(z1));
    part2 L2(.v(max_score),.seg(seg3),.z(z2));
    
    always@(posedge clk_100M)begin
        if(reset) count<=0;
        else begin
            if(count==31'd160000) count<=31'd1;
            else count<=count+31'd1;
        end
    end
   
    always@(posedge clk_100M)begin
        if(z1==1) seg2<=7'b1111001;
        else seg2<=7'b1111111;
    end
    always@(posedge clk_100M)begin
        if(z2==1) seg4<=7'b1111001;
        else seg4<=7'b1111111;
    end
    
    always@(posedge clk_100M)begin
        if(count<31'd40000)
        begin
            an<=8'b01111111;
            seg<=seg1;
        end
        else if(count>=31'd40000 && count<31'd80000)begin
            an<=8'b10111111;
            seg<=seg2;
        end
        else if(count>=31'd80000 && count<31'd120000)begin
            an<=8'b11111101;
            seg<=seg3;
        end
        else begin
            an<=8'b11111110;
            seg<=seg4;
        end
    end
endmodule

