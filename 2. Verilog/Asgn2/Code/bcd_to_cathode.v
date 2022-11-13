`timescale 1ns / 1ps

/* 

    * Assignment - 5
    * Problem - 1
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module bcd_to_cathode(
    input [3:0] dig,
    output reg [7:0] cathode=8'b00000000
);

    always @ (dig)
    begin
        case (dig)
            4'd0: cathode = 8'b11000000;
            4'd1: cathode = 8'b11111101;
            4'd2: cathode = 8'b10100100;
            4'd3: cathode = 8'b10110000;
            4'd4: cathode = 8'b10011001;
            4'd5: cathode = 8'b10010010;
            4'd6: cathode = 8'b10000010;
            4'd7: cathode = 8'b11111000;
            4'd8: cathode = 8'b10000000;
            4'd9: cathode = 8'b10010000;
            default: cathode = 8'b11000000;
        endcase
    end

endmodule
