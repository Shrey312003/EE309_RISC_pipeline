-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic);
end entity;

architecture DutWrap of DUT is
   
component reg_a is
port ( signal rega_input :in  std_logic ;
signal writ: in std_logic;                             
signal reset: in std_logic;
signal clk: in std_logic;
signal rega_output: out std_logic
 );
end component reg_a;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: reg_a 
			port map (
					-- order of inputs B A
					rega_input => input_vector(0),   --for n sized n-1 down to 0;
					writ => input_vector(1),              
					reset => input_vector(2),
					clk => input_vector(3),
			      -- order of output OUTPUT
					rega_output => output_vector);
end DutWrap;