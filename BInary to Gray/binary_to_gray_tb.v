// Code your testbench here
// or browse Examples

module binary_to_gray_tb();
  reg [3:0] Binary, Gray;
  
  binary_to_gray dut(Binary, Gray);
  
  initial begin 
  $dumpfile("dump.vcd");
  $dumpvars();
  
    $monitor("Binary = %0000b ---> Gray = %0000b", Binary, Gray);
  
  Binary = 4'b0000; #10;
  Binary = 4'b0001; #10;
  Binary = 4'b0010; #10;
  Binary = 4'b0011; #10;
  Binary = 4'b0100; #10;
  Binary = 4'b0101; #10;
  Binary = 4'b0110; #10;
  Binary = 4'b0111; #10;
  Binary = 4'b1000; #10;
  Binary = 4'b1001; #10;
  Binary = 4'b1010; #10;
  Binary = 4'b1011; #10;
  Binary = 4'b1100; #10;
  Binary = 4'b1101; #10;
  Binary = 4'b1110; #10;
  Binary = 4'b1111; #10;
  end
endmodule
        
