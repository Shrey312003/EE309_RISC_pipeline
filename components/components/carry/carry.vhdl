Library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.Gates.all;

entity reg_carry is
port ( signal rega_input :in  std_logic ; --for n sized register vector will be n-1 down to 0
signal writ: in std_logic;
signal reset: in std_logic;
signal clk: in std_logic;
signal rega_output: out std_logic;
signal opcode: in std_logic_vector(3 downto 0);
 );
end reg_carry;

architecture sim of reg_carry is
	signal output: std_logic;
begin

process(clk) is
   begin
    if not (opcode = "1000" and opcode ="1001" and opcode ="1011") and rising_edge(clk) then
        output<=rega_input;
       elsif(reset='1') then
        rega_output<='0';
    end if;
	 rega_output<= output;
 end process;
end sim;