`timescale 1ns / 1ps

/* 

    * Assignment - 5
    * Problem - 1
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module BCD_control(dig_0, dig_1, dig_2, dig_3, refresh_cntr, show_dig);
	input [3:0] dig_0, dig_1, dig_2, dig_3;
	input [1:0] refresh_cntr;
	output reg [3:0] show_dig = 0;
	
	always@ (refresh_cntr) 
    begin
		case (refresh_cntr)
			2'd0:
				show_dig = dig_0;
			2'd1:
				show_dig = dig_1;
			2'd2:
				show_dig = dig_2;
			2'd3:
				show_dig = dig_3;
		endcase
	end

endmodule
