-- python C:\Users\BrANDon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__SN74145.do
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
       
end SN74145;



architecture equation of SN74145 is
  begin

  o_0 <= '0' when  i_a = '0' and i_b = '0' and i_c = '0' and i_d = '0' and i_cs = '1' and i_n_cs_0 = '0' and i_n_cs_1 = '0'  else '1';
  o_1 <= '0' when  i_a = '0' and i_b = '0' and i_c = '0' and i_d = '1' and i_cs = '1' and i_n_cs_0 = '0' and i_n_cs_1 = '0'  else '1';
  o_2 <= '0' when  i_a = '0' and i_b = '0' and i_c = '1' and i_d = '0' and i_cs = '1' and i_n_cs_0 = '0' and i_n_cs_1 = '0'  else '1';
  o_3 <= '0' when  i_a = '0' and i_b = '0' and i_c = '1' and i_d = '1' and i_cs = '1' and i_n_cs_0 = '0' and i_n_cs_1 = '0'  else '1';
  o_4 <= '0' when  i_a = '0' and i_b = '1' and i_c = '0' and i_d = '0' and i_cs = '1' and i_n_cs_0 = '0' and i_n_cs_1 = '0'  else '1';
  o_5 <= '0' when  i_a = '0' and i_b = '1' and i_c = '0' and i_d = '1' and i_cs = '1' and i_n_cs_0 = '0' and i_n_cs_1 = '0'  else '1';
  o_6 <= '0' when  i_a = '0' and i_b = '1' and i_c = '1' and i_d = '0' and i_cs = '1' and i_n_cs_0 = '0' and i_n_cs_1 = '0'  else '1';
  o_7 <= '0' when  i_a = '0' and i_b = '1' and i_c = '1' and i_d = '1' and i_cs = '1' and i_n_cs_0 = '0' and i_n_cs_1 = '0'  else '1';
  o_8 <= '0' when  i_a = '1' and i_b = '0' and i_c = '0' and i_d = '0' and i_cs = '1' and i_n_cs_0 = '0' and i_n_cs_1 = '0'  else '1';
  o_9 <= '0' when  i_a = '1' and i_b = '0' and i_c = '0' and i_d = '1' and i_cs = '1' and i_n_cs_0 = '0' and i_n_cs_1 = '0'  else '1';
    
    
end architecture equation;


    
    








