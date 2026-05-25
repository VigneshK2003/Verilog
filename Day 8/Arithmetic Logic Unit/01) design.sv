module arithmetic_logic_unit(
  input [7:0]A,
  input [7:0]B,
  input [3:0]opcode,
  output reg [7:0]result
);
  
  always@(*)begin
    
    case(opcode)
      3'b000: result = A + B;
      3'b001: result = A - B;
      3'b010: result = A & B;
      3'b011: result = A | B;
      default: result = A + B;
    endcase
  end
endmodule
