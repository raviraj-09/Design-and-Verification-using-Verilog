// Code your testbench here
// or browse Examples
module T_flipflop_tb;
  reg T;
  reg Clk, Rst;
  wire Q, Q_bar;
  
  T_flipflop TFF(T, Clk, Rst, Q, Q_bar);
  
  always #2 Clk = ~Clk;
  
   initial begin
    $dumpfile("TFF.vcd");
    $dumpvars(1);
  end
  
  initial begin
    
    Clk = 0; Rst = 0;
    $display("[%2t] Rst: %b --> Q: %b, Q_bar: %b", $realtime, Rst, Q, Q_bar);
    
    #3 Rst = 1;
    $display("[%2t] Rst: %b --> Q: %b, Q_bar: %b", $realtime, Rst, Q, Q_bar);
    
    
    $monitor("[%2t] T: %b --> Q: %b, Q_bar: %b", $realtime, T, Q, Q_bar);
    
    T = 0; #3;
    T = 1; #3;
    T = 1; #3;
    T = 1; #3;
    T = 0; #3;
    T = 0; #3;
    T = 1; #3;
    T = 0; #3;
    
    $finish();
    /*
    
    drive(0); // Same as previous output
    drive(1); // Toggles previous output
    drive(1); // Toggles previous output
    drive(1); // Toggles previous output
    drive(0); // Same as previous output
    #5;
    $finish;
    
  end
  
  task drive(bit ip);
    @(posedge Clk);
    T = ip;
    #1 $display("t=%b --> q=%b, q_bar=%b",T, Q, Q_bar);
  endtask
  */
  end
endmodule
