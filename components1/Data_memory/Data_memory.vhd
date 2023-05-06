library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
entity data_memory is
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
end entity data_memory; -- memory

architecture memory_comp of data_memory is
    --Memory is a collection of 128 16-bit arrays
    type memory_database is array(0 to 127) of std_logic_vector(15 downto 0);
    signal memory_block : memory_database;
begin
    process(clk)
    begin 
    if (clk'event and clk = "1") then 
		  --if write is enable then write into memory
		  if (memory_write = "1") then
				--initialising with zeros
				if (initialize = "1") then 
					loop1 : for i in 0 to 127 loop
						 memory_block(i) <= "0000000000000000";
					end loop ; -- loop1
				else 
					memory_block(to_integer(unsigned(address_in(3 downto 0)))) <= data_in;
				end if;            
        end if;
    end if;

        data_out <= memory_block(to_integer(unsigned(address_in(3 downto 0)))); 

 end process;
end memory_comp; -- memory_comp