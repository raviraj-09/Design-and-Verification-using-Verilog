// Code your design here
module priority_encoder( input [7:0] data_in,
                        output reg [2:0] data_out);
  
  always@(*)
    begin
      casex (data_in)
        8'b1xxxxxxx: data_out = 3'b111;
      	8'b01xxxxxx: data_out = 3'b110;
      	8'b001xxxxx: data_out = 3'b101;
      	8'b0001xxxx: data_out = 3'b100;
      	8'b00001xxx: data_out = 3'b011;
      	8'b000001xx: data_out = 3'b010;
      	8'b0000001x: data_out = 3'b001;
      	8'b00000001: data_out = 3'b000;
        default: $display("Invalid data received");
      endcase
    end
endmodule

       
        
        
        
