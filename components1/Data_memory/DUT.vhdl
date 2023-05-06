-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(34 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
component data_memory is
  port (
  	--Clock 
	clk : in std_logic_vector(0 downto 0);

	--Memory read and write enables

	memory_write : in std_logic_vector(0 downto 0);

	--Address in 
	address_in : in std_logic_vector(15 downto 0);

	--Data in (for write)
	data_in : in std_logic_vector(15 downto 0);

	--Used to Initialize
	initialize : in std_logic_vector(0 downto 0);

	--Data out (for read)
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end component data_memory; -- memory
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: data_memory
			port map (
					-- order of inputs B A
					
					clk => input_vector(34 downto 34),
					memory_write => input_vector(33 downto 33),
					initialize => input_vector(33 downto 33),
					address_in => input_vector(31 downto 16),
					data_in => input_vector(15 downto 0),
               -- order of output OUTPUT
					
					
					data_out => output_vector(15 downto 0));
end DutWrap;