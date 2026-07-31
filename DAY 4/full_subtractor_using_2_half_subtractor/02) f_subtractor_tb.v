module f_subtractor_tb();
    reg a,b,Bin;
    wire d,Bout;
 f_subtractor uut(.a(a), .b(b), .Bin(Bin), .d(d), .Bout(Bout));
    initial begin
       $monitor("Time=%0t  a=%b  b=%b  Bin=%b | d=%b  Bout=%b ", $time,a,b,Bin,d,Bout);
       $dumpfile("f_subtractor.vcd");
       $dumpvars(0, f_subtractor_tb);
 
       a=0 ;b=0 ; Bin=0; #10
       a=0 ;b=0 ; Bin=1; #10
       a=0 ;b=1 ; Bin=0; #10
       a=0 ;b=1 ; Bin=1; #10
       a=1 ;b=0 ; Bin=0; #10
       a=1 ;b=0 ; Bin=1; #10
       a=1 ;b=1 ; Bin=0; #10
       a=1 ;b=1 ; Bin=1; #10
     $finish;
    end
endmodule
