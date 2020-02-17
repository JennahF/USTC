`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/26 16:56:00
// Design Name: 
// Module Name: RST
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


module RST(
    input [3:0]x0,
    input [3:0]x1,
    input [3:0]x2,
    input [3:0]x3,
    input rst,
    input clk,
    output reg [3:0]s0,
    output reg [3:0]s1,
    output reg [3:0]s2,
    output reg [3:0]s3,
    output reg done
    );
    reg [2:0]current_state;
    reg [2:0]next_state;
    reg [3:0]tmp;
    reg process_flag;
    reg [3:0]done_process;
    
    always@(current_state)begin
        case(current_state)
            3'b111:next_state=3'b000;
            3'b000:next_state=3'b001;
            3'b001:next_state=3'b010;
            3'b010:next_state=3'b011;
            3'b011:next_state=3'b100;
            3'b100:next_state=3'b101;
            3'b101:next_state=3'b101;
        endcase
    end
    
    always@(posedge clk or posedge rst)begin
        if(rst)begin
            current_state=3'b111;
        end
        else current_state=next_state;
    end
    
    always@(posedge clk or posedge rst)begin
        if(rst)begin
            s0 = x0;
            s1 = x1;
            s2 = x2;
            s3 = x3;
        end
        else begin
            case(current_state)
                3'b000:begin if(s0>s1) begin tmp = s0; s0 = s1; s1 = tmp; end end
                3'b001:begin if(s1>s2) begin tmp = s1; s1 = s2; s2 = tmp; end end
                3'b010:begin if(s2>s3) begin tmp = s2; s2 = s3; s3 = tmp; end end
                3'b011:begin if(s0>s1) begin tmp = s0; s0 = s1; s1 = tmp; end end
                3'b100:begin if(s1>s2) begin tmp = s1; s1 = s2; s2 = tmp; end end
                3'b101:begin if(s0>s1) begin tmp = s0; s0 = s1; s1 = tmp; end end
            endcase
        end
    end
    always@(current_state)begin
        if(current_state==3'b101) done=1;
        else done=0;
    end
endmodule
