// Code your design here
module encoder_decimaltoBCD( input [9:0] decimal,
                    output [3:0] bcd);
  
  assign bcd[0] = decimal[1] | decimal[3] | decimal[5] | decimal[7] | decimal[9];
  assign bcd[1] = decimal[2] | decimal[3] | decimal[6] | decimal[7];
  assign bcd[2] = decimal[4] | decimal[5] | decimal[6] | decimal[7];
  assign bcd[3] = decimal[8] | decimal[9];
  
endmodule
