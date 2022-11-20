module full_adder_Data_flow(input i_a, i_b, i_c, output o_carry, o_carry);
  
  assign sum = (i_a^i_b^i_c);
  assign carry = (((i_a ^i_b)&i_c) | (i_a & i_b));
  
endmodule
