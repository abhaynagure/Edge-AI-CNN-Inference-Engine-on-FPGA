module relu(

input signed [31:0] x,
output [31:0] y

);

assign y = (x > 0) ? x : 0;

endmodule