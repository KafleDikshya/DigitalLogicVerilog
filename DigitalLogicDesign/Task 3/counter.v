 // 8-bit counter with clear and count enable controls

module counter8bit(cntEn, clr, R, reset, clock, Q);

 input cntEn;
 input clr;
 input [7:0]R;
 input reset;
 input clock; 

 output reg [7:0]Q;
 
 always@(posedge clock, negedge reset)
   if(!reset)
     Q <= 8'b00000000;
   else if(clr)
     Q <= R;
   else if(cntEn)
     Q <= Q +1 ;
 
endmodule
