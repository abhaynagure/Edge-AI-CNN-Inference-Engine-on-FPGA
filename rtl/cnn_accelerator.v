module cnn_accelerator(

input [7:0] p1,
input [7:0] p2,
input [7:0] p3,
input [7:0] p4,
input [7:0] p5,
input [7:0] p6,
input [7:0] p7,
input [7:0] p8,
input [7:0] p9,

output [31:0] cnn_out

);

wire [31:0] conv_out;
wire [31:0] relu_out;

// Convolution

conv3x3 conv_stage(

.p1(p1),
.p2(p2),
.p3(p3),
.p4(p4),
.p5(p5),
.p6(p6),
.p7(p7),
.p8(p8),
.p9(p9),

.w1(8'd1),
.w2(8'd0),
.w3(8'd1),

.w4(8'd0),
.w5(8'd1),
.w6(8'd0),

.w7(8'd1),
.w8(8'd0),
.w9(8'd1),

.y(conv_out)

);

// ReLU

relu relu_stage(

.x(conv_out),
.y(relu_out)

);

// Pooling

maxpool2x2 pool_stage(

.a(relu_out),
.b(0),
.c(0),
.d(0),

.y(cnn_out)

);

endmodule