-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(32 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   
component Adder is              ---16 bit Adder using for updating PC
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in_1 : in std_logic_vector(15 downto 0);
	data_in_2 : in std_logic_vector(15 downto 0);
	wrt : in std_logic;
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end component ; 


begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Adder 
			port map (
					-- order of inputs B A
					data_in_1(15 downto 0) => input_vector(15 downto 0),
					data_in_2(15 downto 0) => input_vector(15 downto 0),
					wrt => input_vector(32),
			      -- order of output OUTPUT
					data_out(15 downto 0) => output_vector(15 downto 0));
end DutWrap;