`timescale 1ns / 1ps

/* 

    * Assignment - 5
    * Problem - 1
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module binary_counter_4_bit(clk, switch, anode, cathode);
	input wire clk, switch;
	output wire [3:0] anode;
	output wire [7:0] cathode;
	
	wire refresh_clk; 
	wire cntr_clk; 
	
	wire [3:0] ones, tens, cntr;
	
	clock_divider clk_1(clk, cntr_clk); // 10 Hz Clock divider
	clock_10khz_converter clk_2(clk, refresh_clk); // 10KHz Clock divider
	binary_counter binary_cntr(cntr_clk, switch, cntr);
	binary_to_bcd_converter cnvtr_1(clk, cntr, ones, tens);
	BCD_7_segment cnvtr_2(refresh_clk, ones, tens, anode, cathode);

endmodule
