module reaction (Clock, Reset, rst, w, c9, Pushn ,LEDn, Digit1, Digit0);
   input Clock;
   input Reset;
   input rst;
   input w;
   input Pushn;

   output c9;
   output LEDn;
   output [1:7] Digit1;
   output [1:7] Digit0;

   reg LED;
   wire [3:0] BCD1;
   wire [3:0] BCD0;

 always@(posedge Clock)
   begin
     if (!Pushn || Reset)
       LED <=0;
     else if (w)
       LED <=1;
   end
   counter10bit clockdivider (.rst(rst),.clock(Clock),.c(c9));//////////
 assign LEDn = ~LED;
 BCDcount counter (c9, Reset, LED ,BCD1 ,BCD0);
 seg7 seg1 (BCD1,Digit1);
 seg7 seg0 (BCD0,Digit0);
endmodule
