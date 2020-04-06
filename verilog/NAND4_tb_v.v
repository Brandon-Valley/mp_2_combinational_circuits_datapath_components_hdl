// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__NAND4_v.do


`timescale 1ms/1ms

module NAND4_tb_v;
  wire o_f;
  reg i_a, i_b, i_c, i_d;
  reg [1:4] d_in = 4'b0000;
  integer i;
  
  // duv options:
  // NAND4_v__equation   duv (.i_a(i_a), .i_b(i_b), .i_c(i_c), .i_d(i_d), .o_f(o_f)); // port map
  // NAND4_v__behavior   duv (.i_a(i_a), .i_b(i_b), .i_c(i_c), .i_d(i_d), .o_f(o_f)); // port map
  NAND4_v__cmpnt_self duv (.i_a(i_a), .i_b(i_b), .i_c(i_c), .i_d(i_d), .o_f(o_f)); // port map
  // NAND4_v__cmpnt_prim duv (.i_a(i_a), .i_b(i_b), .i_c(i_c), .i_d(i_d), .o_f(o_f)); // port map

  //procedure statement
  initial begin
      
      for (i = 0 ; i < 18 ; i = i + 1) begin
        #1000 i_a = d_in[1]; i_b = d_in[2]; i_c = d_in[3]; i_d = d_in[4];
        d_in = d_in + 1;
      end
      
      // #1000 i_a = 0; i_b = 0; i_c = 0; i_d = 0;
    
    end

endmodule
