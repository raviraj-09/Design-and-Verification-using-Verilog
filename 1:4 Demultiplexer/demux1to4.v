// Code your design here
module demux1to4( input [1:0] sel,
  				  input inp, 
  				  output reg [3:0] dout);
  
  always@(*) 
    begin
      if(inp && sel == 2'b00)
        dout = 4'b0001;
      else if(inp &&  sel == 2'b01)
        dout = 4'b0010;
      else if(inp &&  sel == 2'b10)
        dout = 4'b0100;
      else if(inp && sel == 2'b11)
        dout = 4'b1000;
      else 
        dout = 4'b0000;
    end
endmodule

