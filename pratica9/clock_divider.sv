// Módulo: Divisor de Clock (50 MHz -> 1 Hz)
// ----------------------
module clock_divider (
    input logic clk, reset,
    output logic clk_out
);
    logic [25:0] counter;

    always_ff @(posedge clk or negedge reset) begin
        if (~reset)
            counter <= 0;
        else if (counter == 25_000_000) begin // 50M/2 para gerar 1Hz
            counter <= 0;
            clk_out <= ~clk_out;
        end else
            counter <= counter + 1;
    end
endmodule