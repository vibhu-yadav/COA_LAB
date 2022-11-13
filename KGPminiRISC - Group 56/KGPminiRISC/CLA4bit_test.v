`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:31 10/21/2022 
// Design Name: 
// Module Name:    CLA_4_bit_test
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
    * Assignment - 3
    * Problem - 3.a
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)
*/

module cla_4_bit_test;

    reg [3:0] A = 4'b0000, B = 4'b0000;
    reg c_in = 1'b0;

    wire [3:0] sum;
    wire c_out, P, G;

    CLA_4_bit_augmented CLA(.a(A), .b(B), .c_in(c_in), .sum(sum), .c_out(c_out), .prop(P), .gen(G));

    initial begin
        
        $monitor("A = %b, B = %b, c_in = %b, sum = %b, c_out = %b, block propagate = %b, block generate = %b", A, B, c_in, sum, c_out, P, G);
        
        
        #5 A = 4'b0100; B = 4'b1001;
        #5 A = 4'b1001; B = 4'b1010;
        #5 A = 4'b1100; B = 4'b0011;
        #5 A = 4'b1111; B = 4'b1111;
        #5 $finish;
    end
endmodule