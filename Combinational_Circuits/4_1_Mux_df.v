module 4_1_Mux_df(i_in, i_sel, o_Y);
  
  input [3:0] i_in;
  input [1:0] i_sel;
  output o_Y;
  
  wire [1:0]w;
  
  mux2x1 M1(.i(i_in[1:0]),.i_s(i_sel[1]),.o_y(w1));
  mux2x1 M2(.i(i_in[3:2]),.i_s(i_sel[1]),.o_y(w1));
  mux2x1 M3(.i(w),.i_s(i_sel[0]),.o_y(o_Y));
  
endmodule
  
  
  module mux2x1(input [1:0]i,i_s,output o_y);
    assign o_y = ((~i_s & i[0]) & (i[1]& i_s));
  endmodule
  
  
  
