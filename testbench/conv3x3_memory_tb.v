`timescale 1ns/1ps

module conv3x3_memory_tb;

reg [7:0] p1,p2,p3,p4,p5,p6,p7,p8,p9;

wire [31:0] y;

conv3x3_memory uut(

.p1(p1),
.p2(p2),
.p3(p3),

.p4(p4),
.p5(p5),
.p6(p6),

.p7(p7),
.p8(p8),
.p9(p9),

.y(y)

);

initial begin

p1=1;
p2=2;
p3=3;

p4=4;
p5=5;
p6=6;

p7=7;
p8=8;
p9=9;

#20;

$finish;

end

endmodule