library ieee;
use ieee.std_logic_1164.all;

entity Counter is
    port (
  
      counter_in : in std_logic_vector(2 downto 0);
      counter_out : out std_logic_vector(2 downto 0);
     
      clk : in std_logic
  
    ) ;
  end entity ; -- counter(for LM,SM)
  
  architecture count_inst of counter is
  
  begin
  
      process(clk) 
      begin 
          if (clk'event and clk = '1') then 
              counter_out <= counter_in;
          end if;
      end process;
  
  
  end architecture ; -- counter_inst