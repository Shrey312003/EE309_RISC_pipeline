-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(10 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component memory is
	  generic (
		 depth : integer := 1024; -- number of words in the memory
		 width : integer := 16     -- width of each word in bits
	  );
	  port (
		 clk : in std_logic;     -- clock input
		 addr : in std_logic_vector(9 downto 0); -- address input
		 data_out : out std_logic_vector(15 downto 0)  -- data output
	  );
end component memory;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: memory
			port map (
					-- order of inputs B A
					
					clk => input_vector(10),
					addr => input_vector(9 downto 0),
					
					
               -- order of output OUTPUT
					
					
					data_out => output_vector(15 downto 0));
end DutWrap;