library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity shift_9_10 is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(8 downto 0);
	data_out : out std_logic_vector(9 downto 0)
  ) ;
end entity ; -- left shifter shift by 1 bits

architecture Shift9 of shift_9_10 is

begin


	data_out(9 downto 1) <= data_in(8 downto 0);
	data_out(0) <= '0';
	
	
end architecture ; --- left shifter(1)