--Extend 7 bit to 16 bit
library std;
library ieee;
use ieee.std_logic_1164.all;


entity LLI is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	x : in std_logic_vector(8 downto 0);
	y : out std_logic_vector(15 downto 0)
  ) ;
end entity ; 

architecture LLI of LLI is

begin
y <= "0000000" & x;

end architecture ; 