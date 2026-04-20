module synchronous_fifo #(parameter DEPTH = 8,
  parameter DATA_WIDTH = 8)(
      input clk,
      input rst,
      input wrt_ena,
      input rd_ena,
      input [DATA_WIDTH-1:0] wrt_data,
      output reg [DATA_WIDTH-1:0] rd_data,
      output full,
      output empty
);

  parameter PTR_W = 3;

  reg [PTR_W-1:0] rd_ptr, wrt_ptr;
  reg [PTR_W:0]   count;

  reg [DATA_WIDTH-1:0] fifo [0:DEPTH-1];

  always @(posedge clk) begin
    if (!rst) begin
      rd_ptr  <= 0;
      wrt_ptr <= 0;
      count   <= 0;
      rd_data <= 0;
    end
    else begin
      // WRITE
      if (wrt_ena && !full) begin
        fifo[wrt_ptr] <= wrt_data;
        wrt_ptr <= wrt_ptr + 1;
   //     count <= count + 1;
      end

      // READ
      if (rd_ena && !empty) begin
        rd_data <= fifo[rd_ptr];
        rd_ptr <= rd_ptr + 1;
   //     count <= count - 1;
      end

      // COUNT
      case ({wrt_ena && !full, rd_ena && !empty})
        2'b10: count <= count + 1;
        2'b01: count <= count - 1;
        default: count <= count;
      endcase
    end
  end

  assign empty = (count == 0);
  assign full  = (count == DEPTH);

endmodule
