// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__xor4_gate_gate_v.do


`timescale 1ms/1ms

module xor4_gate_gate_tb_v;
  wire o_f;
  reg i_a, i_b, i_c, i_d;
  reg [1:4] d_in = 4'b0000;
  integer i;
  
  // duv port map options:
  xor4_gate_gate_v__equation   duv (.i_a(i_a), .i_b(i_b), .i_c(i_c), .i_d(i_d), .o_f(o_f)); 
  // xor4_gate_gate_v__behavior   duv (.i_a(i_a), .i_b(i_b), .i_c(i_c), .i_d(i_d), .o_f(o_f)); 
  // xor4_gate_gate_v__cmpnt_self duv (.i_a(i_a), .i_b(i_b), .i_c(i_c), .i_d(i_d), .o_f(o_f)); // uses primatives

  //procedure statement
  initial begin
      
      for (i = 0 ; i < 18 ; i = i + 1) begin
        #1000 i_a = d_in[1]; i_b = d_in[2]; i_c = d_in[3]; i_d = d_in[4];
        d_in = d_in + 1;
      end
          
    end

endmodule
