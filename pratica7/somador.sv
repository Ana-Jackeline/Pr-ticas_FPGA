module somador(
    input logic a, b,
    input logic cin,
    output logic s,
    output logic cout
);

assign s = a ^ b ^ cin;
assign cout = a & b | a & cin | b & cin;

endmodule
