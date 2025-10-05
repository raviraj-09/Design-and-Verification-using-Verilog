// Code your testbench here
// or browse Examples
module d_flipflop_tb;
   reg clk, rst;
   reg d;
   wire q, q_bar;
  
  d_flipflop dff(clk, rst, d, q, q_bar);
  
  always #2 clk = ~clk;
    
  initial begin
    $monitor("Time: %2t --> CLK: %b, RST: %b, D: %b, Q: %b, Q_bar: %b", $realtime, clk, rst, d, q, q_bar );
    clk = 0; 
    rst = 0;
    d = 0;
    
    #3 rst  = 1;
    
    repeat(6)
      begin
        d = $urandom_range(0,1);
        #3;
      end
    
    rst = 0; #3;
    rst = 1;
    
    repeat(6)
      begin
        d = $urandom_range(0,1);
        #3;
      end
   $finish();
  end
  
  initial begin
    $dumpfile("d_ff.vcd");
    $dumpvars();
  end
endmodule
