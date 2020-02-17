
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/27 23:15:37
// Design Name: 
// Module Name: vga_data_gen
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


module vga_data_gen(
    input pixel_clk,        //像素时钟
    input rst,              //复位按键，高电平复位

    output [7:0] vga_r,     //vga信号红色视频信号
    output [7:0] vga_g,     //vga信号绿色视频信号
    output [7:0] vga_b,     //vga信号蓝色视频信号
    output vga_hs,          //行同步信号
    output vga_vs,          //场同步信号
    output vga_de,          //vga信号有效，如当前时刻传输数据有效，即为1；否则为0；

    input [2:0]key1,        //按键。按下为高电平，切换vga显示模式
    input key,              //上跳信号
    input left,             //左移信号
    input right,            //右移信号
    output reg temp,       //判断bird是否触碰地面（debug用）
    output reg jump,       //判断bird是否上跳（debug用）
    output reg fall,       //判断bird是否下落（debug用）
    output reg [3:0]k,     //当前得分
    output reg [3:0]max_score   //最高得分
    );

     reg [11:0] center[10:0];
     reg [11:0] top[10:0];
     reg [11:0] bottom[10:0];
     reg [11:0] r[10:0];
     initial begin
        top[10]<=12'h1b3;
        top[1]<=12'hf9;
        top[2]<=12'hde;
        top[3]<=12'hd8;
        top[4]<=12'hbb;
        top[5]<=12'h1b0;
        top[6]<=12'hc6;
        top[7]<=12'hee;
        top[8]<=12'h1ba;
        top[9]<=12'h1ba;
        top[0]<=112'h1bd;
        
        center[0]<=12'd615;
        center[10]<=12'h100;
        center[1]<=12'h11a;
        center[2]<=12'h3b5;
        center[3]<=12'h3d8;
        center[4]<=12'h2e3;
        center[5]<=12'h1ed;
        center[6]<=12'h305;
        center[7]<=12'h309;
        center[8]<=12'h2a7;
        center[9]<=12'h13b;
        
        r[0]<=12'd10;
        r[10]<=12'hc;
        r[1]<=12'h3;
        r[2]<=12'h5;
        r[3]<=12'hb;
        r[4]<=12'hf;
        r[5]<=12'h5;
        r[6]<=12'h4;
        r[7]<=12'h4;      
        r[8]<=12'h2;
        r[9]<=12'hf;  
        
        bottom[0]<=12'h1bd;
        bottom[1]<=12'h1bd;
        bottom[2]<=12'h1bd;
        bottom[3]<=12'h1bd;
        bottom[4]<=12'h1bd;
        bottom[5]<=12'h1bd;
        bottom[6]<=12'h1bd;
        bottom[7]<=12'h1bd;
        bottom[8]<=12'h1bd;
        bottom[9]<=12'h1bd;
        bottom[10]<=12'h1bd;
     end


//---------------------------------//
// 水平扫描参数的设定 800*600 60HZ
//--------------------------------//
parameter H_Total = 1056 - 1;
parameter H_Sync = 128 - 1;
parameter H_Back = 88 - 1;
parameter H_Active = 800 - 1;
parameter H_Front = 40 - 1;
parameter H_Start = 216 - 1;
parameter H_End = 1016 - 1;

//-------------------------------//
// 垂直扫描参数的设定 1280*720 60HZ
//-------------------------------//
parameter V_Total = 628 - 1;
parameter V_Sync = 4 - 1;
parameter V_Back = 23 - 1;
parameter V_Active = 600 - 1;
parameter V_Front = 1 - 1;
parameter V_Start = 27 - 1;
parameter V_End = 627 - 1;

//行信号计数器
reg [11:0] x_cnt;
always @(posedge pixel_clk /*or posedge rst*/)
begin
    if(rst)
        x_cnt <= 12'd0;
    else if(x_cnt == H_Total)
        x_cnt <= 12'd0;
    else
        x_cnt <= x_cnt + 1'b1;
