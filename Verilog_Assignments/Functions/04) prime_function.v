// Implement a function to return 1 if input is a prime number, else 0.

module prime_num;
    reg [7:0]a;
    reg prime_y;

function prime_n;
    input a;
     begin
      if( a%a == 0)
           prime_n = 1;
      else
          prime_n = 0;
     end
endfunction

 initial begin
   a = 8'd7;
  prime_y = prime_n(a);
  $display( " a=%0d, prime_y=%0d" , a,prime_y );
  end
endmodule
