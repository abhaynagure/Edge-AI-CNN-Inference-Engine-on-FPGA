`timescale 1ns/1ps

module feature_map_generator_tb;

reg [7:0] p1,p2,p3,p4,p5;
reg [7:0] p6,p7,p8,p9,p10;
reg [7:0] p11,p12,p13,p14,p15;
reg [7:0] p16,p17,p18,p19,p20;
reg [7:0] p21,p22,p23,p24,p25;

wire [31:0] fm1,fm2,fm3;
wire [31:0] fm4,fm5,fm6;
wire [31:0] fm7,fm8,fm9;

feature_map_generator uut(

.p1(p1), .p2(p2), .p3(p3), .p4(p4), .p5(p5),
.p6(p6), .p7(p7), .p8(p8), .p9(p9), .p10(p10),
.p11(p11), .p12(p12), .p13(p13), .p14(p14), .p15(p15),
.p16(p16), .p17(p17), .p18(p18), .p19(p19), .p20(p20),
.p21(p21), .p22(p22), .p23(p23), .p24(p24), .p25(p25),

.fm1(fm1), .fm2(fm2), .fm3(fm3),
.fm4(fm4), .fm5(fm5), .fm6(fm6),
.fm7(fm7), .fm8(fm8), .fm9(fm9)

);

initial begin

    p1=1;  p2=2;  p3=3;  p4=4;  p5=5;
    p6=6;  p7=7;  p8=8;  p9=9;  p10=1;
    p11=2; p12=3; p13=4; p14=5; p15=6;
    p16=7; p17=8; p18=9; p19=1; p20=2;
    p21=3; p22=4; p23=5; p24=6; p25=7;

    #20;

    $finish;

end

endmodule