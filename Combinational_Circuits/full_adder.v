module full_adder(input a_in, b_in, c_in, output sum, carry);
  
  wire w1, w2, w3;
  
  // Instantiation of Full Adder Circuit 
  
  half_adder HA1(.a(a), .b(b), .sum(w1), .carry(w2));
  half_adder HA2(.a(c), .b(w1), .sum(sum), .carry(w3));
  or OR1(carry, w2,w3);
  
endmodule


module half_adder(input a,b, output sum, carry);
  assign sum = a^b;
  assign carry = a&b;
  
endmodule

