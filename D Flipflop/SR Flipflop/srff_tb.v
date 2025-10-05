// Code your testbench here
// or browse Examples
module SR_flipflop_tb;
  
  reg S, R;
  reg Clk, Rst;
  wire Q, Q_bar;
  
  SR_flipflop SR_ff(S, R, Clk, Rst, Q, Q_bar);
  
  always #2 Clk = ~Clk;
  
  initial begin
    Clk = 0; Rst = 0;
    $display("Reset: %b --> Q: %b, Q_bar: %b",Rst, Q, Q_bar);
    Rst = 1;
    $display("Reset: %b --> Q: %b, Q_bar: %b",Rst, Q, Q_bar);
    
    /*
    drive(2'b00);
    drive(2'b01);
    drive(2'b10);
    drive(2'b11);
    
    #5;
    $finish();
  end
  
  
  task drive(bit[1:0]sr);
    @(posedge Clk);
    {S,R} = sr;
    
    #1 $display("S: %b, R: %b --> Q: %b, Q_bar: %b",S, R, Q, Q_bar);
    
  endtask
  */
    
    $monitor("S: %b, R: %b --> Q: %b, Q_bar: %b",S, R, Q, Q_bar);
    
    S = 0; R = 0; #5;
    S = 0; R = 1; #5;
    S = 1; R = 0; #5;
    S = 1; R = 1; #5;
    $finish();
  end
    
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule
