`timescale 1ns/1ps

module feature_map_pool_tb;

reg signed [31:0] fm1,fm2,fm3;
reg signed [31:0] fm4,fm5,fm6;
reg signed [31:0] fm7,fm8,fm9;

wire signed [31:0] pool1,pool2,pool3,pool4;

feature_map_pool uut(

.fm1(fm1),
.fm2(fm2),
.fm3(fm3),

.fm4(fm4),
.fm5(fm5),
.fm6(fm6),

.fm7(fm7),
.fm8(fm8),
.fm9(fm9),

.pool1(pool1),
.pool2(pool2),
.pool3(pool3),
.pool4(pool4)

);

initial begin

fm1 = 17;
fm2 = 22;
fm3 = 30;

fm4 = 18;
fm5 = 35;
fm6 = 27;

fm7 = 25;
fm8 = 19;
fm9 = 40;

#20;

$finish;

end

endmodule