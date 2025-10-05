// Code your design here
module dff (   input d,
               input clk,
               input rst,
               output reg q,
               output qn);
   always @ (posedge clk or negedge rst)
      if (!rst)
         q <= 0;
      else
         q <= d;

   assign qn = ~q;
endmodule

module ripple ( input clk,
                input rst,
                output [3:0] out);
   wire  q0;
   wire  qn0;
   wire  q1;
   wire  qn1;
   wire  q2;
   wire  qn2;
   wire  q3;
   wire  qn3;

   dff   dff0 ( .d (qn0),
                .clk (clk),
                .rst (rst),
                .q (q0),
                .qn (qn0));

   dff   dff1 ( .d (qn1),
                .clk (q0),
                .rst (rst),
                .q (q1),
                .qn (qn1));

   dff   dff2 ( .d (qn2),
                .clk (q1),
                .rst (rst),
                .q (q2),
                .qn (qn2));

   dff   dff3 ( .d (qn3),
                .clk (q2),
                .rst (rst),
                .q (q3),
                .qn (qn3));

   assign out = {qn3, qn2, qn1, qn0};

endmodule
