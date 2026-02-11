module SISO_register_tb;
     reg clk;
     reg rst;
     reg serial_in;
     wire serial_out;

 SISO_register uut(.clk(clk), .rst(rst), .serial_in(serial_in), .serial_out(serial_out) );

         always #10 clk = ~clk;

initial begin
     $monitor("Time =%0t, rst=%b | clk =%b | serial_in=%b | serial_out=%b ", $time,rst,clk,serial_in,serial_out);
     $dumpfile("SISO_register.vcd");
     $dumpvars( 0, SISO_register_tb );
     
     clk = 0; rst = 1; serial_in = 0;
      #10 rst = 0;

     #10 serial_in = 1;
     #10 serial_in = 1;
     #10 serial_in = 1;
     #10 serial_in = 1;

     #10 serial_in = 1;
     #10 serial_in = 1;
     #10 serial_in = 1;
     #10 serial_in = 1;


     #20;

    $finish;
  end
endmodule     
