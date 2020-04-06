// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__deMUX_1_4_v.do


// behavior model
module deMUX_1_4_v
  (
  input  i_a,
  input  [1:0] i_sel_code, 
  output [3:0] o_code);
  
  assign o_code[0] = (i_a & i_sel_code == 2'b00) ? 1 : 0;
  assign o_code[1] = (i_a & i_sel_code == 2'b01) ? 1 : 0;
  assign o_code[2] = (i_a & i_sel_code == 2'b10) ? 1 : 0;
  assign o_code[3] = (i_a & i_sel_code == 2'b11) ? 1 : 0;
  
endmodule







