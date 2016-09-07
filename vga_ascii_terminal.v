`include "vga_controller/vga.v"
`include "ascii_pixel.v"

module vga_ascii_terminal(
    clk,
    reset,
    white,
    h_sync,
    v_sync,

    add_char,
    char_value
    );
    input clk, reset;
    output white, h_sync, v_sync;

    input add_char;
    input [6:0] char_value;

    wire [9:0] h_counter_next, v_counter_next;
    wire will_display;
    wire [6:0] char_display;

    vga vga(
        .clk,
        .reset,
        .h_counter_next,
        .h_sync,
        .v_counter_next,
        .v_sync,
        .will_display
        );

    ascii_pixel ascii_pixel(
        .char(char_display),
        .xpos(h_counter_next[1:0]),
        .ypos(v_counter_next[2:0]),
        .white
        );

endmodule
