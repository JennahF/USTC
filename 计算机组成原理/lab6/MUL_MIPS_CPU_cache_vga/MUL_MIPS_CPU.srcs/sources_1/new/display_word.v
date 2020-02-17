`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:58:02
// Design Name: 
// Module Name: display_word
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


module display_word(
    input clk,
    input rst,
    input [11:0]x_cnt,
    input [11:0]y_cnt,
    input vga_de,
    input up,down,left,right,
    input enter,
    
    output reg [3:0] vga_r, //∆¡ƒªœ‘ æ£®r£©
    output [3:0] vga_g, //∆¡ƒªœ‘ æ£®g£©
    output [3:0] vga_b,  //∆¡ƒªœ‘ æ£®b£©
    output reg [31:0]instruction
    );
    
    parameter OP = 2'b00;
    parameter RD = 2'b01;
    parameter RS = 2'b10;
    parameter RT = 2'b11;
    
    parameter ADD = 3'b000;
    parameter LW = 3'b001;
    parameter SW = 3'b010;
    
    parameter SPACE = 6'b11_1110;
    parameter A = 6'b00_1010;
    parameter D = 6'b00_1101;
    parameter DOLLAR = 6'b11_1111;
    parameter T = 6'b01_1101;
    parameter ZERO = 6'b00_0000;
    parameter S = 6'b01_1100;
    parameter ONE = 6'b00_0001;
    parameter TWO = 6'b00_0010;
    parameter L = 6'b01_0101;
    parameter W = 6'b10_0000;
    parameter THREE = 6'b00_0011;
    parameter FOUR = 6'b00_0100;
    parameter FIVE = 6'b00_0101;
    parameter SIX = 6'b00_0110;
    parameter SEVEN = 6'b00_0111;
    parameter EIGHT =  6'b00_1000;
    parameter NINE = 6'b00_1001;
    
    
    
    reg [5:0]Line0 [0:19];
    reg [5:0]Line1 [0:19];
    reg [5:0]Line2 [0:19];
    reg [5:0]Line3 [0:19];
    reg [5:0]Line4 [0:19];
    reg [5:0]Line5 [0:19];
    reg [5:0]Line6 [0:19];
    reg [5:0]Line7 [0:19];
    reg [5:0]Line8 [0:19];
    reg [5:0]Line9 [0:19];
    reg [1:0]choose;
    reg [2:0]op;
    reg [4:0]rd;
    reg [4:0]rs;
    reg [4:0]rt;
    wire [4:0]rd_up_next,rd_down_next;
    wire [4:0]rs_up_next,rs_down_next;
    wire [4:0]rt_up_next,rt_down_next;
    wire [11:0]LINE0_67_UP,LINE0_1011_UP,LINE0_1314_UP;
    wire [11:0]LINE0_67_DOWN,LINE0_1011_DOWN,LINE0_1314_DOWN;
    reg [3:0]current_line;
    
    always@(*)begin
        case(op)
            ADD:instruction = {6'b000000,rs,rt,rd,5'b00000,6'b100000};
            LW: instruction = {6'b100011,rt,rd,11'b0,rs};
            SW: instruction = {6'b101011,rt,rd,11'b0,rs};
            default:;
        endcase
    end
    
    always@(posedge rst,posedge up,posedge down)begin
        if(rst)begin     
            op <= ADD; 
            rd <= 0;
            rs <= 0;
            rt <= 0;
            Line0[0]<=6'b11_1110;Line0[1]<=A;/*a*/Line0[2]<=D;/*d*/Line0[3]<=D;/*d*/Line0[4]<=6'b11_1110;
            Line0[5]<=DOLLAR;/*$*/Line0[6]<=ZERO;Line0[7]<=SPACE;Line0[8]<=SPACE;Line0[9]<=DOLLAR;/*$*/
            Line0[10]<=ZERO;/*0*/Line0[11]<=SPACE;/*0*/Line0[12]<=DOLLAR;Line0[13]<=ZERO;/*0*/Line0[14]<=6'b11_1110;
            Line0[15]<=6'b11_1110;Line0[16]<=6'b11_1110;Line0[17]<=6'b11_1110;Line0[18]<=6'b11_1110;Line0[19]<=6'b11_1110;
        end
        else if(up)begin
            if(choose == OP)begin
                case(op)
                        ADD:begin
                            Line0[1] <= S;Line0[2] <= W;Line0[3] <= SPACE;Line0[9] <= SPACE;
                            op <= SW;
                        end
                        LW:begin
                            Line0[1] <= A;Line0[2] <= D;Line0[3] <= D;Line0[9] <= DOLLAR;
                            op <= ADD;
                        end
                        SW: begin
                            Line0[1] <= L;
                            op <= LW;
                        end 
                        default:;
                    endcase
            end
            else if(choose == RD)begin
                rd = rd_up_next;
                {Line0[6],Line0[7]}=LINE0_67_UP;
            end
            else if(choose == RS)begin
                rs = rs_up_next;
                {Line0[10],Line0[11]}=LINE0_1011_UP;   
            end
            else if(choose == RT)begin
                rt = rt_up_next;
               {Line0[13],Line0[14]}=LINE0_1314_UP;
            end
            else;
        end
        else if(down)begin
            if(choose == OP)begin
                case(op)
                    ADD:begin
                        Line0[1] <= L;Line0[2] <= W;Line0[3] <= SPACE;Line0[9] <= SPACE;
                        op <= LW;
                    end
                    LW:begin
                        Line0[1] <= S;
                        op <= SW;
                    end 
                    SW: begin
                        Line0[1] <= A;Line0[2] <= D;Line0[3] <= D;Line0[9] <= DOLLAR;
                        op <= ADD;
                    end
                    default:;
                endcase
            end
            else if(choose == RD)begin
                rd = rd_down_next;
                {Line0[6],Line0[7]}=LINE0_67_DOWN;
            end 
            else if(choose == RS)begin
                rs = rs_down_next;
               {Line0[10],Line0[11]}=LINE0_1011_DOWN;   
            end 
            else if(choose == RT) begin
                rt = rt_down_next;
                {Line0[13],Line0[14]}=LINE0_1314_DOWN;
            end
            else;
        end
        else;
    end
    
    assign rd_up_next = rd-1;
    assign rs_up_next = rs-1;
    assign rt_up_next = rt-1;
    assign rd_down_next = rd+1;
    assign rs_down_next = rs+1;
    assign rt_down_next = rt+1;   
    
    word_dictionary dic_dut0(.data(rd_up_next), .display_figure(LINE0_67_UP));
    word_dictionary dic_dut1(.data(rs_up_next), .display_figure(LINE0_1011_UP));
    word_dictionary dic_dut2(.data(rt_up_next), .display_figure(LINE0_1314_UP));
    
    word_dictionary dic_dut3(.data(rd_down_next), .display_figure(LINE0_67_DOWN));
    word_dictionary dic_dut4(.data(rs_down_next), .display_figure(LINE0_1011_DOWN));
    word_dictionary dic_dut5(.data(rt_down_next), .display_figure(LINE0_1314_DOWN));
    
    always@(posedge rst or posedge left or posedge right)begin
        if(rst) choose <= OP;
        else if(left)begin
            case(choose)
                OP:choose <= RT;
                RD:choose <= OP;
                RS:choose <= RD;
                RT:choose <= RS;
                default:;
            endcase
        end
        else if(right)begin
            case(choose)
                OP:choose <= RD;
                RD:choose <= RS;
                RS:choose <= RT;
                RT:choose <= OP;
                default:;
            endcase
        end
        else ;
    end
    
    wire [2:0]x_r,y_r;
    wire [7:0]x_grp,y_grp;
    reg [5:0]current_data;
    wire [7:0]p [0:7];
    reg enable;
    
    assign {x_grp,x_r} = x_cnt - 11'd5;
    assign {y_grp,y_r} = y_cnt - 11'd5;
    
    always@(posedge clk)begin
        case(y_grp)
            0:current_data <= Line0[x_grp];
            1:current_data <= Line1[x_grp];
            2:current_data <= Line2[x_grp];
            3:current_data <= Line3[x_grp];
            4:current_data <= Line4[x_grp];
            5:current_data <= Line5[x_grp];
            6:current_data <= Line6[x_grp];
            7:current_data <= Line7[x_grp];
            8:current_data <= Line8[x_grp];
            9:current_data <= Line9[x_grp];
            default:;
        endcase
    end
    
    always@(posedge clk)begin
        enable = p[y_r][x_r];
    end
     
    always@(*)begin
        if(vga_de)begin
            if(enable && (y_grp>=0 && y_grp <= 9) && (x_grp >=0 && x_grp <= 19))begin
                case(choose)
                    OP:begin
                        if((x_grp == 8'd1 || x_grp == 8'd2 || x_grp == 8'd3) && y_grp == 8'd0) vga_r = 4'b1111;
                        else vga_r = 4'b0;
                    end
                    RD:begin
                        if((x_grp == 8'd5 || x_grp == 8'd6 || x_grp == 8'd7) && y_grp == 8'd0) vga_r = 4'b1111;
                        else vga_r = 4'b0;
                    end
                    RS:begin
                        if((x_grp == 8'd9 || x_grp == 8'd10 || x_grp == 8'd11) && y_grp == 8'd0) vga_r = 4'b1111;
                        else vga_r = 4'b0;
                    end
                    RT:begin
                        if((x_grp == 8'd13 || x_grp == 8'd14) && y_grp == 8'd0) vga_r = 4'b1111;
                        else vga_r = 4'b0;
                    end
                endcase
            end
            else vga_r = 4'b1111;
        end
        else vga_r = 4'b0;
    end
    
    assign vga_g = vga_de ? ((enable && (y_grp>=0 && y_grp <= 9) && (x_grp >=0 && x_grp <= 19)) ? 4'b0 : 4'b1111) : 4'b0;
    assign vga_b = vga_de ? ((enable && (y_grp>=0 && y_grp <= 9) && (x_grp >=0 && x_grp <= 19)) ? 4'b0 : 4'b1111) : 4'b0;
    
    cur_data cur_data_dut(
        .clk(clk), 
        .rst(rst), 
        .data(current_data),
        .col0(p[0]), 
        .col1(p[1]),
        .col2(p[2]), 
        .col3(p[3]), 
        .col4(p[4]), 
        .col5(p[5]),
        .col6(p[6]), 
        .col7(p[7])
         );
         
     always@(posedge rst or posedge enter)begin
        if(rst)begin
        current_line <= 0;
        Line1[0]<=6'b11_1110;Line1[1]<=6'b11_1110;Line1[2]<=6'b11_1110;Line1[3]<=6'b11_1110;Line1[4]<=6'b11_1110;
        Line1[5]<=6'b11_1110;Line1[6]<=6'b11_1110;Line1[7]<=6'b11_1110;Line1[8]<=6'b11_1110;Line1[9]<=6'b11_1110;
        Line1[10]<=6'b11_1110;Line1[11]<=6'b11_1110;Line1[12]<=6'b11_1110;Line1[13]<=6'b11_1110;Line1[14]<=6'b11_1110;
        Line1[15]<=6'b11_1110;Line1[16]<=6'b11_1110;Line1[17]<=6'b11_1110;Line1[18]<=6'b11_1110;Line1[19]<=6'b11_1110;
        
        Line2[0]<=6'b11_1110;Line2[1]<=6'b11_1110;Line2[2]<=6'b11_1110;Line2[3]<=6'b11_1110;Line2[4]<=6'b11_1110;
        Line2[5]<=6'b11_1110;Line2[6]<=6'b11_1110;Line2[7]<=6'b11_1110;Line2[8]<=6'b11_1110;Line2[9]<=6'b11_1110;
        Line2[10]<=6'b11_1110;Line2[11]<=6'b11_1110;Line2[12]<=6'b11_1110;Line2[13]<=6'b11_1110;Line2[14]<=6'b11_1110;
        Line2[15]<=6'b11_1110;Line2[16]<=6'b11_1110;Line2[17]<=6'b11_1110;Line2[18]<=6'b11_1110;Line2[19]<=6'b11_1110;
        
        Line3[0]<=6'b11_1110;Line3[1]<=6'b11_1110;Line3[2]<=6'b11_1110;Line3[3]<=6'b11_1110;Line3[4]<=6'b11_1110;
        Line3[5]<=6'b11_1110;Line3[6]<=6'b11_1110;Line3[7]<=6'b11_1110;Line3[8]<=6'b11_1110;Line3[9]<=6'b11_1110;
        Line3[10]<=6'b11_1110;Line3[11]<=6'b11_1110;Line3[12]<=6'b11_1110;Line3[13]<=6'b11_1110;Line3[14]<=6'b11_1110;
        Line3[15]<=6'b11_1110;Line3[16]<=6'b11_1110;Line3[17]<=6'b11_1110;Line3[18]<=6'b11_1110;Line3[19]<=6'b11_1110;
        
        Line4[0]<=6'b11_1110;Line4[1]<=6'b11_1110;Line4[2]<=6'b11_1110;Line4[3]<=6'b11_1110;Line4[4]<=6'b11_1110;
        Line4[5]<=6'b11_1110;Line4[6]<=6'b11_1110;Line4[7]<=6'b11_1110;Line4[8]<=6'b11_1110;Line4[9]<=6'b11_1110;
        Line4[10]<=6'b11_1110;Line4[11]<=6'b11_1110;Line4[12]<=6'b11_1110;Line4[13]<=6'b11_1110;Line4[14]<=6'b11_1110;
        Line4[15]<=6'b11_1110;Line4[16]<=6'b11_1110;Line4[17]<=6'b11_1110;Line4[18]<=6'b11_1110;Line4[19]<=6'b11_1110;
        
        Line5[0]<=6'b11_1110;Line5[1]<=6'b11_1110;Line5[2]<=6'b11_1110;Line5[3]<=6'b11_1110;Line5[4]<=6'b11_1110;
        Line5[5]<=6'b11_1110;Line5[6]<=6'b11_1110;Line5[7]<=6'b11_1110;Line5[8]<=6'b11_1110;Line5[9]<=6'b11_1110;
        Line5[10]<=6'b11_1110;Line5[11]<=6'b11_1110;Line5[12]<=6'b11_1110;Line5[13]<=6'b11_1110;Line5[14]<=6'b11_1110;
        Line5[15]<=6'b11_1110;Line5[16]<=6'b11_1110;Line5[17]<=6'b11_1110;Line5[18]<=6'b11_1110;Line5[19]<=6'b11_1110;
        
        Line6[0]<=6'b11_1110;Line6[1]<=6'b11_1110;Line6[2]<=6'b11_1110;Line6[3]<=6'b11_1110;Line6[4]<=6'b11_1110;
        Line6[5]<=6'b11_1110;Line6[6]<=6'b11_1110;Line6[7]<=6'b11_1110;Line6[8]<=6'b11_1110;Line6[9]<=6'b11_1110;
        Line6[10]<=6'b11_1110;Line6[11]<=6'b11_1110;Line6[12]<=6'b11_1110;Line6[13]<=6'b11_1110;Line6[14]<=6'b11_1110;
        Line6[15]<=6'b11_1110;Line6[16]<=6'b11_1110;Line6[17]<=6'b11_1110;Line6[18]<=6'b11_1110;Line6[19]<=6'b11_1110;
        
        Line7[0]<=6'b11_1110;Line7[1]<=6'b11_1110;Line7[2]<=6'b11_1110;Line7[3]<=6'b11_1110;Line7[4]<=6'b11_1110;
        Line7[5]<=6'b11_1110;Line7[6]<=6'b11_1110;Line7[7]<=6'b11_1110;Line7[8]<=6'b11_1110;Line7[9]<=6'b11_1110;
        Line7[10]<=6'b11_1110;Line7[11]<=6'b11_1110;Line7[12]<=6'b11_1110;Line7[13]<=6'b11_1110;Line7[14]<=6'b11_1110;
        Line7[15]<=6'b11_1110;Line7[16]<=6'b11_1110;Line7[17]<=6'b11_1110;Line7[18]<=6'b11_1110;Line7[19]<=6'b11_1110;
        
        Line8[0]<=6'b11_1110;Line8[1]<=6'b11_1110;Line8[2]<=6'b11_1110;Line8[3]<=6'b11_1110;Line8[4]<=6'b11_1110;
        Line8[5]<=6'b11_1110;Line8[6]<=6'b11_1110;Line8[7]<=6'b11_1110;Line8[8]<=6'b11_1110;Line8[9]<=6'b11_1110;
        Line8[10]<=6'b11_1110;Line8[11]<=6'b11_1110;Line8[12]<=6'b11_1110;Line8[13]<=6'b11_1110;Line8[14]<=6'b11_1110;
        Line8[15]<=6'b11_1110;Line8[16]<=6'b11_1110;Line8[17]<=6'b11_1110;Line8[18]<=6'b11_1110;Line8[19]<=6'b11_1110;
        
        Line9[0]<=6'b11_1110;Line9[1]<=6'b11_1110;Line9[2]<=6'b11_1110;Line9[3]<=6'b11_1110;Line9[4]<=6'b11_1110;
        Line9[5]<=6'b11_1110;Line9[6]<=6'b11_1110;Line9[7]<=6'b11_1110;Line9[8]<=6'b11_1110;Line9[9]<=6'b11_1110;
        Line9[10]<=6'b11_1110;Line9[11]<=6'b11_1110;Line9[12]<=6'b11_1110;Line9[13]<=6'b11_1110;Line9[14]<=6'b11_1110;
        Line9[15]<=6'b11_1110;Line9[16]<=6'b11_1110;Line9[17]<=6'b11_1110;Line9[18]<=6'b11_1110;Line9[19]<=6'b11_1110;
        end
        else if(enter)begin
            current_line <= current_line+1;
            case(current_line)
                1:begin
                    Line1[1] <= Line0[1];Line1[2] <= Line0[2];Line1[3] <= Line0[3];
                    Line1[5] <= Line0[5];Line1[6] <= Line0[6];Line1[7] <= Line0[7];
                    Line1[9] <= Line0[9];Line1[10] <= Line0[10];Line1[11] <= Line0[11];
                    Line1[12] <= Line0[12];Line1[13] <= Line0[13];Line1[14] <= Line0[14];
                end
                2:begin
                    Line2[1] <= Line0[1];Line2[2] <= Line0[2];Line2[3] <= Line0[3];
                    Line2[5] <= Line0[5];Line2[6] <= Line0[6];Line2[7] <= Line0[7];
                    Line2[9] <= Line0[9];Line2[10] <= Line0[10];Line2[11] <= Line0[11];
                    Line2[12] <= Line0[12];Line2[13] <= Line0[13];Line2[14] <= Line0[14];
                end
                3:begin
                    Line3[1] <= Line0[1];Line3[2] <= Line0[2];Line3[3] <= Line0[3];
                    Line3[5] <= Line0[5];Line3[6] <= Line0[6];Line3[7] <= Line0[7];
                    Line3[9] <= Line0[9];Line3[10] <= Line0[10];Line3[11] <= Line0[11];
                    Line3[12] <= Line0[12];Line3[13] <= Line0[13];Line3[14] <= Line0[14];
                end
                4:begin
                    Line4[1] <= Line0[1];Line4[2] <= Line0[2];Line4[3] <= Line0[3];
                    Line4[5] <= Line0[5];Line4[6] <= Line0[6];Line4[7] <= Line0[7];
                    Line4[9] <= Line0[9];Line4[10] <= Line0[10];Line4[11] <= Line0[11];
                    Line4[12] <= Line0[12];Line4[13] <= Line0[13];Line4[14] <= Line0[14];
                end
                5:begin
                    Line5[1] <= Line0[1];Line5[2] <= Line0[2];Line5[3] <= Line0[3];
                    Line5[5] <= Line0[5];Line5[6] <= Line0[6];Line5[7] <= Line0[7];
                    Line5[9] <= Line0[9];Line5[10] <= Line0[10];Line5[11] <= Line0[11];
                    Line5[12] <= Line0[12];Line5[13] <= Line0[13];Line5[14] <= Line0[14];
                end
                6:begin
                    Line6[1] <= Line0[1];Line6[2] <= Line0[2];Line6[3] <= Line0[3];
                    Line6[5] <= Line0[5];Line6[6] <= Line0[6];Line6[7] <= Line0[7];
                    Line6[9] <= Line0[9];Line6[10] <= Line0[10];Line6[11] <= Line0[11];
                    Line6[12] <= Line0[12];Line6[13] <= Line0[13];Line6[14] <= Line0[14];
                end
                7:begin
                    Line7[1] <= Line0[1];Line7[2] <= Line0[2];Line7[3] <= Line0[3];
                    Line7[5] <= Line0[5];Line7[6] <= Line0[6];Line7[7] <= Line0[7];
                    Line7[9] <= Line0[9];Line7[10] <= Line0[10];Line7[11] <= Line0[11];
                    Line7[12] <= Line0[12];Line7[13] <= Line0[13];Line7[14] <= Line0[14];
                end
                8:begin
                    Line8[1] <= Line0[1];Line8[2] <= Line0[2];Line8[3] <= Line0[3];
                    Line8[5] <= Line0[5];Line8[6] <= Line0[6];Line8[7] <= Line0[7];
                    Line8[9] <= Line0[9];Line8[10] <= Line0[10];Line8[11] <= Line0[11];
                    Line8[12] <= Line0[12];Line8[13] <= Line0[13];Line8[14] <= Line0[14];
                end
                9:begin
                    Line9[1] <= Line0[1];Line9[2] <= Line0[2];Line9[3] <= Line0[3];
                    Line9[5] <= Line0[5];Line9[6] <= Line0[6];Line9[7] <= Line0[7];
                    Line9[9] <= Line0[9];Line9[10] <= Line0[10];Line9[11] <= Line0[11];
                    Line9[12] <= Line0[12];Line9[13] <= Line0[13];Line9[14] <= Line0[14];
                end
                default:;
            endcase
        end
        else;
     end
endmodule
