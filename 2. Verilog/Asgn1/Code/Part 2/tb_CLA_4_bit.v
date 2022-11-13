`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:47:54 08/31/2022
// Design Name:   CLA_4_bit
// Module Name:   E:/IIT-KGP/SEM-5/COA-Lab/Tut/Asgn3_Part2/tb_CLA_4_bit.v
// Project Name:  Asgn3_Part2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_4_bit
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
    * Problem - 2.b
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module tb_CLA_4_bit;

    // Inputs and Outputs
    reg [3:0] a, b;
    reg c_in;
    wire [3:0] sum;
    wire c_out;

    // Module Instantiations (Unit Under Test)
    CLA_4_bit tb_(.a(a), .b(b), .sum(sum), .c_in(c_in), .c_out(c_out));

    initial begin

        $monitor("Input_a = %b, Input_b = %b, Carry_in = %b, Sum = %b, Carry_out =  %b", a, b, c_in, sum, c_out);

        // Input values initialization
        a = 4'b1111; b=4'b1100; c_in = 1;
        #50;
        a = 4'b0101; b=4'b0100; c_in = 0;
        #50;
        a = 4'b1011; b=4'b1001; c_in = 0;
        #50;
        a = 4'b1010; b=4'b1110; c_in = 1;

    end

endmodule

