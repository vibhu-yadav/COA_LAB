`timescale 1ns/1ps

/* 

    * Assignment - 5
    * Problem - 1
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module tb_binary_to_bcd_converter;
    // Inputs and Outputs
    reg clk = 0;
    reg [3:0] input_4_bit= 0;

    wire[3:0] ones;
    wire[3:0] tens;

    // Module Instantiations (Unit Under Test)
    binary_to_bcd_converter UUT(clk, input_4_bit, ones, tens);
    
    always #5 clk = ~clk;
    initial begin
        
        // Input values initialization
        input_4_bit = 0;
        #500
        input_4_bit = 11;
        #500
        input_4_bit = 15;
        #500
        input_4_bit = 3;
        #500
        input_4_bit = 9;
        #500
        input_4_bit = 5;
    end

endmodule