`timescale 1ns/1ps

module argmax_classifier_tb;

reg signed [63:0] score1;
reg signed [63:0] score2;
reg signed [63:0] score3;
reg signed [63:0] score4;

wire [1:0] predicted_class;

argmax_classifier uut(

.score1(score1),
.score2(score2),
.score3(score3),
.score4(score4),

.predicted_class(predicted_class)

);

initial begin

score1 = 222;
score2 = 171;
score3 = 195;
score4 = 227;

#20;

$finish;

end

endmodule