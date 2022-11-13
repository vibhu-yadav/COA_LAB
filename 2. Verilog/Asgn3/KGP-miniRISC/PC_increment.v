`timescale 1ns / 1ps

// This simple module is used to add 4 to the program counter value
module PC_increment (
    input [31:0] InstructionAddress,
    output [31:0] PC_next
);

    assign PC_next = InstructionAddress + 32'd4;
    
endmodule