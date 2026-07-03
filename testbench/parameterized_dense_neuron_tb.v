`timescale 1ns/1ps

module parameterized_dense_neuron_tb;

parameter DATA_WIDTH = 32;

reg signed [DATA_WIDTH-1:0] x1,x2,x3,x4;
reg signed [DATA_WIDTH-1:0] w1,w2,w3,w4;
reg signed [DATA_WIDTH-1:0] bias;

wire signed [(2*DATA_WIDTH)-1:0] y;

parameterized_dense_neuron
#(

.DATA_WIDTH(DATA_WIDTH)

)

uut(

.x1(x1),
.x2(x2),
.x3(x3),
.x4(x4),

.w1(w1),
.w2(w2),
.w3(w3),
.w4(w4),

.bias(bias),

.y(y)

);

initial begin

x1=35;
x2=35;
x3=35;
x4=40;

w1=1;
w2=2;
w3=1;
w4=3;

bias=5;

#20;

$finish;

end

endmodule