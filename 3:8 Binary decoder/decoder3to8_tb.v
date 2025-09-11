// Code your testbench here
// or browse Examples
module decoder3to8_tb;
  reg [2:0] Data_In;
  reg [7:0] Data_Out;
  
  decoder3to8 decoder(Data_In, Data_Out);
  
  initial begin
    
    $monitor("Data_In: %b  -->> Data_Out: %b", Data_In, Data_Out);
    
    repeat(8) begin
      Data_In = $random();
      #10;
    end
  end
endmodule
