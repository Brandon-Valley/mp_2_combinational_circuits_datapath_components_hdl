-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_4_2.do
library ieee;
use ieee.std_logic_1164.all;

--
entity priority_enc_4_2 is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         i_c : in  std_logic;
         i_d : in  std_logic;
         o_f : out std_logic);
end priority_enc_4_2;

--------------------------------
-- Equation Model
--------------------------------

architecture equation of priority_enc_4_2 is
  begin
    o_f <= (i_a or i_b or i_c or i_d);
end architecture equation;


--------------------------------
-- Behavior Model
--------------------------------
architecture behavior of priority_enc_4_2 is
  begin

           
    o_f <= '1' when i_a = '1' else 
           '1' when i_b = '1' else 
           '1' when i_c = '1' else 
           '1' when i_d = '1' else 
           '0';
end architecture behavior;



--------------------------------
-- Component Model
--------------------------------
architecture cmpnt of priority_enc_4_2 is
  component OR2 is
    port ( i_a : in  std_logic;
           i_b : in  std_logic;
           o_f : out std_logic);
  end component OR2;
 
    
  -- temp outs for OR2s
  signal f_1_o : std_logic; 
  signal f_2_o : std_logic; 
    
  begin
    OR2_1 : OR2 port map (i_a,   i_b,   f_1_o);
    OR2_2 : OR2 port map (i_c,   i_d,   f_2_o);
    OR2_3 : OR2 port map (f_1_o, f_2_o, o_f);
end architecture cmpnt;
    
    








