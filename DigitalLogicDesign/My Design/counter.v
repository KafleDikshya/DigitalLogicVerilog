 //  8-bit counter with enable port and load port

module counter(En, L, R, Reset, Clock, Q);

 input En;
 input L;
 input [7:0]R;
 input Reset;
 input Clock; 

 output reg [7:0]Q;
 
 always@(negedge Reset,posedge Clock)
   if(!Reset)
     Q <= 8'b00000000;
   else if(L)
     Q <= R;
   else if(En)
     Q <= Q +1 ;
endmodule

