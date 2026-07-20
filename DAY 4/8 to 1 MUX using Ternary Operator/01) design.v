module mux_8_to_1(
         input in0, in1, in2, in3, in4, in5, in6, in7, 
         input [2:0]sel,
         output reg Y
);
  
  assign Y = (sel == 000)? in0: 
    (sel == 001)? in1:
    (sel == 010)? in2:
    (sel == 011)? in3:
    (sel == 100)? in4:
    (sel == 101)? in5:
    (sel == 110)? in6 : in7; 
  
endmodule
