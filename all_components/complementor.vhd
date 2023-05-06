
library ieee;
use ieee.std_logic_1164.all;
entity complementor is
	Port ( x:in STD_LOGIC_VECTOR (15 downto 0);
			 check: in STD_LOGIC;
			 y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end complementor;

architecture Behavioral of complementor is
begin
	process (x)
begin
	if(check ='1' ) then
		y <= x xor x"FFFF";
	else
		y<=x;
	end if;
end process;
end Behavioral;
