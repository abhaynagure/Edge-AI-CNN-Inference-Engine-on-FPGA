module flatten(

input signed [31:0] pool1,
input signed [31:0] pool2,
input signed [31:0] pool3,
input signed [31:0] pool4,

output signed [31:0] x1,
output signed [31:0] x2,
output signed [31:0] x3,
output signed [31:0] x4

);

assign x1 = pool1;
assign x2 = pool2;
assign x3 = pool3;
assign x4 = pool4;

endmodule