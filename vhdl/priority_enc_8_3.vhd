-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_8_3.do
library ieee;
use ieee.std_logic_1164.all;



entity priority_enc_8_3 is
  port ( 
         i_code : in  std_logic_vector(7 downto 0);
         o_code : out std_logic_vector(2 downto 0));
end priority_enc_8_3;



architecture equation of priority_enc_8_3 is
  begin


  signal f0_code : std_logic_vector(1 downto 0);
  signal f0_v    : std_logic;
  signal f1_code : std_logic_vector(1 downto 0);
  signal f1_v    : std_logic;

  -- signal fi0 : std_logic_vector(3 downto 0) := i_code_0(0) & i_code_1(0) & i_code_2(0) & i_code_3(0);
  -- signal fi1 : std_logic_vector(3 downto 0) := i_code_0(1) & i_code_1(1) & i_code_2(1) & i_code_3(1);

  -- begin
    -- MUX1 : MUX_4_1 port map (i_en, fi0, i_sel_code, o_code(0));
    -- MUX0 : MUX_4_1 port map (i_en, fi1, i_sel_code, o_code(1));


  -- priority_enc_4_2_v__no_always pe42_0 (i_code[3:0], f0_code, f0_v);  
  -- priority_enc_4_2_v__no_always pe42_1 (i_code[7:4], f1_code, f1_v);  
  
  
  -- priority_enc_2_1_v pe21_0({f0_code[1], f1_code[1]}, f0_v, o_code[0]);  
  -- priority_enc_2_1_v pe21_1({f0_code[0], f1_code[0]}, f0_v, o_code[1]);  
  -- priority_enc_2_1_v pe21_2({f0_v      , f1_v      }, 1'b1, o_code[2]);  



    -- o_code <= "00" when i_code(0) = '1' else 
              -- "01" when i_code(1) = '1' else 
              -- "10" when i_code(2) = '1' else 
              -- "11" when i_code(3) = '1' else 
              -- "00";
              
    -- o_valid <= i_code(0) or 
               -- i_code(1) or 
               -- i_code(2) or 
               -- i_code(3); 
    

    
    
    
end architecture equation;










-- ////////////////////////////////
-- // Not Using Always
-- ////////////////////////////////
-- module priority_enc_8_3_v
  -- (
  -- input  [7:0] i_code,
  -- output [2:0] o_code);
  
  -- // assign o_code = 3'b010;
   
   
  -- wire [1:0] f0_code;
  -- wire       f0_v;
  -- wire [1:0] f1_code;
  -- wire       f1_v;
       
  -- priority_enc_4_2_v__no_always pe42_0 (i_code[3:0], f0_code, f0_v);  
  -- priority_enc_4_2_v__no_always pe42_1 (i_code[7:4], f1_code, f1_v);  
  
  
  -- priority_enc_2_1_v pe21_0({f0_code[1], f1_code[1]}, f0_v, o_code[0]);  
  -- priority_enc_2_1_v pe21_1({f0_code[0], f1_code[0]}, f0_v, o_code[1]);  
  -- priority_enc_2_1_v pe21_2({f0_v      , f1_v      }, 1'b1, o_code[2]);  
   
                 
-- endmodule















-- `timescale 1ms/1ms

-- module priority_enc_8_3_tb_v;
  
  -- reg  [7:0] i_code;
  -- wire [2:0] o_code;
  
  -- // reg i_a, i_b, i_c, i_d;
  -- reg [7:0] d_in = 4'b0000;
  -- integer i;
  
  -- // duv port map options:
  -- priority_enc_8_3_v duv (.i_code(i_code), .o_code(o_code)); 
  
  -- //procedure statement
  -- initial begin

      -- for (i = 0 ; i < 258 ; i = i + 1) begin
        -- #1000 i_code = d_in;
        -- // #1000 o_code[0] = d_in[0]; o_code[1] = d_in[1]; o_code[2] = d_in[]; i_d = d_in[4];
        -- d_in = d_in + 1;
      -- end

      
      
      
          
    -- end

-- endmodule














-- `timescale 1ms/1ms

-- module priority_enc_8_3_tb_v;
  
  -- reg  [7:0] i_code;
  -- wire [2:0] o_code;
  
  -- // reg i_a, i_b, i_c, i_d;
  -- reg [7:0] d_in = 4'b0000;
  -- integer i;
  
  -- // duv port map options:
  -- priority_enc_8_3_v duv (.i_code(i_code), .o_code(o_code)); 
  
  -- //procedure statement
  -- initial begin

      -- for (i = 0 ; i < 258 ; i = i + 1) begin
        -- #1000 i_code = d_in;
        -- // #1000 o_code[0] = d_in[0]; o_code[1] = d_in[1]; o_code[2] = d_in[]; i_d = d_in[4];
        -- d_in = d_in + 1;
      -- end

      
      
      
          
    -- end

-- endmodule









