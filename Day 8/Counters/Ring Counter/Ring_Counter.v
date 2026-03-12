// Ring Counter

module ring_counter #(parameter N = 4)(
               input rst, clk,
               output reg [N-1:0]count
);

        always@(posedge clk) begin
           if(rst)
                count <= 4'b0001;
           else
                count <= { count[N-2:0], count[N-1] };
           end

endmodule
