module mux2to1(a,b,s,f);
 
 input [7:0] a;
 input [7:0] b;
 input s ;

 output f;
 reg [7:0]f;

 always @(a or b or s)
  begin
   case (s)
    1'b0: f=a;
    1'b1: f=b;
    default: f=8'b00000000;
   endcase
  end

 endmodule
module mux4to1(a, b, c, d, s, f);

 input [7:0] a;
 input [7:0] b;
 input [7:0] c;
 input [7:0] d;
 input [1:0] s;
 
 wire [7:0]h;
 wire [7:0]k;
 
 output [7:0]f;
 
  mux2to1 Mux1(a,b,s[0],h);  //if s[0] is 0 select a , if s[0] is 1 select b
  mux2to1 Mux2(c,d,s[0],k);  //if s[0] is 0 select c , if s[0] is d select b
  mux2to1 Mux3(h,k,s[1],f);  //if s[1] is 0 select h , if s[1] is d select k

endmodule

 