`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/11 20:09:39
// Design Name: 
// Module Name: FIFO
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

module FIFO(
    input clk_100M,
    input en_out,
    input en_in,
    input [3:0]in,
    input rst,
    input clk,
    output reg [3:0] out,
    output empty,
    output full,
    output [6:0]seg,
    output reg [7:0]an,
    output dot
    );
    wire [3:0] rd0,rd1;
    wire [3:0]r_seg;
    reg we;
    reg [3:0]head; //队头
    reg [3:0]counter; //队中数字个数
    reg [3:0]next_pos;
    wire [3:0]head_next;
    reg [3:0]counter_next;
    reg [3:0]read;
    assign head_next = (head + 4'b0001)%4'b1000;
    RF R(.ra0(head),.ra1(read),.wa(next_pos),.we(we),.clk(clk),.rst(rst),.wd(in),.rd0(rd0),.rd1(r_seg));
    always@(*)begin //更新we
        if(en_in&&!full)we = 1;
        else we = 0;
    end
    always@(posedge clk or posedge rst)begin //更新out
        if(rst) out = 4'b0;
        else begin
            if(en_out) out = rd0;
            else out = 4'b0;
        end
    end
    always@(posedge clk or posedge rst)begin //更新队头指针
        if(rst)begin
            head = 4'b0000;
        end
        else begin
            if(!empty)begin //空时忽略出
                if(en_out)begin
                    head = head_next;
                end
            end
        end
    end
    always@(posedge clk or posedge rst)begin //更新counter
        if(rst)begin
            counter = 4'b0000;
        end
        else begin
            counter = counter_next;
        end
    end
    always@(*)begin //更新next_pos
        if(!full) begin
            if(head + counter > 4'b0111) next_pos = head + counter - 4'b1000;
            else next_pos = head + counter;
        end 
    end
    always@(*)begin
        if(en_in)begin
            if(!full) counter_next = counter + 4'b0001;
            else counter_next = counter;
        end
        if(en_out)begin
            if(!empty) counter_next = counter - 4'b0001;
            else counter_next = counter;
        end
    end
    assign full = (counter == 4'b1000);
    assign empty = (counter == 4'b0000);
    
    wire locked;
    wire clk_5M;
    reg clk_500;
    reg [21:0]count;
    
    //数码管：
    clk_wiz_0 clk1(clk_5M,rst,locked,clk_100M);
    
    always@(posedge clk_5M)begin
        if(count>=21'd9999)begin
            count<=0;
        end
        else begin
            count<=count+1;
        end
    end
    always@(posedge clk_5M)begin
        clk_500<=(count>=21'd4999)?1:0;
    end
    initial begin
        an = 8'b01111111;
        count = 22'b0;
    end
    always@(posedge clk_500)begin
        case(an)
            8'b11111110:an<=8'b11111101;
            8'b11111101:an<=8'b11111011;
            8'b11111011:an<=8'b11110111;
            8'b11110111:an<=8'b11101111;
            8'b11101111:an<=8'b11011111;
            8'b11011111:an<=8'b10111111;
            8'b10111111:an<=8'b01111111;
            8'b01111111:an<=8'b11111110;
        endcase
    end
    always@(*)begin
        case(an)
            8'b11111110:read = 3'b111;
            8'b11111101:read = 3'b110;
            8'b11111011:read = 3'b101;
            8'b11110111:read = 3'b100;
            8'b11101111:read = 3'b011;
            8'b11011111:read = 3'b010;
            8'b10111111:read = 3'b001;
            8'b01111111:read = 3'b000;
        endcase
    end
    wire display;
    tube L1(.r_seg(r_seg),.an(an),.head(head),.counter(counter),.dot(dot),.seg(seg),.display(display));
    
endmodule