module SIPO_register(
    input d,
    input clk,
    input rst,
    output y1,
    output y2,
    output y3,
    output y4
);

    reg [3:0]sr = 4'b0000;

    always @(posedge clk) begin
        if(rst)
            sr <= 4'b0000;
        else
            sr <= { sr[2:0], d };
    end

    assign y1 = sr[3];
    assign y2 = sr[2];
    assign y3 = sr[1];
    assign y4 = sr[0];

endmodule
