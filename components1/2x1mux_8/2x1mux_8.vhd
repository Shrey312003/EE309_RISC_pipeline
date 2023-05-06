
library ieee;
use ieee.std_logic_1164.all;
entity mux_2to1_8 is
	Port ( x0,x1:in STD_LOGIC_VECTOR (7 downto 0);
			sel:in STD_LOGIC_VECTOR (0 downto 0);
			y : out STD_LOGIC_VECTOR (7 downto 0)
			);
end mux_2to1_8;

architecture Behavioral of mux_2to1_8 is
begin
	process (x0,x1,sel)
begin
	case sel is
	when "0"=>y<=x0;
	when "1"=>y<=x1;
	end case;
end process;
end Behavioral;