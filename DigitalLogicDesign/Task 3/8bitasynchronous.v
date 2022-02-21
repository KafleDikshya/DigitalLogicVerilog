//8-bit Register with asynchronous Reset

module reg8 (reset, Clock, D, Q); 
input reset; input Clock; 
input [7:0] D; 
output [7:0] Q; 
reg [7:0] Q;
always @(negedge reset, posedge Clock) 
    if (reset) 
    Q <= 0; 
    else 
    Q <= D;
endmodule 
