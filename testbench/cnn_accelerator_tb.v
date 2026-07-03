`timescale 1ns/1ps

module cnn_accelerator_tb;

reg [7:0] p1;
reg [7:0] p2;
reg [7:0] p3;
reg [7:0] p4;
reg [7:0] p5;
reg [7:0] p6;
reg [7:0] p7;
reg [7:0] p8;
reg [7:0] p9;

wire [31:0] cnn_out;

cnn_accelerator uut(

.p1(p1),
.p2(p2),
.p3(p3),
.p4(p4),
.p5(p5),
.p6(p6),
.p7(p7),
.p8(p8),
.p9(p9),

.cnn_out(cnn_out)

);

initial begin

    // 3x3 Input Image

    p1 = 1;
    p2 = 2;
    p3 = 3;

    p4 = 4;
    p5 = 5;
    p6 = 6;

    p7 = 7;
    p8 = 8;
    p9 = 9;

    #20;

    $finish;

end

endmodule