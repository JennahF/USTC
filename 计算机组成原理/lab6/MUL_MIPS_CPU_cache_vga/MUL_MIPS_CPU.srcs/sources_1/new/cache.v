`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 14:28:21
// Design Name: 
// Module Name: cache_control
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


module cache_control(
    input clk,
    input rst,
    input read,
    input write,
    input [7:0]rw_addr,
    input [31:0]cpudata,
    input [7:0]mem_addr_ddu,
    
    output reg [31:0]datatocpu,
    output [31:0]mem_data_ddu
    );
    
    parameter start = 4'b000;
    parameter WaitforSignal = 4'b001;
    parameter ReadHit = 4'b010;
    parameter ReadMiss_1 = 4'b011;
    parameter ReadMiss_2 = 4'b110;
    parameter WriteHit = 4'b100;
    parameter WriteMiss = 4'b101;
    parameter ReadReturn = 4'b111;
    parameter WriteReturn = 4'b1000;
    
    reg [3:0]current_state;
    reg [3:0]next_state;
    
    always@(posedge clk or posedge rst)begin
        if(rst)current_state <= start;
        else current_state <= next_state;
    end
    
    reg [5:0] tag [0:7];//{����λ��tag}
    wire [7:0] counter [0:7];
    reg [7:0] counter_next [0:7];
    wire [1:0]group_number;//���
    wire offset;
    wire [4:0]current_tag;
    reg [3:0]cache_addr;
    wire hit,hit0,hit1;
    wire [31:0]cache_data;
    reg cache_we;
    reg mem_we;
    reg cpuwrite;
    wire [31:0]mem_data;
    wire cache_is_full;
    reg available_bit;
    reg [7:0]cache_read_mem_addr;
    
    assign hit = hit0 || hit1;
    
    assign current_tag = rw_addr[7:3];
    assign group_number = rw_addr[2:1];
    assign offset = rw_addr[0];
    assign hit0 = (tag[{group_number,1'b0}] == {1'b1, current_tag});
    assign hit1 = (tag[{group_number,1'b1}] == {1'b1, current_tag});
    
    always@(posedge clk)begin
        case(current_state)
            start,WaitforSignal,WriteMiss,ReadMiss_2:begin
                counter_next[0] = counter[0];
                counter_next[1] = counter[1];
                counter_next[2] = counter[2];
                counter_next[3] = counter[3];
                counter_next[4] = counter[4];
                counter_next[5] = counter[5];
                counter_next[6] = counter[6];
                counter_next[7] = counter[7];
            end
            ReadHit,WriteHit:begin
                counter_next[0] = counter[0] + 1;
                counter_next[1] = counter[1] + 1;
                counter_next[2] = counter[2] + 1;
                counter_next[3] = counter[3] + 1;
                counter_next[4] = counter[4] + 1;
                counter_next[5] = counter[5] + 1;
                counter_next[6] = counter[6] + 1;
                counter_next[7] = counter[7] + 1;
                if(hit0) counter_next[{group_number,1'b0}] = 0;
                else if(hit1) counter_next[{group_number,1'b1}] = 0;
            end
            ReadMiss_1:begin
                counter_next[0] = counter[0] + 1;
                counter_next[1] = counter[1] + 1;
                counter_next[2] = counter[2] + 1;
                counter_next[3] = counter[3] + 1;
                counter_next[4] = counter[4] + 1;
                counter_next[5] = counter[5] + 1;
                counter_next[6] = counter[6] + 1;
                counter_next[7] = counter[7] + 1;
                counter_next[{group_number,available_bit}] = 0;
            end
        endcase
    end
    
    assign counter[0] =  (current_state == start) ? 8'b0 : counter_next[0];
    assign counter[1] =  (current_state == start) ? 8'b0 : counter_next[1];
    assign counter[2] =  (current_state == start) ? 8'b0 : counter_next[2];
    assign counter[3] =  (current_state == start) ? 8'b0 : counter_next[3];
    assign counter[4] =  (current_state == start) ? 8'b0 : counter_next[4];
    assign counter[5] =  (current_state == start) ? 8'b0 : counter_next[5];
    assign counter[6] =  (current_state == start) ? 8'b0 : counter_next[6];
    assign counter[7] =  (current_state == start) ? 8'b0 : counter_next[7];
    
    always@(*)begin
        case(current_state)
            start: next_state = WaitforSignal;
            WaitforSignal:begin
                if(!read && !write)next_state = WaitforSignal;
                else if(write)begin
                    if(hit)next_state = WriteHit;
                    else next_state = WriteMiss;
                end
                else if(read)begin
                    if(hit)next_state = ReadHit;//hit��û��
                    else next_state = ReadMiss_1;
                end
                else next_state = start;
            end
            ReadHit:next_state = ReadReturn;
            ReadMiss_1:next_state = ReadMiss_2;
            WriteHit:next_state = WriteReturn;
            WriteMiss:next_state = WriteReturn;
            ReadMiss_2:next_state = ReadReturn;
            ReadReturn:begin
                if(read && !write) next_state = ReadReturn;
                else next_state = WaitforSignal;
            end
            WriteReturn:begin
                if(read) begin//write���ˣ���Ҫread��ȥread
                    if(hit) next_state = ReadHit;
                    else next_state = ReadMiss_1;
                end
                else if(!write) next_state = WaitforSignal;
                else next_state = WriteReturn;
            end
        endcase
    end
    
    always@(*)begin
        case(current_state)
            start:begin
                tag[0] = 0;tag[1] = 0;tag[2] = 0;tag[3] = 0;
                tag[4] = 0;tag[5] = 0;tag[6] = 0;tag[7] = 0;
            end
            WaitforSignal:begin
                cache_we = 0;
                mem_we = 0;
                cpuwrite = 0;
            end
            ReadHit:begin//��cache_addr;cache������data��cpu;������ʴ���
                if(hit0) cache_addr = {group_number,1'b0,offset};
                else if(hit1) cache_addr = {group_number,1'b1,offset};
                datatocpu = cache_data;
            end
            ReadMiss_1:begin//cache���ˣ����²��ԣ�cacheû�����Ž�cache�mem������data��cpu
                cache_we = 1;
                cpuwrite = 0;
                cache_addr = {group_number,available_bit,1'b0};//���е�0λ
                cache_read_mem_addr = {rw_addr[7:1],1'b0};
                datatocpu = mem_data;
                
                if(cache_is_full)begin//�滻���ԣ�LRU
                    if(counter[{rw_addr[2:1],1'b0}] >= counter[{rw_addr[2:1],1'b1}])begin
                        available_bit = 0;
                    end
                    else available_bit = 1;
                    end
                    else begin
                    if(tag[{group_number,1'b0}][5]==0)begin//���е�һ�����
                        available_bit = 0;
                    end
                    else if(tag[{group_number,1'b1}][5]==0)begin//���еڶ������
                        available_bit = 1;
                    end
                end
                
            end
            ReadMiss_2:begin
                cache_we = 1;
                cpuwrite = 0;
                cache_addr = {group_number,available_bit,1'b1};//���е�1λ
                cache_read_mem_addr = {rw_addr[7:1],1'b1};
                tag[{group_number,available_bit}] = {1'b1,current_tag};
            end
            WriteHit:begin//дֱ�дcache��д�ڴ�
                cache_we = 1;
                cpuwrite = 1;
                mem_we = 1;
                cache_addr = hit0 ? {rw_addr[2:1], 1'b0, offset} : {rw_addr[2:1], 1'b1, offset};
                if(hit0)begin 
                    tag[{group_number,1'b0}] = {1'b1, current_tag};
                end
                else if(hit1)begin 
                    tag[{group_number,1'b1}] = {1'b1, current_tag};
                end 
            end
            WriteMiss:begin//д�أ�ֻдmem
                mem_we = 1;
            end
            ReadReturn,WriteReturn:begin
                cache_we = 0;
                mem_we = 0;
                cpuwrite = 0;
            end
        endcase
    end
    //��������tag�����λ����1����cache��
    assign cache_is_full = (tag[{group_number,1'b0}][5]) && (tag[{group_number,1'b1}][5]);

    cache_memory_module cache_dut(
        .clk(clk),
        .rst(rst),
        .cache_addr(cache_addr),
        .cache_data(cache_data),
        .cpuwrite(cpuwrite),
        .cpudata(cpudata),
        .mem_addr(cache_read_mem_addr),
        .we(cache_we)
        );
        
    dist_mem_gen_0 cache_control_mem(.a(rw_addr),.d(cpudata),.dpra(mem_addr_ddu),.we(mem_we),.spo(mem_data),.dpo(mem_data_ddu),.clk(clk));
endmodule
