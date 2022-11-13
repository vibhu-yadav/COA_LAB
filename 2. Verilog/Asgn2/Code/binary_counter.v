`timescale 1ns / 1ps

/* 

    * Assignment - 5
    * Problem - 1
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module binary_counter(cntr_clk, switch, cntr);
	input wire cntr_clk;
	input wire switch;
	output reg [3:0] cntr = 0;
	
	always@ (posedge cntr_clk) 
    begin
        if(switch == 1) 
        begin
			cntr <= cntr + 1;
		end
		if(switch == 0) 
        begin
			cntr <= 4'd0;
		end 
	end
endmodule
