// Code your testbench here
// or browse Examples
module JK_flipflop_tb;
  reg J,K;
  reg Clk, Rst;
  wire Q, Q_bar;
  
  JK_flipflop JKFF(J, K, Clk, Rst, Q, Q_bar);
  
  always #2 Clk = ~Clk;
  
  initial begin
    Clk = 0; Rst = 0;
    $display("[%2t] Rst: %b --> Q: %b, Q_bar: %b", $realtime, Rst, Q, Q_bar);
    
    #1 Rst = 1;
    $display("[%2t] Rst: %b --> Q: %b, Q_bar: %b", $realtime, Rst, Q, Q_bar);
    
    $monitor("[%2t] J: %b, K: %b  --> Q: %b, Q_bar: %b", $realtime, J, K, Q, Q_bar);
    
    J = 0; K = 0; #4;
    J = 0; K = 1; #4;
    J = 1; K = 0; #4;
    J = 1; K = 1; #4;
    J = 1; K = 1; #4;
    
    #10 $finish();
    
   
  end
  initial begin
     $dumpfile("JKFF.vcd");
    $dumpvars();
  end
  
endmodule
    
    
