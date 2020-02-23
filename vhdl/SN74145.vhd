-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__SN74145.do
library ieee;
use ieee.std_logic_1164.all;


entity SN74145 is
  port ( 
         i_a : in std_logic;
         i_b : in std_logic;
         i_c : in std_logic;
         i_d : in std_logic;
         
         i_cs     : in std_logic;
         i_n_cs_0 : in std_logic;
         i_n_cs_1 : in std_logic;
         
         o_0 : out std_logic;
         o_1 : out std_logic;
         o_2 : out std_logic;
         o_3 : out std_logic;
         o_4 : out std_logic;
         o_5 : out std_logic;
         o_6 : out std_logic;
         o_7 : out std_logic;
         o_8 : out std_logic;
         o_9 : out std_logic);
         
         -- i_code : in  std_logic_vector(3 downto 0);
         -- o_code : out std_logic_vector(1 downto 0);
         -- o_valid: out std_logic);
       
end SN74145;



architecture equation of SN74145 is
  begin


  o_0 <= '1';
  o_1 <= '1';
  o_2 <= '1';
  o_3 <= '1';
  o_4 <= '1';
  o_5 <= '1';
  o_6 <= '1';
  o_7 <= '0';
  o_8 <= '1';
  o_9 <= '1';





    -- -- o_f <= (i_a or i_b or i_c or i_d);
    
    -- -- o_code <= "01";
    -- -- o_valid <= '1';
    
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


    
    








