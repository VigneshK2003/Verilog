module PIPO_register_tb;

     reg [3:0]d;
     reg rst;
     reg clk;
     wire y0;
     wire y1;
     wire y2;
     wire y3;

 PIPO_register uut(.d(d), .rst(rst), .clk(clk), .y0(y0), .y1(y1), .y2(y2), .y3(y3) );

  initial clk = 0;
  always #5 clk = ~clk;


initial begin

   $monitor("Time = %0t, rst = %b, clk = %b, d = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b", $time,rst,clk,d,y0,y1,y2,y3);

   $dumpfile("PIPO_register.vcd");
   $dumpvars(0, PIPO_register_tb);

   rst = 1; d = 4'b0000;
    #10 rst = 0;

    #10 d = 4'b1111;
    #10 d = 4'b1011;
    #10 d = 4'b1001;
    #10 d = 4'b0101;

    #20;
    $finish;
end
endmodule
