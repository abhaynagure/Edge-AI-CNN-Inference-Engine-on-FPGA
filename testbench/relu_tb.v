`timescale 1ns/1ps

module relu_tb;

reg signed [31:0] x;
wire [31:0] y;

relu uut(
    .x(x),
    .y(y)
);

initial begin

    x = 25;
    #10;

    x = -12;
    #10;

    x = 7;
    #10;

    x = -100;
    #10;

    $finish;

end

endmodule