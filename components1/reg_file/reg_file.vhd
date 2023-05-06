library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_file_1 is
    port
    ( D1,D2,Dout       : out std_logic_vector(15 downto 0);-----output of RF (data read)
      D3,D0          : in  std_logic_vector(15 downto 0);	----- data write
      write_en 	: in  std_logic;
      reset    	: in  std_logic;
      A1,A2,A3    : in  std_logic_vector(2 downto 0);--- A1,A2 ADDRESS of data out, A3 address of data in 
      clk         : in  std_logic );
end reg_file_1;

architecture behave of reg_file_1 is
	type R is array(0 to 7) of std_logic_vector(15 downto 0); 
    --Eight 16-bit registers R(0) to R(7)
    signal registers : R := (others => (others => '0') ) ;
    
    begin
    
        regFile: process(clk,reset,write_en,A3)
        begin
                
             if (reset = '1') then
					 
                    registers <= (others => (others => '0') ) ;
					 
                elsif rising_edge(clk) then
							if(A3="000") then
								if (write_en = '1') then
										registers(to_integer(unsigned(A3))) <= D3;
									else 	
										registers(0)<= D0;
									end if;
							 
							  
						    else
								 if (write_en = '1') then
										registers(to_integer(unsigned(A3))) <= D3;
										registers(0)<= D0;
					         -------- as write enable of PC(R0) is always enable
								 
							     else
										registers(0)<= D0;
							     end if;
							end if;
                end if ;
    
        end process;
        D1 <= registers(to_integer(unsigned(A1))); 
        D2 <= registers(to_integer(unsigned(A2)));
        Dout <= registers(0);
	end behave;