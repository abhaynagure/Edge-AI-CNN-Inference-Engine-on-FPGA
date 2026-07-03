module conv3x3_memory(

input [7:0] p1,p2,p3,
input [7:0] p4,p5,p6,
input [7:0] p7,p8,p9,

output [31:0] y

);

// Wires from kernel memory

wire [7:0] w1,w2,w3,w4,w5,w6,w7,w8,w9;

// Kernel Memory

kernel_memory km(

.w1(w1),
.w2(w2),
.w3(w3),
.w4(w4),
.w5(w5),
.w6(w6),
.w7(w7),
.w8(w8),
.w9(w9)

);

// Convolution

conv3x3 conv(

.p1(p1),
.p2(p2),
.p3(p3),

.p4(p4),
.p5(p5),
.p6(p6),

.p7(p7),
.p8(p8),
.p9(p9),

.w1(w1),
.w2(w2),
.w3(w3),

.w4(w4),
.w5(w5),
.w6(w6),

.w7(w7),
.w8(w8),
.w9(w9),

.y(y)

);

endmodule