// Create a function that performs a logical AND on all bits of a bus

module and_reduce_example;

    reg [7:0] data;
    reg result;

    function and_reduce;
        input [7:0] bus;
        integer i;
        begin
            and_reduce = 1'b1;
            for (i = 0; i < 8; i = i + 1)
                and_reduce = and_reduce & bus[i];
        end
    endfunction

    initial begin
        data = 8'b11110111;
        result = and_reduce(data);
        $display("AND reduction = %b", result); 
    end
endmodule
