module tb_prat;
    logic [3:0] b, c;
    logic [7:0] s;

     prat uut (.b(b), .c(c), .s(s));

    initial begin
$monitor("b= %d \t c= %d \t s= %d", b, c, s);
        b = 5; c = 6;
        #10;
        b = 1; c = 1;
        #10;
        b = 2; c = 1;
        #10;
        $stop;
    end
endmodule
