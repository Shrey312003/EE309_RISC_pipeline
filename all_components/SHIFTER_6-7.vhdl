library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity shifter_6_7 is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(5 downto 0);
	data_out : out std_logic_vector(6 downto 0)
  ) ;
end entity ; -- left shifter shift by 1 bits

architecture Shift1 of shifter_6_7 is

begin


	data_out(6 downto 1) <= data_in(5 downto 0);
	data_out(0) <= '0';
	
	
end architecture ; --- left shifter(1)