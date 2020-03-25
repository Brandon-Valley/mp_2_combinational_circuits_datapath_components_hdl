// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__nand4_gate_v.do

module NAND2_gate_v
  (input i_a, i_b,
   output o_f);
   
  assign o_f = ~(i_a & i_b);
  
endmodule







