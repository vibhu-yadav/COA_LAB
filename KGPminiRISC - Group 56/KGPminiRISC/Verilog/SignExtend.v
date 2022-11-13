`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:42 10/28/2022 
// Design Name: 
// Module Name:    sign_extend 
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

module sign_extend(opcode, func, instr, out_extended);

    input [5:0] opcode;
    input [4:0] func;
    input [15:0] instr;
    output reg [31:0] out_extended;

    always @(*) begin
    
        if(opcode == 6'b000010)
            out_extended = {{27{1'b0}}, instr[15:11]};
        else
            out_extended = {{16{instr[15]}}, instr};
    end

endmodule