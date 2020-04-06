// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__deMUX_1_4_v.do

`timescale 1ms/1ms


  // input  i_a,
  // input  reg i_sel_code, 
  // output o_code);

module deMUX_1_4_tb_v;
  
  reg  i_a;
  reg  [3:0] i_sel_code;
  wire [3:0] o_code;
  
  // reg i_a, i_sel_code, o_code, i_d;
  reg [4:0] d_in = 5'b00000;
  integer i;
  
  // duv port map options:
  deMUX_1_4_v duv (.i_a(i_a), .i_sel_code(i_sel_code), .o_code(o_code)); 
  
  //procedure statement
  initial begin
      
      for (i = 0 ; i < 34 ; i = i + 1) begin
        #1000 i_sel_code[0] = d_in[0];
              i_sel_code[1] = d_in[1];
              i_sel_code[2] = d_in[2];
              i_sel_code[3] = d_in[3];
              i_a           = d_in[4];

        // i_sel_code[0] = d_in[1]; o_code = d_in[2]; i_d = d_in[3]; o_codes = d_in[4]; i_n_cs_0 = d_in[5]; ;
        d_in = d_in + 1;
      end
          
    end

endmodule











