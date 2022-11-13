`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:52 10/21/2022 
// Design Name: 
// Module Name:    adder_32_bit
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
/* 
    * Assignment - 6
    * Problem - 3
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)
*/

module adder_32_bit (
    input [31:0] a,
    input [31:0] b,
    input c_in,
    output [31:0] sum,
    output c_out
);

    wire c_out1;          
    
    CLA_16_bit CLA1 (.a(a[15:0]), .b(b[15:0]), .c_in(c_in), .sum(sum[15:0]), .c_out(c_out1));
    CLA_16_bit CLA2 (.a(a[31:16]), .b(b[31:16]), .c_in(c_out1), .sum(sum[31:16]), .c_out(c_out));
endmodule
