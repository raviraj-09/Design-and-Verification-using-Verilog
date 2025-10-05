// Code your testbench here
// or browse Examples

module seq_detector_1010_TB;
  reg clk, rst_n, x;
  wire z;
  
  seq_detector_1010 sd(clk, rst_n, x, z);
  initial clk = 0;   
  always #2 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
    
  initial begin
   
    #1 rst_n = 0;
     x = 0;
    #2 rst_n = 1;
    
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #10;
    $finish;
  end
  
  initial begin
    $monitor("[%2t] x = %b  --> z = %b", $realtime, x, z);
  end
  
  
endmodule
