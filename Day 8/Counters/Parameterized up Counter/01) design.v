
module counter #(parameter w = 4)(
  input clk,rst,
  output reg [w-1:0]count
);
  always@(posedge clk)begin
    if(rst)
      count <= '0;
    else begin 
      if( count == 2**w-1)
        count <= '0;
      else
        count <= count+1;
    end
  end
endmodule
