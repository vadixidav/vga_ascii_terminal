module ascii_pixel(
    char,
    xpos,
    ypos,
    white
    );

    input [6:0] char;
    input [1:0] xpos;
    input [2:0] ypos;

    output white;

    wire [2:0] pixels [127:0] [5:0];

    assign pixel = pixels[char][ypos][xpos];

    integer i, j, fd, rv;
endmodule
