`timescale 1ns/1ps

module flatten_tb;

reg signed [31:0] a,b,c,d;

wire signed [31:0] x1,x2,x3,x4;

flatten uut(

.a(a),
.b(b),
.c(c),
.d(d),

.x1(x1),
.x2(x2),
.x3(x3),
.x4(x4)

);

initial begin

    a = 35;
    b = 22;
    c = 18;
    d = 40;

    #20;

    $finish;

end

endmodule