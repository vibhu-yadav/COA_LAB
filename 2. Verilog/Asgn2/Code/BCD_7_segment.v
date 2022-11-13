`timescale 1ns / 1ps

/* 

    * Assignment - 5
    * Problem - 1
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module BCD_7_segment(refresh_clk, ones, tens, anode, cathode);
	input wire refresh_clk;
	input wire [3:0] ones;
	input wire [3:0] tens;
	output wire [3:0] anode;
	output wire [7:0] cathode;
	
	wire [1:0] refresh_cntr;
	wire [3:0] out_dig;
	
	refresh_counter rc_wrapper(refresh_clk, refresh_cntr);
	anode_control anode_wrapper (refresh_cntr, anode);
	BCD_control bcd_wrapper(ones, tens, 4'd0, 4'd0, refresh_cntr, out_dig);
	bcd_to_cathode cathod_wrapper(out_dig, cathode);
	
endmodule
