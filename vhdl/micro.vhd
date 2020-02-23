-- python C:\Users\BrANDon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__micro.do
library ieee;
use ieee.std_logic_1164.all;
  -- (
  -- input        i_en,
  -- input  [3:0] i_code,
  -- output       o_A,
  -- output       o_L,
  -- output       o_B);

entity micro is
  port ( 
  
        i_en   : in  std_logic;
        i_code : in  std_logic_vector(3 downto 0);
        o_A    : out std_logic;
        o_L    : out std_logic;
        o_B    : out std_logic);
  
        -- i_en       : in  std_logic;        
        -- i_code_0   : in  std_logic_vector(1 downto 0); 
        -- i_code_1   : in  std_logic_vector(1 downto 0); 
        -- i_code_2   : in  std_logic_vector(1 downto 0); 
        -- i_code_3   : in  std_logic_vector(1 downto 0); 
        -- i_sel_code : in  std_logic_vector(1 downto 0); 
        -- o_code     : out std_logic_vector(1 downto 0)); 

end micro;



  -- assign o_A = ~i_en ? 'Z:
               -- i_code == 4'b1010 | 
               -- i_code == 4'b1011 |
               -- i_code == 4'b1100 ? 1 : 0;
  
  -- assign o_L = ~i_en ? 'Z:
               -- i_code == 4'b0011 | 
               -- i_code == 4'b0100 |
               -- i_code == 4'b0010 |
               -- i_code == 4'b1110 ? 1 : 0;
               
  -- assign o_B = ~i_en ? 'Z:
               -- i_code == 4'b1111 ? 1 : 0;


architecture equation of micro is
  begin

    o_A <= '1';
    o_L <= '1';
    o_B <= '1';

  -- o_0 <= '0' when  i_a = '0' and i_b = '0' and i_c = '0' and i_d = '0' else '1';
  -- o_1 <= '0' when  i_a = '0' and i_b = '0' and i_c = '0' and i_d = '1' else '1';
  -- o_2 <= '0' when  i_a = '0' and i_b = '0' and i_c = '1' and i_d = '0' else '1';
  -- o_3 <= '0' when  i_a = '0' and i_b = '0' and i_c = '1' and i_d = '1' else '1';
  -- o_4 <= '0' when  i_a = '0' and i_b = '1' and i_c = '0' and i_d = '0' else '1';
  -- o_5 <= '0' when  i_a = '0' and i_b = '1' and i_c = '0' and i_d = '1' else '1';
  -- o_6 <= '0' when  i_a = '0' and i_b = '1' and i_c = '1' and i_d = '0' else '1';
  -- o_7 <= '0' when  i_a = '0' and i_b = '1' and i_c = '1' and i_d = '1' else '1';
  -- o_8 <= '0' when  i_a = '1' and i_b = '0' and i_c = '0' and i_d = '0' else '1';
  -- o_9 <= '0' when  i_a = '1' and i_b = '0' and i_c = '0' and i_d = '1' else '1';
    
    
end architecture equation;
