-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__SN74145.do

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity SN74145_tb is
end entity SN74145_tb;

architecture verify of SN74145_tb is
  signal i_a      : std_logic;
  signal i_b      : std_logic;
  signal i_c      : std_logic;
  signal i_d      : std_logic;
  
  signal i_cs     : std_logic;
  signal i_n_cs_0 : std_logic;
  signal i_n_cs_1 : std_logic;

  signal o_0      : std_logic;
  signal o_1      : std_logic;
  signal o_2      : std_logic;
  signal o_3      : std_logic;
  signal o_4      : std_logic;
  signal o_5      : std_logic;
  signal o_6      : std_logic;
  signal o_7      : std_logic;
  signal o_8      : std_logic;
  signal o_9      : std_logic;

  signal input : std_logic_vector (6 downto 0) := "0000000";

begin
  duv: entity work.SN74145(equation)

    port map( i_a      => i_a     ,  
              
              i_b      => i_b     ,  
              i_c      => i_c     ,  
              i_d      => i_d     ,  

              i_cs     => i_cs    ,  
              i_n_cs_0 => i_n_cs_0,  
              i_n_cs_1 => i_n_cs_1,  

              o_0      => o_0     ,  
              o_1      => o_1     ,  
              o_2      => o_2     ,  
              o_3      => o_3     ,  
              o_4      => o_4     ,  
              o_5      => o_5     ,  
              o_6      => o_6     ,  
              o_7      => o_7     ,  
              o_8      => o_8     ,
              o_9      => o_9       
              
              ); 
              
  apply_test_cases : process is
    procedure apply_test
      ( itst : in std_logic_vector(6 downto 0)) is
      -- ( e0, e1, e2, e3 : in std_logic) is                                  -- 4
      -- ( e0, e1, e2, e3, e4, e5, e6, e7 : in std_logic) is                  -- 7
        
       
        
    begin 
      
      i_a      <= itst(0);
      i_b      <= itst(1);
      i_c      <= itst(2);
      i_d      <= itst(3);
      i_cs     <= itst(4);
      i_n_cs_0 <= itst(5);
      i_n_cs_1 <= itst(6); 
 
      wait for 1 ms;
    end procedure apply_test;
    
  begin
    for i in 0 to 18 loop
      -- apply_test(input(3), input(2), input(1), input(0));
      apply_test(input);
      

      input <= input + "0001";
     end loop;

    
    wait;
end process apply_test_cases;

end architecture verify;

    
    