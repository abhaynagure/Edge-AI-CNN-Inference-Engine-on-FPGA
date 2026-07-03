module weight_controller(

input clk,
input reset,

output reg [3:0] addr

);

always @(posedge clk or posedge reset)
begin

    if(reset)
        addr <= 4'd0;

    else if(addr == 4'd8)
        addr <= 4'd0;

    else
        addr <= addr + 1;

end

endmodule