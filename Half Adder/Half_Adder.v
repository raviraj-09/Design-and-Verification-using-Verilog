// Code your design here

module half_adder( input a, b, output sum, carryout);
  
  assign sum = a^b;
  assign carryout = a&b;
  
endmodule
