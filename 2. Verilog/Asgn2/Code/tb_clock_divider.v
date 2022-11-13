`timescale 1ns / 1ps

/* 

    * Assignment - 5
    * Problem - 1
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module tb_clock_divider;

	reg clk = 0;
	wire clk_out;

	// Module Instantiations (Unit Under Test)
	clock_divider uut (
		.clk(clk), 
		.clk_out(clk_out)
	);

	always #5 clk = ~clk;
      
endmodule