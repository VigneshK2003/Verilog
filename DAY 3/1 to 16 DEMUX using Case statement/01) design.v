module demux(
          input [7:0]in,
          input [3:0]sel,

         output reg [7:0]out0, out1, out2, out3, out4, out5, out6, out7,
         output reg [7:0]out8, out9, out10, out11, out12, out13, out14, out15
);

    always@(*) begin

            out0 = 8'd0; out1 = 8'd0; out2 = 8'd0; out3 = 8'd0; out4 = 8'd0; out5 = 8'd0; out6 = 8'd0; out7 = 8'd0;
            out8 = 8'd0; out9 = 8'd0; out10 = 8'd0; out11 = 8'd0; out12 = 8'd0; out13 = 8'd0; out14 = 8'd0; out15 = 8'd0;

        case(sel)
            4'b0000: out0  = in;
            4'b0001: out1  = in;
            4'b0010: out2  = in;
            4'b0011: out3  = in;
            4'b0100: out4  = in;
            4'b0101: out5  = in;
            4'b0110: out6  = in;
            4'b0111: out7  = in;
            4'b1000: out8  = in;
            4'b1001: out9  = in;
            4'b1010: out10 = in;
            4'b1011: out11 = in;
            4'b1100: out12 = in;
            4'b1101: out13 = in;
            4'b1110: out14 = in;
            4'b1111: out15 = in;
            default:  out0 = 8'd0; out1 = 8'd0; out2 = 8'd0; out3 = 8'd0; out4 = 8'd0; out5 = 8'd0; out6 = 8'd0; out7 = 8'd0;out0 = in;
         endcase
    end
endmodule
