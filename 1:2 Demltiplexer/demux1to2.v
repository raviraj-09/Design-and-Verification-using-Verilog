// Code your design here
module demux1to2( input i, sel,
                 output y0, y1);
  
  assign {y0, y1} = sel ? {1'b0,i} : {i,1'b0};
  
endmodule
