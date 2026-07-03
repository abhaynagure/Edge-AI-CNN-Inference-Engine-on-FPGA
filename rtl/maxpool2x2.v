module maxpool2x2(

input [31:0] a,
input [31:0] b,
input [31:0] c,
input [31:0] d,

output [31:0] y

);

wire [31:0] max1;
wire [31:0] max2;

assign max1 = (a>b) ? a : b;
assign max2 = (c>d) ? c : d;

assign y = (max1>max2) ? max1 : max2;

endmodule