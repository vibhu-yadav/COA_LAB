`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:39 10/21/2022 
// Design Name: 
// Module Name:    program_counter 
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
module program_counter(clk, reset, address, out);

    input clk, reset;
    input [31:0] address;
    output reg [31:0] out;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out <= -32'b00;
        end
        else begin
            out <= address;
        end
    end        

endmodule


