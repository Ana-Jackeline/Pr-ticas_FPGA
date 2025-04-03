// Módulo Principal (Top-Level)
// ----------------------
module top (
    input logic clk, reset,
    output logic [6:0] seg_units, seg_tens
);
    logic clk_1Hz;
    logic [3:0] count_units;
    logic [2:0] count_tens;
    logic carry;

    // Instanciando o divisor de clock
    clock_divider clk_div (
        .clk(clk),
        .reset(reset),
        .clk_out(clk_1Hz)
    );

    // Instanciando o contador de unidades (módulo 10)
    counter_mod10 cnt_units (
        .clk(clk_1Hz),
        .reset(reset),
        .count(count_units),
        .carry_out(carry)
    );

    // Instanciando o contador de dezenas (módulo 6)
    counter_mod6 cnt_tens (
        .clk(carry),
        .reset(reset),
        .count(count_tens)
    );

    // Instanciando os decodificadores de 7 segmentos
    seven_segment_decoder display_units (
        .binary_in(count_units),
        .seg_out(seg_units)
    );

    seven_segment_decoder display_tens (
        .binary_in({1'b0, count_tens}), // Expande de 3 bits para 4 bits
        .seg_out(seg_tens)
    );
	 
endmodule