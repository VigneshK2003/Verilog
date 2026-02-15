// Create a function that returns the difference of two inputs.

module diff;
   reg [7:0]x;
   reg [7:0]y;
   reg [7:0]diff_y;

function [7:0]diff_n;
    input [7:0]a;
    input [7:0]b;
   diff_n = a - b;
endfunction

 initial begin
    x = 8'd8;
    y = 8'd5;
  diff_y = diff_n(x,y);
  $display( " x=%0d, y=%0d, diff_y=%0d ", x,y,diff_y);
  end
endmodule
