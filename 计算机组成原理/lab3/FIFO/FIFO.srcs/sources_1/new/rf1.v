`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/12 17:33:40
// Design Name: 
// Module Name: rf1
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

module RF(
    input [2:0] ra0,//读的地址
    input [2:0] ra1,//读的地址
    input [2:0] wa,//写的地址
    input [3:0] wd,//写的数据
    input we,//写的使能
    input clk,
    input rst,
    output reg [6:0]r_seg,
    output reg [3:0] rd0,//被读的数据
    output reg [3:0] rd1 //被读的数据
    );
    reg [3:0]r0;//寄存器堆
    reg [3:0]r1;
    reg [3:0]r2;
    reg [3:0]r3;
    reg [3:0]r4;
    reg [3:0]r5;
    reg [3:0]r6;
    reg [3:0]r7;
    
    always@(posedge clk or posedge rst)begin //写模块
        if(rst) begin
            r0 <= 4'd0;
            r1 <= 4'd0;
            r2 <= 4'd0;
            r3 <= 4'd0;
            r4 <= 4'd0;
            r5 <= 4'd0;
            r6 <= 4'd0;
            r7 <= 4'd0;
        end
        else begin
            if(we)begin
                case(wa)
                    3'b000:r0<=wd;
                    3'b001:r1<=wd;
                    3'b010:r2<=wd;
                    3'b011:r3<=wd;
                    3'b100:r4<=wd;
                    3'b101:r5<=wd;
                    3'b110:r6<=wd;
                    3'b111:r7<=wd;
                endcase
            end
        end
    end
    
    always@(*)begin //读模块
        case(ra0)
            3'b000:rd0<=r0;
            3'b001:rd0<=r1;
            3'b010:rd0<=r2;
            3'b011:rd0<=r3;
            3'b100:rd0<=r4;
            3'b101:rd0<=r5;
            3'b110:rd0<=r6;
            3'b111:rd0<=r7;
        endcase
        case(ra1)
            3'b000:rd1<=r0;
            3'b001:rd1<=r1;
            3'b010:rd1<=r2;
            3'b011:rd1<=r3;
            3'b100:rd1<=r4;
            3'b101:rd1<=r5;
            3'b110:rd1<=r6;
            3'b111:rd1<=r7;
        endcase
    end
    
endmodule