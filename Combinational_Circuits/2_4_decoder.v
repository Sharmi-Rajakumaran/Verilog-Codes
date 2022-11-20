module 2_4_decoder(input [1:0]i_I, output [3:0] o_Y);
  
  //Data Flow Abstraction
  
  assign o_Y[0] = ~i_I[0] & ~i_I[1];
  assign o_Y[1] = ~i_I[0] &  i_I[1];
  assign o_Y[2] =  i_I[0] & ~i_I[1];
  assign o_Y[3] =  i_I[0] &  i_I[1];
  
endmodule


/*

Behavioural Code for 2:4 Decoder

module decoder(in, out);

input [1:0] in;
output [3:0] out;

reg [3:0] out;

always@(in)
case(in)
2'd0: out = 4'd1;
2'd1: out = 4'd2;
2'd2: out = 4'd4;
2'd3: out = 4'd8;

default: out = 4'd0;
endcase

endmodule

*/

