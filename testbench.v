`timescale 1ns / 1ps
module testbench;
reg clk,res;

top cut(.clk(clk),.res(res));
    
 always #5 clk=~clk;
 
 initial begin 
 clk=0;
 res=1;
 #10;
 res=0;
 
 #2000;
 $finish;
 end
endmodule
