library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
entity instr_memory is
  port (
  
	--Address in 
	address_in : in std_logic_vector(15 downto 0);

	--Used to Initialize
	initialize : in std_logic_vector(0 downto 0);

	--Data out (for read)
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end entity instr_memory; -- memory

architecture memory_comp of instr_memory is
	
    --Memory is a collection of 128 16-bit arrays
    type memory_database is array(0 to 127) of std_logic_vector(7 downto 0);
	
   signal memory_block : memory_database ;

		-- even block is lsb and odd block is msb
		begin        
                         --LLI and JAL
				 memory_block(0) <= "00000001";
				 memory_block(1) <= "00110010";
				 memory_block(2) <= "00000000";
				 memory_block(3) <= "11001010";
				 memory_block(4) <= "00000000";
		
      
		--	memory_block(to_integer(unsigned(address_in(3 downto 0)))) <= data_in;
			            
    

        data_out <= memory_block(to_integer(unsigned(address_in))+1) & memory_block(to_integer(unsigned(address_in))); 


end memory_comp; -- memory_comp