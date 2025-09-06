// Code your testbench here
// or browse Examples

module half_adder_tb();
  
  reg A,B;
  wire Sum, CarryOut;
  
  half_adder ha( A, B, Sum, CarryOut);
  
  // Generate the waveform dump file
    initial begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0); 
    end

 // Apply stimulus to the inputs
  initial begin
    $monitor("At time %0t: A=%b B=%b, Sum=%b, CarryOut=%b",$time, A, B, Sum, CarryOut);
    A = 0; B = 0;
    #10;
    A = 0; B = 1;
    #10;
    A = 1; B = 0;
    #10;
    A = 1; B = 1;
    #10;
    
  end
endmodule
  
