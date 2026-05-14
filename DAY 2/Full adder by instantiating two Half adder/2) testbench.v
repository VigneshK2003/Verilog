module fa_tb;
            reg A, B, Cin;
           wire sum, carriy;


   full_adder dut ( .A(A), .B(B), .Cin(Cin), .sum(sum), .carry(carry) );

  initial begin

    $monitor(" A = %b, B = %b, Cin = %b, sum = %b, carry = %b ", A,B,Cin,sum,carry );
    $dumpfile(" fa.vcd");
    $dumpvars( 0, fa_tb);

  //   A = 0; B = 0; Cin = 0; #10;
  //   A = 0; B = 0; Cin = 1; #10;
  //   A = 0; B = 1; Cin = 0; #10;
  //   A = 0; B = 1; Cin = 1; #10;
  //   A = 1; B = 0; Cin = 0; #10;
  //   A = 1; B = 0; Cin = 1; #10;
  //   A = 1; B = 1; Cin = 0; #10;
  //   A = 1; B = 1; Cin = 1; #10;
  //   #10 $finish;


     repeat(10) begin
           A = $random;
           B = $random;
         Cin = $random;
         #10;
      end
   end
endmodule
