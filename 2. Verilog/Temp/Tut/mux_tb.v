module mux_tb();

    reg a,b,sel;
    wire f;

    mux mux1(a,b,sel,f);


    initial begin

        if(! $value$plusargs("a=%b",a)) begin

            $display("a is not set");

            $finish;
        end

        else begin

            $display("a = %b",a);

            $finish;

        end

        if(! $value$plusargs("b=%b",b)) begin

            $display("b is not set");

            $finish;

        end

        else begin

            $display("b = %b",b);

            $finish;

        end

        if(! $value$plusargs("sel=%b",sel)) begin

            $display("sel is not set");

            $finish;

        end


        wait(f) $display("f=%b",f);
        $finish;

    end

endmodule