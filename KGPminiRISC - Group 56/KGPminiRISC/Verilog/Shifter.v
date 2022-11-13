`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:09 10/21/2022 
// Design Name: 
// Module Name:    shifter 
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

// arith_or_logic is 1 for arithmetic shift and 0 for logical shift
// dir is 0 for right shift and 1 for left shift

module shifter(in, shamt, dir, arith_or_logic, out);

    input signed [31:0] in;
    input [31:0] shamt;
    input dir, arith_or_logic;
    output reg [31:0] out;

    always @(*) begin
        if(arith_or_logic) begin
            if(dir)
                out = in;
            else
                out = in >>> shamt;
        end
        else begin
            if(dir)
                out = in << shamt;
            else
                out = in >> shamt;
        end
    end

endmodule
