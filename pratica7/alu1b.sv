module alu1b (
    input logic a, b, ainvert, binvert, cin, s0, s1,
    output logic x, cout
);

logic w1, w2, w3, w4, w5, w6;

assign w1 = (ainvert ^ a);
assign w2 = (binvert ^ b);
assign w3 = w1 & w2;
assign w4 = w1 | w2;
somador completo (.a(w1), .b(w2), .s(w5), .cout(cout), .cin(cin));
assign w6 = w1 ^ w2;

mux multiplexador (.s0(s0), .s1(s1), .i0(w3), .i1(w4), .i2(w5), .i3(w6), .x(x));
    
endmodule