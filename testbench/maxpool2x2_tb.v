`timescale 1ns/1ps

module maxpool2x2_tb;

reg [31:0] a;
reg [31:0] b;
reg [31:0] c;
reg [31:0] d;

wire [31:0] y;

maxpool2x2 uut(

.a(a),
.b(b),
.c(c),
.d(d),
.y(y)

);

initial begin

    // Test 1
    a = 8;
    b = 2;
    c = 5;
    d = 6;
    #10;

    // Test 2
    a = 15;
    b = 21;
    c = 7;
    d = 3;
    #10;

    // Test 3
    a = 4;
    b = 9;
    c = 12;
    d = 11;
    #10;

    $finish;

end

endmodule