// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_8_3_v.do

`timescale 1ms/1ms

module priority_enc_8_3_tb_v;
  
  reg  [7:0] i_code;
  wire [2:0] o_code;
  
  // reg i_a, i_b, i_c, i_d;
  reg [7:0] d_in = 4'b0000;
  integer i;
  
  // duv port map options:
  priority_enc_8_3_v duv (.i_code(i_code), .o_code(o_code)); 
  
  //procedure statement
  initial begin

      // for (i = 0 ; i < 258 ; i = i + 1) begin
        // #1000 i_code = d_in;
        // // #1000 o_code[0] = d_in[0]; o_code[1] = d_in[1]; o_code[2] = d_in[]; i_d = d_in[4];
        // d_in = d_in + 1;
      // end

      #1000 i_code = 8'b00000000;
      #1000 i_code = 8'b00000010;
      #1000 i_code = 8'b00000100;
      #1000 i_code = 8'b00001000;
      #1000 i_code = 8'b00010000;
      #1000 i_code = 8'b00100000;
      #1000 i_code = 8'b01000000;
      #1000 i_code = 8'b10000000;
      #1000 i_code = 8'b10000000;
      #1000 i_code = 8'b10000010;
      #1000 i_code = 8'b10000100;
      #1000 i_code = 8'b10001000;
      #1000 i_code = 8'b10010000;
      #1000 i_code = 8'b10100000;
      #1000 i_code = 8'b11000000;
      #1000 i_code = 8'b10000000;
      
      
          
    end

endmodule
