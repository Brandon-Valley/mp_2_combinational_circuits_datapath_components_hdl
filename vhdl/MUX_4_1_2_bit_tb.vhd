-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__MUX_4_1_2_bit.do

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity MUX_4_1_2_bit_tb is
end entity MUX_4_1_2_bit_tb;

architecture verify of MUX_4_1_2_bit_tb is


  
  signal i_en       : std_logic;        
  signal i_code_0   : std_logic_vector(1 downto 0); 
  signal i_code_1   : std_logic_vector(1 downto 0); 
  signal i_code_2   : std_logic_vector(1 downto 0); 
  signal i_code_3   : std_logic_vector(1 downto 0); 
  signal i_sel_code : std_logic_vector(1 downto 0); 
  signal o_code     : std_logic_vector(1 downto 0); 



  signal input : std_logic_vector (2 downto 0) := "000"; -- must be correct

begin
  duv: entity work.MUX_4_1_2_bit(equation)

 
 port map( i_en       => i_en      ,             
           i_code_0   => i_code_0  , 
           i_code_1   => i_code_1  ,   
           i_code_2   => i_code_2  ,   
           i_code_3   => i_code_3  ,   
           i_sel_code => i_sel_code, 
           o_code     => o_code    
          ); 
              
              
  apply_test_cases : process is
    procedure apply_test
      ( itst : in std_logic_vector(2 downto 0)) is
      -- ( e0, e1, e2, e3 : in std_logic) is                                  -- 4
      -- ( e0, e1, e2, e3, e4, e5, e6, e7 : in std_logic) is                  -- 7
        
    begin 
        
      i_sel_code <= itst(1 downto 0);
      i_en       <= itst(2);
      i_code_0   <= "00";
      i_code_1   <= "01";
      i_code_2   <= "10";
      i_code_3   <= "11";
        
    
      wait for 1 ms;
    end procedure apply_test;
    
  begin
    for i in 0 to 10 loop
      -- apply_test(input(3), input(2), input(1), input(0));
      apply_test(input);
      

      input <= input + "0001";
     end loop;

    
    wait;
end process apply_test_cases;

end architecture verify;

    
    