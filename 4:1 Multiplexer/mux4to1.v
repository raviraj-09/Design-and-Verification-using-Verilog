// Code your design here

module mux4to1 (input [1:0] sel, 
                input in0, in1, in2, in3,
                output reg y);
  
  always @(*)
    begin
      case(sel)
        2'h0 : y = in0;
        2'h1 : y = in1;
        2'h2 : y = in2;
        2'h3 : y = in3;
        default :  $display("Invalid sel input");
      endcase
    end
  
endmodule
