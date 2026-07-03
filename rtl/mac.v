module mac(
    input clk,
    input rst,
    input [7:0] a,
    input [7:0] b,
    output reg [31:0] y
);

always @(posedge clk or posedge rst)
begin
    if(rst)
        y <= 32'd0;
    else
        y <= y + (a * b);
end

endmodule