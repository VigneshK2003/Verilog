// Create a function that returns the XOR of all bits of an input (odd parity).

module xor_bits;
     reg [7:0]a;
     reg parity;

function xor_b;
     input [7:0]x;

     begin
     xor_b = ^x;
     end 
endfunction
   
  initial begin
     a = 8'b01010111;

     parity = xor_b(a);
    $display(" a=%0b, parity=%0b ", a,parity);
    end
endmodule

