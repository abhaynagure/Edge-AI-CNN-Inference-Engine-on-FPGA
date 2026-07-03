`timescale 1ns/1ps

module dense_layer_tb;

reg signed [31:0] x1,x2,x3,x4;

wire signed [63:0] score1;
wire signed [63:0] score2;
wire signed [63:0] score3;
wire signed [63:0] score4;

dense_layer uut(

.x1(x1),
.x2(x2),
.x3(x3),
.x4(x4),

.score1(score1),
.score2(score2),
.score3(score3),
.score4(score4)

);

initial begin

x1 = 35;
x2 = 22;
x3 = 18;
x4 = 40;

#20;

$finish;

end

endmodule