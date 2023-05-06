--Extend 10 bit to 16 bit
library std;
library ieee;
use ieee.std_logic_1164.all;


entity SE6 is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(9 downto 0);
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end entity ; -- sign_extender_6

architecture SE6 of SE6 is

begin


	data_out(9 downto 0) <= data_in(9 downto 0);
	data_out(10) <= data_in(9);
	data_out(11) <= data_in(9);
	data_out(12) <= data_in(9);
	data_out(13) <= data_in(9);
	data_out(14) <= data_in(9);
	data_out(15) <= data_in(9);
	
end architecture ; -- SE6