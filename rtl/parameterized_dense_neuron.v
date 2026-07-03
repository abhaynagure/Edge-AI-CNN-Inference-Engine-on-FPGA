module parameterized_dense_neuron #

(

parameter DATA_WIDTH = 32

)

(

input signed [DATA_WIDTH-1:0] x1,
input signed [DATA_WIDTH-1:0] x2,
input signed [DATA_WIDTH-1:0] x3,
input signed [DATA_WIDTH-1:0] x4,

input signed [DATA_WIDTH-1:0] w1,
input signed [DATA_WIDTH-1:0] w2,
input signed [DATA_WIDTH-1:0] w3,
input signed [DATA_WIDTH-1:0] w4,

input signed [DATA_WIDTH-1:0] bias,

output signed [(2*DATA_WIDTH)-1:0] y

);

assign y =

(x1*w1)+
(x2*w2)+
(x3*w3)+
(x4*w4)+
bias;

endmodule