end

//根据时序图参数，产生行同步信号
reg hsync_r;
always @(posedge pixel_clk /*or posedge rst*/)
begin
    if(rst)
        hsync_r <= 1'b1;
    else if(x_cnt>=0 && x_cnt < H_Sync)
        hsync_r <= 1'b0;
    else
        hsync_r <= 1'b1;
end

//行信号有效，即当前数据有效
reg hs_de;
always @(posedge pixel_clk /*or posedge rst*/)
begin
    if(rst)
        hs_de <= 1'b0;
    else if(x_cnt>=H_Start && x_cnt<H_End)
        hs_de <= 1'b1;
    else
        hs_de <= 1'b0;
end

//场信号计数器
reg [11:0] y_cnt;
always @(posedge pixel_clk /*or posedge rst*/)
begin
    if(rst)
        y_cnt <= 12'd0;
    else if(y_cnt == V_Total)
        y_cnt <= 12'd0;
    else if(x_cnt == H_Total)
        y_cnt <= y_cnt + 1'b1;
end

//根据时序图参数，产生场同步信号
reg vsync_r;
always @(posedge pixel_clk /*or posedge rst*/)
begin
    if(rst)
        vsync_r <= 1'b1;
    else if(y_cnt>=0 && y_cnt<V_Sync)
        vsync_r <= 1'b0;
    else
        vsync_r <= 1'b1;
end

//列信号有效，即当前数据有效
reg vs_de;
always @(posedge pixel_clk /*or posedge rst*/)
begin
    if(rst)
        vs_de <= 1'b0;
    else if(y_cnt>=V_Start && y_cnt<V_End)
        vs_de <= 1'b1;
    else
        vs_de <= 1'b0;
end

reg [25:0]count_V;
reg collision;
integer table_bond=V_End-(V_End-V_Start)/4;
integer r_bird=15;
reg [11:0] bird_center_x;
integer bird_bottom_y=V_End-(V_End-V_Start)/4-31;
integer bird_top_y=V_End-(V_End-V_Start)/4-91;
integer floor;
reg [3:0] k1;
reg die;
initial begin k=6'd0;k1=6'd1; end
initial bird_center_x<=H_Start+(H_End-H_Start)/4;

reg [30:0]count_win;
always@(posedge pixel_clk)begin
    if(rst) count_win<=0;
    else begin
        if(k==10) begin
            count_win<=count_win+31'd1;
        end
        else count_win=31'd0;
    end
end

