-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(95 downto 0);
       	output_vector: out std_logic_vector(92 downto 0));
end entity;

architecture DutWrap of DUT is
   
component reg_a is
port ( signal rega_input :in  std_logic_vector(92 downto 0) ; --for n sized register vector will be n-1 down to 0
signal writ: in std_logic;
signal reset: in std_logic;
signal clk: in std_logic;
signal rega_output: out std_logic_vector(92 downto 0)
 );
end component reg_a;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: reg_a 
			port map (
					-- order of inputs B A
					rega_input(92 downto 0) => input_vector(92 downto 0),   --for n sized n-1 down to 0;
					writ => input_vector(93),                              -- nth bit             
					reset => input_vector(94),                             -- (n+1)th bit
					clk => input_vector(95),                               -- (n+2)nd bit
			      -- order of output OUTPUT
					rega_output(92 downto 0) => output_vector(92 downto 0));
end DutWrap;