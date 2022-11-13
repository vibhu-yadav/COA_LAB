`timescale 1ns / 1ps

/* 

    * Assignment - 5
    * Problem - 1
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module anode_control(refresh_cntr, anode);
	input [1:0] refresh_cntr;
	output reg [3:0] anode = 0;
	
	always@ (refresh_cntr)
    begin
		case(refresh_cntr)
			2'b00:
				anode = 4'b1110; // digit 1 is turned on 
			2'b01:
				anode = 4'b1101; // digit 2 is turned on 
			2'b10:
				anode = 4'b1011; // digit 3 is turned on
			2'b11:
				anode = 4'b0111; // digit 4 is turned on
		endcase
	end


endmodule
