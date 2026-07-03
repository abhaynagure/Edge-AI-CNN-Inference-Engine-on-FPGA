module kernel_memory(

output [7:0] w1,
output [7:0] w2,
output [7:0] w3,
output [7:0] w4,
output [7:0] w5,
output [7:0] w6,
output [7:0] w7,
output [7:0] w8,
output [7:0] w9

);

// Memory Array

reg [7:0] memory [0:8];

// Read memory file

initial begin
    $readmemb("weights.mem", memory);
end

// Connect outputs

assign w1 = memory[0];
assign w2 = memory[1];
assign w3 = memory[2];

assign w4 = memory[3];
assign w5 = memory[4];
assign w6 = memory[5];

assign w7 = memory[6];
assign w8 = memory[7];
assign w9 = memory[8];

endmodule