`timescale 1ns / 1ps
module reverser(input [7:0]i,
           output  [7:0]out);
  assign out={i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7]};
endmodule
