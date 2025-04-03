// Módulo: Contador de Módulo 10 (Unidades)
// ----------------------
module counter_mod10 (
    input logic clk, reset,
    output logic [3:0] count,
    output logic carry_out
);
    always_ff @(posedge clk or negedge reset) begin
        if (~reset)
            count <= 0;
        else if (count == 9) begin
            count <= 0;
            carry_out <= 1; // Pulso para o contador de módulo 6
        end else begin
            count <= count + 1;
            carry_out <= 0;
        end
    end
endmodule