Library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.Gates.all;

entity reg_e is
port ( signal rega_input :in  std_logic_vector(57 downto 0) ; --for n sized register vector will be n-1 down to 0
signal writ: in std_logic;
signal reset: in std_logic;
signal clk: in std_logic;
signal rega_output: out std_logic_vector(57 downto 0)
 );
end reg_e;

architecture sim of reg_e is
   signal output: std_logic_vector(57 downto 0);
begin

process(clk,writ,reset) is
   begin
    if rising_edge(clk) then
	     if(writ='1') then
        output(57 downto 0)<=rega_input(57 downto 0);
		  end if;
		  
       elsif(reset='1') then
        rega_output<="0000000000000000000000000000000000000000000000000000000000";
    end if;
	     rega_output(57 downto 0) <= output(57 downto 0); 
 end process;
end sim;