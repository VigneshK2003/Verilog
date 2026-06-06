module mux_tb;
        reg [7:0]in;
        reg [2:0]sel;
       wire out;

   mux8to1 dut (.in(in), .sel(sel), .out(out) );

   initial begin

         $monitor(" Time = %0t, sel = %b, out = %b", $time,sel,out);
         $dumpfile("mux8to1.vcd");
         $dumpvars(0,mux_tb);

          in = 8'd 10;

          sel = 3'b000; #10;
          sel = 3'b001; #10;
          sel = 3'b010; #10;
          sel = 3'b011; #10;
          sel = 3'b100; #10;
          sel = 3'b101; #10;
          sel = 3'b110; #10;
          sel = 3'b111; #10;

          $finish;
  end
endmodule
