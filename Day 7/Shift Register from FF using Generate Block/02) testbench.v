
module shift_reg_tb;
           parameter width = 4;
           reg clk,rst;
           reg [width-1:0]d;
           wire [width-1:0]q;
  
  shift_reg #(.width(width)) dut ( .clk(clk), .rst(rst), .d(d), .q(q) );
  
  always #5 clk = ~clk;
  
  initial begin
    $monitor(" Time = %0t, clk = %b, rst = %b, d = %b, q = %b", $time,clk,rst,d,q);
    
    rst = 1; clk = 0; d = 0; 
    
    #10 rst = 0;
    
    d = 4'd5; #20;
    
    d = 4'd8; #20;
    
    d = 4'd10; #20;
    
    $finish;
  end
endmodule
