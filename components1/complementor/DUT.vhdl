-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(16 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component complementor is
     Port ( x:in STD_LOGIC_VECTOR (15 downto 0);
				check: in STD_LOGIC ;
			y : out STD_LOGIC_VECTOR (15 downto 0)
			);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: complementor
			port map (
					-- order of inputs B A
					x(15 downto 0) => input_vector(15 downto 0),
					check => input_vector(16),
					
					
               -- order of output OUTPUT
					y => output_vector);
end DutWrap;