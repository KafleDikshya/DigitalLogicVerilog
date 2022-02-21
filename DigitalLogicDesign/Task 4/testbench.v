module testbench;
   reg Clock;
   reg Reset;
   reg rst;
   reg w;
   reg Pushn;
   wire LEDn;
   wire [1:7] Digit1;
   wire [1:7] Digit0;
   reaction reactiontimer1(.Clock(Clock), .c9(c9), .Reset(Reset), .rst(rst), .w(w), .Pushn(Pushn), .LEDn(LEDn), .Digit1(Digit1), .Digit0(Digit0));
   initial begin
   Reset =1;
   Clock =0;
   rst =0;
   w =0;
   Pushn =1;
   #1  rst = 1;
   #80 Reset =0;
   #200 w=1;
   #280 w =0;
   #1560 Pushn=0;
   end
   always
   #10 Clock = ~Clock;
endmodule