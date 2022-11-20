module full_adder_tb;
  
  reg a_tb, b_tb, c_tb;
  wire sum_out, carry_out;
  
  integer i;
  
  initial 
     begin
       for(i = 0; i < 8; i = i+1);
       begin
         {a_tb, b_tb, c_tb} = i;
         #20;
       end
     end
  
  
  intitial 
  $monitor ($time, "Input: a = %b, b = %b, c = %b, Output :sum = %b, carry = %b", a_tb, b_tb, c_tb, sum_tb, carry_tb);
  
endmodule
