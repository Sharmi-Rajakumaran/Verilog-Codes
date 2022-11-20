module full_adder_Data_flow_tb();
  
  reg i_a_tb, i_b_tb, i_c_tb;
  wire o_sum_tb, o_carry_tb;
  
  integer i;
  
  full_adder_Data_flow DUT(.i_a(i_a_tb), .i_b(i_b_tb), .i_c(i_c_tb), .o_sum(o_sum_tb), .o_carry(o_carry_tb));
  
  initial 
     begin
       for(i=0; i<8; i = i+1)
         begin
           {i_a_tb, i_b_tb, i_c_tb} = i;
           #20;
         end
     end
  
  $monitor($time, "Input a b c = %b %b %b, Output sum = %b, carry = %b", i_a_tb, i_b_tb, i_c_tb);
  
  initial #1000 $finish;
  
endmodule