reg clk_1;
reg [30:0]count_bird;
always@(posedge pixel_clk)begin
    if(die==1)begin
        if(count_bird==31'd40000000) count_bird<=31'd1;
        else count_bird<=count_bird+31'd1;
    end
    else count_bird<=0;
end

always@(posedge pixel_clk)begin
    if(count_bird>=31'd1&&count_bird<31'd20000000)clk_1<=1;
    else clk_1<=0;
end

reg [30:0]count_barrier;
always@(posedge pixel_clk)begin
    if(die==1) count_barrier<=0; 
    else begin
        if(k1==5||k1==3||k1==8)begin
            if(count_barrier==31'd40000000) count_barrier<=31'd1;
            else count_barrier<=count_barrier+31'd1;
        end
        else count_barrier<=0;
    end
end

//k为当前bird已经踩过的柱子，k1为bird即将要踩上的柱子
always@(posedge pixel_clk)begin //会左右移动的柱子
    if(k1==5) begin
        if(rst) center[5]<=12'h1bd;
        else begin
            if(count_barrier>=31'd1&&count_barrier<31'd20000000)begin
                if(count_barrier%500000==0) center[5]<=center[5]+12'd1;
            end
            else if(count_barrier!=31'd0)
                if(count_barrier%500000==0) center[5]<=center[5]-12'd1;
        end
    end
end

always@(posedge pixel_clk)begin //会上下伸缩的柱子
    if(k1==3) begin
        if(rst) top[3]<=12'hd8;
        else begin
            if(count_barrier>=31'd1&&count_barrier<31'd20000000)begin
                if(count_barrier%50000==0) top[3]<=top[3]+12'd1;
            end
            else if(count_barrier!=31'd0)
                if(count_barrier%50000==0) top[3]<=top[3]-12'd1;
        end
    end
end

always@(posedge pixel_clk)begin //会上下左右的柱子
    if(k1==8) begin
        if(rst) begin
            top[8]<=12'h1b9;
            center[8]<=12'h2a7;
            bottom[8]<=12'h1bd;
        end
        else begin
            if(count_barrier>=31'd1&&count_barrier<31'd20000000)begin
                if(count_barrier%250000==0) begin
                    top[8]<=top[8]-1;
                    bottom[8]<=bottom[8]-1;
                    
                end
                if(count_barrier%125000==0) begin
                   center[8]<=center[8]+12'd1;
                end 
            end
            else if(count_barrier!=31'd0)begin
                if(count_barrier%250000==0) begin
                    top[8]<=top[8]+12'd1;
                    bottom[8]<=bottom[8]+12'd1;
                end
                if(count_barrier%125000==0) begin
                    center[8]<=center[8]-12'd1;
                end 
            end
        end
    end
end

always@(posedge pixel_clk)begin
    if(rst)begin
        k1=6'd1;
    end
    if((bird_center_x>=(center[k1]-(r_bird+r[k1])))&&(bird_center_x<=(center[k1]+(r_bird+r[k1])))&&bird_bottom_y==top[k1]-1)begin
        case(k1)
                4'd0:k1=4'd1;
                4'd1:k1=4'd2;
                4'd2:k1=4'd3;
                4'd3:k1=4'd4;
                4'd4:k1=4'd5;
                4'd5:k1=4'd6;
                4'd6:k1=4'd7;
                4'd7:k1=4'd8;
                4'd8:k1=4'd9;
                4'd9:k1=4'd10;
                4'd10:k1=4'd11;
          endcase
    end
end

always@(posedge pixel_clk)begin
    if(rst)k=6'd0;
    if(k!=k1-6'd1)begin
    case(k)
            4'd0:k=4'd1;
            4'd1:k=4'd2;
            4'd2:k=4'd3;
            4'd3:k=4'd4;
            4'd4:k=4'd5;
            4'd5:k=4'd6;
            4'd6:k=4'd7;
            4'd7:k=4'd8;
            4'd8:k=4'd9;
            4'd9:k=4'd10;
        endcase
    end
end

reg [27:0]count_H;
integer up;

always@(*)begin
    if(rst) floor=V_End-(V_End-V_Start)/4-30;
    else begin
        if((bird_center_x>(center[k]-(r_bird+r[k])))&&(bird_center_x<(center[k]+(r_bird+r[k])))) floor=top[k];
        else if((bird_center_x>(center[k1]-(r_bird+r[k1])))&&(bird_center_x<(center[k1]+(r_bird+r[k1])))) floor=top[k1];
        else floor=V_End-(V_End-V_Start)/4-30;
    end
end

initial count_V<=0;
initial jump<=0;
initial fall<=0;
//根据bird的状态和输入实时更新bird的状态标志（jump和fall）
always@(posedge pixel_clk /*or posedge rst or posedge key*/)begin 
    if(rst) begin
        jump<=0;
        fall<=0;
        count_V<=10'd0;
        up=0;
    end 
    //如果上跳键被摁下，count_V开始计数，设置jump表示为1
    else if(key==1)begin    
        jump<=1;
        fall<=0;
        count_V<=26'd1;
        up=1;
    end 
    //bird没有在跳 且 没有在下落 且 bird没有在地上，则bird开始下落
    else if(jump==0&&(bird_bottom_y!=floor-1)&&fall==0)begin   
        fall<=1;        
        jump<=0;
        count_V<=26'd1;
        up=1;
    end
    //若bird接触了地，一切标志归零
    else if(temp==1) begin 
        count_V<=0;
        jump<=0;
        fall<=0;
        up=0;
    end 
    //count_V计数
    else begin
         if(count_V!=0)begin
                if(count_V!=26'd500000) count_V<=count_V+1;
                else begin
                    count_V<=26'd1;
                    up=up+1;
                end 
         end
         else up=0;
    end
end

always@(posedge pixel_clk /*or posedge rst*/)begin  //如果左/右键被摁下，count_H开始计数
    if(rst) count_H<=0;
    else begin
        if(left==1||right==1) count_H<=count_H+1;
        else count_H<=0;
    end
end

always@(posedge pixel_clk/*or posedge rst*/)begin  //左右移动
    if(rst) bird_center_x<=H_Start+(H_End-H_Start)/4;
    else begin
        if(key1[0])begin
            if(count_H%800000==0)begin  //慢速
                if(!die&&((right==1&&bird_center_x<=H_End-16)&&(!((bird_center_x==center[k]-(r[k]+r_bird))&&(bird_bottom_y>top[k]-1))&&!((bird_center_x==center[k1]-(r[k1]+r_bird))&&(bird_bottom_y>top[k1]-1))))) bird_center_x<=bird_center_x+1;  //1s移动50像素
                if(!die&&(left==1&&bird_center_x>=H_Start+16)&&(!((bird_center_x==center[k]+(r[k]+r_bird))&&(bird_bottom_y>top[k]-1))&&!((bird_center_x==center[k1]+(r[k1]+r_bird))&&(bird_bottom_y>top[k1]-1)))) bird_center_x<=bird_center_x-1;  //1s移动50像素
            end
        end
        else if(key1[1])begin
            if((count_H%400000==0))begin    //快速
                if(!die&&((right==1&&bird_center_x<=H_End-16)&&(!((bird_center_x==center[k]-(r[k]+r_bird))&&(bird_bottom_y>top[k]-1))&&!((bird_center_x==center[k1]-(r[k1]+r_bird))&&(bird_bottom_y>top[k1]-1))))) bird_center_x<=bird_center_x+1;  //1s移动100像素
                if(!die&&(left==1&&bird_center_x>=H_Start+16)&&(!((bird_center_x==center[k]+(r[k]+r_bird))&&(bird_bottom_y>top[k]-1))&&!((bird_center_x==center[k1]+(r[k1]+r_bird))&&(bird_bottom_y>top[k1]-1)))) bird_center_x<=bird_center_x-1;  //1s移动100像素
            end
        end
    end
end

always@(posedge pixel_clk /*or posedge rst*/)begin //跳起来 ;
    if(rst) begin
        bird_bottom_y=table_bond-1;
        bird_top_y=table_bond-1-60;
        r_bird=15;
    end
    //一旦接触到地，为了以防万一，再将bird的边界赋值一次
    else if(temp==1) begin      
        bird_bottom_y=floor-1;
        bird_top_y=floor-61;
    end
    
    else begin
        if(count_V==26'd500000)begin
            //若正在跳，根据up的值判断是在上跳还是下跳，做出相应反应
            if(jump==1)begin    
                if(up<=40)begin //每到count_V为500000时bird边界数值-1
                    bird_bottom_y=bird_bottom_y-1;
                    bird_top_y=bird_top_y-1;
                end
                else begin  //每到count_V为500000时bird边界数值+1
                    bird_bottom_y=bird_bottom_y+1;
                    bird_top_y=bird_top_y+1;
                end
            end
            //若正在下落，每到count_V为500000时bird边界数值+1
            else if(fall==1)begin
                bird_bottom_y=bird_bottom_y+1;
                bird_top_y=bird_top_y+1;
            end 
        end
   end
   //若通关了，会有通关动画：bird逐渐放大
   if(count_win!=0&&count_win%5000000==0)begin
       bird_top_y=bird_top_y-2;
       r_bird=r_bird+1;
   end
end
always@(*)begin
    if(bird_bottom_y>=floor) begin
        temp<=1;
    end
    else begin
        temp<=0;
    end 
end

always@(posedge pixel_clk)begin
    if(rst)die=0;
    else begin  //若在bird踩到第一个柱子后再碰到table，或者再任何时刻碰到柱子壁，死亡
        if((((bird_center_x==center[k]-r[k]-r_bird)||(bird_center_x==center[k]+r[k]+r_bird))&&bird_bottom_y>bottom[k])||(((bird_center_x==center[k1]+r[k1]+r_bird)||(bird_center_x==center[k1]-r[k1]-r_bird))&&bird_bottom_y>top[k1])||(k!=0&&bird_bottom_y==table_bond-31))
            die=1;
        else die=0;
    end
end

initial max_score=0;
always@(posedge pixel_clk)begin
    if(max_score<k) max_score<=k;
end

//en_table为桌子信号
reg en_table;
always@(*)begin
    if((y_cnt>=table_bond-30)&&y_cnt<=table_bond)
        en_table<=1;
    else
        en_table<=0;
end

//en_bird为小鸟信号
reg en_bird;
always@(*)begin 
    if(((x_cnt>=bird_center_x-r_bird)&&(x_cnt<=bird_center_x+r_bird))&&((y_cnt<=bird_bottom_y)&&(y_cnt>=bird_top_y))) en_bird<=1;
    else en_bird<=0;
end

//en_barrier为障碍物信号

reg en_barrier;

always@(*)begin  //障碍物使能
    if(((x_cnt>=center[k]-r[k])&&(x_cnt<=center[k]+r[k]))&&((y_cnt<=bottom[k])&&(y_cnt>=top[k]))) en_barrier<=1;
    else en_barrier<=0;
end

reg en_barrier1;
always@(*)begin  //障碍物使能
    if(((x_cnt>=center[k1]-r[k1])&&(x_cnt<=center[k1]+r[k1]))&&((y_cnt<=bottom[k1])&&(y_cnt>=top[k1]))) en_barrier1<=1;
    else en_barrier1<=0;
end

//根据显示模式传输rgb信号到缓存器中
reg [7:0] vga_r_reg;
reg [7:0] vga_g_reg;
reg [7:0] vga_b_reg;
always @(posedge pixel_clk)
    begin
    if(en_table==1||en_barrier==1||en_barrier1)begin  //障碍物和桌子颜色：全黑
        vga_r_reg <= 8'd0;
        vga_g_reg <= 8'd0;
        vga_b_reg <= 8'd0;
    end
    else if(en_bird==1)begin  //bird颜色：若没死，全红；若死掉了，有死掉闪烁动画
        if(die==1)begin     //死掉了：1s的时钟驱动闪烁
            if(clk_1)begin  //红
                vga_r_reg <= 8'b1111_1111;
                vga_g_reg <= 8'b1111_1111;
                vga_b_reg <= 8'b1111_1111;
            end
            else begin      //白
               vga_r_reg <= 8'b1111_1111;
               vga_g_reg <= 8'd0;
               vga_b_reg <= 8'd0;
            end
        end
        else begin      //没有死：全红
            vga_r_reg <= 8'b1111_1111;
            vga_g_reg <= 8'd0;
            vga_b_reg <= 8'd0;
        end
    end
    else begin  //全白
            vga_r_reg <= 8'b1111_1111;
            vga_g_reg <= 8'b1111_1111;
            vga_b_reg <= 8'b1111_1111;
    end
end


//将这些寄存器中的信号输出
assign vga_hs = hsync_r;
assign vga_vs = vsync_r;
assign vga_de = hs_de & vs_de;  //只有当行信号和场信号同时有效时数据才有效
assign vga_r = (hs_de & vs_de) ? vga_r_reg : 8'h0;
assign vga_g = (hs_de & vs_de) ? vga_g_reg : 8'h0;
assign vga_b = (hs_de & vs_de) ? vga_b_reg : 8'h0;

endmodule
