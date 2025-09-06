// Code your design here
module full_adder(input a, b, carryin, 
                  output sum, carryout);
  
  assign sum = a ^ b ^ carryin;
  
  assign carryout = ((a & b) | (carryin & (a ^ b)));
  
endmodule
