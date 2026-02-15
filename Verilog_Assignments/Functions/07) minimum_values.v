// Create a function that returns the minimum of two 8-bit values

module min_num;
  reg [7:0]x1;
  reg [7:0]x2;
  reg y;
 
 function min_number;
   input [7:0]a;
   input [7:0]b;
  begin
    if( a>b )
      $display(" a=%0d, b=%0d, min_number = ",a,b,b);
    else
      $display(" a=%0d, b=%0d,min_number = ",a,b,a);
   end
  endfunction
  initial begin
    x1 = 8'd15;
    x2 = 8'd10;
    y = min_number(x1,x2);
  
   end 
endmodule
