module ascii_pixel(
    char,
    xpos,
    ypos,
    white
    );

    input [6:0] char;
    input [2:0] xpos;
    input [2:0] ypos;

    output white;

    wire [64*128-1:0] pixels;

    assign white = pixels[(3'h7 - xpos) + ypos * 8 + char * 64];

// This comes from the GPLv3 licensed source (http://opengameart.org/content/8x8-ascii-bitmap-font-with-c-source).
    assign pixels = {
        64'h0000000000000000, /* NUL */
        64'h7E7E7E7E7E7E0000, /* SOH */
        64'h7E7E7E7E7E7E0000, /* STX */
        64'h7E7E7E7E7E7E0000, /* ETX */
        64'h7E7E7E7E7E7E0000, /* EOT */
        64'h7E7E7E7E7E7E0000, /* ENQ */
        64'h7E7E7E7E7E7E0000, /* ACK */
        64'h7E7E7E7E7E7E0000, /* BEL */
        64'h7E7E7E7E7E7E0000, /* BS */
        64'h0,   /* TAB */
        64'h7E7E7E7E7E7E0000, /* LF */
        64'h7E7E7E7E7E7E0000, /* VT */
        64'h7E7E7E7E7E7E0000, /* FF */
        64'h7E7E7E7E7E7E0000, /* CR */
        64'h7E7E7E7E7E7E0000, /* SO */
        64'h7E7E7E7E7E7E0000, /* SI */
        64'h7E7E7E7E7E7E0000, /* DLE */
        64'h7E7E7E7E7E7E0000, /* DC1 */
        64'h7E7E7E7E7E7E0000, /* DC2 */
        64'h7E7E7E7E7E7E0000, /* DC3 */
        64'h7E7E7E7E7E7E0000, /* DC4 */
        64'h7E7E7E7E7E7E0000, /* NAK */
        64'h7E7E7E7E7E7E0000, /* SYN */
        64'h7E7E7E7E7E7E0000, /* ETB */
        64'h7E7E7E7E7E7E0000, /* CAN */
        64'h7E7E7E7E7E7E0000, /* EM */
        64'h7E7E7E7E7E7E0000, /* SUB */
        64'h7E7E7E7E7E7E0000, /* ESC */
        64'h7E7E7E7E7E7E0000, /* FS */
        64'h7E7E7E7E7E7E0000, /* GS */
        64'h7E7E7E7E7E7E0000, /* RS */
        64'h7E7E7E7E7E7E0000, /* US */
        64'h0,   /* (space) */
        64'h808080800080000, /* ! */
        64'h2828000000000000, /* " */
        64'h287C287C280000, /* # */
        64'h81E281C0A3C0800, /* $ */
        64'h6094681629060000, /* % */
        64'h1C20201926190000, /* & */
        64'h808000000000000, /* ' */
        64'h810202010080000, /* ( */
        64'h1008040408100000, /* ) */
        64'h2A1C3E1C2A000000, /* * */
        64'h8083E08080000, /* + */
        64'h81000,  /* , */
        64'h3C00000000,  /* - */
        64'h80000,  /* . */
        64'h204081020400000, /* / */
        64'h1824424224180000, /* 0 */
        64'h8180808081C0000, /* 1 */
        64'h3C420418207E0000, /* 2 */
        64'h3C420418423C0000, /* 3 */
        64'h81828487C080000, /* 4 */
        64'h7E407C02423C0000, /* 5 */
        64'h3C407C42423C0000, /* 6 */
        64'h7E04081020400000, /* 7 */
        64'h3C423C42423C0000, /* 8 */
        64'h3C42423E023C0000, /* 9 */
        64'h80000080000,  /* : */
        64'h80000081000,  /* ; */
        64'h6186018060000, /* < */
        64'h7E007E000000,  /* = */
        64'h60180618600000, /* > */
        64'h3844041800100000, /* ? */
        64'h3C449C945C201C, /* @ */
        64'h1818243C42420000, /* A */
        64'h7844784444780000, /* B */
        64'h3844808044380000, /* C */
        64'h7844444444780000, /* D */
        64'h7C407840407C0000, /* E */
        64'h7C40784040400000, /* F */
        64'h3844809C44380000, /* G */
        64'h42427E4242420000, /* H */
        64'h3E080808083E0000, /* I */
        64'h1C04040444380000, /* J */
        64'h4448507048440000, /* K */
        64'h40404040407E0000, /* L */
        64'h4163554941410000, /* M */
        64'h4262524A46420000, /* N */
        64'h1C222222221C0000, /* O */
        64'h7844784040400000, /* P */
        64'h1C222222221C0200, /* Q */
        64'h7844785048440000, /* R */
        64'h1C22100C221C0000, /* S */
        64'h7F08080808080000, /* T */
        64'h42424242423C0000, /* U */
        64'h8142422424180000, /* V */
        64'h4141495563410000, /* W */
        64'h4224181824420000, /* X */
        64'h4122140808080000, /* Y */
        64'h7E040810207E0000, /* Z */
        64'h3820202020380000, /* [ */
        64'h4020100804020000, /* \ */
        64'h3808080808380000, /* ] */
        64'h1028000000000000, /* ^ */
        64'h7E0000,  /* _ */
        64'h1008000000000000, /* ` */
        64'h3C023E463A0000, /* a */
        64'h40407C42625C0000, /* b */
        64'h1C20201C0000,  /* c */
        64'h2023E42463A0000, /* d */
        64'h3C427E403C0000, /* e */
        64'h18103810100000, /* f */
        64'h344C44340438,  /* g */
        64'h2020382424240000, /* h */
        64'h800080808080000, /* i */
        64'h800180808080870, /* j */
        64'h20202428302C0000, /* k */
        64'h1010101010180000, /* l */
        64'h665A42420000,  /* m */
        64'h2E3222220000,  /* n */
        64'h3C42423C0000,  /* o */
        64'h5C62427C4040,  /* p */
        64'h3A46423E0202,  /* q */
        64'h2C3220200000,  /* r */
        64'h1C201804380000, /* s */
        64'h103C1010180000, /* t */
        64'h2222261A0000,  /* u */
        64'h424224180000,  /* v */
        64'h81815A660000,  /* w */
        64'h422418660000,  /* x */
        64'h422214081060,  /* y */
        64'h3C08103C0000,  /* z */
        64'h1C103030101C0000, /* { */
        64'h808080808080800, /* | */
        64'h38080C0C08380000, /* } */
        64'h324C000000,  /* ~ */
        64'h7E7E7E7E7E7E0000 /* DEL */
    };
endmodule
