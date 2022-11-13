`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:56:20 08/31/2022
// Design Name:   CLA_16_bit_ripple
// Module Name:   E:/IIT-KGP/SEM-5/COA-Lab/Tut/Asgn3_Part2/tb_CLA_16_bit_ripple.v
// Project Name:  Asgn3_Part2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_16_bit_ripple
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

/* 

    * Assignment - 3
    * Problem - 3.c
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module tb_CLA_16_bit_ripple;

    // Inputs and Outputs
    reg [15:0] a, b;
    reg c_in;
    wire [15:0] sum;
    wire c_out;

    // Module Instantiations (Unit Under Test)
    CLA_16_bit_ripple tb_(.a(a), .b(b), .c_in(c_in), .sum(sum), .c_out(c_out));

    initial begin

        $monitor("Input_a = %d, Input_b = %d, Carry_in = %b, Sum = %d, Carry_out =  %b", a, b, c_in, sum, c_out);

        // Input values initialization
        a = 16'd217; b=16'd9404; c_in = 1;
        #50;
        a = 16'd4582; b=16'd3; c_in = 0;
        #50;
        a = 16'd27; b=16'd8693; c_in = 0;
        #50;
        a = 16'd65535; b=16'd346; c_in = 1;

    end

endmodule

