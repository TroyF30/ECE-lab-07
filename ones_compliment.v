module ones_compliment(
    input  [9:0] sw,
    output [5:2] led
);

wire [3:0] A = sw[5:2];
wire [3:0] B = sw[9:6];

wire s0,s1,s2,s3;
wire c1,c2,c3,c4;

assign s0 = A[0] ^ B[0];
assign c1 = A[0] & B[0];

assign s1 = A[1] ^ B[1] ^ c1;
assign c2 = (A[1] & B[1]) | (A[1] & c1) | (B[1] & c1);

assign s2 = A[2] ^ B[2] ^ c2;
assign c3 = (A[2] & B[2]) | (A[2] & c2) | (B[2] & c2);

assign s3 = A[3] ^ B[3] ^ c3;
assign c4 = (A[3] & B[3]) | (A[3] & c3) | (B[3] & c3);

assign led[2] = s0 ^ c4;
wire c5 = s0 & c4;

assign led[3] = s1 ^ c5;
wire c6 = s1 & c5;

assign led[4] = s2 ^ c6;
wire c7 = s2 & c6;

assign led[5] = s3 ^ c7;

endmodule