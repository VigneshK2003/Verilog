module sync_down_counter(
                   input clk, rst,
                   output reg [2:0]count = 3'b000
);
    always@(posedge clk)begin
         if(rst)
            count <= 3'b111;
         else if(count == 3'b000)
             count <= 3'b111;
         else
            count <= count - 1;
     end
endmodule
