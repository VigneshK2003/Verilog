// up down counter

module up_down #(parameter WIDTH = 4)(
          input clk,
          input rst,
          input up_ena,
          output reg [WIDTH-1:0] count
);

  always@(posedge clk or posedge rst)
    begin
       if(rst)
          count <= 1'b0;
       else if(up_ena)
          count <= count + 1'b1;
      else
          count <= count - 1'b1;
     end
endmodule
