`timescale 1ns/1ps

module dense_neuron_tb;

reg signed [31:0] x1,x2,x3,x4;
reg signed [31:0] w1,w2,w3,w4;
reg signed [31:0] bias;

wire signed [63:0] y;

dense_neuron uut(

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

    // Feature Vector
    x1 = 35;
    x2 = 22;
    x3 = 18;
    x4 = 40;

    // Weights
    w1 = 1;
    w2 = 2;
    w3 = 1;
    w4 = 3;

    // Bias
    bias = 5;

    #20;

    $finish;

end

endmodule