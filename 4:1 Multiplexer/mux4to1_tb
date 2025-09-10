// Code your testbench here
// or browse Examples
module mux4to1_tb;
  reg [1:0] Sel;
  reg In0, In1, In2, In3;
  wire Y;
  
  mux4to1 mux(Sel, In0, In1, In2, In3, Y);
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars();
    
    $monitor("Sel: %b, In0: %b, In1: %b, In2: %b, In3: %b --> Y: %b.", Sel, In0, In1, In2, In3, Y );
    
    {In3, In2, In1, In0} = 4'b0110;
    repeat(5) begin
    Sel = $random;
    #10;
    end
    {In3, In2, In1, In0} = 4'b1010;
    repeat(5) begin
    Sel = $random;
    #10;
    end
    {In3, In2, In1, In0} = 4'b1110;
    repeat(5) begin
    Sel = $random;
    #10;
    end
    {In3, In2, In1, In0} = 4'b0011;
    repeat(5) begin
    Sel = $random;
    #10;
    end
  end
endmodule
