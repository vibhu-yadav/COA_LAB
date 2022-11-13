module freq_divider(clk_in, clk_out, reset, Q);

    // Frequency of the input clock = 100 MHz
    // Required frequency <= 20 Hz

    // Change Factor = 5 * 10^6 = 2 ^ N
    // N = 23

    input clk_in, reset;
    output clk_out;
    output [3:0] Q;

    reg [22:0] counter = 0;

    always @(posedge clk_in)

        begin
            
            counter <= counter + 1;
            clk_out <= counter[22];

            // if (counter == 4'd15)
            //     begin
            //         counter <= 4'd0;
            //         clk_out <= ~clk_out;
            //     end
        end

    always @(posedge clk_out)
        begin
            if(reset)
                Q <= 0;
            else
                begin
                    Q <= Q + 1;
                end
        end


endmodule