// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__deMUX_1_4_v.do


// behavior model
module deMUX_1_4_v
  (
  input  i_a,
  input  [3:0] i_sel_code, 
  output [3:0] o_code);
  
  assign o_code[0] = (i_a & i_sel_code[0]) ? 1 : 0;
  assign o_code[1] = (i_a & i_sel_code[1]) ? 1 : 0;
  assign o_code[2] = (i_a & i_sel_code[2]) ? 1 : 0;
  assign o_code[3] = (i_a & i_sel_code[3]) ? 1 : 0;
  
endmodule







