module 2_4_decoder_tb();

reg [1:0]i_I_tb;
wire [3:0]o_Y_tb;


integer i;

// Instantiation of the decoder RTL design

  2_4_decoder DUT(.i_I(i_I_tb), .o_Y(o_Y_tb));
  
// Stimulus generation during runtime in the initial begin block
  
  initial
    begin
      for(i = 0; i < 4; i = i+1)
        begin
          {i_I_tb} = i;
          #50;
        end
    end
  
  initial 
    $monitor("Input = %d, Output = %d", i_I_tb, o_Y_tb);
  
  #200 $finish;
endmodule
