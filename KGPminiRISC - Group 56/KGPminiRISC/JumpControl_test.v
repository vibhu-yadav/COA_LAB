`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:32 10/28/2022 
// Design Name: 
// Module Name:    JumpControl_test
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

module jump_control_test;

    reg sign, carry, zero;
    reg [5:0] opcode;
    
    wire validJump;

    jump_control JC (
        .opcode(opcode),
        .sign(sign),
        .carry(carry),
        .zero(zero),
        .validJump(validJump)
    );

    initial begin

        $monitor("opcode = %b, zero = %b, sign = %b, carry = %b, validJump = %b", opcode, zero, sign, carry, validJump);

        opcode = 6'b000111; zero = 1'b0; sign = 1'b1; carry = 1'b0;
        #5 opcode = 6'b000111; zero = 1'b0; sign = 1'b0; carry = 1'b0;
        #5 opcode = 6'b001000; zero = 1'b1; sign = 1'b0; carry = 1'b0;
        #5 opcode = 6'b001010;
        #5 opcode = 6'b001101; zero = 1'b0; sign = 1'b0; carry = 1'b1;
        #5 opcode = 6'b001101; zero = 1'b0; sign = 1'b0; carry = 1'b1;
        #5 opcode = 6'b001110; zero = 1'b0; sign = 1'b0; carry = 1'b1;

        #5 $finish;
    end
endmodule