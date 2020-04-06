// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__XOR4_gate_v.do

module XOR2_gate_v
  (input i_a, i_b,
   output o_f);
     
  wire or1o, and1o, NOT1_gateo; // internal outputs
   
  OR2_gate_v or1   (i_a  , i_b  , or1o );
  AND2_gate_v and1 (i_a  , i_b  , and1o);
  NOT1_gate_v NOT1_gate (and1o, NOT1_gateo       );
  AND2_gate_v AND2_gate (or1o , NOT1_gateo, o_f  );
  
endmodule







