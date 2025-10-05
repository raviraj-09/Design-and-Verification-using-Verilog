// Code your design here
module d_flipflop( input clk,
                   input rst,
                   input d,
                   output reg q, q_bar);
  
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        q <= 0;
      else
        q <= d;
    end
  
  assign q_bar = ~q;
  
endmodule

  
  
