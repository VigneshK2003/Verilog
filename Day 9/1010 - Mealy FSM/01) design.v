module mealy_fsm(
             input rst, clk, data_in,
            output reg data_out
);
  
  reg [1:0] state;
  
  parameter [1:0] S0 = 2'b00,
                  S1 = 2'b01,
                  S2 = 2'b10,
                  S3 = 2'b11;
  
  always@(posedge clk or posedge rst)begin
    if(rst) begin
        state <= S0;
       data_out <= 0;
    end
    else begin
      case(state)
        
          S0: begin
            if(data_in)begin
                 state <= S1;
               data_out <= 0;
            end
             else begin
                state <= S0;
               data_out <= 0;
             end
          end
        
          S1: begin
            if(~data_in)begin
               state <= S2;
               data_out <= 0;
            end
            else begin
               state <= S1;
               data_out <= 0;
            end
          end
        
          S2: begin
            if(data_in)begin
               state <= S3;
               data_out <= 0;
            end
            else begin
               state <= S0;
               data_out <= 0;
            end
          end         
       
          S3: begin
            if(~data_in)begin
               state <= S2;
               data_out <= 1;
            end
            else begin
               state <= S1;
               data_out <= 0;
            end
          end
      endcase
    end
  end
endmodule
