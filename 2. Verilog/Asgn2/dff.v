`timescale 1ns / 1ps

module D_Flip_Flop(clk, reset, D, Q);

    input clk, reset, D;
    output Q;
    reg Q;

    always @(posedge clk or posedge reset ) 
    begin
        if(reset)
            Q <= 0;
        else
            Q <= D;
    end

endmodule