// Code your design here
module mux2to1(input sel, in0, in1,
               output y);
  
  assign y = sel ? in1 : in0;
  
endmodule
               
