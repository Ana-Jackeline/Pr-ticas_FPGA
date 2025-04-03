// Módulo: Contador de Módulo 6 (Dezenas)
// ----------------------
module counter_mod6 (
    input logic clk, reset,
    output logic [2:0] count
);
    always_ff @(posedge clk or negedge reset) begin
        if (~reset)
            count <= 0;
        else if (count == 5)
            count <= 0;
        else
            count <= count + 1;
    end
endmodule