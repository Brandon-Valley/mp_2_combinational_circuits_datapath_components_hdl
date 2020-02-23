// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__SN74145_v.do


// behavior model
module SN74145_v
  (
  input  i_a, i_b, i_c, i_d,
  input  i_cs, i_n_cs_0, i_n_cs_1, 
  output o_0, o_1, o_2, o_3, o_4, o_5, o_6, o_7, o_8, o_9);
   
  assign o_0 = ( ~ i_a & ~ i_b & ~ i_c & ~ i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  assign o_1 = ( ~ i_a & ~ i_b & ~ i_c &   i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  assign o_2 = ( ~ i_a & ~ i_b &   i_c & ~ i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  assign o_3 = ( ~ i_a & ~ i_b &   i_c &   i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  assign o_4 = ( ~ i_a &   i_b & ~ i_c & ~ i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  assign o_5 = ( ~ i_a &   i_b & ~ i_c &   i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  assign o_6 = ( ~ i_a &   i_b &   i_c & ~ i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  assign o_7 = ( ~ i_a &   i_b &   i_c &   i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  assign o_8 = (   i_a & ~ i_b & ~ i_c & ~ i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  assign o_9 = (   i_a & ~ i_b & ~ i_c &   i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
                 
endmodule







