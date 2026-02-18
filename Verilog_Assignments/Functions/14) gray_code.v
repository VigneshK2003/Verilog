module gray_code;
     reg [3:0]x;
     reg [3:0]y;
function [3:0]gray_conv;
      input [3:0]a;
      
      gray_conv = { a[3], a[3]^a[2], a[2]^a[1], a[1]^a[0] };
endfunction
  
   initial begin
       x = 4'b0011;
       y = gray_conv(x);
       $display(" gray_code = %04b ", y);
   end
endmodule
