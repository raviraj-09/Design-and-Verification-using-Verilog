// Code your testbench here
// or browse Examples
module  seq_detector_1010_TB;
  reg clk, rst_n, x;
  wire z;
  
  seq_detector_1010 sd(clk, rst_n, x, z);
  initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    x = 0;
    #1 rst_n = 0;
    #2 rst_n = 1;
    
    #3 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #10;
    $finish;
  end
  
  initial begin
   
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule
