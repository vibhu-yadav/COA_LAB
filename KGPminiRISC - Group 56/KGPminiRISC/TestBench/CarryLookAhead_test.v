`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:53 10/21/2022 
// Design Name: 
// Module Name:    carry_look_ahead_test
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
    * Problem - 2.b
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)
*/


module carry_look_ahead_test;

    reg [3:0] p = 4'b0000, g = 4'b0000;
    reg c_in = 1'b0;

    wire [3:0] carry;
    wire c_out, P, G;

    carry_look_ahead LCU(.p(p), .g(g), .c_in(c_in), .c(carry), .c_out(c_out));

    initial begin

        $monitor("input propagates = %b, input generates = %b, c_in = %b, carry(s) = %b, c_out = %b" ,p, g, c_in, carry, c_out);

        #5 p = 4'b1111; g = 4'b0110;
        #5 p = 4'b1101; g = 4'b0010;
        #5 p = 4'b1100; g = 4'b1001;
        #5 $finish;
        
    end
endmodule