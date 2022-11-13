`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:52:22 08/31/2022
// Design Name:   CLA_16_bit
// Module Name:   E:/IIT-KGP/SEM-5/COA-Lab/Tut/Asgn3_Part2/tb_CLA_16_bit.v
// Project Name:  Asgn3_Part2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_16_bit
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
    * Problem - 3.b
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module tb_CLA_16_bit;

    // Inputs and Outputs
    reg [15:0] a, b;
    reg c_in;
    wire [15:0] sum;
    wire c_out, Prop, Gen;

    // Module Instantiations (Unit Under Test)
    CLA_16_bit tb_(.a(a), .b(b), .c_in(c_in), .sum(sum), .c_out(c_out), .Prop(Prop), .Gen(Gen));

    initial begin

        $monitor("Input_a = %d, Input_b = %d, Carry_in = %b, Sum = %d, Carry_out =  %b, Propagate = %d, Generate = %d", a, b, c_in, sum, c_out, Prop, Gen);

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

