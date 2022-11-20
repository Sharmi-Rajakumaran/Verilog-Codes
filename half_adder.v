module half_adder(input a,b, output sum, carry);
  // RTL Design
  // Data flow Model
  
    assign sum = a^b;
    assign carry = a&b;
endmodule


/*
// Gate level simulation

xor(sum, a,b);
and(carry, a,b);

*/
