// Code your testbench here
// or browse Examples
module mux2to1_tb();
  reg In0, In1, Sel;
  wire Y;
  
  mux2to1 mux(Sel, In0, In1, Y);
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars();
    
    $monitor("Sel: %b, In0: %b, In1: %b, --> Y: %b", Sel, In0, In1, Y);
    
    In0 = 0; In1 = 1; 
    Sel = 0; #10;
    Sel = 1; #10;
    In0 = 1; In1 = 0; 
    Sel = 0; #10;
    Sel = 1; #10;
    
  end
endmodule
    
    
