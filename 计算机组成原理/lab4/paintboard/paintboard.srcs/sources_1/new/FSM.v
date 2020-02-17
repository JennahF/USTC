`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/26 20:34:28
// Design Name: 
// Module Name: FSM
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


module FSM(
    input clk,
    input rst,
    input dir,
    output reg dir_clk0,
    output [7:0]step0
    );
    parameter s = 8'd1;
    parameter S0=3'd0;
    parameter S1=3'd1;
    parameter S2=3'd2;
    parameter S3=3'd3;
    parameter S4=3'd4;
    reg [29:0]cnt0;
    reg [2:0]cur_state0;
    reg [2:0]next_state0;
    wire hold0;
    always@(posedge clk or posedge rst)begin//cur_state0
        if(rst)cur_state0<=S0;
        else cur_state0<=next_state0;
    end
    always@(*)begin//next_state0
            case(cur_state0)
                S0:begin
                    if(dir)next_state0=S1;
                    else next_state0=S0;
                end
                S1:begin next_state0<=S2;end
                S2:begin
                    if(!dir)next_state0=S0;
                    else if(dir&&!hold0)next_state0=S2;
                    else if(dir&&hold0)next_state0=S3;
                end
                S3:begin next_state0=S4;end
                S4:begin
                    if(!dir)next_state0=S0;
                    else if(dir&&hold0)next_state0=S3;
                    else if(dir&&!hold0)next_state0=S4;
                end
                default:next_state0=cur_state0;
            endcase
        end
        
            always@(posedge clk or posedge rst)begin//cnt0
            if(rst)begin cnt0<=0;end 
            else begin
                if(dir)begin if(cnt0==30'd5000000)cnt0<=0;else cnt0<=cnt0+1;end
                else cnt0<=0;
            end
        end
    assign hold0=(cnt0==30'd5000000);
        always@(*)begin//dir_clk0
        case(cur_state0)
            S0:dir_clk0=0;
            S1:dir_clk0=1;
            S2:dir_clk0=0;
            S3:dir_clk0=1;
            S4:dir_clk0=0;
            default:dir_clk0=0;
        endcase
    end
        
    assign step0=8'b1;
endmodule
