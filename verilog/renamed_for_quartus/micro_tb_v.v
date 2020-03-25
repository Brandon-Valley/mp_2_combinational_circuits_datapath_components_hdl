// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__micro_v.do

`timescale 1ms/1ms

  
module micro_tb_v;
  
  reg        i_en;
  reg  [3:0] i_code;
  wire       o_A;
  wire       o_L;
  wire       o_B;
  
  
  // duv port map options:
  micro_v duv (.i_en(i_en), 
               .i_code(i_code),
               .o_A(o_A),
               .o_L(o_L),
               .o_B(o_B));
  
  //procedure statement
  initial begin

    #1000 i_code = 4'b0011; i_en = 0;
    #1000 i_code = 4'b1010; i_en = 0;
    #1000 i_code = 4'b1011; i_en = 0;
    #1000 i_code = 4'b0100; i_en = 0;
    #1000 i_code = 4'b1100; i_en = 0;
    #1000 i_code = 4'b0010; i_en = 0;
    #1000 i_code = 4'b1110; i_en = 0;
    #1000 i_code = 4'b1111; i_en = 0;
    
    #1000 i_code = 4'b0011; i_en = 1;
    #1000 i_code = 4'b1010; i_en = 1;
    #1000 i_code = 4'b1011; i_en = 1;
    #1000 i_code = 4'b0100; i_en = 1;
    #1000 i_code = 4'b1100; i_en = 1;
    #1000 i_code = 4'b0010; i_en = 1;
    #1000 i_code = 4'b1110; i_en = 1;
    #1000 i_code = 4'b1111; i_en = 1;
    
    #1000 i_code = 4'b0011; i_en = 1;


  end

endmodule











