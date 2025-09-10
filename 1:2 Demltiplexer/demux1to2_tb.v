// Code your testbench here
// or browse Examples

module demux1to2_tb;
  
 reg I, Sel;
 wire Y0, Y1;
  
  demux1to2 demux(I, Sel, Y0, Y1);
  
  initial begin 
    
  $dumpfile("dump.vcd");
  $dumpvars();
  
    $monitor("Input: %b, Sel: %b, --> {Y0, Y1}: {%0b, %0b}",I, Sel, Y0, Y1);
    
  I = 1; Sel = 0; #5;
  I = 1; Sel = 1; #5;
    
//  I = 0; Sel = 0; #5;
//  I = 0; Sel = 1; #5;
  end
endmodule
  
