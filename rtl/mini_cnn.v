module mini_cnn(

input [7:0] p1,p2,p3,p4,p5,
input [7:0] p6,p7,p8,p9,p10,
input [7:0] p11,p12,p13,p14,p15,
input [7:0] p16,p17,p18,p19,p20,
input [7:0] p21,p22,p23,p24,p25,

output [1:0] predicted_class

);

//====================
// Feature Maps
//====================

wire signed [31:0] fm1,fm2,fm3,fm4,fm5,fm6,fm7,fm8,fm9;

feature_map_generator fmap(

.p1(p1),.p2(p2),.p3(p3),.p4(p4),.p5(p5),
.p6(p6),.p7(p7),.p8(p8),.p9(p9),.p10(p10),
.p11(p11),.p12(p12),.p13(p13),.p14(p14),.p15(p15),
.p16(p16),.p17(p17),.p18(p18),.p19(p19),.p20(p20),
.p21(p21),.p22(p22),.p23(p23),.p24(p24),.p25(p25),

.fm1(fm1),.fm2(fm2),.fm3(fm3),
.fm4(fm4),.fm5(fm5),.fm6(fm6),
.fm7(fm7),.fm8(fm8),.fm9(fm9)

);

//====================
// ReLU
//====================

wire signed [31:0] rfm1,rfm2,rfm3,rfm4,rfm5,rfm6,rfm7,rfm8,rfm9;

feature_map_relu relu_stage(

.fm1(fm1),.fm2(fm2),.fm3(fm3),
.fm4(fm4),.fm5(fm5),.fm6(fm6),
.fm7(fm7),.fm8(fm8),.fm9(fm9),

.rfm1(rfm1),.rfm2(rfm2),.rfm3(rfm3),
.rfm4(rfm4),.rfm5(rfm5),.rfm6(rfm6),
.rfm7(rfm7),.rfm8(rfm8),.rfm9(rfm9)

);

//====================
// Pool
//====================

wire signed [31:0] pool1,pool2,pool3,pool4;

feature_map_pool pool_stage(

.fm1(rfm1),.fm2(rfm2),.fm3(rfm3),
.fm4(rfm4),.fm5(rfm5),.fm6(rfm6),
.fm7(rfm7),.fm8(rfm8),.fm9(rfm9),

.pool1(pool1),
.pool2(pool2),
.pool3(pool3),
.pool4(pool4)

);

//====================
// Flatten
//====================

wire signed [31:0] x1,x2,x3,x4;

flatten flat(

.pool1(pool1),
.pool2(pool2),
.pool3(pool3),
.pool4(pool4),

.x1(x1),
.x2(x2),
.x3(x3),
.x4(x4)

);

//====================
// Dense
//====================

wire signed [63:0] score1,score2,score3,score4;

dense_layer dense(

.x1(x1),
.x2(x2),
.x3(x3),
.x4(x4),

.score1(score1),
.score2(score2),
.score3(score3),
.score4(score4)

);

//====================
// Classifier
//====================

argmax_classifier classifier(

.score1(score1),
.score2(score2),
.score3(score3),
.score4(score4),

.predicted_class(predicted_class)

);

endmodule