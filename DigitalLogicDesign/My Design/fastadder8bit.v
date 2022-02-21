 
module fastadder8bit(x,y,c,s,cout); 

 input [7:0] x;
 input [7:0] y;
 input c;
 
 output [7:0] s;
 output cout;
            
 wire [7:0] p;
 wire [7:0] m;
 wire [8:0] n;   
    
 
 assign p = x ^ y;
 assign m = x & y;



 assign n[0] = c;
 assign n[1] = m[0] | (p[0] & c);
 assign n[2] = m[1] | (p[1] & m[0]) | (p[1] & p[0] & c);
 assign n[3] = m[2] | (p[2] & m[1]) | (p[2] & p[1] & m[0]) | (p[2] & p[1] & p[0] & c);
 assign n[4] = m[3] | (p[3] & m[2]) | (p[3] & p[2] & m[1]) | (p[3] & p[2] & p[1] & m[0]) | (p[3] & p[2] & p[1] & p[0] & c);
 assign n[5] = m[4] | (p[4] & m[3]) | (p[4] & p[3] & m[2]) | (p[4] & p[3] & p[2] & m[1]) | (p[4] & p[3] & p[2] & p[1] & m[0]) | (p[4] & p[3] & p[2] & p[1] & p[0] & c);
 assign n[6] = m[5] | (p[5] & m[4]) | (p[5] & p[4] & m[3]) | (p[5] & p[4] & p[3] & m[2]) | (p[5] & p[4] & p[3] & p[2] & m[1]) | (p[5] & p[4] & p[3] & p[2] & p[1] & m[0]) | (p[5] & p[4] & p[3] & p[2] & p[1] & p[0] & c);
 assign n[7] = m[6] | (p[6] & m[5]) | (p[6] & p[5] & m[4]) | (p[6] & p[5] & p[4] & m[3]) | (p[6] & p[5] & p[4] & p[3] & m[2]) | (p[6] & p[5] & p[4] & p[3] & p[2] & m[1]) | (p[6] & p[5] & p[4] & p[3] & p[2] & p[1] & m[0]) | (p[6] & p[5] & p[4] & p[3] & p[2] & p[1] & p[0] & c);
 assign n[8] = m[7] | (p[7] & m[6]) | (p[7] & p[6] & m[5]) | (p[7] & p[6] & p[5] & m[4]) | (p[7] & p[6] & p[5] & p[4] & m[3]) | (p[7] & p[6] & p[5] & p[4] & p[3] & m[2]) | (p[7] & p[6] & p[5] & p[4] & p[3] & p[2] & m[1]) | (p[7] & p[6] & p[5] & p[4] & p[3] & p[2] & p[1] & m[0]) | (p[7] & p[6] & p[5] & p[4] & p[3] & p[2] & p[1] & p[0] & c);


 

 assign cout = n[8] ;
 assign s = p ^ n[7:0] ;
endmodule
 

