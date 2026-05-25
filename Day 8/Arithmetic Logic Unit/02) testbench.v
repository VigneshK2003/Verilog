module alu_tb;
  reg [7:0]A;
  reg [7:0]B;
  reg [3:0]opcode;
  reg [7:0]result;

  arithmetic_logic_unit dut ( .A(A), .B(B), .opcode(opcode), .result(result) );
  initial begin
    $monitor( "Time = %0d, A = %b, B = %b, opcode = %b, result = %b",$time, A,B,opcode,result);
    $dumpfile("alu.vcd");
    $dumpvars( 0,alu_tb);
    
    A = 5;
    B = 8;
    opcode = 3'b000;
    
    #10;
    A = 5;
    B = 8;
    opcode = 3'b010;
    
    #10;
    A = 5;
    B = 8;
    opcode = 3'b011;
    
    #10 $finish;
    
  end
endmodule
