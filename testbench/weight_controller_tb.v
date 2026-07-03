`timescale 1ns/1ps

module weight_controller_tb;

reg clk;
reg reset;

wire [3:0] addr;

weight_controller uut(

.clk(clk),
.reset(reset),
.addr(addr)

);

always #5 clk = ~clk;

initial
begin

clk = 0;
reset = 1;

#10;

reset = 0;

#100;

$finish;

end

endmodule