// Code your testbench here
// or browse Examples

module encoder_decimaltoBCD_tb();
  reg [9:0] Decimal;
  wire[3:0] BCD;
  
  encoder_decimaltoBCD encoder(Decimal, BCD);
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars();
    
  //  $monitor("Decimal: %d  --> BCD: %b", Decimal, BCD);
    
    for(int i=0; i<10; i++) begin
      Decimal = 10'b0;   
      Decimal[i] = 1'b1;
      #10;
      $display("Decimal: %0d  --> BCD: %b", i, BCD); 
    end
  end
endmodule
