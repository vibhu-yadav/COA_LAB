module adder (input [31:0] a, input [31:0] b, input c_in, output [31:0] sum, output c_out);

    wire c_temp;

    CLA_16 CLA_low(
        .a(a[15:0]),
        .b(b[15:0]),
        .c_in(c_in),
        .sum(sum[15:0]),
        .c_out(c_temp)
    );
    
    CLA_16 CLA_high(
        .a(a[31:16]),
        .b(b[31:16]),
        .c_in(c_temp),
        .sum(sum[31:16]),
        .c_out(c_out)
    );
    

endmodule