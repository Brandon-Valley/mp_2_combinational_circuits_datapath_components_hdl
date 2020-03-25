// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__MUX_8_1_v.do


//  Behavior Model
module MUX_2_1_v
  (
  input        i_en,
  input  [1:0] i_code,
  input        i_sel, 
  output       o_f);
  

  assign o_f =  i_sel & i_en ? i_code[1] :
               ~i_sel & i_en ? i_code[0] : 0;  
endmodule


