// Johnson counter

module johnson_counter#(parameter N = 4)(
                input rst,clk,
               output reg [N-1:0]count = 4'b000
);

   always@(posedge clk)begin
         if(rst)
              count <= 4'b0000;
         else
              count <= {~count[0], count[N-1:1]};
        end
endmodule
