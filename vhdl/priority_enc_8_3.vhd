-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_8_3.do

library ieee;
use ieee.std_logic_1164.all;



-- module priority_enc_8_3_v
  -- (
  -- input  [7:0] i_code,
  -- output [2:0] o_code);
  
  -- // assign o_code = 3'b010;
   
   
  -- wire [1:0] f0_code;
  -- wire       f0_v;
  -- wire [1:0] f1_code;
  -- wire       f1_v;
       
  -- priority_enc_4_2_v__always pe42_0 (i_code[3:0], f0_code, f0_v);  
  -- priority_enc_4_2_v__always pe42_1 (i_code[7:4], f1_code, f1_v);  
  

  -- MUX_2_1_v MUX21_0(1'b1, {f1_code[0], f0_code[0]}, ~f0_v, o_code[0]);  
  -- MUX_2_1_v MUX21_1(1'b1, {f1_code[1], f0_code[1]}, ~f0_v, o_code[1]);  
  -- priority_enc_2_1_v pe21_2({f1_v      , f0_v      }, o_code[2]);  
   
                 
-- endmodule



entity priority_enc_8_3 is
  port ( i_code : in  std_logic_vector(7 downto 0);
         o_code : out std_logic_vector(2 downto 0));
end priority_enc_8_3;



----------------------------
-- Component Model
----------------------------
architecture cmpnt of priority_enc_8_3 is

  component priority_enc_4_2 is
  port ( 
           i_code_pe42 : in  std_logic_vector(3 downto 0);
           o_code : out std_logic_vector(1 downto 0);
           o_valid: out std_logic);
  end component priority_enc_4_2;

  component MUX_2_1 is
  port ( 
         i_code_m : in  std_logic_vector(1 downto 0);
         i_sel  : in  std_logic;
         o_f    : out std_logic);
  end component MUX_2_1;
    
  component priority_enc_2_1 is
  port ( 
         i_code_pe : in  std_logic_vector(1 downto 0);
         o_f    : out std_logic);
  end component priority_enc_2_1;
    
    
 
  -- temp outs
  signal f0_code : std_logic_vector(1 downto 0); 
  signal f0_v    : std_logic; 
  signal f1_code : std_logic_vector(1 downto 0); 
  signal f1_v    : std_logic; 
    
  -- priority_enc_4_2_v__always pe42_0 (i_code[3:0], f0_code, f0_v);  
  -- priority_enc_4_2_v__always pe42_1 (i_code[7:4], f1_code, f1_v);  
  

  -- MUX_2_1_v MUX21_0(1'b1, {f1_code[0], f0_code[0]}, ~f0_v, o_code[0]);  
  -- MUX_2_1_v MUX21_1(1'b1, {f1_code[1], f0_code[1]}, ~f0_v, o_code[1]);  
  -- priority_enc_2_1_v pe21_2({f1_v      , f0_v      }, o_code[2]);  
       
  begin
    priorityenc420 : priority_enc_4_2 port map (i_code(3 downto 0), f0_code, f0_v);
    priorityenc421 : priority_enc_4_2 port map (i_code(7 downto 4), f1_code, f1_v);
    
    -- MUX210 : MUX_2_1 port map ((f1_code(0), f0_code(0)), !f0_v, o_code(0));
    -- MUX211 : MUX_2_1 port map ((f1_code(1), f0_code(1)), !f0_v, o_code(1));
    -- MUX210 : MUX_2_1 port map ("01", !f0_v, o_code(0));
    -- MUX211 : MUX_2_1 port map ("01", !f0_v, o_code(1));
    MUX210 : MUX_2_1 port map ("01", '1', o_code(0));
    MUX211 : MUX_2_1 port map ("01", '1', o_code(1));
    -- priority_enc210 : priority_enc_2_1 port map ((f1_v, f0_v), o_code(2));
    priority_enc210 : priority_enc_2_1 port map ("01", o_code(2));
    end architecture cmpnt;
    
    
-- ------------------------
-- -- component model - 2 input self
-- ------------------------
-- architecture cmpnt_self of priority_enc_8_3 is
  -- component nand2 is
    -- port ( i_a : in  std_logic;
           -- i_b : in  std_logic;
           -- o_f : out std_logic);
  -- end component nand2;
    
  -- -- temp outs for and2s
  -- signal f_1_o : std_logic; 
  -- signal f_2_o : std_logic; 
  -- signal f_3_o : std_logic; 
  -- signal f_4_o : std_logic; 
    
  -- begin
    -- nand2_1 : nand2 port map (i_a,   i_b,   f_1_o);
    -- nand2_2 : nand2 port map (f_1_o, f_1_o, f_2_o); -- not
    -- nand2_3 : nand2 port map (i_c,   i_d,   f_3_o);
    -- nand2_4 : nand2 port map (f_3_o, f_3_o, f_4_o); -- not
    -- nand2_5 : nand2 port map (f_2_o, f_4_o, o_f);
-- end architecture cmpnt_self;
    








