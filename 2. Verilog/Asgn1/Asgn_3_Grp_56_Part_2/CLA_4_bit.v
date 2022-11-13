`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:46:32 08/31/2022 
// Design Name: 
// Module Name:    CLA_4_bit 
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

module CLA_4_bit(a, b, sum, c_in, c_out);

    // Inputs and Outputs
    input [3:0] a, b;
    input c_in;
    output [3:0] sum;
    output c_out;

    // Temporary variables
    wire [3:0] p, g;
    wire [3:0] c;

    // Propagate and Generate Computation
    assign p = a ^ b;
    assign g = a & b;

    // Carry-bit computations (Carry-chain)
    assign c[0] = c_in;
    assign c[1] = g[0] | (p[0] & c_in);
    assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c_in);
    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c_in);
    assign c_out = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c_in);

    // Final sum computation
    assign sum = p ^ c;

endmodule
