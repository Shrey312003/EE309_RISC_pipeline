library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

                
entity Adder is              ---16 bit Adder using for updating PC
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in_1 : in std_logic_vector(15 downto 0);
	data_in_2 : in std_logic_vector(15 downto 0);
	wrt : in std_logic;
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end entity ; 

architecture add of Adder is
       signal output : std_logic_vector(15 downto 0);
begin
 process(wrt)
  begin
    if(wrt='1') then
       output(15 downto 0) <= std_logic_vector(unsigned(data_in_1) + unsigned(data_in_2));
	 else 
	    output(15 downto 0) <= "0000000000000000";
	 end if;  

	  data_out(15 downto 0) <= output(15 downto 0); 
 end process;
 
end architecture ;