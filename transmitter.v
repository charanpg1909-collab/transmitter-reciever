`timescale 1ns / 1ps
module transmitter(input clk,res,
output [7:0]tx_data );

wire [6:0]count;
wire [7:0] original_data;
wire [7:0] rev_data;

counter c1(.clk(clk),
.res(res),.count(count));

assign original_data=count;

reverser r1(.i(original_data),
.out(rev_data));

assign tx_data=(count>=50)?rev_data:original_data;
endmodule
