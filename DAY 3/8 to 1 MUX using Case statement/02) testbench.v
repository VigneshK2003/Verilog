module mux_tb;
        reg [7:0]in0, in1, in2, in3;
        reg [7:0]in4, in5, in6, in7;
        reg [2:0]sel;
       wire [7:0]out;

   mux8to1 dut (.in0(in0), .in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5), .in6(in6), .in7(in7), .sel(sel), .out(out) );

   initial begin

         $monitor(" Time = %0t, sel = %b, out = %0d", $time,sel,out);
         $dumpfile("mux8to1.vcd");
         $dumpvars(0,mux_tb);

         in0 = 10; in1 = 20; in2 = 30; in3 = 40;
         in4 = 50; in5 = 60; in6 = 70; in7 = 80;

          sel = 3'b000; #10;
          sel = 3'b101; #10;
          sel = 3'b010; #10;
          sel = 3'b111; #10;
          sel = 3'b001; #10;
          sel = 3'b101; #10;
          sel = 3'b011; #10;
          sel = 3'b100; #10;

          $finish;
  end
endmodule
