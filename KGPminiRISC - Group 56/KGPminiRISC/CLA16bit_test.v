`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:26 10/28/2022 
// Design Name: 
// Module Name:    register
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

module cla_16_bit_test;

    reg [15:0] A = 16'd0, B = 16'd0;
    reg c_in = 1'b0;

    wire [15:0] sum;
    wire c_out, P, G;

    CLA_16_bit CLA(.a(A), .b(B), .c_in(c_in), .sum(sum), .c_out(c_out));

    initial begin

        $monitor("A = %d, B = %d, c_in = %b, sum = %d, c_out = %b", A, B, c_in, sum, c_out);
        
        #5 A = 16'd414; B = 16'd1036;
        #5 A = 16'd5045; B = 16'd45042;
        #5 A = 16'd32768; B = 16'd32768;
        #5 A = 16'd65535; B = 16'd65535;
        #5 $finish;
    end
endmodule