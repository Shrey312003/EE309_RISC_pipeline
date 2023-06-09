library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity mux_2x1_16 is
 port(
 
     x0,x1:in STD_LOGIC_vector(15 downto 0);
     sel:in STD_LOGIC_vector(0 downto 0);
     y : out STD_LOGIC_vector(15 downto 0)
  );
end mux_2x1_16 ;
 
architecture Behavioral of mux_2x1_16  is
--signal y :  STD_LOGIC_vector(15 downto 0) ;
begin
process (x0,x1,sel)
begin
case sel is
when "0"=>y<=x0;
when "1"=>y<=x1;

when others=> null;
end case;
end process;

--y <= yout ;
end Behavioral;