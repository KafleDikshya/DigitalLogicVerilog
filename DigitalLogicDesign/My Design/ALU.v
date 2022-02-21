/*
The following module is an ALU unit 
 it support: 
- two 8bits input ports (x,y);
-one control signal s of weight 2 ; 
- four 1bit input ports 
- one 1bit output port 
- one 8bits output port

The input port x can be used for:
-first operand of the adder ;
-the serial input of the shift register;
-the number to be loader to the counter ; 
- As an operand in the logic function 

the input port y is used for:
-second input port of the adder;
-second input port of the logic function 


the input port L is used for:
- the carry in for the adder ;
- the Load port of the counter ;

the input port En is used for:
 - the enable port of the counter

the reset port is used for:
- the reset port of the counter;
-the reset port of the shift regiter ;

the clock input port is used for:
-the clock signal of both te register and the shift register 
 
the control signal is used for:
-the control signal in the 4 to 1 multiplexer ;
-      if s1s0 = 00 then the Alu is ADDER
       if s1s0 = 01 then the Alu is SHIFT REGISTER 
       if s1s0 = 10 then the Alu is  COUNTER 
       if s1s0 = 11 then the Alu is LOGIC FUNCTION

the output f is used for :
the result of the ALU circuit; 

the ouput port cout is used for:
 the resulting carry of the binary addition is it is selected.

*/



module ALU(x, y, L, En, reset, clock, s, f , cout);

 input [7:0] x ;
 input [7:0] y ;
 input L ; 
 input En ; 
 input reset ; 
 input clock ; 
 input [1:0] s;  //control signal 
 
output [7:0] f ;
 output cout ; 

 wire [7:0] H;
 wire [7:0] I ;
 wire [7:0] J ;
 wire [7:0] K ;

//Fast adder adds two 8bits numbers x and y. L is the carry in
  fastadder8bit adder(x,y,L,H,cout) ;

//a rising edge shift register , x is the serial input , supports resetn port
shiftregister shiftregister(x,reset,clock,I);

//8bit counter , x is the nuber to load if L==1 . support enable and resetn port
 counter counter(En, L, x, reset, clock, J);

// AND logic function on 8 bit operands
//And logicfunction(x,y,K);

//4to 1 Mux to select ALU operation 
//mux4to1 multiplexer(H, I, J, K, s, f);
endmodule
