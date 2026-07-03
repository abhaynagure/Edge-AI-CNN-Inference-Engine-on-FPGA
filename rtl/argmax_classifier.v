module argmax_classifier(

input signed [63:0] score1,
input signed [63:0] score2,
input signed [63:0] score3,
input signed [63:0] score4,

output reg [1:0] predicted_class

);

always @(*) begin

    predicted_class = 2'd0;

    if(score2 > score1)
        predicted_class = 2'd1;

    if((score3 > score1) && (score3 > score2))
        predicted_class = 2'd2;

    if((score4 > score1) &&
       (score4 > score2) &&
       (score4 > score3))
        predicted_class = 2'd3;

end

endmodule