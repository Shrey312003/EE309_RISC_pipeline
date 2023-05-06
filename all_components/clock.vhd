library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock is
--port (clk : out std_logic);
end entity clock;

architecture bhv of clock is

signal rst : std_logic := '0';
--constant clk_frequency : integer := 2e4; --set time period to 5ns
constant clk_period : time:= 40000 ps;
signal clk: std_logic := '1';
signal R1: std_logic_vector(15 downto 0);

component main is
 port (clk, rst : IN STD_LOGIC);
end component;

begin
dut_instance: main port map(clk, rst);
proc: process(clk)
begin
rst <= '0';

-- Turn off reset
--R1<=R1;
clk<= not clk after clk_period/2;

end process;
	
end bhv;