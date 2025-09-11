// Code your testbench here
// or browse Examples
module encoder8to3_tb();
  
  reg [7:0] Data_In;
  wire [2:0] Data_Out;
  
  encoder8to3 encoder(Data_In, Data_Out);
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars();
    
    $monitor("Data_In: %b  --> Data_Out: %b", Data_In, Data_Out);

    Data_In = 8'b00000001; #5;
    Data_In = 8'b00000010; #5;
    Data_In = 8'b00000100; #5;
    Data_In = 8'b00001000; #5;
    Data_In = 8'b00010000; #5;
    Data_In = 8'b00100000; #5;
    Data_In = 8'b01000000; #5;
    Data_In = 8'b10000000; #5;

    
  end
endmodule
