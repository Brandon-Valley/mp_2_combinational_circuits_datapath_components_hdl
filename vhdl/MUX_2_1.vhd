-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__MUX_2_1.do
library ieee;
use ieee.std_logic_1164.all;

-- //  Behavior Model
-- module MUX_2_1_v
  -- (
  -- input  [1:0] i_code,
  -- output       o_f);
  

  -- assign o_f =  i_code[0] ? 0 : 
                -- i_code[1] ? 1 : 0;  
-- endmodule


entity MUX_2_1 is
  port ( 
         i_code : in  std_logic_vector(1 downto 0);
         i_sel  : in  std_logic;
         o_f    : out std_logic;
         
end MUX_2_1;



architecture equation of MUX_2_1 is
  begin
    o_code <= i_code(1) when  i_sel else 
              i_code(0) when ~i_sel else '0';
end architecture equation;





-- //  Behavior Model
-- module MUX_2_1_v
  -- (
  -- input        i_en,
  -- input  [1:0] i_code,
  -- input        i_sel, 
  -- output       o_f);
  

  -- assign o_f =  i_sel & i_en ? i_code[1] :
               -- ~i_sel & i_en ? i_code[0] : 0;  
-- endmodule
