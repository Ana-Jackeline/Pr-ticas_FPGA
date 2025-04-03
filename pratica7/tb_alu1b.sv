module tb_alu1b;
    logic a, b, ainvert, binvert, cin, s1, s0, x, cout;
    alu1b uut (
        .a(a),
        .b(b),
        .ainvert(ainvert),
        .binvert(binvert),
        .cin(cin),
        .s1(s1),
        .s0(s0),
        .x(x),
        .cout(cout)
    );
    initial begin
$monitor("a= %b \t b= %b \t ainvert= %b \t binvert= %b \t cin= %b \t s1= %b \t s0= %b \t x= %b \t cout= %b", a, b, ainvert, binvert, cin, s1, s0, x, cout);
        a = 1; b = 0; ainvert = 0; binvert = 0; cin = 0; s1 = 0; s0 = 0;
        #10
        a = 1; b = 1; ainvert = 0; binvert = 0; cin = 0; s1 = 0; s0 = 0;
        #10
        a = 1; b = 0; ainvert = 0; binvert = 0; cin = 0; s1 = 0; s0 = 1;
        #10
        a = 0; b = 0; ainvert = 0; binvert = 0; cin = 0; s1 = 0; s0 = 1;
        #10
        a = 1; b = 0; ainvert = 0; binvert = 0; cin = 0; s1 = 1; s0 = 0;
        #10
        a = 1; b = 1; ainvert = 0; binvert = 0; cin = 0; s1 = 1; s0 = 0;
        #10
        a = 1; b = 1; ainvert = 0; binvert = 0; cin = 1; s1 = 1; s0 = 0;
        #10
        a = 1; b = 1; ainvert = 0; binvert = 1; cin = 1; s1 = 1; s0 = 0;
        #10
        a = 1; b = 0; ainvert = 0; binvert = 0; cin = 0; s1 = 1; s0 = 1;
        #10
        a = 1; b = 1; ainvert = 0; binvert = 0; cin = 0; s1 = 1; s0 = 1;
        #10
        $stop;
    end
endmodule