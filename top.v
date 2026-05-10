`timescale 1ns / 1ps

module top(input clk,res,output [7:0] final_output
    );
wire [7:0] connect;

transmitter dut(.clk(clk),
.res(res),.tx_data(connect));

reciever lut(.clk(clk),
.res(res),.rx_data(connect),.data_out(final_output));


endmodule
