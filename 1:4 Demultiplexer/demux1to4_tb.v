// Code your testbench here
// or browse Examples
module demux1to4_tb;
 
  reg [1:0] Sel;
  reg Inp;
  wire [3:0] Dout;
  
  demux1to4 demux(Sel, Inp, Dout);
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars();
    
    $monitor("Sel: {%b}, Inp: %b, Dout: {%b}", Sel, Inp, Dout);
    
  /*  Inp = 1;
    repeat(5) begin
      Sel = $random(); #5;
    end
    */
    
    Sel=2'b00; Inp=0; #1;
    Sel=2'b00; Inp=1; #1;
    Sel=2'b01; Inp=0; #1;
    Sel=2'b01; Inp=1; #1;
    Sel=2'b10; Inp=0; #1;
    Sel=2'b10; Inp=1; #1;
    Sel=2'b11; Inp=0; #1;
    Sel=2'b11; Inp=1; #1;
  end
endmodule
    
