module CLA_4(input[3:0] a, input[3:0] b,input c_in, output[3:0] sum, output c_out, output prop, output gen);

    // Using the CLA_4_bit_augmented adder from previous assignment

    // Temporary variables for propagate, generate and carry bits
    wire [3:0] p, g, c;

    // Propagate and Generate Computation
    assign p = a ^ b;
    assign g = a & b;

    // Carry-bit computations (Carry-chain)
    assign c[0] = c_in;
    assign c[1] = g[0] | (p[0] & c_in);
    assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c_in);
    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c_in);

    // Final sum computation
    assign sum = p ^ c;

    // Propagate and Generate blocks computation
    assign prop = p[3] & p[2] & p[1] & p[0];
    assign gen = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);

    // Carry-bit output computation using propagated and generated blocks
    assign c_out = gen | (prop & c_in);

endmodule