`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:23 10/21/2022 
// Design Name: 
// Module Name:    adder_32_bit_test
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


module adder_32_bit_test;

    reg [31:0] A = 32'd0, B = 32'd0;
    reg c_in = 1'b0;

    wire [31:0] sum;
    wire c_out;


    adder_32_bit UUT(.a(A), .b(B), .c_in(c_in), .sum(sum), .c_out(c_out));

    initial begin
        
        $monitor("A = %d, B = %d, c_in = %b, sum = %d, c_out = %b", A, B, c_in, sum, c_out);
        
        #5 A = 32'd1024; B = 32'd4096;
        #5 A = 32'd34343434; B = 32'd8123659;
        #5 A = 32'd4294967295; B = 32'd4294967295;
        #5 $finish;
    end
endmodule