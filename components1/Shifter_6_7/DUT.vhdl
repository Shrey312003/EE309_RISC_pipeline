-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(6 downto 0));
end entity;

architecture DutWrap of DUT is
   
component shifter_6_7  is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(5 downto 0);
	data_out : out std_logic_vector(6 downto 0)
  ) ;
end component shifter_6_7;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: shifter_6_7 
			port map (
					-- order of inputs B A
					data_in => input_vector(5 downto 0),
			      -- order of output OUTPUT
					data_out => output_vector(6 downto 0));
end DutWrap;