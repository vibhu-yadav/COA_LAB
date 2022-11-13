`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:57:25 08/31/2022
// Design Name:   carry_look_ahead
// Module Name:   E:/IIT-KGP/SEM-5/COA-Lab/Tut/Asgn3_Part2/tb_carry_look_ahead.v
// Project Name:  Asgn3_Part2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: carry_look_ahead
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

module tb_carry_look_ahead;

    // Inputs and Outputs
    reg [3:0] p, g;
    reg c_in;
    wire [3:0] c;
    wire p_out, g_out, c_out;

    // Module Instantiations (Unit Under Test)
    carry_look_ahead tb_(.p(p), .g(g), .c(c), .c_in(c_in), .c_out(c_out), .p_out(p_out), .g_out(g_out));

    initial begin

        $monitor("Propagate = %d, Generate = %d, Carry_in = %d, Carry = %d, Carry_out = %d, Propagate_out = %d, Generate_out = %d", p, g, c_in, c, c_out, p_out, g_out);

        // Input values initialization
        p = 4'b1111; g=4'b1100; c_in = 1;
        #50;
        p = 4'b0101; g=4'b0100; c_in = 0;
        #50;
        p = 4'b1011; g=4'b1001; c_in = 0;
        #50;
        p = 4'b1010; g=4'b1110; c_in = 1;

    end

endmodule
