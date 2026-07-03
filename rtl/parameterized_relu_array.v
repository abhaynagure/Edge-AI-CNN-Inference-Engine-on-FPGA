module kernel_memory_param#

(

parameter KERNEL_ID = 1

)

(

output reg [7:0] w1,
output reg [7:0] w2,
output reg [7:0] w3,
output reg [7:0] w4,
output reg [7:0] w5,
output reg [7:0] w6,
output reg [7:0] w7,
output reg [7:0] w8,
output reg [7:0] w9

);

always @(*) begin

case(KERNEL_ID)

1: begin

w1=1; w2=0; w3=1;
w4=0; w5=1; w6=0;
w7=1; w8=0; w9=1;

end

2: begin

w1=0; w2=1; w3=0;
w4=1; w5=1; w6=1;
w7=0; w8=1; w9=0;

end

3: begin

w1=1; w2=1; w3=0;
w4=0; w5=1; w6=1;
w7=1; w8=0; w9=1;

end

4: begin

w1=1; w2=0; w3=0;
w4=0; w5=1; w6=0;
w7=0; w8=0; w9=1;

end

default: begin

w1=0; w2=0; w3=0;
w4=0; w5=0; w6=0;
w7=0; w8=0; w9=0;

end

endcase

end

endmodule