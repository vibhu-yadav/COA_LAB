`timescale 1ns / 1ps

module PC(input [31:0] nextInstructionAddress, input clk, input rst, output reg[31:0] InstructionAddress);

    always@(posedge clk or posedge rst)
    begin

        if(rst)
            InstructionAddress <= -32'd4; // Reset the program counter to -4
        else
            InstructionAddress <= nextInstructionAddress; // Update program counter to the next instruction

    end

endmodule