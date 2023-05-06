-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(13 downto 0);
       	output_vector: out std_logic_vector(2 downto 0));
end entity;

architecture DutWrap of DUT is
  component mux_4to1_3  is
	Port ( x0,x1,x2,x3:in STD_LOGIC_VECTOR (2 downto 0);
			sel:in STD_LOGIC_VECTOR (1 downto 0);
			y : out STD_LOGIC_VECTOR (2 downto 0)
			);
  end component mux_4to1_3 ;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: mux_4to1_3 
			port map (
					-- order of inputs B A
					
					sel => input_vector(13 downto 12),
					x3 => input_vector(11 downto 9),
					x2 => input_vector(8 downto 6),
					x1 => input_vector(5 downto 3),
					x0 => input_vector(2 downto 0),
					
					
               -- order of output OUTPUT
					
					y => output_vector(2 downto 0)
					);
end DutWrap;