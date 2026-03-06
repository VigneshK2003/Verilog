module ripple_counter_tb;
               reg clk, rst;
               wire [2:0]count;

     ripple_counter dut(.rst(rst), .clk(clk), .count(count) );

     always #5 clk = ~clk;

     initial begin

      $monitor(" time = %0t, rst = %b, clk = %b, count = %b", $time,rst,clk,count);
      $dumpfile("ripple_counter.vcd");
      $dumpvars(0,ripple_counter_tb);

       clk = 0; rst = 0;

       #10 rst = 1;

       #80 rst = 0;

       #10 rst = 1;

       #40 $finish;
     end
endmodule
