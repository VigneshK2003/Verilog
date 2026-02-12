module PISO_register(
         input [3:0]d,
         input rst,
         input clk,
         input load,
         output y );

     reg [3:0] sr;
   
    always@(posedge clk)
      begin
       if(rst)
         sr <= 4'b0000;
       else if(load)
         sr <= d;
       else
         sr <= {1'b0, sr[3:1]};
      end

    assign y = sr[3];
endmodule
