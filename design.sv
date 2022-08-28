// Code your design here
`timescale 1ns/1ns
module up_down_counter(input clk, input reset, input down, input up, output reg[2:0] count);
  
  reg[2:0] val;
  always @(posedge (clk) or posedge(reset))
    begin 
      if(reset) begin
        val = 0;
    
      end else if(up) begin
        if(count ==7) begin
           val = 0;
          
        end else begin
           val += 1;
        end
        
      end else if(down) begin
        if(count ==0) begin
           val = 7;
          
        end else begin
           val -= 1;
        end
        
      end   
      count = val;
   end 
endmodule 
