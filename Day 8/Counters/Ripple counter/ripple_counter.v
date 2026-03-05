// asynchronous up counter

module ripple_counter(
               input rst, clk,
               output reg [2:0]count
);

   always@(posedge clk or negedge rst) begin
       if(!rst)
           count <= 3'b000;
       else if(count == 3'b111)
           count <= 3'b000;
       else
           count <= count + 1;
      end
endmodule
