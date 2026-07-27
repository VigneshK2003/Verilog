module f_adder(input a,b,c , output sum,carry);
    assign w1 = a&b;
    assign w2 = a^b;
    assign w3 = c&(a^b);
    assign sum = a^b^c;
    assign carry = a&b | b&c | a&c ;
endmodule
