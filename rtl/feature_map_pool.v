module feature_map_pool(

input signed [31:0] fm1,
input signed [31:0] fm2,
input signed [31:0] fm3,

input signed [31:0] fm4,
input signed [31:0] fm5,
input signed [31:0] fm6,

input signed [31:0] fm7,
input signed [31:0] fm8,
input signed [31:0] fm9,

output signed [31:0] pool1,
output signed [31:0] pool2,
output signed [31:0] pool3,
output signed [31:0] pool4

);

// Window 1
maxpool2x2 p1(

.a(fm1),
.b(fm2),
.c(fm4),
.d(fm5),

.y(pool1)

);

// Window 2
maxpool2x2 p2(

.a(fm2),
.b(fm3),
.c(fm5),
.d(fm6),

.y(pool2)

);

// Window 3
maxpool2x2 p3(

.a(fm4),
.b(fm5),
.c(fm7),
.d(fm8),

.y(pool3)

);

// Window 4
maxpool2x2 p4(

.a(fm5),
.b(fm6),
.c(fm8),
.d(fm9),

.y(pool4)

);

endmodule