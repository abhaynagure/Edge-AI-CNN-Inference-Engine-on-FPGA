module dense_neuron(

input signed [31:0] x1,
input signed [31:0] x2,
input signed [31:0] x3,
input signed [31:0] x4,

input signed [31:0] w1,
input signed [31:0] w2,
input signed [31:0] w3,
input signed [31:0] w4,

input signed [31:0] bias,

output signed [63:0] y

);

assign y =
(x1*w1)+
(x2*w2)+
(x3*w3)+
(x4*w4)+
bias;

endmodule