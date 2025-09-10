// Code your testbench here
// or browse Examples
module demux1to4_tb;
  reg Sel0, Sel1;
  reg Inp;
  wire Y0,Y1,Y2,Y3;
  
  demux1to4 demux(Sel0, Sel1, Inp, Y0, Y1, Y2, Y3);
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars();
    
    $monitor("Sel0 = %b, Sel1 = %b, Inp = %b --> Y0 = %0b, Y1 = %0b ,Y2 = %0b, Y3 = %0b", Sel0, Sel1, Inp, Y0,Y1,Y2,Y3);
    
    
    Sel0=0; Sel1=0; Inp=0; #10;
    Sel0=0; Sel1=0; Inp=1; #10;
    Sel0=0; Sel1=1; Inp=0; #10;
    Sel0=0; Sel1=1; Inp=1; #10;
    Sel0=1; Sel1=0; Inp=0; #10;
    Sel0=1; Sel1=0; Inp=1; #10;
    Sel0=1; Sel1=1; Inp=0; #10;
    Sel0=1; Sel1=1; Inp=1; #10;
    
  end
endmodule
