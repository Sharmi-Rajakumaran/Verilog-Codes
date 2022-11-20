module half_adder_tb();
  reg a,b;
  wire sum, carry;
  
  integer i;
  
  // Instantiation of DUT to be tested
  
  half_adder DUT(a,b,sum,carry);
  
  initial
     begin
       for(i = 0; i < 4; i = i + 1 )
          begin
            {a,b} = i;
            #20;
          end
     end
  // Capturing the response
  
  initial
    $monitor ($time, "Input: a = %b, Input b = %b, output: sum = %b Carry = %b", a, b, sum, carry);
  
  initial 
    #100 $finish;
  
endmodule
              
