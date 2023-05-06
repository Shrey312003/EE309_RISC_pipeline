-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(43 downto 0);
       	output_vector: out std_logic_vector(47 downto 0));
end entity;

architecture DutWrap of DUT is
   component reg_file_1 is
    port
    ( D1,D2,Dout       : out std_logic_vector(15 downto 0);-----output of RF (data read)
      D3,D0          : in  std_logic_vector(15 downto 0);	----- data write
      write_en 	: in  std_logic;
      reset    	: in  std_logic;
      A1,A2,A3    : in  std_logic_vector(2 downto 0);--- A1,A2 ADDRESS of data out, A3 address of data in 
      clk         : in  std_logic );
end component reg_file_1;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: reg_file_1
			port map (
					-- order of inputs B A
					D0 => input_vector(15 downto 0),
					D3 => input_vector(31 downto 16),
					write_en => input_vector(32),
					reset => input_vector(33),
					A1=> input_vector(36 downto 34),
					A2=>input_vector(39 downto 37),
					A3=>input_vector(42 downto 40),
					clk=>input_vector(43),
					
               -- order of output OUTPUT
					D1 => output_vector(15 downto 0),
					D2 => output_vector(31 downto 16),
					Dout =>output_vector(47 downto 32));
end DutWrap;