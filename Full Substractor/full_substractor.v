// Code your design here
module full_substractor(input a, b, borrowin, 
                        output diff, borrowout);
  
  assign diff = a ^ b ^ borrowin;
  assign borrowout = (~a & b) | ~(a^b) & borrowin; 
endmodule
