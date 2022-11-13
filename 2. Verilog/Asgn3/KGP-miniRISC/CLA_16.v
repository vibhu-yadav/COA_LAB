module CLA_16(input [15:0] a, input [15:0] b, input c_in, output [15:0] sum, output c_out);

    wire[3:0] prop, gen, carry;

    CLA_4 CLA_4_1 (.a(a[3:0]), .b(b[3:0]), .c_in(c_in), .sum(sum[3:0]), .c_out(), .prop(prop[0]), .gen(gen[0]));
    CLA_4 CLA_4_2 (.a(a[7:4]), .b(b[7:4]), .c_in(carry[1]), .sum(sum[7:4]), .c_out(), .prop(prop[1]), .gen(gen[1]));
    CLA_4 CLA_4_3 (.a(a[11:8]), .b(b[11:8]), .c_in(carry[2]), .sum(sum[11:8]), .c_out(), .prop(prop[2]), .gen(gen[2]));
    CLA_4 CLA_4_4 (.a(a[15:12]), .b(b[15:12]), .c_in(carry[3]), .sum(sum[15:12]), .c_out(), .prop(prop[3]), .gen(gen[3]));

    // look ahead carry unit
    carry_look_ahead CLA(.p(prop), .g(gen), .c_in(c_in), .c(carry), .c_out(c_out));

endmodule