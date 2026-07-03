`timescale 1ns/1ps

module weight_memory_tb;

reg [3:0] addr;

wire signed [7:0] weight;

weight_memory uut(

.addr(addr),

.weight(weight)

);

initial begin

addr=0; #10;
addr=1; #10;
addr=2; #10;
addr=3; #10;
addr=4; #10;
addr=5; #10;
addr=6; #10;
addr=7; #10;
addr=8; #10;

$finish;

end

endmodule