module And(x,y,f);
 input [7:0] x ;
 input [7:0] y ;
 
 output [7:0] f ;

 assign f = x&y ;
endmodule