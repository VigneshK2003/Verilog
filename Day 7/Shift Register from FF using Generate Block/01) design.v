
module d_ff(
         input clk, d, rst,
         output reg q
);
  
  always@(posedge clk)begin
    if(rst)
       q <= '0;
    else
       q <= d;
  end
endmodule
    
module shift_reg #(parameter width = 4)(
        input clk,rst,
        input [width-1:0]d,
        output [width-1:0]q
);
  
  genvar i;
  wire [width:0]c;
  assign c[0] = d[0];
  generate
    for(i=0; i<width; i++)begin
      d_ff dut( .d(c[i]), .q(c[i+1]), .clk(clk), .rst(rst) );
    end
  endgenerate
         
  assign q = d;
endmodule
    
    
