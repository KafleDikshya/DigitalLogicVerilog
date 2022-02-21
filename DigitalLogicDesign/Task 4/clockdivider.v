module counter10bit(rst, clock, c );
   input rst;
   input clock;
   output c ;
   reg [9:0]Q;

   always@(posedge clock, negedge rst)
     if (!rst)
       Q <= 0;
     else
       Q <= Q+1;

   assign c = Q[2];

endmodule