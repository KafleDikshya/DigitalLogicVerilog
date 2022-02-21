// 8-bit register can be cleared, loaded, shifted left
// Retains value if no control signal is asserted
module shiftregister(w,reset,clock,Q0);
 
 input [7:0]w; 
 input reset;
 input clock;
 
 output reg [7:0]Q0;
 reg [7:0]Q1;
 reg [7:0]Q2;
 reg [7:0]Q3;
 reg [7:0]Q4;



 always@(posedge clock, negedge reset)
   if(!reset)
     begin
      Q0 <= 0 ;
      Q1 <= 0 ;
      Q2 <= 0 ;
      Q3 <= 0 ;
      Q4 <= 0 ;
     end
      
   else
    begin
     Q0 <= Q1 ;
     Q1 <= Q2 ;
     Q2 <= Q3 ;
     Q3 <= Q4 ;
     Q4 <= w;
    end 

  
endmodule 