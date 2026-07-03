`timescale 1ns/1ps

module parallel_conv_tb;

reg [7:0] p1,p2,p3;
reg [7:0] p4,p5,p6;
reg [7:0] p7,p8,p9;

wire [31:0] out1;
wire [31:0] out2;
wire [31:0] out3;
wire [31:0] out4;

parallel_conv uut(

.p1(p1),
.p2(p2),
.p3(p3),

.p4(p4),
.p5(p5),
.p6(p6),

.p7(p7),
.p8(p8),
.p9(p9),

.out1(out1),
.out2(out2),
.out3(out3),
.out4(out4)

);

initial begin

    p1 = 1; p2 = 2; p3 = 3;
    p4 = 4; p5 = 5; p6 = 6;
    p7 = 7; p8 = 8; p9 = 9;

    #20;

    $finish;

end

endmodule