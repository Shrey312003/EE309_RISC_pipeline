--Extend 7 bit to 16 bit
library std;
library ieee;
use ieee.std_logic_1164.all;


entity SE7to16 is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(6 downto 0);
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end entity ; -- sign_extender_7

architecture SE7to16 of SE7to16 is

begin
data_out(6 downto 0) <= data_in(6 downto 0);
data_out(7) <= data_in(6);
data_out(8) <= data_in(6);
data_out(9) <= data_in(6);
data_out(10) <= data_in(6);
data_out(11) <= data_in(6);
data_out(12) <= data_in(6);
data_out(13) <= data_in(6);
data_out(14) <= data_in(6);
data_out(15) <= data_in(6);

end architecture ; -- SE7