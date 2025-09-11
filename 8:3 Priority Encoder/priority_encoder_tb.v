// Code your testbench here
// or browse Examples
module priority_encoder_tb();
 
  reg [7:0] Data_In;
  wire [2:0] Data_Out;
  
  priority_encoder pri_enc(Data_In, Data_Out);
  
  initial begin
    $monitor("Data_In = %b -> Data_Out = %0b", Data_In, Data_Out);
    repeat(5) begin
      Data_In=$random; #1;
    end
  end
endmodule
