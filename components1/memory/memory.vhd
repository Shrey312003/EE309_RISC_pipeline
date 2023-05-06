library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Use a separate library statement for the textio package
library std;
use std.textio.all;

entity memory is
  generic (
    depth : integer := 1024; -- number of words in the Instruction memory
    width : integer := 16     -- width of each word in bits
  );
  port (
    clk : in std_logic;     -- clock input
    addr : in std_logic_vector(9 downto 0); -- address input
    data_out : out std_logic_vector(width-1 downto 0)  -- data output
  );
end entity memory;

architecture behavioral of memory is
  type memory_type is array (0 to depth-1) of std_logic_vector(width-1 downto 0);
  signal memory_data : memory_type := (others => (others => '0')); -- initialize memory with zeros
  
begin
  -- read data from file and store it in memory
  process
    file input_file : text open read_mode is "data.txt";
    variable line_buffer : line;
	 variable i: integer;
    variable data_buffer : std_logic_vector(width-1 downto 0);
    variable address : integer := 0;
  begin
    -- read each line from the file and store it in memory
    while not endfile(input_file) loop
      readline(input_file, line_buffer);
		loop1: for item in 0 to 15 loop
			read(line_buffer, i);
			data_buffer(item) := std_logic_vector(to_unsigned(i,1))(0);
		end loop loop1;
      memory_data(address/2) <= data_buffer;
      address := address + 2;
    end loop;
    
    file_close(input_file); -- close the file when done reading
  end process;

  -- memory behavior
  process(clk)
  begin
    if rising_edge(clk) then
      data_out <= memory_data(to_integer(unsigned(addr)));
    end if;
  end process;
  
end architecture behavioral;
