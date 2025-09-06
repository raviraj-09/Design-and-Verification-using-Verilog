// Code your testbench here
// or browse Examples

module full_adder_tb();
  
  reg A, B, CarryIn;
  wire Sum, CarryOut;
 
  full_adder fa(A, B, CarryIn, Sum, CarryOut);
  
// Generate the waveform dump file
    initial begin
      $dumpfile("full_adder.vcd");
        $dumpvars(0); 
    end
  
// Stimulus generation
  initial begin 
  $monitor("At time %0t: A=%b B=%b, CarryIn=%b, Sum=%b, CarryOut=%b",$time, A, B, CarryIn, Sum, CarryOut);
 // #10;
  A = 0; B = 0; CarryIn = 0;
  #10;
  A = 0; B = 0; CarryIn = 1;
  #10;
  A = 0; B = 1; CarryIn = 0;
  #10;
  A = 0; B = 1; CarryIn = 1;
  #10;
  A = 1; B = 0; CarryIn = 0;
  #10;
  A = 1; B = 0; CarryIn = 1;
  #10;
  A = 1; B = 1; CarryIn = 0;
  #10;
  A = 1; B = 1; CarryIn = 1;
    #10;
  end
endmodule

  
