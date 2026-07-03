module multi_kernel_relu(

input signed [31:0] fm1,
input signed [31:0] fm2,
input signed [31:0] fm3,
input signed [31:0] fm4,

output signed [31:0] rfm1,
output signed [31:0] rfm2,
output signed [31:0] rfm3,
output signed [31:0] rfm4

);

relu r1(.x(fm1), .y(rfm1));
relu r2(.x(fm2), .y(rfm2));
relu r3(.x(fm3), .y(rfm3));
relu r4(.x(fm4), .y(rfm4));

endmodule