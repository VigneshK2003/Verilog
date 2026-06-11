
module counter_tb;
     parameter w = 4;
     reg clk, rst;
  wire [w-1:0]count;
  
  counter #(.w(w)) dut (.clk(clk), .rst(rst), .count(count) );
  
  always #5 clk = ~clk;
  
  initial begin
    
    $monitor( "time = %0t, rst = %b, clk = %b, count = %b",$time,rst,clk,count);
    
    clk = 0; rst = 1; 
    
    #10 rst = 0;
    
    #100 $finish;
    
  end
endmodule
