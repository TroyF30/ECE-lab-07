module twos_compliment(
    input  [9:0] sw,
    output [13:6] led
);

wire [7:0] A;
wire [7:0] Cin;
wire [7:0] Cout;

wire c1,c2,c3,c4,c5,c6,c7,c8;

assign A = sw[9:2];

// 1's complement
assign Cin = ~A;


assign Cout[0] = Cin[0] ^ 1'b0 ^ 1'b1;
assign c1 = (Cin[0] & 1'b0) | (1'b1 & (Cin[0] ^ 1'b0));


assign Cout[1] = Cin[1] ^ 1'b0 ^ c1;
assign c2 = (Cin[1] & 1'b0) | (c1 & (Cin[1] ^ 1'b0));


assign Cout[2] = Cin[2] ^ 1'b0 ^ c2;
assign c3 = (Cin[2] & 1'b0) | (c2 & (Cin[2] ^ 1'b0));


assign Cout[3] = Cin[3] ^ 1'b0 ^ c3;
assign c4 = (Cin[3] & 1'b0) | (c3 & (Cin[3] ^ 1'b0));


assign Cout[4] = Cin[4] ^ 1'b0 ^ c4;
assign c5 = (Cin[4] & 1'b0) | (c4 & (Cin[4] ^ 1'b0));


assign Cout[5] = Cin[5] ^ 1'b0 ^ c5;
assign c6 = (Cin[5] & 1'b0) | (c5 & (Cin[5] ^ 1'b0));


assign Cout[6] = Cin[6] ^ 1'b0 ^ c6;
assign c7 = (Cin[6] & 1'b0) | (c6 & (Cin[6] ^ 1'b0));


assign Cout[7] = Cin[7] ^ 1'b0 ^ c7;
assign c8 = (Cin[7] & 1'b0) | (c7 & (Cin[7] ^ 1'b0));

assign led[13:6] = Cout;

endmodule