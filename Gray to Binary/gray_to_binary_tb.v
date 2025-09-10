// Code your testbench here
// or browse Examples
module gray_to_binary_tb();
  reg [3:0] Gray;
  wire [3:0] Binary;
  
  gray_to_binary dut(Gray, Binary);
  
  initial begin
    
    $monitor("Gray = %b  ---> Binary = %b", Gray, Binary);
    
    Gray = 4'b0000; #10;
    Gray = 4'b0001; #10;
    Gray = 4'b0010; #10;
    Gray = 4'b0011; #10;
    Gray = 4'b0100; #10;
    Gray = 4'b0101; #10;
    Gray = 4'b0110; #10;
    Gray = 4'b0111; #10;
    Gray = 4'b1000; #10;
    Gray = 4'b1001; #10;
    Gray = 4'b1010; #10;
    Gray = 4'b1011; #10;
    Gray = 4'b1100; #10;
    Gray = 4'b1101; #10;
    Gray = 4'b1110; #10;
    Gray = 4'b1111; #10;
    
  end
endmodule
