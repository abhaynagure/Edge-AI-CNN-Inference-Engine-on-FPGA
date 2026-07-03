module conv3x3(

input [7:0] p1,p2,p3,
input [7:0] p4,p5,p6,
input [7:0] p7,p8,p9,

input [7:0] w1,w2,w3,
input [7:0] w4,w5,w6,
input [7:0] w7,w8,w9,

output [31:0] y

);

assign y =
(p1*w1)+(p2*w2)+(p3*w3)+
(p4*w4)+(p5*w5)+(p6*w6)+
(p7*w7)+(p8*w8)+(p9*w9);

endmodule