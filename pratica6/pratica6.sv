//Declaração do modulo
module pratica6 (input logic M1, M2, M3, M4,
						output logic C1, C2, C3, C4);

  assign C1 = M1;
  assign C2 = M2;
  assign C3 = ((~M1&M3)|(~M2&M3));
  assign C4 = ((~M1&~M2&M4)|(~M1&~M3&M4)|(~M2&~M3&M4));
  
endmodule