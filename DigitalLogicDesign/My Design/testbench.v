module testbench;

 reg [7:0] x; 
 reg [7:0] y ; 
 reg L ; 
 reg En ; 
 reg reset ;
 reg clock ; 
 reg [1:0] s ;

 wire [7:0] f ; 
 wire cout ; 


 ALU circuit1(.x(x), .y(y), .L(L), .En(En), .reset(reset), .clock(clock), .s(s), .f(f), .cout(cout));

 initial begin
 x = 20 ;
 y = 30 ;
 L = 0 ; 
 En = 1 ; 
 reset = 0 ;
 clock = 0 ; 
 s = 2'b00; 

 #70
 reset = 1 ; 
 s = 2'b01 ;
 
 #70 
  x = 25;

 #70
  x = 30 ; 

 #70 
  x = 35 ; 

 #70 
  x=40 ;

 #480 
  reset = 0 ; 

 #10
 reset = 1 ;
 s = 2'b10 ; 

 #655
 reset =0 ; 

#70 
 s= 2'b11 ;
 x=  8'b10101010;
 y = 8'b01010101;
 end
 always 
 #35 clock = ~clock ; 
endmodule

