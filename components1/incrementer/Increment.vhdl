library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity increment is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(2 downto 0);
	writ : in std_logic;
	data_out : out std_logic_vector(2 downto 0)
  ) ;
end entity ; 

architecture struct of increment is
    signal a: std_logic_vector(2 downto 0) := "001";
begin
	 process(writ)	 
begin
   if(writ = '1') then
	data_out <= (a xor data_in);
	
	else data_out <= data_in;
	end if;
	end process;
end architecture ; 