`timescale 1ns / 1ps

module shifter(input signed [31:0] a, input [31:0] shamt, input ALUop[1:0], output reg out);

    // ALUop[1] => shift direction (0 = right, 1 = left)
    // ALUop[0] => shift type (0 = logical, 1 = arithmetic)

    always @(a or shamt or ALUop)
    begin

        if(ALUop[0])
        begin
            if(ALU[1])
                out = in <<< shamt;    // Arithmetic left shift
            else
                out = in >>> shamt;    // Arithmetic right shift
        end

        else
        begin
            if(ALU[1])
                out = in << shamt;     // Logical left shift
            else
                out = in >> shamt;     // Logical right shift
        end

    end

endmodule