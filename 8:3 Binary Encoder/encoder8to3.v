// Code your design here
module encoder8to3( input [7:0] data_in,
                   output [2:0] data_out);
  
  assign data_out[0] = data_in[1] | data_in[3] | data_in[5] | data_in[7];
  assign data_out[1] = data_in[2] | data_in[3] | data_in[6] | data_in[7];
  assign data_out[2] = data_in[4] | data_in[5] | data_in[6] | data_in[7];
  
endmodule
                   
