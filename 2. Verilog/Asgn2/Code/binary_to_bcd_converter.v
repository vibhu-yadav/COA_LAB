`timescale 1ns/1ps

/* 

    * Assignment - 5
    * Problem - 1
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module binary_to_bcd_converter(clk, input_4_bit_val, ones, tens);
    input clk;
    input [3:0] input_4_bit_val;
    output reg [3:0] ones = 0;
    output reg [3:0] tens = 0;

    reg [3:0] iterator = 0;
    reg [11:0] shift_reg = 0;
    reg [3:0] temp_ones = 0;
    reg [3:0] temp_tens = 0;
    reg [3:0] old_4_bit_val = 0;

    always @(posedge clk)
    begin
        if(iterator==0 & (input_4_bit_val != old_4_bit_val)) begin
            shift_reg = 12'd0;
            old_4_bit_val = input_4_bit_val;
            shift_reg[3:0] = input_4_bit_val;
            temp_ones = shift_reg[7:4];
            temp_tens = shift_reg[11:8];
            iterator = 1;
        end
        if(iterator == 5)begin
            ones = temp_ones;
            tens = temp_tens;
            iterator = 0;
        end
        if(iterator<5 & iterator>0) begin
            if(temp_ones >= 5) temp_ones = temp_ones + 3;
            if(temp_tens >= 5) temp_tens = temp_tens + 3;
            shift_reg[11:4] = {temp_tens, temp_ones};
            shift_reg = shift_reg << 1;
            temp_tens = shift_reg[11:8];
            temp_ones = shift_reg[7:4];
            iterator = iterator + 1;
        end
    end
endmodule