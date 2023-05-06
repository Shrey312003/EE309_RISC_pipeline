-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(41 downto 0);
       	output_vector: out std_logic_vector(17 downto 0));
end entity;

architecture DutWrap of DUT is
   component ALU is
	  port (
		
		alu_a : in std_logic_vector(15 downto 0);
		alu_b : in std_logic_vector(15 downto 0);

		cz: in std_logic_vector(1 downto 0 );
		carry_in: in std_logic_vector(0 downto 0); --input carry 
		zero_in: in std_logic_vector(0 downto 0); --input zero
		alu_op : in std_logic_vector(5 downto 0); --opcode to classify the type of instruction 
		alu_out : out std_logic_vector(15 downto 0);
		carry : out std_logic; --carry_out
		zero : out std_logic --zero_out
	  ) ;
	end component ; -- ALU
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: ALU
			port map (
					-- order of inputs B A
					alu_op => input_vector(41 downto 36),
					cz => input_vector(35 downto 34),
					carry_in => input_vector(33 downto 33),
					zero_in => input_vector(32 downto 32),
					alu_a => input_vector(31 downto 16),
					alu_b => input_vector(15 downto 0),
					
					
					
               -- order of output OUTPUT
					carry => output_vector(17),
					zero => output_vector(16),
					alu_out=> output_vector(15 downto 0));
					
end DutWrap;