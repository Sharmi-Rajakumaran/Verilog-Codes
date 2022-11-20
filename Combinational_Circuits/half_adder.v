module half_adder(input a,b, output sum, carry);
  // RTL Design
  // Data flow Model
  
    assign sum = a^b;
    assign carry = a&b;
endmodule


/*
// Gate level simulation
xor XOR1(sum, a,b);
and AND1(carry, a,b);
*/
