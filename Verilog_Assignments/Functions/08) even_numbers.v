// Implement a function to compute even parity using XOR

module xor_bits;
     reg [7:0]a;
     reg parity;

function xor_b;
     input [7:0]x;

     begin
     xor_b = ~^x;
     end
endfunction

  initial begin
     a = 8'b01010101;

     parity = xor_b(a);
    $display(" a=%0b, parity=%0b ", a,parity);
    end
endmodule
