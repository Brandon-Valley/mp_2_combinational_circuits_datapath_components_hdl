// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__MUX_4_1_8_bit_v.do

`timescale 1ms/1ms

  
module MUX_4_1_8_bit_tb_v;
  
  reg        i_en;
  reg  [7:0] i_code_0;
  reg  [7:0] i_code_1;
  reg  [7:0] i_code_2;
  reg  [7:0] i_code_3;
  
  reg  [1:0] i_sel_code;
  wire [7:0] o_code;
  
  
  reg [2:0] d_in = 1'b0;
  integer i;
  
  // duv port map options:
  MUX_4_1_8_bit_v duv (.i_en(i_en), 
                                 .i_code_0(i_code_0),
                                 .i_code_1(i_code_1),
                                 .i_code_2(i_code_2),
                                 .i_code_3(i_code_3),
                                 .i_sel_code(i_sel_code),
                                 .o_code(o_code));
  // MUX_4_1_8_bit_v__cmpnt duv (.i_en(i_en), .i_code(i_code), .i_sel_code(i_sel_code), .o_f(o_f));
  
  //procedure statement
  initial begin
      
      for (i = 0 ; i < 10 ; i = i + 1) begin

        #1000 i_sel_code[0] = d_in[0];
              i_sel_code[1] = d_in[1];
              i_en          = d_in[2];
              
              i_code_0 = 8'b10000000;
              i_code_1 = 8'b01000000;
              i_code_2 = 8'b11000000;
              i_code_3 = 8'b00100000;
        

        // i_sel_code[0] = d_in[1]; o_code = d_in[2]; i_d = d_in[3]; o_codes = d_in[4]; i_n_cs_0 = d_in[5]; ;
        d_in = d_in + 1;
      end
          
    end

endmodule











