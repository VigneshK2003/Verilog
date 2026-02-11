module fourbit_register_tb;
    reg [3:0] d;
    reg clk;
    reg rst;
    wire [3:0] q;

    fourbit_register uut (
        .d(d),
        .clk(clk),
        .rst(rst),
        .q(q)
    );


    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t | rst=%b | clk=%b | d=%b | q=%b",
                 $time, rst, clk, d, q);

        $dumpfile("fourbit_register.vcd");
        $dumpvars(0, fourbit_register_tb);

        clk = 0;
        rst = 1;
        d   = 4'b0000;

        #10 rst = 0;

        #5;

        d = 4'b1010; #10;
        d = 4'b0101; #10;
        d = 4'b1111; #10;

        #10 $finish;
    end
endmodule
