`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/26 21:12:14
// Design Name: 
// Module Name: DIV
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


module DIV(
    input [3:0]x,
    input [3:0]y,
    input clk,
    input rst,
    output [3:0]q,
    output [3:0]r,
    output reg error,
    output reg done
    );
    reg [7:0]x_temp;
    reg [7:0]y_temp;
    wire [7:0]x_temp1;
    reg [2:0]count;
    /*always@(posedge clk or posedge rst)begin
        if(rst)begin
            count = 2'b00;
            x_temp={4'b0000,x};
            y_temp={y,4'b0000};
            error = 0;
            done = 0;
        end
        else begin
            if(y!=0)begin
                if(count!=3'b100)begin
                    x_temp = x_temp *2;
                    if(x_temp[7:4]>=y) x_temp=x_temp-y_temp+1;
                    count = count +1;
                end
                else done = 1;
            end
            else begin
                error = 1;
                done = 1;
            end 
        end
    end
    assign {r,q} = x_temp;*/
    reg [2:0]current_state;
    reg [2:0]next_state;
    always@(current_state)begin
        case(current_state)
            3'b000:next_state=3'b001;
            3'b001:next_state=3'b010;
            3'b010:next_state=3'b011;
            3'b011:next_state=3'b100;
            3'b100:next_state=3'b101;
            3'b101:next_state=3'b101;
        endcase
    end
    always@(posedge clk or posedge rst)begin
        if(rst) current_state=3'b000;
        else current_state=next_state;
    end
    
    always@(current_state)begin
        case(current_state)
            3'b000:begin 
                x_temp = {4'b0000,x};
                y_temp = {y,4'b0000};
                done = 0;
                if(y==0) error=1;
                else error = 0;
            end
            3'b101:begin 
                done = 1;
            end
            3'b001,3'b010,3'b011,3'b100:begin 
                x_temp = x_temp1;
                if(x_temp[7:4]>=y)begin x_temp = x_temp - y_temp; x_temp = x_temp + 8'b00000001;end
            end 
        endcase
    end
    assign {r,q}=x_temp;
    assign x_temp1 = x_temp*2;
endmodule
