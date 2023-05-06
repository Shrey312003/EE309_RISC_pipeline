library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity L_shift is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(7 downto 0);
	data_out : out std_logic_vector(7 downto 0)
  ) ;
end entity ; -- left shifter shift by 1 bits

architecture Shift1 of L_shift is

begin


	data_out(7 downto 1) <= data_in(6 downto 0);
	data_out(0) <= '0';
	
	
end architecture ; --- left shifter(1)