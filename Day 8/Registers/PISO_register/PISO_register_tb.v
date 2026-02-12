module PISO_register_tb;

     reg [3:0]d;
     reg rst;
     reg clk;
     reg load;
    wire y;

 PISO_register uut(.d(d), .rst(rst), .clk(clk), .load(load), .y(y));

  initial clk = 0;
  always #5 clk = ~clk; 


initial begin

   $monitor("Time = %0t, rst = %b, clk = %b, load = %b, d = %b, y = %b", $time, rst,clk,load,d,y);
   $dumpfile("PISO_register.vcd");
   $dumpvars(0, PISO_register_tb);

   rst = 1; d = 4'b0000; load = 0;
    #10 rst = 0; 

    #10 load = 1;  d = 4'b0111;
    #10 load = 0;

    #10 load = 1; d = 4'b1111;
    #10 load = 0;

    #20;
    $finish;
end
endmodule   
