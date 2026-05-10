module counter(input clk,res,
output reg [6:0] count );
always@(posedge clk or posedge res)
begin
if(res)
count<=0;
else if(count == 100)
        count <= 0;
else
count<=count+1;
end 
endmodule
