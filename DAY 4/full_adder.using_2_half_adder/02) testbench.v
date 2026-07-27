module f_adder_tb();
   reg a,b,c;
   wire sum,carry;
  f_adder uut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
 initial begin
    $monitor("Time=%0t, a=%b b=%b c=%b | sum=%b carry=%b",$time,a,b,c,sum,carry);
    $dumpfile("f_adder.vcd");
    $dumpvars(0,f_adder_tb);
 
    a=0 ; b=0 ; c=0; #10
    a=0 ; b=0 ; c=1; #10
    a=0 ; b=1 ; c=0; #10
    a=0 ; b=1 ; c=1; #10
    a=1 ; b=0 ; c=0; #10
    a=1 ; b=0 ; c=1; #10
    a=1 ; b=1 ; c=0; #10
    a=1 ; b=1 ; c=1; #10
  $finish;
 end
endmodule 
