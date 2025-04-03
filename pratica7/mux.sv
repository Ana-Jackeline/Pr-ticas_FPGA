module mux (
    input logic s1, s0,
   input logic i0, i1, i2, i3,
   output logic x
);

assign x = ((~s1 & ~s0 & i0) | (~s1 & s0 & i1) | (s1 & ~s0 & i2) | (s1 & s0 & i3));
    
endmodule