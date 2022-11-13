`timescale 1ns / 1ps

/* 

    * Assignment - 5
    * Problem - 1
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module tb_binary_counter_4_bit;

	// Inputs and Outputs
	reg clk = 0;
	reg switch = 0;
	wire [3:0] anode;
	wire [7:0] cathode;

	// Module Instantiations (Unit Under Test)
	binary_counter_4_bit uut (clk, switch, anode, cathode);
	
	always #5 clk = ~clk;

	initial 
    begin
        // Input values initialization
		#500 switch = 1;
	end
      
endmodule

