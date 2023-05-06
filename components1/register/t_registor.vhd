library ieee;
use ieee.std_logic_1164.all;

entity t_registor is
    port (
  
      reg_in : in std_logic_vector(15 downto 0);
      reg_out : out std_logic_vector(15 downto 0);
      reg_enable : in std_logic;
      clk : in std_logic
  
    ) ;
  end entity ; -- register_data
  
  architecture IR_inst of t_registor is
  
  begin
  
      process(clk) 
      begin 
          if (clk'event and clk = '1') then 
              if reg_enable = '1' then 
                  reg_out <= reg_in;
              end if;
          end if;
      end process;
  
  
  end architecture ; -- IR_inst