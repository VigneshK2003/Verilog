module demux1to4(input d,s0,s1 , output y0,y1,y2,y3);
        assign y0 = ~s0 & ~s1 & d ;
        assign y1 = ~s0 & s1 & d ;
        assign y2 = s0 & ~s1 & d ;
        assign y3 = s0 & s1 & d ;
endmodule
    
