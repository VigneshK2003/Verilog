module fsm_tb;
        reg rst, clk, data_in;
       wire data_out;
  
  mealy_fsm dut (rst, clk, data_in, data_out);
  
  always #5 clk = ~clk;
  
  initial begin
    
    $monitor(" Time = %0t, clk = %b, rst = %b, data_in = %b, data_out = %b", $time, clk, rst, data_in, data_out );
    
     clk = 0; rst = 1; data_in = 0;
    
     #10 rst = 0;
    
     data_in = 1; #10;
    
     data_in = 0; #10;
    
     data_in = 1; #10;
    
     data_in = 0; #10;
     
     #10 $finish;
    
  end
endmodule
