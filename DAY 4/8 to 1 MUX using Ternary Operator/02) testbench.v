
module mux_tb;
  
    reg  in0, in1, in2, in3, in4, in5, in6, in7;
    reg [2:0]sel;
    wire Y;
  
  mux_8_to_1 dut (.in0(in0), .in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5), .in6(in6), .in7(in7), .sel(sel), .Y(Y) );
  
   initial begin
     
  $monitor(" in0 = %0b, in1 = %0b, in2 = %0b, in3 = %0b, in4 = %0b, in5 = %0b, in6 = %0b, in7 = %0b, sel = %b, Y = %0b",in0,in1,in2,in3,in4,in5,in6,in7,sel,Y );
    
      in0 = 0; in1 = 1; in2 = 1; in3 = 0;
      in4 = 0; in5 = 1; in6 = 0; in7 = 1;
    
      sel = 3'b000; #10;
      
      sel = 3'b001; #10;
     
      sel = 3'b110; #10;
      
      sel = 3'b010; #10;
  
      $finish;
  end
  
endmodule
