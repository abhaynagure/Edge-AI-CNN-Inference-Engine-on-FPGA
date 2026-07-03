module dense_layer(

input signed [31:0] x1,
input signed [31:0] x2,
input signed [31:0] x3,
input signed [31:0] x4,

output signed [63:0] score1,
output signed [63:0] score2,
output signed [63:0] score3,
output signed [63:0] score4

);

// Neuron 1
dense_neuron n1(

.x1(x1), .x2(x2), .x3(x3), .x4(x4),

.w1(1), .w2(2), .w3(1), .w4(3),

.bias(5),

.y(score1)

);

// Neuron 2
dense_neuron n2(

.x1(x1), .x2(x2), .x3(x3), .x4(x4),

.w1(2), .w2(1), .w3(2), .w4(1),

.bias(3),

.y(score2)

);

// Neuron 3
dense_neuron n3(

.x1(x1), .x2(x2), .x3(x3), .x4(x4),

.w1(1), .w2(1), .w3(3), .w4(2),

.bias(4),

.y(score3)

);

// Neuron 4
dense_neuron n4(

.x1(x1), .x2(x2), .x3(x3), .x4(x4),

.w1(3), .w2(1), .w3(1), .w4(2),

.bias(2),

.y(score4)

);

endmodule