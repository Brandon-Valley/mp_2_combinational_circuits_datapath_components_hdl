-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__SN74145.do

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


  -- (input  [3:0] i_code,
   -- output [1:0] o_code,
   -- output       o_valid);
entity SN74145_tb is
end entity SN74145_tb;

architecture verify of SN74145_tb is
  -- signal i_a   : std_logic;
  -- signal i_b   : std_logic;
  -- signal i_c   : std_logic;
  -- signal i_d   : std_logic;
  -- signal o_f   : std_logic;
  -- signal input : std_logic_vector (3 downto 0) := "0000";
  
  signal i_code : std_logic_vector(3 downto 0);
  signal o_code : std_logic_vector(1 downto 0);
  signal o_valid: std_logic;
  
  signal input : std_logic_vector (3 downto 0) := "0000";


  
  

begin
  duv: entity work.SN74145(equation)
    -- port map( i_a => i_a,
              -- i_b => i_b,
              -- i_c => i_c,
              -- i_d => i_d,
              -- o_f => o_f);
    port map( 
              i_code => i_code,
              o_code => o_code,
              o_valid => o_valid);

              
  apply_test_cases : process is
    procedure apply_test
      -- ( input_test : in std_logic_vector(3 downto 0) is
      ( e0, e1, e2, e3 : in std_logic) is
    begin 
      -- i_a <= e0;
      -- i_b <= e1;
      -- i_c <= e2;
      -- i_d <= e3;
      i_code(0) <= e0;
      i_code(1) <= e1;
      i_code(2) <= e2;
      i_code(3) <= e3;
      
      
      wait for 1 ms;
    end procedure apply_test;
    
  begin
    for i in 0 to 18 loop
      apply_test(input(3), input(2), input(1), input(0));
      -- apply_test(input);
      
      -- i_code <= input;
      -- i_code <= "0010";
      -- wait for 1 ms;
      
      
      input <= input + "0001";
     end loop;
  
  
  
    -- -- test
    -- apply_test('0', '0', '0', '0');
    -- apply_test('0', '1', '0', '0');
    -- apply_test('1', '1', '1', '1');


    
    wait;
end process apply_test_cases;

end architecture verify;

    
    
    
    
    
    
-- begin
  -- -- Model Options:  cmpnt, equation, behavior
  -- duv: entity work.OR4(cmpnt)
    -- port map( i_a => i_a,
              -- i_b => i_b,
              -- i_c => i_c,
              -- i_d => i_d,
              -- o_f => o_f);
              
  -- apply_test_cases : process is
    -- procedure apply_test
      -- ( e0, e1, e2, e3 : in std_logic) is
    -- begin 
      -- i_a <= e0;
      -- i_b <= e1;
      -- i_c <= e2;
      -- i_d <= e3;
      -- wait for 1 ms;
    -- end procedure apply_test;
    
  -- begin
    -- for i in 0 to 16 loop
      -- apply_test(input(3), input(2), input(1), input(0));
      -- input <= input + "0001";
     -- end loop;
  
  
  
    -- test
    -- -- apply_test('0', '0', '0', '0');
    -- -- apply_test('0', '1', '0', '0');
    -- -- apply_test('1', '1', '1', '1');


    
    -- wait;
-- end process apply_test_cases;

-- end architecture verify;

    

    


    



    




  
  

