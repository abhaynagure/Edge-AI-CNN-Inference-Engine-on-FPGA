module weight_memory(

input [3:0] addr,

output reg signed [7:0] weight

);

always @(*) begin

    case(addr)

        4'd0: weight = 8'd1;
        4'd1: weight = 8'd0;
        4'd2: weight = 8'd1;

        4'd3: weight = 8'd0;
        4'd4: weight = 8'd1;
        4'd5: weight = 8'd0;

        4'd6: weight = 8'd1;
        4'd7: weight = 8'd0;
        4'd8: weight = 8'd1;

        default: weight = 8'd0;

    endcase

end

endmodule