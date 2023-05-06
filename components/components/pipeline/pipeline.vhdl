Library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.Gates.all;

entity reg_a is
port ( signal rega_input :in  std_logic_vector(7 downto 0) ; --for n sized register vector will be n-1 down to 0
signal writ: in std_logic;
signal reset: in std_logic;
signal clk: in std_logic;
signal rega_output: out std_logic_vector(7 downto 0)
 );
end reg_a;

architecture sim of reg_a is
   signal output: std_logic_vector(7 downto 0);
begin

process(clk) is
   begin
    if rising_edge(clk) then
        output(7 downto 0)<=rega_input(7 downto 0);
       elsif(reset='1') then
        rega_output<="00000000";
    end if;
	     rega_output <= output(7 downto 0); 
 end process;
end sim;