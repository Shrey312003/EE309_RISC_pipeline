-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(16 downto 0);
       	output_vector: out std_logic_vector(33 downto 0));
end entity;

architecture DutWrap of DUT is
   component Decoder is
    port
    (  instruct_info : in std_logic_vector(15 downto 0);
         clk : in std_logic;
       CB : out std_logic_vector(33 downto 0)
    );
end component ;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Decoder
			port map (
					-- order of inputs B A
					clk => input_vector(16),
					instruct_info  => input_vector(15 downto 0),
					
					
               -- order of output OUTPUT
					CB=>output_vector
					);
end DutWrap;