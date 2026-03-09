module ring_counter_tb;
              reg rst,clk;
              wire [3:0]count;

     ring_counter dut (.clk(clk), .rst(rst), .count(count) );

     always #5 clk = ~clk;

     initial begin
             $monitor("Time = %0t, clk = %b, rst = %b, count = %b",$time,clk,rst,count);
             $dumpfile("ring_counter.vcd");
             $dumpvars(0,ring_counter_tb);

             clk = 0; rst = 1;

             #10 rst = 0;


             #50;
             $finish;

     end
endmodule
