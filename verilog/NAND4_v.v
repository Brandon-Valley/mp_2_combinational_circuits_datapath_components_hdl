// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__NAND4_v.do

////////////////////////////////
// Equation Model
////////////////////////////////
module NAND4_v__equation
  (input i_a, i_b, i_c, i_d,
   output o_f);
   
  assign o_f = ~(i_a & i_b & i_c & i_d);
  
endmodule


////////////////////////////////
// Behavior Model
////////////////////////////////
module NAND4_v__behavior
  (input i_a, i_b, i_c, i_d,
   output o_f);
   
  assign o_f = i_a & i_b & i_c & i_d ? 0 : 1;
  // assign o_f = 0 ? i_a & i_b & i_c & i_d : 1;
  // assign o_f = 0 ? i_a  : 1;
  
endmodule



////////////////////////////////
// Component Model - Self
////////////////////////////////
module NAND4_v__cmpnt_self
  (input i_a, i_b, i_c, i_d,
  output o_f);
   
  wire fi1, fi2, fi3, fi4; // internal outputs
   
  NAND2_v nand1 (i_a, i_b, fi1);
  NAND2_v nand2 (fi1, fi1, fi2); // NOT
  NAND2_v nand3 (i_c, i_d, fi3);
  NAND2_v nand4 (fi3, fi3, fi4); // NOT
  NAND2_v nand5 (fi2, fi4, o_f);
    
endmodule


////////////////////////////////
// Component Model - Primative
////////////////////////////////
module NAND4_v__cmpnt_prim
  (input i_a, i_b, i_c, i_d,
  output o_f);
   
  wire fi1, fi2, fi3; // internal outputs
   
  AND2_v and1 (i_a, i_b, fi1);
  AND2_v and2 (i_c, i_d, fi2);
  AND2_v and3 (fi1, fi2, fi3);
  NOT1_v not1 (fi3, o_f);

    
endmodule





