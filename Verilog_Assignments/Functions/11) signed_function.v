module signed_num;
    reg  signed [7:0] a;
    reg  signed [7:0] result;

    function signed [7:0] abs_val;
        input signed [7:0] x;
        begin
            if (x < 0)
                abs_val = -x;
            else
                abs_val = x;
        end
    endfunction

    initial begin
        a = -8'd25;
        result = abs_val(a);
        $display("a=%0d, abs=%0d", a, result);
    end
endmodule
