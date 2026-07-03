module feature_map_relu(

input  signed [31:0] fm1,fm2,fm3,
input  signed [31:0] fm4,fm5,fm6,
input  signed [31:0] fm7,fm8,fm9,

output signed [31:0] rfm1,rfm2,rfm3,
output signed [31:0] rfm4,rfm5,rfm6,
output signed [31:0] rfm7,rfm8,rfm9

);

relu r1(.x(fm1), .y(rfm1));
relu r2(.x(fm2), .y(rfm2));
relu r3(.x(fm3), .y(rfm3));

relu r4(.x(fm4), .y(rfm4));
relu r5(.x(fm5), .y(rfm5));
relu r6(.x(fm6), .y(rfm6));

relu r7(.x(fm7), .y(rfm7));
relu r8(.x(fm8), .y(rfm8));
relu r9(.x(fm9), .y(rfm9));

endmodule