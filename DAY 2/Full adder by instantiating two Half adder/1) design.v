// half adder

module half_adder(
             input A, B,
            output sum, carry
);

         assign sum = A ^ B;
         assign carry = A & B;
endmodule


// full adder using 2 half adders

module full_adder(
              input A, B, Cin,
             output sum, carry
);

   wire sum1, carry1, carry2;

    half_adder dut1 ( .A(A), .B(B), .sum(sum1), .carry(carry1) );

    half_adder dut2 ( .A(sum1), .B(Cin), .sum(sum), .carry(carry2) );

    assign carry = carry1 | carry2;

endmodule
