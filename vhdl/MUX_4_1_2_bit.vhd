-- python C:\Users\BrANDon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__MUX_4_1_2_bit.do
library ieee;
use ieee.std_logic_1164.all;




entity MUX_4_1_2_bit is
  port ( 
        i_en       : in  std_logic;        
        i_code_0   : in  std_logic_vector(1 downto 0); 
        i_code_1   : in  std_logic_vector(1 downto 0); 
        i_code_2   : in  std_logic_vector(1 downto 0); 
        i_code_3   : in  std_logic_vector(1 downto 0); 
        i_sel_code : in  std_logic_vector(1 downto 0); 
        o_code     : out std_logic_vector(1 downto 0)); 

end MUX_4_1_2_bit;




-- entity OR4 is
  -- port ( i_a : in  std_logic;
         -- i_b : in  std_logic;
         -- i_c : in  std_logic;
         -- i_d : in  std_logic;
         -- o_f : out std_logic);
-- end OR4;



-- -- Component Model
-- architecture cmpnt of OR4 is
  -- component OR2 is
    -- port ( i_a : in  std_logic;
           -- i_b : in  std_logic;
           -- o_f : out std_logic);
  -- end component OR2;
 
    
  -- -- temp outs for OR2s
  -- signal f_1_o : std_logic; 
  -- signal f_2_o : std_logic; 
    
  -- begin
    -- OR2_1 : OR2 port map (i_a,   i_b,   f_1_o);
    -- OR2_2 : OR2 port map (i_c,   i_d,   f_2_o);
    -- OR2_3 : OR2 port map (f_1_o, f_2_o, o_f);
-- end architecture cmpnt;



-- Component Model
architecture equation of MUX_4_1_2_bit is
  component MUX_4_1 is
  port ( 
        i_en       : in  std_logic;
        i_code     : in  std_logic_vector(3 downto 0);-- := "0000";
        i_sel_code : in  std_logic_vector(1 downto 0);-- :=  "00";
        o_f        : out std_logic);
  end component MUX_4_1;

    -- -- temp outs
  signal fi0 : std_logic_vector(3 downto 0) := i_code_0(0) & i_code_1(0) & i_code_2(0) & i_code_3(0);
  signal fi1 : std_logic_vector(3 downto 0) := i_code_0(1) & i_code_1(1) & i_code_2(1) & i_code_3(1);

  begin
    MUX1 : MUX_4_1 port map (i_en, fi0, i_sel_code, o_code(0));
    MUX0 : MUX_4_1 port map (i_en, fi1, i_sel_code, o_code(1));
    -- MUX3 : MUX_4_1 port map (i_en, "000" & i_code_0(0 downto 0), i_sel_code, o_code(0));
    -- MUX3 : MUX_4_1 port map (i_en, "000" & to_stdlogicvector(i_code(0)), i_sel_code, o_code(0));
    -- MUX1 : MUX_4_1 port map (i_en, "000" & i_code_0(1), i_sel_code, o_code(0));
    -- MUX2 : MUX_4_1 port map (i_en, "0000", i_sel_code, o_code(1));
    
  -- o_code <= "10";
  





-- //  Component Model
-- module MUX_4_1_2_bit_v
  -- (
  -- input        i_en,
  -- input  [1:0] i_code_0,
  -- input  [1:0] i_code_1,
  -- input  [1:0] i_code_2,
  -- input  [1:0] i_code_3,
  -- input  [1:0] i_sel_code, 
  -- output [1:0] o_code);   
  
  
  -- MUX_4_1_v mux0 (i_en, {i_code_0[0], i_code_1[0], i_code_2[0], i_code_3[0]}, i_sel_code, o_code[0]);
  -- MUX_4_1_v mux1 (i_en, {i_code_0[1], i_code_1[1], i_code_2[1], i_code_3[1]}, i_sel_code, o_code[1]);
  
  
-- endmodule



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


    
    








