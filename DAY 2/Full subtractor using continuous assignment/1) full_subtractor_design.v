module full_subtractor(
                    input A, B, Bin,
                   output Diff, Borrow
);

    assign Diff = A ^ B ^ Bin;
    assign Borrow = (~A & B)| (~(A^B) & Bin);

endmodule
