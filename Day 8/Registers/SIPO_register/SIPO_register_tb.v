module SIPO_register_tb;
        reg d;
	reg clk;
	reg rst;
        wire y1,y2,y3,y4;


	SIPO_register uut(.clk(clk), .rst(rst), .d(d), .y1(y1), .y2(y2), .y3(y3), .y4(y4) );

	 always #5 clk = ~clk;

initial begin

     $monitor("Time =%0t, rst=%b | clk =%b | d=%b | y1=%b | y2=%b | y3=%b | y4=%b ", $time,rst,clk,d,y1,y2,y3,y4);
     $dumpfile("SIPO_regiser.vcd");
     $dumpvars( 0, SIPO_register_tb );

     clk = 0; rst = 1; d = 0;
      #10 rst = 0;

     #10 d = 1;
     #10 d = 0;
     #10 d = 1;
     #10 d = 0;

     #20;

    $finish;
  end
endmodule
         
