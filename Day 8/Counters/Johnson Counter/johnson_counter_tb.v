
module johnson_counter_tb;
                reg clk, rst;
               wire [3:0]count;

   johnson_counter dut (.clk(clk), .rst(rst), .count(count) );

    always #5 clk = ~clk;

  initial begin

     $monitor("Time = %0t, clk = %b, rst = %b, count = %b", $time,clk,rst,count);
     $dumpfile("johnson_counter.vcd");
     $dumpvars(0,johnson_counter_tb);

     clk = 0; rst = 1;

     #10 rst = 0;

     #100 $finish;

  end

endmodule
