`timescale 1ns/1ps

module multi_kernel_relu_tb;

reg signed [31:0] fm1,fm2,fm3,fm4;

wire signed [31:0] rfm1,rfm2,rfm3,rfm4;

multi_kernel_relu uut(

.fm1(fm1),
.fm2(fm2),
.fm3(fm3),
.fm4(fm4),

.rfm1(rfm1),
.rfm2(rfm2),
.rfm3(rfm3),
.rfm4(rfm4)

);

initial begin

fm1 = 25;
fm2 = -10;
fm3 = 30;
fm4 = -15;

#20;

$finish;

end

endmodule