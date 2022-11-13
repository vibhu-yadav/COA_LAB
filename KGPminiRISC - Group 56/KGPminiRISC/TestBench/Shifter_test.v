`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:09 10/21/2022 
// Design Name: 
// Module Name:    Shifter_Test
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

module Shifter_Test;

	// Inputs 
    reg  dir, arith_or_logic;
    reg [31:0] shamt;
    reg [31:0] in;

    integer i,j;

    // Output
    wire [31:0] out;
    
    // Instantiate the unit under test
    shifter S1(.in(in), .shamt(shamt), .dir(dir), .arith_or_logic(arith_or_logic), .out(out));
    
    initial begin

        $monitor("in = %b,shamt = %b, dir = %b, out = %b, arith_or_logic = %b", in, shamt, dir, out, arith_or_logic);
        
        in = 1234; dir = 1'b1; shamt = 4; arith_or_logic = 0;

        for(i=0;i<2;i=i+1) begin
            for(j=0;j<2;j=j+1) begin
                #10
                dir = i;
                arith_or_logic = j;
                shamt = 5 + $random % 5;
            end
        end

        
        #5 $finish;

    end
      
endmodule