`timescale 1ns/1ps
module traffic_control_tb;

wire [2:0] n_lights,s_lights,e_lights,w_lights;
reg clk,rst_a,x1,x2,x3,x4;

traffic_control DUT (n_lights,s_lights,e_lights,w_lights,clk,rst_a,x1,x2,x3,x4);

initial
 begin
  clk=1'b1;
  forever #5 clk=~clk;
 end
 
initial
 begin
  rst_a=1'b1;
  #15;
  rst_a=1'b0;
  #1000;
  $stop;
 end
 always #30 {x1,x2,x3,x4} = $random;
endmodule