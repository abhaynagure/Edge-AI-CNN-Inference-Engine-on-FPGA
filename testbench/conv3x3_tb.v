`timescale 1ns/1ps

module conv3x3_tb;

reg [7:0] p1,p2,p3;
reg [7:0] p4,p5,p6;
reg [7:0] p7,p8,p9;

reg [7:0] w1,w2,w3;
reg [7:0] w4,w5,w6;
reg [7:0] w7,w8,w9;

wire [31:0] y;

conv3x3 uut(

.p1(p1), .p2(p2), .p3(p3),
.p4(p4), .p5(p5), .p6(p6),
.p7(p7), .p8(p8), .p9(p9),

.w1(w1), .w2(w2), .w3(w3),
.w4(w4), .w5(w5), .w6(w6),
.w7(w7), .w8(w8), .w9(w9),

.y(y)

);

initial begin

// Image Window
p1=1; p2=2; p3=3;
p4=4; p5=5; p6=6;
p7=7; p8=8; p9=9;

// CNN Kernel
w1=1; w2=0; w3=1;
w4=0; w5=1; w6=0;
w7=1; w8=0; w9=1;

#20;

$finish;

end

endmodule