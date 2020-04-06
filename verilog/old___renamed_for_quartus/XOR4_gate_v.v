// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__xor4_gate_gate_v.do

////////////////////////////////
// Equation Model
////////////////////////////////
module xor4_gate_gate_v
// module xor4_gate_gate_v__equation
  (input i_a, i_b, i_c, i_d,
   output o_f);
   
  assign o_f = (i_a ^ i_b) ^ (i_c ^ i_d);
  
endmodule


////////////////////////////////
// Behavior Model
////////////////////////////////
// module xor4_gate_gate_v
module xor4_gate_gate_v__behavior
  (input i_a, i_b, i_c, i_d,
   output o_f);
   
  assign o_f = (~ i_a & ~ i_b & ~ i_c &   i_d) | 
               (~ i_a & ~ i_b &   i_c & ~ i_d) |
               (~ i_a &   i_b & ~ i_c & ~ i_d) |
               (  i_a & ~ i_b & ~ i_c & ~ i_d) |
               (  i_a &   i_b &   i_c & ~ i_d) |
               (  i_a &   i_b & ~ i_c &   i_d) |
               (  i_a & ~ i_b &   i_c &   i_d) |
               (~ i_a &   i_b &   i_c &   i_d) ? 1 : 0;
  
endmodule



////////////////////////////////
// Component Model - Self - made of primatives
////////////////////////////////
// module xor4_gate_gate_v
module xor4_gate_gate_v__cmpnt_self
  (input i_a, i_b, i_c, i_d,
  output o_f);
   
  wire fi1, fi2; // internal outputs
   
  xor2_gate_gate_v xor1 (i_a, i_b, fi1);
  xor2_gate_gate_v xor2_gate_gate (i_c, i_d, fi2);
  xor2_gate_gate_v xor3 (fi1, fi2, o_f);

    
endmodule







