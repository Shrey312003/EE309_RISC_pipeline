library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity mux_4to1_1 is
 port(

     x0,x1,x2,x3:in STD_LOGIC_VECTOR (0 downto 0);
     sel1:in STD_LOGIC_VECTOR (1 downto 0);
	  sel2:in STD_LOGIC_VECTOR (1 downto 0);
     y : out STD_LOGIC_VECTOR (0 downto 0)
     );
end mux_4to1_1 ;
 
architecture Behavioral of mux_4to1_1  is
begin
process (x0,x1,x2,x3,sel1,sel2)
begin
case sel1 is
when "0110" => y<=x0;
when "0111" => y<=x0;
when  "0001" =>
	case sel2 is
		when "00" => y<=x3;
		when "01" => y<=x2;
		when "10" => y<=x1;
		when "11" => y<=x3;
	end case;
when  "0010" =>
	case sel2 is
		when "00" => y<=x3;
		when "01" => y<=x2;
		when "10" => y<=x1;
		when "11" => y<=x3;
	end case;
when "0000" =>
		y<=x3;
when "0011" =>
		y<=x3;
when "0100" =>
		y<=x3;
when "0101" =>
		y<=x3;
when "1000" =>
		y<=x3;
when "1001" =>
		y<=x3;
when "1011" =>
		y<=x3;
when "1100" =>
		y<=x3;
when "1101" =>
		y<=x3;
when "1111" =>
		y<=x3;
when others=> null;
end case;
end process;
end Behavioral;