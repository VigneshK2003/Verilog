module comparator_tb;
        reg a,b ;
        wire l,e,g;
    comparator uut(.a(a), .b(b), .l(l), .e(e), .g(g) );
  initial begin
     $monitor("Time=%0t, a=%b b=%b | l=%b e=%b g=%b ", $time, a,b,l,e,g );
     $dumpfile("comparator.vcd");
     $dumpvars(0, comparator_tb);
    a=0 ; b=0; #10
    a=0 ; b=1; #10
    a=1 ; b=0; #10
    a=1 ; b=1; #10 
    $finish;
   end
endmodule
