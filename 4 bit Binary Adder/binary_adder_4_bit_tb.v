// Code your testbench here
// or browse Examples

module binary_adder_4_bit_tb();
  
  reg [3:0] A;
  reg [3:0] B;
  reg CarryIn;
  wire [3:0] Sum;
  wire CarryOut;
  
  binary_adder_4_bit dut(A, B, CarryIn, Sum, CarryOut);
  
  initial begin 
  $dumpfile("binary_adder_4_bit.vcd");
  $dumpvars();
  
   // Test cases
    $monitor("At Time %0t: A = %0d, B = %0d, CarryIn = %0b, Sum = %0d, CarryOut = %0b", $time, A, B, CarryIn, Sum, CarryOut);
        A=4'b0000; B=4'b0000; CarryIn=0; #10;
        A=4'b0111; B=4'b0101; CarryIn=0; #10;
        A=4'b1111; B=4'b0001; CarryIn=0; #10;
        A=4'b1110; B=4'b0101; CarryIn=1; #10;
        A=4'b1111; B=4'b1111; CarryIn=1; #10;

//        $finish;
  end
endmodule
