`timescale 1ns/1ps

module feature_map_relu_tb;

reg signed [31:0] fm1,fm2,fm3;
reg signed [31:0] fm4,fm5,fm6;
reg signed [31:0] fm7,fm8,fm9;

wire signed [31:0] rfm1,rfm2,rfm3;
wire signed [31:0] rfm4,rfm5,rfm6;
wire signed [31:0] rfm7,rfm8,rfm9;

feature_map_relu uut(

.fm1(fm1), .fm2(fm2), .fm3(fm3),
.fm4(fm4), .fm5(fm5), .fm6(fm6),
.fm7(fm7), .fm8(fm8), .fm9(fm9),

.rfm1(rfm1), .rfm2(rfm2), .rfm3(rfm3),
.rfm4(rfm4), .rfm5(rfm5), .rfm6(rfm6),
.rfm7(rfm7), .rfm8(rfm8), .rfm9(rfm9)

);

initial begin

    fm1 = 17;
    fm2 = -8;
    fm3 = 22;

    fm4 = -5;
    fm5 = 35;
    fm6 = -9;

    fm7 = 18;
    fm8 = 24;
    fm9 = -3;

    #20;

    $finish;

end

endmodule