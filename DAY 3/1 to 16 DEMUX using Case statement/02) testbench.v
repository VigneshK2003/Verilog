module mux_tb;
          reg [7:0]in;
          reg [3:0]sel;

          wire [7:0]out0, out1, out2, out3, out4, out5, out6, out7;
          wire [7:0]out8, out9, out10, out11, out12, out13, out14, out15;

          demux dut ( .in(in), .sel(sel), .out0(out0), .out1(out1), .out2(out2), .out3(out3), .out4(out4), .out5(out5), .out6(out6), .out7(out7),
                    .out8(out8), .out9(out9), .out10(out10), .out11(out11), .out12(out12), .out13(out13), .out14(out14), .out15(out15) );

         initial begin
                 $monitor(" Time = %0t, in = %d, sel = %b, out3 = %0d, out5 = %0d, out9 = %0d, out12 = %0d", $time,in,sel,out3,out5,out9,out12 );

                 in = 0; sel = 4'd0;

                 in = 40;  sel = 4'b0101; #10;

                 in = 50;  sel = 4'b1100; #10;

                 in = 70; sel = 4'b1001; #10;

                 in = 80; sel = 4'b0011; #10;

                 $finish;
         end
endmodule
