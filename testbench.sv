// Code your testbench here
// or browse Examples
`timescale 1ns/1ns

module counter_tb();
   reg tb_up;
   reg tb_down;
   reg tb_reset;
   reg tb_clk;
   wire [2:0] tb_count;
  
  up_down_counter c(.up(tb_up), .down(tb_down), .reset(tb_reset), .clk(tb_clk), .count(tb_count));
  
   integer i;
   initial tb_clk = 0;
   always 
    #10 tb_clk = ~tb_clk;
   
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,counter_tb); 
    
    tb_up =0;
    tb_reset =1;
    #20
    $display("UP = %d,DOWN = %d, RESET = %d, COUNT = %d", tb_up, tb_down, tb_reset, tb_count);
    
    
      tb_up = 1;
      tb_down = 0;
      tb_reset = 0;
      
       #20
       $display("UP = %d,DOWN = %d, RESET = %d, COUNT = %d",tb_up, tb_down, tb_reset, tb_count);
    
      tb_up = 1;
      tb_down = 0;
      tb_reset = 0;
      
       #20
       $display("UP = %d,DOWN = %d, RESET = %d, COUNT = %d",tb_up, tb_down, tb_reset, tb_count);

      tb_up = 0;
      tb_down = 1;
      tb_reset = 0;
      
       #20
       $display("UP = %d,DOWN = %d, RESET = %d, COUNT = %d",tb_up, tb_down, tb_reset, tb_count);
    
      tb_up = 0;
      tb_down = 1;
      tb_reset = 0;
      
       #20
       $display("UP = %d,DOWN = %d, RESET = %d, COUNT = %d",tb_up, tb_down, tb_reset, tb_count);
 
            
       tb_up = 0;
       tb_down = 0;
       tb_reset = 1;

        #20
       $display("UP = %d,DOWN = %d, RESET = %d, COUNT = %d",tb_up, tb_down, tb_reset, tb_count);
    

                
       tb_up = 0;
       tb_down = 0;
       tb_reset = 0;
                
       $finish;
     end
     
     
endmodule