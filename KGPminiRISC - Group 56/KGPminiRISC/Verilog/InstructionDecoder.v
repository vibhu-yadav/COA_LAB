`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:26 10/28/2022 
// Design Name: 
// Module Name:    instruction_decode 
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

// The module to slice the 32-bit instructuion into separate fields to decode the instruction
module instruction_decode (instruction, opcode, func, in1, in2, rs, rt, shamt, imm);

    input [31:0] instruction;
    output [5:0] opcode;
    output [4:0] func;
    output [25:0] in1;
    output [15:0] in2;
    output [4:0] rs;
    output [4:0] rt;
    output [4:0] shamt;
    output [15:0] imm;

    assign opcode = instruction[31:26];     // Opcode
    assign func = instruction[4:0];         // Function code
    assign in1 = instruction[25:0];      // Jump address for 26-bit addresses
    assign in2 = instruction[15:0];      // Jump address for 16-bit addresses
    assign rs = instruction[25:21];         // Register rs
    assign rt = instruction[20:16];         // Register rt
    assign shamt = instruction[15:11];      // Shift amount
    assign imm = instruction[15:0];         // Immediate value
    
endmodule