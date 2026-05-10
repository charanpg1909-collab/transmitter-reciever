`timescale 1ns / 1ps
module reciever(input clk,res,[7:0]rx_data,
output [7:0]data_out);
wire [6:0] count;
wire [7:0] rev_data;

counter c2(.clk(clk),
.res(res),.count(count));

reverser r2(.i(rx_data),
.out(rev_data));

assign data_out=(count>=50)?rev_data:rx_data;

endmodule
