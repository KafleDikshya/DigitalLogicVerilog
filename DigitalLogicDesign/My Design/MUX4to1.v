module mux2to1(x,y,s,f);
 
 input [7:0] x;
 input [7:0] y;
 input s ;

 output f;
 reg [7:0]f;

 always @(x or y or s)
  begin
   case (s)
    1'b0: f=x;
    1'b1: f=y;
    default: f=8'b00000000;
   endcase
  end

 endmodule
module mux4to1(x, y, m, n, s, f);

 input [7:0] x;
 input [7:0] y;
 input [7:0] m;
 input [7:0] n;
 input [1:0] s;
 
 wire [7:0]u;
 wire [7:0]v;
 
 output [7:0]f;
 
  mux2to1 Mux1(x,y,s[0],h);  //if s[0] is 0 select x, if s[0] is 1 select y
  mux2to1 Mux2(m,n,s[0],k);  //if s[0] is 0 select m , if s[0] is d select n
  mux2to1 Mux3(u,v,s[1],f);  //if s[1] is 0 select u , if s[1] is d select v

endmodule

 