module sync_counter_tb;
        reg clk,rst;
        wire [2:0]count;
synchronous_counter dut (.clk(clk), .rst(rst), .count(count) );

    always #5 clk = ~clk;

 initial begin

    $monitor("time = %0t, clk = %b, rst = %b, count = %b",$time,clk,rst,count);
    $dumpfile("synchronous_counter.vcd");
    $dumpvars(0, sync_counter_tb);

   clk = 0; rst = 1;
   #5 rst = 0;

   #10 rst = 1; #5 rst = 0;

   #80 $finish;
 end

endmodule
