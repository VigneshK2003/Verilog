// Write a function to compare two inputs and return 1 if equal

module compare;
    reg [7:0]x1;
    reg [7:0]x2;
    reg [7:0]y;

 function [7:0]compare_f;
     input [7:0]a;
     input [7:0]b;
    if( x1 == x2)
       $display(" a=%0d, b=%0d, compare_f = %0d", a,b,1 );
    else
        $display(" a=%0d, b=%0d, compare_f = %0d", a,b,0 );
 endfunction
 initial begin
     x1 = 8'd5;
     x2 = 8'd5;
     y = compare_f(x1,x2);
   end
endmodule   
