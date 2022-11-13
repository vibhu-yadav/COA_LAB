`timescale 1ns / 1ps

/* 

    * Assignment - 5
    * Problem - 1
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module clock_10khz_converter(clk, clk_out);
    input wire clk;
    output reg clk_out = 0;

    integer cntr = 0;

    always@ (posedge clk)
        begin
            if(cntr == 4999) 
            begin
                cntr <= 0;
                clk_out <= ~clk_out;
            end 
            else 
            begin
                cntr <= cntr + 1;
                clk_out <= clk_out;
            end
        end
endmodule
