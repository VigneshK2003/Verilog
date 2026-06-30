module even_parity_tb;
    reg a,b,c,p;
    wire y;
  even_parity uut(.a(a), .b(b), .c(c), .p(p), .y(y) );
 initial begin
     $monitor("Time=%0t, a=%b b=%b c=%b | p=%b | y=%b ", $time, a,b,c,p,y );
     $dumpfile("even_parity.vcd");
     $dumpvars(0, even_parity_tb);
    a=0 ; b=0; c=0; p=0; #10
    a=0 ; b=0; c=1; p=1; #10
    a=0 ; b=1; c=0; p=1; #10
    a=0 ; b=1; c=1; p=0; #10
    a=1 ; b=0; c=0; p=1; #10
    a=1 ; b=0; c=1; p=0; #10
    a=1 ; b=1; c=0; p=0; #10
    a=1 ; b=1; c=1; p=1; #10
   $finish;
   end
endmodule
