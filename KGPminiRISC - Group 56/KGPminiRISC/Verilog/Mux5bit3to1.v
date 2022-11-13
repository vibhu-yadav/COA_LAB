`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:14 10/21/2022 
// Design Name: 
// Module Name:    mux_4x3_to_1 
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
module mux_5x3_to_1(a, b, c, select, out);

    input [4:0] a, b, c;
    input [1:0] select;
    output reg [4:0] out;

    always @(*) begin
        case (select)
            2'b00: out = a;
            2'b01: out = b;
            default: out = c;
        endcase
    end

endmodule