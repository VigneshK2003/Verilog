module power_example;

    integer a, b, result;

    function integer power;
        input integer a, b;
        integer i;
        begin
            power = 1;
            for (i = 0; i < b; i = i + 1)
                power = power * a;
        end
    endfunction

    initial begin
        a = 3;
        b = 4;
        result = power(a, b);
        $display("a^b = %0d", result);
    end

endmodule
