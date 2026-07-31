module f_subtractor(input a,b,Bin , output d,Bout);
    assign w1 = a^b;
    assign w2 = ~a & b;
    assign w3 = ~w1 & Bin;
    assign d  = a^b^Bin;
    assign Bout = w2 | w3;
endmodule
