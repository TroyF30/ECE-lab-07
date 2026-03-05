module top(
    input  [9:0] sw,
    output [13:0] led
);

// Half Subtractor
half_sub HS (
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .Borrow(led[1])
);

// Ones' Complement Adder
ones_compliment OC (
    .sw(sw),
    .led(led[5:2])
);

// Two's Complement Converter
twos_compliment TC (
    .sw(sw),
    .led(led[13:6])
);

endmodule
