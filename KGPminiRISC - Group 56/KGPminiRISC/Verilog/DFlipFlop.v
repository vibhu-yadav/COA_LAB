`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:49 10/21/2022 
// Design Name: 
// Module Name:    d_flip_flop 
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

module d_flip_flop(clk, rst, d, q);

    input clk, rst, d;
    output reg q;

    always @(posedge clk or posedge rst) begin
        if(rst)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule