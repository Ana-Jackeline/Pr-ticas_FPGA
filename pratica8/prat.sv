module prat (
    input logic [3:0] b, c,
    output logic [7:0] s
);

logic [7:0] x, y, t, w;
logic z;

//multiplidor
assign x = b * b;
assign y = c * 4'b0100;

//comparador
assign z = y > x;

//multiplexador
assign t = (z==1)?(y):(x);
assign w = (z==1)?(x):(y);

//subtrator
assign s = t - w;

endmodule