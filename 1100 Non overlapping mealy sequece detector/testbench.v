// Code your testbench here
// or browse Examples

module seq_detector_1100_TB;
  reg clk, rst, x;
  wire z;
  
  sequence_detector_1100 sd(clk, rst, x, z);
  initial clk = 0;   
  always #2 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
    
  initial begin
   
    #1 rst = 1; x = 0;
	#2 rst = 0;
    
    #3 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 0; 
    #4 x = 1;
    #4 x = 0;
    #10;
    $finish;
  end
  

  
endmodule
