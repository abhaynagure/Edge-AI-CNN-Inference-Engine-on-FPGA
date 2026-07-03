`timescale 1ns/1ps

module mac_tb;

reg clk;
reg rst;
reg [7:0] a;
reg [7:0] b;

wire [31:0] y;

mac uut(
    .clk(clk),
    .rst(rst),
    .a(a),
    .b(b),
    .y(y)
);

always #5 clk = ~clk;

initial begin

    clk = 0;
    rst = 1;

    #10;
    rst = 0;

    a = 4;
    b = 5;

    #10;

    a = 7;
    b = 3;

    #10;

    a = 2;
    b = 4;

    #10;

    $finish;

end

endmodule