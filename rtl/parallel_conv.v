module parallel_conv(

input [7:0] p1,p2,p3,
input [7:0] p4,p5,p6,
input [7:0] p7,p8,p9,

output [31:0] out1,
output [31:0] out2,
output [31:0] out3,
output [31:0] out4

);

// Filter 1
conv3x3 conv1(

.p1(p1), .p2(p2), .p3(p3),
.p4(p4), .p5(p5), .p6(p6),
.p7(p7), .p8(p8), .p9(p9),

.w1(1), .w2(0), .w3(1),
.w4(0), .w5(1), .w6(0),
.w7(1), .w8(0), .w9(1),

.y(out1)

);

// Filter 2
conv3x3 conv2(

.p1(p1), .p2(p2), .p3(p3),
.p4(p4), .p5(p5), .p6(p6),
.p7(p7), .p8(p8), .p9(p9),

.w1(0), .w2(1), .w3(0),
.w4(1), .w5(1), .w6(1),
.w7(0), .w8(1), .w9(0),

.y(out2)

);

// Filter 3
conv3x3 conv3(

.p1(p1), .p2(p2), .p3(p3),
.p4(p4), .p5(p5), .p6(p6),
.p7(p7), .p8(p8), .p9(p9),

.w1(1), .w2(1), .w3(1),
.w4(1), .w5(1), .w6(1),
.w7(1), .w8(1), .w9(1),

.y(out3)

);

// Filter 4
conv3x3 conv4(

.p1(p1), .p2(p2), .p3(p3),
.p4(p4), .p5(p5), .p6(p6),
.p7(p7), .p8(p8), .p9(p9),

.w1(0), .w2(0), .w3(0),
.w4(0), .w5(1), .w6(0),
.w7(0), .w8(0), .w9(0),

.y(out4)

);

endmodule