module demux1to4_tb();
        reg d,s0,s1;
        wire y0,y1,y2,y3;
     demux1to4 uut( d,s0,s1, y0,y1,y2,y3 );
  initial begin
     $monitor("Time=%0t , d=%b | s0=%b s1=%b | y0=%b y1=%b y2=%b y3=%b ", $time ,d,s0,s1,y0,y1,y2,y3);
     $dumpfile("demux1to4.vcd");
     $dumpvars(0 ,demux1to4_tb );
    d=1;
    s0 = 0;s1=0; #10
    s0 = 0;s1=1; #10
    s0 = 1;s1=0; #10
    s0 = 1;s1=1; #10
    $finish;
  end
endmodule 
      
      
