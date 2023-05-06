-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(2 downto 0));
end entity;

architecture DutWrap of DUT is
   component Counter is
    port (
  
      counter_in : in std_logic_vector(2 downto 0);
      counter_out : out std_logic_vector(2 downto 0);
     
      clk : in std_logic
  
    ) ;
   end component ; -- counter(for LM,SM)
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Counter
			port map (
					-- order of inputs B A
					counter_in(0) => input_vector(0),
					counter_in(1) => input_vector(1),
					counter_in(2) => input_vector(2),
					clk => input_vector(3),
					
               -- order of output OUTPUT
					Counter_out(0)=>output_vector(0),
					Counter_out(1)=>output_vector(1),
					Counter_out(2)=>output_vector(2));
end DutWrap;