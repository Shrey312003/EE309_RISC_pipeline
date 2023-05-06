
library ieee;
use ieee.std_logic_1164.all;
entity mux_6to1_16 is
	Port ( x0,x1,x2,x3,x4,x5:in STD_LOGIC_VECTOR (15 downto 0);
			sel:in STD_LOGIC_VECTOR (2 downto 0);
			y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end mux_6to1_16;

architecture Behavioral of mux_6to1_16 is
begin
	process (x0,x1,x2,x3,x4,x5,sel)
begin
	case sel is
	when "000"=>y<=x0;
	when "001"=>y<=x1;
	when "010"=>y<=x2;
	when "011"=>y<=x3;
	when "100"=>y<=x4;
	when "101"=>y<=x5;
	end case;
end process;
end Behavioral;