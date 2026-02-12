module PIPO_register(
        input [3:0]d,
        input clk,
        input rst,
        output y0,
        output y1,
        output y2,
        output y3 );

    reg [3:0]sr = 4'b0000;

  always@(posedge clk)
     begin
      if(rst)
          sr <= 4'b0000;
      else
          sr <= d;
     end
  
   assign y0 = sr[0];
   assign y1 = sr[1];
   assign y2 = sr[2];
   assign y3 = sr[3];
endmodule
