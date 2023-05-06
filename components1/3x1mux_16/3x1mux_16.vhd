
library ieee;
use ieee.std_logic_1164.all;
entity mux_3to1_16 is
	Port ( x0,x1,x2:in STD_LOGIC_VECTOR (15 downto 0);
			sel:in STD_LOGIC_VECTOR (1 downto 0);
			y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end mux_3to1_16;

architecture Behavioral of mux_3to1_16 is
begin
	process (x0,x1,x2,sel)
begin
	case sel is
	when "00"=>y<=x0;
	when "01"=>y<=x1;
	when "10"=>y<=x2;
	when others=> null;
	end case;
end process;
end Behavioral;