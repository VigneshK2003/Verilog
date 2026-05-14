module fs_tb;
            reg A,B,Bin;
           wire Diff, Borrow;


      full_subtractor dut( .A(A), .B(B), .Bin(Bin), .Diff(Diff), .Borrow(Borrow) );

    integer i;

  initial begin

      $monitor(" Time = %0t, A = %b, B = %b, Bin = %b, Diff = %b, Borrow = %b", $time,A,B,Bin,Diff,Borrow);
      $dumpfile( "fs.vcd" );
      $dumpvars( 0, fs_tb);

      for( i=0; i<8; i++)begin
       {A,B,Bin} = i;
       #10;
      end
    end

endmodule
