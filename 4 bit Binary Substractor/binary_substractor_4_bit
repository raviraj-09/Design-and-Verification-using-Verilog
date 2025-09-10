// Code your design here
// Code your design here

module full_adder(input a, b, carryin, 
                  output sum, carryout);
  
  assign sum = a ^ b ^ carryin;
  
  assign carryout = ((a & b) | (carryin & (a ^ b)));
  
endmodule

module binary_substractor_4_bit(input [3:0] a,
                    input [3:0] b,
                    input carryin,
                    output [3:0] sum,
                    output carryout);
  wire temp1, temp2, temp3;
  
  full_adder FA1(a[0], ~b[0], 1'b1 ^ carryin, sum[0], temp1);
  full_adder FA2(a[1], ~b[1], temp1,   sum[1], temp2);
  full_adder FA3(a[2], ~b[2], temp2,   sum[2], temp3);
  full_adder FA4(a[3], ~b[3], temp3,   sum[3], carryout);
  
endmodule
              
