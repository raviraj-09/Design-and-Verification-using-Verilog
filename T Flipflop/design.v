// Code your design here
module T_flipflop( input t, 
                   input clk, rst,
                  output reg q, q_bar);
  
  always@(posedge clk )
    begin
      if(!rst)
        q <= 0;
      else
        begin
         /* if (t == 1)
             q <= ~q;
          else
             q <= q;
             */
          q <= (t?~q:q);
        end
    end 
  
  assign q_bar = ~q;
  
endmodule
