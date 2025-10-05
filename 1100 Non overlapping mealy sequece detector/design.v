// Code your design here  **Mealy Sequence Detector**
// x --> input,    z --> output

module sequence_detector_1100( input bit clk, rst, x,
                               output reg z );
  parameter A = 2'b00;
  parameter B = 2'b01;
  parameter C = 2'b10;
  parameter D = 2'b11;
  
  reg detect;
  
  reg [1:0] state, next_state;
  always @(posedge clk or posedge rst) begin
    if(rst) begin 
      state <= A;
     // $display("State = %b", state);
    end
    else state <= next_state;
    //$display("State = %b", state);
  end
 
  always @(*) begin
   detect = 1'b0;
    case(state)
      A: begin
           if(x)      next_state = B; 
           else       next_state = A;  
         end
      B: begin
           if(x)      next_state = C;
           else       next_state = A;
         end
      C: begin
           if(x)      next_state = B;
           else       next_state = D;
         end
      D: begin
           if(x)      next_state = B; 
           else   
             begin
               next_state = D;
               detect = 2'b1;
             end
         end
      default: next_state = A;
    endcase
   
  end
  
  
  always @(posedge clk or posedge rst) begin
  if (rst) begin
    state <= A;
    z <= 1'b0;
  end else begin
    state <= next_state;
    z <= detect;   // z will be 1 for exactly one clock when detect==1
  end
end
 //  assign z = (state == D) && (x == 0)? 1:0;
endmodule
  
  
