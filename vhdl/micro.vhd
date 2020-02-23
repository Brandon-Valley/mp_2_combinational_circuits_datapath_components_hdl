-- python C:\Users\BrANDon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__micro.do
library ieee;
use ieee.std_logic_1164.all;


entity micro is
  port ( 
        i_en       : in  std_logic;        
        i_code_0   : in  std_logic_vector(1 downto 0); 
        i_code_1   : in  std_logic_vector(1 downto 0); 
        i_code_2   : in  std_logic_vector(1 downto 0); 
        i_code_3   : in  std_logic_vector(1 downto 0); 
        i_sel_code : in  std_logic_vector(1 downto 0); 
        o_code     : out std_logic_vector(1 downto 0)); 

end micro;


-- Component Model
architecture equation of micro is
  component MUX_4_1 is
  port ( 
        i_en       : in  std_logic;
        i_code     : in  std_logic_vector(3 downto 0);
        i_sel_code : in  std_logic_vector(1 downto 0);
        o_f        : out std_logic);
  end component MUX_4_1;

    -- -- temp outs
  signal fi0 : std_logic_vector(3 downto 0) := i_code_0(0) & i_code_1(0) & i_code_2(0) & i_code_3(0);
  signal fi1 : std_logic_vector(3 downto 0) := i_code_0(1) & i_code_1(1) & i_code_2(1) & i_code_3(1);

  begin
    MUX1 : MUX_4_1 port map (i_en, fi0, i_sel_code, o_code(0));
    MUX0 : MUX_4_1 port map (i_en, fi1, i_sel_code, o_code(1));
   
end architecture equation;






