
module synchronous_fifo_tb;

  reg clk, rst;
  reg wrt_ena, rd_ena;
  reg [7:0] wrt_data;
 
  wire [7:0] rd_data;
  wire full, empty;

  synchronous_fifo dut(clk, rst, wrt_ena, rd_ena, wrt_data, rd_data, full, empty);
      
  always #5 clk = ~clk;

  initial begin
    clk = 0;
    rst = 0;
    wrt_ena = 0;
    rd_ena = 0;
    wrt_data = 0;

    #10 rst = 1;

  repeat (5) begin 
   @(posedge clk); 
    if(!full) begin
     wrt_ena <= 1; 
     wrt_data <= $random; 
     $display("WRITE : %0d at time %0t", wrt_data, $time); 
     @(posedge clk); 
     wrt_ena <= 0; 
   end 
 end 
    
    #20;
    
    repeat (5) begin 
      @(posedge clk); 
       if(!empty) begin 
        rd_ena <= 1; 
        $display("READ : %0d at time %0t", rd_data, $time); 
        @(posedge clk);
        rd_ena <= 0; 
      end 
    end
    
    #100 $finish;
  end

endmodule     
