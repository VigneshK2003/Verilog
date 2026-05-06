module full_adder(
             input A, B, Cin,
             output sum, carry
 );

      assign {carry,sum} = A + B + Cin;

endmodule
