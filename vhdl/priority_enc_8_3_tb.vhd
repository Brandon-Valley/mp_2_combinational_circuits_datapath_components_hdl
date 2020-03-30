-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_8_3.do

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;



entity priority_enc_8_3_tb is
end entity priority_enc_8_3_tb;

architecture verify of priority_enc_8_3_tb is
  
  signal i_code : std_logic_vector(7 downto 0);
  signal o_code : std_logic_vector(2 downto 0);
  
  signal input : std_logic_vector (3 downto 0) := "0000";


begin
  duv: entity work.priority_enc_8_3(equation)

    port map( 
              i_code => i_code,
              o_code => o_code);

  apply_test_cases : process is
    procedure apply_test
      ( input_test : in std_logic_vector(3 downto 0)) is
    begin 

      i_code(0) <= input(0);
      i_code(1) <= input(1);
      i_code(2) <= input(2);
      i_code(3) <= input(3);      
      
      wait for 1 ms;
    end procedure apply_test;
    
    
    
  begin
    for i in 0 to 18 loop
      apply_test(input);

      -- wait for 1 ms;

      input <= input + "0001";
    end loop;

    
    wait;
end process apply_test_cases;

end architecture verify;

    
    
    
    