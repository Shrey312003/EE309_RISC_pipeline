-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(9 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component SE6 is
     Port ( data_in:in STD_LOGIC_VECTOR (9 downto 0);
			data_out: out STD_LOGIC_VECTOR (15 downto 0)
			);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: SE6
			port map (
					-- order of inputs B A
					data_in => input_vector,
					
					
               -- order of output OUTPUT
					data_out => output_vector);
end DutWrap;