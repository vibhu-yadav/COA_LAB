`timescale 1ns / 1ps

/* 

    * Assignment - 5
    * Problem - 1
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module refresh_counter(
    input refresh_clk,
    output reg [1:0] refresh_cntr=0
);

    always@ (posedge refresh_clk)
    refresh_cntr <= refresh_cntr + 1;
endmodule
