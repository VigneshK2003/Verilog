// Write a function that returns the sum of two 8-bit inputs.

module add_func;
      reg [7:0]x;
      reg [7:0]y;
      reg [8:0]sum;
  function [7:0]add_f;
     input [7:0]a;
     input [7:0]b;
     begin
       add_f = a + b;
     end
  endfunction

  initial begin
      x = 5;
      y = 6;
     sum = add_f(x, y);
    $display(" x=%0d, y=%0d, sum=%0d ", x,y,sum );
  end
endmodule     
