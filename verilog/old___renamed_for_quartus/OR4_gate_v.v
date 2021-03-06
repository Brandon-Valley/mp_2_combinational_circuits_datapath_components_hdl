// python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__or4_gate_v.do

////////////////////////////////
// Equation Model
////////////////////////////////
module or4_gate_v
// module or4_gate_v__equation
  (input i_a, i_b, i_c, i_d,
   output o_f);
   
  assign o_f = i_a | i_b | i_c | i_d;
  
endmodule


////////////////////////////////
// Behavior Model
////////////////////////////////
// module or4_gate_v
module or4_gate_v__behavior
  (input i_a, i_b, i_c, i_d,
   output o_f);
   
  // assign o_f = 1 ? i_a | i_b | i_c | i_d : 0;
  assign o_f = i_a | i_b | i_c | i_d ? 1 : 0;
  
endmodule



////////////////////////////////
// Component Model - Self
////////////////////////////////
// module or4_gate_v
module or4_gate_v__cmpnt_self
  (input i_a, i_b, i_c, i_d,
  output o_f);
   
  wire fi1, fi2; // internal outputs
   
  or2_gate_v or1 (i_a, i_b, fi1);
  or2_gate_v or2_gate (i_c, i_d, fi2);
  or2_gate_v or3 (fi1, fi2, o_f);
  
  // assign o_f = 1 ? i_a | i_b | i_c | i_d : 0;
  
endmodule










































































