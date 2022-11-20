module 4_1_Mux_df_tb();
  
  reg [3:0]i;
  reg [1:0] s;
  
  wire y;
  
  // Insantiation of Mux
  4_1_Mux_df DUT(i,s,y);
  
  integer j;
  
  initial 
    begin
      for(j = 0; j < 64; j = j + 1)
        begin
          {s,i} = j;
          #50;
        end
      
    end
  
  initial 
    $monitor($time, "Input [3:0] i = %d, Select Lines s = %d Output y = %d", i, s, y);
  
endmodule
