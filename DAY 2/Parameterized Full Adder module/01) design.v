
module full_adder #( parameter w = 4)(
  input [w-1:0]a,b,
  input cin,
  output [w-1:0]sum,
  output carry
);
  
  assign {carry, sum} = a + b + cin;
endmodule
