module ALU (input signed [31:0] a, input signed [31:0] b, input ALUsel, input [4:0] ALUop, output reg carry, output reg zero, output reg sign, output reg [31:0] result);


    shifter shift(.a(a), .b(b), .ALUop(ALUop[1:0]), .out(result));

endmodule