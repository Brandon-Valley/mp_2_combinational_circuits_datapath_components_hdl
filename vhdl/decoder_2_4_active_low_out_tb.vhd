-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__decoder_2_4_active_low_out.do

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity decoder_2_4_active_low_out_tb is
end entity decoder_2_4_active_low_out_tb;

architecture verify of decoder_2_4_active_low_out_tb is


  signal i_en   : std_logic;
  signal i_code : std_logic_vector(3 downto 0);
  signal o_A    : std_logic;
  signal o_L    : std_logic;
  signal o_B    : std_logic;


  
  -- signal i_en       : std_logic;        
  -- signal i_code_0   : std_logic_vector(1 downto 0); 
  -- signal i_code_1   : std_logic_vector(1 downto 0); 
  -- signal i_code_2   : std_logic_vector(1 downto 0); 
  -- signal i_code_3   : std_logic_vector(1 downto 0); 
  -- signal i_sel_code : std_logic_vector(1 downto 0); 
  -- signal o_code     : std_logic_vector(1 downto 0); 



  signal input : std_logic_vector (4 downto 0) := "00000"; -- must be correct

begin
  duv: entity work.decoder_2_4_active_low_out(equation)

 
  port map(i_en   => i_en  ,    
           i_code => i_code,
           o_A    => o_A   ,
           o_L    => o_L   ,
           o_B    => o_B     
          ); 
              
              
  apply_test_cases : process is
    procedure apply_test
      ( itst : in std_logic_vector(4 downto 0)) is
        
    begin 
        
      i_code <= itst(3 downto 0);
      i_en       <= itst(4);
        
    
      wait for 1 ms;
    end procedure apply_test;
    
  begin
    for i in 0 to 34 loop
      apply_test(input);
      input <= input + "0001";
     end loop;    
    wait;
end process apply_test_cases;

end architecture verify;

    
    