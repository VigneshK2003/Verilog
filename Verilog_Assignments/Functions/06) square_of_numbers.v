// Write a function that calculates the square of a number

module square_n;
   reg [7:0]x;
   reg [8:0]square_y;
 
 function [8:0]square;
    input [7:0]a;
    square = a*a;
  endfunction

 initial begin
   x = 8'd5;
   square_y = square(x);
   $display( " x=%0d, square_y=%0d", x,square_y );
  end
endmodule  
