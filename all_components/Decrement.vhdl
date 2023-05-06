library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Decrement is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(15 downto 0);
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end entity ; 

architecture struct of Decrement is
    signal a: std_logic_vector(15 downto 0) := "1111111111111110";
begin
	  
	data_out <= (a xor data_in);
	
end architecture ; 