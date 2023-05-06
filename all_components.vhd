library std;
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;


--A package declaration is used to store a set of common declarations, such as components.
--These declarations can then be imported into other design units using a use clause.
package all_components  is 
--------------2x1_3--------------------------
component mux_2to1_3 is
    port(
    
        x0,x1:in STD_LOGIC_vector(2 downto 0);
        sel:in STD_LOGIC_vector(0 downto 0);
        y : out STD_LOGIC_vector(2 downto 0)
     );
end component mux_2to1_3 ;
--------------2x1_8--------------------------
component mux_2to1_8 is
	Port ( x0,x1:in STD_LOGIC_VECTOR (7 downto 0);
			sel:in STD_LOGIC_VECTOR (0 downto 0);
			y : out STD_LOGIC_VECTOR (7 downto 0)
			);
end component mux_2to1_8;
----------3x1_16-------------------------------
component  mux_3to1_16 is
	Port ( x0,x1,x2:in STD_LOGIC_VECTOR (15 downto 0);
			sel:in STD_LOGIC_VECTOR (1 downto 0);
			y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end component mux_3to1_16;
---------------4x1_1-------------------------
component mux_4to1_1 is
    port(
   
        x0,x1,x2,x3:in STD_LOGIC_VECTOR (0 downto 0);
        sel1:in STD_LOGIC_VECTOR (3 downto 0);
         sel2:in STD_LOGIC_VECTOR (1 downto 0);
        y : out STD_LOGIC_VECTOR (0 downto 0)
        );
end component mux_4to1_1 ;
------------5x1_16-----------------------------
component mux_5to1_16 is
	Port ( x0,x1,x2,x3,x4:in STD_LOGIC_VECTOR (15 downto 0);
			sel:in STD_LOGIC_VECTOR (2 downto 0);
			y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end component mux_5to1_16;
--------------------6x1_16---------------------
component mux_6to1_16 is
	Port ( x0,x1,x2,x3,x4,x5:in STD_LOGIC_VECTOR (15 downto 0);
			sel:in STD_LOGIC_VECTOR (2 downto 0);
			y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end component mux_6to1_16;

---------------Adder--------------------------
component Adder is              ---16 bit Adder using for updating PC
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in_1 : in std_logic_vector(15 downto 0);
	data_in_2 : in std_logic_vector(15 downto 0);
	wrt : in std_logic;
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end component ; 
-----------------alu-------------------------
component ALU is
    port (
      
      alu_a : in std_logic_vector(15 downto 0);
      alu_b : in std_logic_vector(15 downto 0);
  
      cz: in std_logic_vector(1 downto 0 );
      carry_in: in std_logic_vector(0 downto 0); --input carry 
      zero_in: in std_logic_vector(0 downto 0); --input zero
      alu_op : in std_logic_vector(3 downto 0); --opcode to classify the type of 
		
      alu_out : out std_logic_vector(15 downto 0);
      carry : out std_logic;
      zero : out std_logic
    ) ;
  end component ; -- ALU
---------------carry-----------------------
component reg_carry is
    port ( signal rega_input :in  std_logic ; --for n sized register vector will be n-1 down to 0
    signal writ: in std_logic;
    signal reset: in std_logic;
    signal clk: in std_logic;
    signal rega_output: out std_logic;
    signal opcode: in std_logic_vector(3 downto 0)
     );
end component reg_carry;
--------------clock------------------------
--component clockTb is
--    --port (clk : out std_logic);
--end component clockTb;
--    
---------complementor-------------------------
component complementor is
	Port ( x:in STD_LOGIC_VECTOR (15 downto 0);
			 check: in STD_LOGIC_VECTOR(0 downto 0);
			 y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end component complementor;
------------Counter---------------------------
component Counter1 is
    port (
  
      counter_in : in std_logic_vector(2 downto 0);
      counter_out : out std_logic_vector(2 downto 0);
     
      clk : in std_logic
  
    ) ;
end component ; -- counter(for LM,SM)

----------
-------------------
component data_memory is
    port (
        --Clock 
      clk : in std_logic;
  
      --Memory read and write enables
  
      memory_write : in std_logic_vector(0 downto 0);
  
      --Address in 
      address_in : in std_logic_vector(15 downto 0);
  
      --Data in (for write)
      data_in : in std_logic_vector(15 downto 0);
  
      --Used to Initialize
      initialize : in std_logic;
  
      --Data out (for read)
      data_out : out std_logic_vector(15 downto 0)
    ) ;
  end component data_memory; -- memory

----------Decrement----------------
component Decrement is
    port (
      --Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit
  
      data_in : in std_logic_vector(15 downto 0);
      data_out : out std_logic_vector(15 downto 0)
    ) ;
end component ; 
  
----------increment---------------------
component increment is
    port (
      --Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit
  
      data_in : in std_logic_vector(2 downto 0);
      writ : in std_logic_vector(0 downto 0);
      data_out : out std_logic_vector(2 downto 0)
    ) ;
end component ;
-------------LLI----------------------
component LLI is
    port (
      --Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit
  
      x : in std_logic_vector(8 downto 0);
      y : out std_logic_vector(15 downto 0)
    ) ;
end component; 
-------------mux2to1_16------------------
component mux_2to1_16 is
    port(
    
        x0,x1:in STD_LOGIC_vector(15 downto 0);
        sel:in STD_LOGIC_vector(0 downto 0);
        y : out STD_LOGIC_vector(15 downto 0)
     );
end component mux_2to1_16 ;
---------mux4to1_3--------------------
component mux_4to1_3 is
    port(
    
        x0,x1,x2,x3:in STD_LOGIC_VECTOR (2 downto 0);
        sel:in STD_LOGIC_VECTOR (1 downto 0);
        y : out STD_LOGIC_VECTOR (2 downto 0)
        );
end component mux_4to1_3 ;
------mux_4to1_16---------------------
component mux_4to1_16 is
    port(
    
        x0,x1,x2,x3:in STD_LOGIC_VECTOR (15 downto 0);
        sel:in STD_LOGIC_VECTOR (1 downto 0);
        y : out STD_LOGIC_VECTOR (15 downto 0)
        );
end component mux_4to1_16 ;
-------mux_8to1_16----------------------
component mux_8to1_16 is
	Port ( x0,x1,x2,x3,x4,x5,x6,x7:in STD_LOGIC_VECTOR (15 downto 0);
			sel:in STD_LOGIC_VECTOR (2 downto 0);
			y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end component mux_8to1_16;

------------p1-------------------
component reg_a is
    port ( signal rega_input :in  std_logic_vector(31 downto 0) ; --for n sized register vector will be n-1 down to 0
    signal writ: in std_logic_vector(0 downto 0);
    signal reset: in std_logic;
    signal clk: in std_logic;
    signal rega_output: out std_logic_vector(31 downto 0)
     );
end component reg_a;
---------p2---------------------
component reg_b is
    port ( signal rega_input :in  std_logic_vector(60 downto 0) ; --for n sized register vector will be n-1 down to 0
    signal writ: in std_logic_vector(0 downto 0);
    signal reset: in std_logic;
    signal clk: in std_logic;
    signal rega_output: out std_logic_vector(60 downto 0)
     );
end component reg_b;
------------p3------------------
component reg_c1 is
    port ( signal rega_input :in  std_logic_vector(82 downto 0) ; --for n sized register vector will be n-1 down to 0
    signal writ: in std_logic_vector(0 downto 0);
    signal reset: in std_logic;
    signal clk: in std_logic;
    signal rega_output: out std_logic_vector(82 downto 0)
     );
end component reg_c1;
------------p4------------------

component reg_d is
    port ( signal rega_input :in  std_logic_vector(94 downto 0) ; --for n sized register vector will be n-1 down to 0
    signal writ: in std_logic_vector(0 downto 0);
    signal reset: in std_logic;
    signal clk: in std_logic;
    signal rega_output: out std_logic_vector(94 downto 0)
     );
end component reg_d;

-------L_shifter------------------
component L_shift is
    port (
      --Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit
  
      data_in : in std_logic_vector(7 downto 0);
      data_out : out std_logic_vector(7 downto 0)
    ) ;
  end component ; -- left shifter shift by 1 bits

----------p5----------------
component reg_e is
    port ( signal rega_input :in  std_logic_vector(57 downto 0) ; --for n sized register vector will be n-1 down to 0
    signal writ: in std_logic_vector(0 downto 0);
    signal reset: in std_logic;
    signal clk: in std_logic;
    signal rega_output: out std_logic_vector(57 downto 0)
     );
end component reg_e;
------------reg_file---------------
component reg_file_1 is
    port
    ( D1,D2,Dout       : out std_logic_vector(15 downto 0);-----output of RF (data read)
		R1 : out std_logic_vector(15 downto 0);
      D3,D0          : in  std_logic_vector(15 downto 0);	----- data write
      write_en 	: in  std_logic;
      reset    	: in  std_logic;
      A1,A2,A3    : in  std_logic_vector(2 downto 0);--- A1,A2 ADDRESS of data out, A3 address of data in 
      clk         : in  std_logic );
end component reg_file_1;

--------------SE6-----------------
component SE6 is
    port (
      --Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit
  
      data_in : in std_logic_vector(9 downto 0);
      data_out : out std_logic_vector(15 downto 0)
    ) ;
end component; -- sign_extender_6

---------decoder-------------
component Decoder is
    port
    (  instruct_info : in std_logic_vector(15 downto 0);
         clk : in std_logic;
			c: in std_logic_vector(0 downto 0);
			z: in std_logic_vector(0 downto 0);
       CB : out std_logic_vector(33 downto 0)
    );
end component Decoder;

---------------SE9-----------------
component SE9 is
    port (
      --Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit
  
      data_in : in std_logic_vector(8 downto 0);
      data_out : out std_logic_vector(15 downto 0)
    ) ;
end component ; -- sign_extender_7

--------SE10-----------------
component SE10 is
    port (
      --Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit
      data_in : in std_logic_vector(5 downto 0);
      data_out : out std_logic_vector(15 downto 0)
    ) ;
end component ; -- sign_extender_10

-----------SE7---------------------
component SE7 is
    port (
      --Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit
  
      data_in : in std_logic_vector(6 downto 0);
      data_out : out std_logic_vector(15 downto 0)
    ) ;
  end component; -- sign_extender_7

---------Shifter----------------
component shifter_6_7 is
    port (
      --Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit
  
      data_in : in std_logic_vector(5 downto 0);
      data_out : out std_logic_vector(6 downto 0)
    ) ;
end component ; -- left shifter shift by 1 bits

------------Shifter1---------------

component shift_9_10 is
    port (
      --Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit
  
      data_in : in std_logic_vector(8 downto 0);
      data_out : out std_logic_vector(9 downto 0)
    ) ;
end component ; -- left shifter shift by 1 bits
---------------zero-------------------
component reg_z is
    port ( signal rega_input :in  std_logic ; --for n sized register vector will be n-1 down to 0
    signal writ: in std_logic;
    signal reset: in std_logic;
    signal clk: in std_logic;
    signal rega_output: out std_logic;
    signal opcode:in std_logic_vector(3 downto 0)
     );
end component reg_z;
-----------isntr_memory---------------------
component instr_memory is
    port (
    
      --Address in 
      address_in : in std_logic_vector(15 downto 0);
  
      --Used to Initialize
      initialize : in std_logic;
  
      --Data out (for read)
      data_out : out std_logic_vector(15 downto 0)
    ) ;
  end component instr_memory; -- memory

end package all_components;

-----------L_shift------------------
library ieee;
use ieee.std_logic_1164.all;
library work;
----use work.Gates.all;

entity L_shift is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(7 downto 0);
	data_out : out std_logic_vector(7 downto 0)
  ) ;
end entity ; -- left shifter shift by 1 bits

architecture Shift1 of L_shift is

begin


	data_out(7 downto 1) <= data_in(6 downto 0);
	data_out(0) <= '0';
	
	
end architecture ; --- left shifter(1)

---------SE7------------------------
--Extend 7 bit to 16 bit
library std;
library ieee;
use ieee.std_logic_1164.all;


entity SE7 is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(6 downto 0);
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end entity ; -- sign_extender_7

architecture SE7 of SE7 is

begin
data_out(6 downto 0) <= data_in(6 downto 0);
data_out(7) <= data_in(6);
data_out(8) <= data_in(6);
data_out(9) <= data_in(6);
data_out(10) <= data_in(6);
data_out(11) <= data_in(6);
data_out(12) <= data_in(6);
data_out(13) <= data_in(6);
data_out(14) <= data_in(6);
data_out(15) <= data_in(6);

end architecture ; -- SE7

-----------mux_3to1_16-----------------


library ieee;
use ieee.std_logic_1164.all;
entity mux_3to1_16 is
	Port ( x0,x1,x2:in STD_LOGIC_VECTOR (15 downto 0);
			sel:in STD_LOGIC_VECTOR (1 downto 0);
			y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end mux_3to1_16;

architecture Behavioral of mux_3to1_16 is
begin
	process (x0,x1,x2,sel)
begin
	case sel is
	when "00"=>y<=x0;
	when "01"=>y<=x1;
	when "10"=>y<=x2;
	when others=> null;
	end case;
end process;
end Behavioral;

------------decoder---------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
    port
    (  instruct_info : in std_logic_vector(15 downto 0);
         clk : in std_logic;
			c: in std_logic_vector(0 downto 0);
			z: in std_logic_vector(0 downto 0);
       CB : out std_logic_vector(33 downto 0)
    );
end Decoder;

architecture behave of Decoder is
	signal count : integer:=0;
	
    begin 
-- P1_WR	INC_EN	P2_WR	M9	M12		M15	M1	M2	M13	M14	P3_WR		M3	M4	CPL-En	M5	P4_WR		M16	M7	M8	MEM_EN	P5_WR		M10	M11	RF_WR
	process (clk,instruct_info)
   begin
--	 count <= 0 ;
	report "Instruction = " & integer'image(to_integer(unsigned(instruct_info)));
	 if rising_edge(clk) then
	if (instruct_info = "UUUUUUUUUUUUUUUU" or instruct_info = "0000000000000000") then
            CB <= "1001110000000000000000000000000000"; --Initial 
    
   elsif((instruct_info(15 downto 12) = "0001") and (instruct_info(2 downto 0) = "000")) then -- ADA 
                CB <= "1011110000001001010101001111011111";
   elsif ((instruct_info(15 downto 12) = "0001") and (instruct_info(2 downto 0) = "010")) then  -- ADC 
                CB <= "1011110000001001010101001111011110";
   elsif ((instruct_info(15 downto 12) = "0001") and (instruct_info(2 downto 0) = "100")) then   -- ADZ
                CB <= "1011110000001001010101001111011111";
   elsif ((instruct_info(15 downto 12) = "0001") and (instruct_info(2 downto 0) = "011")) then  -- AWC 
                CB <= "1011110000001001010101001111011111";
    elsif ((instruct_info(15 downto 12) = "0001") and (instruct_info(2 downto 0) = "100")) then  -- ACA
                CB <= "1011110000001001010101101111011111";
    elsif ((instruct_info(15 downto 12) = "0001") and (instruct_info(2 downto 0) = "110")) then  -- ACC
                CB <= "1011110000001001010101101111011110";
    elsif ((instruct_info(15 downto 12) = "0001") and (instruct_info(2 downto 0) = "101")) then -- ACZ
                CB <= "1011110000001001010101101111011111";
    elsif ((instruct_info(15 downto 12) = "0001") and (instruct_info(2 downto 0) = "111")) then -- ACW
                CB <= "1011110000001001010101101111011111";
    elsif (instruct_info(15 downto 12) = "0000") then -- ADI
                CB <= "1011110000001001010110101111011111";
    elsif ((instruct_info(15 downto 12) = "0010") and (instruct_info(2 downto 0) = "000")) then -- NDU
                CB <= "1011110000001001010101001111011111";
    elsif ((instruct_info(15 downto 12) = "0010") and (instruct_info(2 downto 0) = "010")) then -- NDC
                CB <= "1011110000001001010101001111011110";
    elsif ((instruct_info(15 downto 12) = "0010") and (instruct_info(2 downto 0) = "001")) then -- NDZ
                CB <= "1011110000001001010101001111011111";
    elsif ((instruct_info(15 downto 12) = "0010") and (instruct_info(2 downto 0) = "100")) then -- NCU
                CB <= "1011110000001001010101101111011111";
   elsif ((instruct_info(15 downto 12) = "0010") and (instruct_info(2 downto 0) = "110")) then -- NCC 
                CB <= "1011110000001001010101101111011110";
    elsif ((instruct_info(15 downto 12) = "0010") and (instruct_info(2 downto 0) = "101")) then -- NCZ
                CB <= "1011110000001001010101101111011111";
    elsif ((instruct_info(15 downto 12) = "0011")) then -- LLI
                CB <= "1011110010100100110101111111010101";
    elsif ((instruct_info(15 downto 12) = "0100")) then -- LW
                CB <= "1011110000001001011001001101010111";
    elsif ((instruct_info(15 downto 12) = "0101")) then -- SW
                CB <= "1011110000001001011001001110110110";
    elsif ((instruct_info(15 downto 12) = "0110")) then -- LM
                if (count = 0) then
                    CB <= "0111010000001000110111111101010011";
                elsif (count = 1) then
                    CB <= "0111010011101000110111111101010011";
                elsif (count = 2) then
                    CB <= "0111010011101000110111111101010011";
                elsif (count = 3) then
                    CB <= "0111010011101000110111111101010011";
                elsif (count = 4) then
                    CB <= "0111010011101000110111111101010011";
                elsif (count = 5) then
                    CB <= "0111010011101000110111111101010011";
                elsif (count = 6) then
                    CB <= "0111010011101000110111111101010011";
                elsif (count = 7) then
                    CB <= "1111010011101000110111111101010011";
--                    count <= -1;
                end if;
                         -- process statements
                            count <= count + 1;
--                end if;
    elsif ((instruct_info(15 downto 12) = "0111")) then -- SM
                if (count = 0) then
                    CB <= "0111010010001001010111111111110110";
                elsif (count = 1) then
                    CB <= "0111010011101001010111111111110110";
                elsif (count = 2) then
                    CB <= "0111010011101001010111111111110110";
                elsif (count = 3) then
                    CB <= "0111010011101001010111111111110110";
                elsif (count = 4) then
                    CB <= "0111010011101001010111111111110110";
                elsif (count = 5) then
                    CB <= "0111010011101001010111111111110110";
                elsif (count = 6) then
                    CB <= "0111010011101001010111111111110110";
                elsif (count = 7) then
                    CB <= "1111010011101001010111111111110110";
--                    count <=-1;
                end if;
					 
							 -- process statements
						 count <= count + 1;
--					 end if;
    elsif ((instruct_info(15 downto 14) = "10") ) then -- BEQ/BLT/BLE
                if (count = 0) then
                    CB <= "0011010000001001010101001111010110";
                elsif (count = 1) then
                    CB <= "0011010011100100110101111111010110";
                elsif (count = 2) then
                    CB <= "0011010011100100110101111111010110";
                elsif (count >= 3) then
                    if(((instruct_info(13 downto 12) = "00")and(z="1"))or((instruct_info(13 downto 12) = "01")and(c="1"))or((instruct_info(13 downto 12) = "11")and(c="1" or z="1"))) then -- True
                        if(count = 3) then
                            CB <= "0010010011100100110101111111010110";
                        elsif(count = 4) then
                            CB <= "1011110011100100110101111111010110";
--                            count <= -1;
                        end if;
                    else --False
                        if(count = 3) then
                           CB <= "1011110011100100110101111111010110";
--									count <= -1;
                        end if;
                    end if;
                end if;
--                      if rising_edge(clk) then
                         -- process statements
                            count <= count + 1;
--                      end if;
    elsif ((instruct_info(15 downto 12) = "1100") ) then --JAL
                if (count = 0) then
                    CB <= "0010010011100100110011101111010111";
                elsif (count = 1) then
                    CB <= "1011110011100100110101111111010110";
                    count <= -1;
                else
--						  count <= -1;
                end if;
--                      if rising_edge(clk) then
                         -- process statements
                            count <= count + 1;
--                      end if;
    elsif ((instruct_info(15 downto 12) = "1101") ) then --JLR
                if (count = 0) then
                    CB <= "0011010000100101010011101111010111";
                elsif (count = 1) then
                    CB <= "0011010011100100110101111111010110";
                elsif (count = 2) then
                    CB <= "0010101011100100110101111111010110";
                elsif(count = 3) then
                    CB <= "1011110011100100110101111111010110";
--                    count <= -1;
                end if;
--                      if rising_edge(clk) then
                         -- process statements
                            count <= count + 1;
--                      end if;
     elsif ((instruct_info(15 downto 12) = "1111") ) then --JRI , , , 
                if (count = 0) then
                    CB <= "0011010000100101010011101111010111";
                elsif (count = 1) then
                    CB <= "0011010011100100110101111111010110";
                elsif (count = 2) then
                    CB <= "0011010011100100110101111111010110";
                elsif(count = 3) then
                    CB <= "0010101111100100110101111111010110";
                elsif (count = 4) then
                    CB <= "1011110011100100110101111111010110";
--                    count <= -1;
                end if;
--                      if rising_edge(clk) then
                         -- process statements
                            count <= count + 1;
--                      end if;
    end if;
	 end if;
	 end process;
end behave;

-------------instr_memory--------------------------
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
entity instr_memory is
  port (
  
	--Address in 
	address_in : in std_logic_vector(15 downto 0);

	--Used to Initialize
	initialize : in std_logic;

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
--
--		
                         --LLI and JAL"00000010","10000010"
				 memory_block<= ("00110010","00000001",others=>"00000000");
		
      
		--	memory_block(to_integer(unsigned(address_in(3 downto 0)))) <= data_in;
			            
    

        data_out <=memory_block(to_integer(unsigned(address_in))) & memory_block(to_integer(unsigned(address_in))+1);


end memory_comp; -- memory_comp
-----------------2to1_3Mux--------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux_2to1_3 is
 port(
 
     x0,x1:in STD_LOGIC_vector(2 downto 0);
     sel:in STD_LOGIC_vector(0 downto 0);
     y : out STD_LOGIC_vector(2 downto 0)
  );
end mux_2to1_3 ;
 
architecture Behavioral of mux_2to1_3  is
--signal y :  STD_LOGIC_vector(15 downto 0) ;
begin
process (x0,x1,sel)
begin
case sel is
when "0"=>y<=x0;
when "1"=>y<=x1;

when others=> null;
end case;
end process;

--y <= yout ;
end Behavioral;

--------2x1mux_8-----------------------

library ieee;
use ieee.std_logic_1164.all;
entity mux_2to1_8 is
	Port ( x0,x1:in STD_LOGIC_VECTOR (7 downto 0);
			sel:in STD_LOGIC_VECTOR (0 downto 0);
			y : out STD_LOGIC_VECTOR (7 downto 0)
			);
end mux_2to1_8;

architecture Behavioral of mux_2to1_8 is
begin
	process (x0,x1,sel)
begin
	case sel is
	when "0"=>y<=x0;
	when "1"=>y<=x1;
	when others => null;
	end case;
end process;
end Behavioral;

--------------4x1mux_1--------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity mux_4to1_1 is
 port(

     x0,x1,x2,x3:in STD_LOGIC_VECTOR (0 downto 0);
     sel1:in STD_LOGIC_VECTOR (3 downto 0);
	  sel2:in STD_LOGIC_VECTOR (1 downto 0);
     y : out STD_LOGIC_VECTOR (0 downto 0)
     );
end mux_4to1_1 ;
 
architecture Behavioral of mux_4to1_1  is
begin
process (x0,x1,x2,x3,sel1,sel2)
begin
case sel1 is
when "0110" => y<=x0;
when "0111" => y<=x0;
when  "0001" =>
	case sel2 is
		when "00" => y<=x3;
		when "01" => y<=x2;
		when "10" => y<=x1;
		when "11" => y<=x3;
		when others => null;
	end case;
when  "0010" =>
	case sel2 is
		when "00" => y<=x3;
		when "01" => y<=x2;
		when "10" => y<=x1;
		when "11" => y<=x3;
		when others => null;
	end case;
when "0000" =>
		y<=x3;
when "0011" =>
		y<=x3;
when "0100" =>
		y<=x3;
when "0101" =>
		y<=x3;
when "1000" =>
		y<=x3;
when "1001" =>
		y<=x3;
when "1011" =>
		y<=x3;
when "1100" =>
		y<=x3;
when "1101" =>
		y<=x3;
when "1111" =>
		y<=x3;
when others=> null;
end case;
end process;
end Behavioral;
--------------3x1_16----------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity mux_2to1_16 is
 port(
 
     x0,x1:in STD_LOGIC_vector(15 downto 0);
     sel:in STD_LOGIC_vector(0 downto 0);
     y : out STD_LOGIC_vector(15 downto 0)
  );
end mux_2to1_16 ;
 
architecture Behavioral of mux_2to1_16  is
--signal y :  STD_LOGIC_vector(15 downto 0) ;
begin
process (x0,x1,sel)
begin
case sel is
when "0"=>y<=x0;
when "1"=>y<=x1;

when others=> null;
end case;
end process;

--y <= yout ;
end Behavioral;

----------------5x1_16------------------------


library ieee;
use ieee.std_logic_1164.all;
entity mux_5to1_16 is
	Port ( x0,x1,x2,x3,x4:in STD_LOGIC_VECTOR (15 downto 0);
			sel:in STD_LOGIC_VECTOR (2 downto 0);
			y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end mux_5to1_16;

architecture Behavioral of mux_5to1_16 is
begin
	process (x0,x1,x2,x3,x4,sel)
begin
	case sel is
	when "000"=>y<=x0;
	when "001"=>y<=x1;
	when "010"=>y<=x2;
	when "011"=>y<=x3;
	when "100"=>y<=x4;
	when others=> null;
	end case;
end process;
end Behavioral;
-----------------6x1_16--------------------

library ieee;
use ieee.std_logic_1164.all;
entity mux_6to1_16 is
	Port ( x0,x1,x2,x3,x4,x5:in STD_LOGIC_VECTOR (15 downto 0);
			sel:in STD_LOGIC_VECTOR (2 downto 0);
			y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end mux_6to1_16;

architecture Behavioral of mux_6to1_16 is
begin
	process (x0,x1,x2,x3,x4,x5,sel)
begin
	case sel is
	when "000"=>y<=x0;
	when "001"=>y<=x1;
	when "010"=>y<=x2;
	when "011"=>y<=x3;
	when "100"=>y<=x4;
	when "101"=>y<=x5;
	when others => null;
	end case;
end process;
end Behavioral;

-----------------Adder-------------------

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
--    if(wrt='1') then
--       output(15 downto 0) <= std_logic_vector(unsigned(data_in_1) + unsigned(data_in_2));
--	 else 
--	    output(15 downto 0) <= "0000000000000000";
--	 end if;  

--	  data_out(15 downto 0) <= output(15 downto 0); 
		data_out(15 downto 0) <= std_logic_vector(unsigned(data_in_1) + unsigned(data_in_2));
end architecture ;
-------------------alu------------------

library std;
library ieee;
use ieee.std_logic_1164.all;
library work;
----use work.Gates.all;
use ieee.numeric_std.all;

--------------------------------------------------------------------------
entity ALU is
  port (
	
	alu_a : in std_logic_vector(15 downto 0);
	alu_b : in std_logic_vector(15 downto 0);

	cz: in std_logic_vector(1 downto 0 );
	carry_in: in std_logic_vector(0 downto 0); --input carry 
	zero_in: in std_logic_vector(0 downto 0); --input zero
	alu_op : in std_logic_vector(3 downto 0); --opcode to classify the type of instruction 
	alu_out : out std_logic_vector(15 downto 0);
	carry : out std_logic;
	zero : out std_logic
  ) ;
end entity ; -- ALU

architecture alu of ALU is

	signal negative_a : std_logic_vector(15 downto 0);
	signal negative_b : std_logic_vector(15 downto 0);
	signal alu_out_sig : std_logic_vector(15 downto 0);
	signal carry_when_pos : std_logic;
	signal carry_when_neg : std_logic;
	signal neg_addition : std_logic_vector(15 downto 0);
   
   
begin
     
	--2's Compliment of a and b
	-- negative_a <= std_logic_vector(unsigned(not alu_a) + 1);
	negative_b <= std_logic_vector(unsigned(not alu_b) + 1);
    
	process(alu_a, alu_b, alu_op)
	begin 
--------------------------------------------------------------------------------------------------	
		if alu_op = "0010" then --NAND operations

			if cz = "10" then --NDC
                if carry_in = "1" then  
			        alu_out_sig <= alu_a nand alu_b;--(a nand b)
			       end if;
        

            elsif cz = "01" then  --NDZ
                if zero_in ="1" then
                    alu_out_sig <= alu_a nand alu_b;
                end if;
           

            else 
                alu_out_sig <= alu_a nand alu_b;
		   end if;
			
			if alu_out_sig = "0000000000000000" then
			zero <= '1' ;
			else zero <= '0';
			end if;
			
		end if;
------------------------------------------------------------------------------------------------------		
		if alu_op = "1000" or alu_op="1001" or alu_op="1011"  then --Subtraction in BEQ, BLT,BLE
			alu_out_sig <= std_logic_vector(unsigned(alu_a) + unsigned(negative_b));--(a-b)

            if(alu_out_sig(15) ='1') then 
                carry <='1'; --if carry comes means alu_a <alu_b
            else
                carry <='0';
            end if;
			-- neg_addition <= std_logic_vector(unsigned(negative_a) + unsigned(alu_b));--(-a+b)
            -- carry <='0';
				
				
			if alu_out_sig = "0000000000000000" then
			zero <= '1' ;
			else zero <= '0';
			end if;
			
		end if;
------------------------------------------------------------------------------------------------------------------------		
		if alu_op = "0001" then --All addition instructions
		
			if cz= "10"  then  --ADC or ACC
                if carry_in = "1" then
                    alu_out_sig <= std_logic_vector(unsigned(alu_a) + unsigned(alu_b));--(a+b)
                -- neg_addition <= std_logic_vector(unsigned(negative_a) + unsigned(negative_b));--(-a-b) 
                        if alu_a(15) = '0' and alu_b(15) = '0' and alu_out_sig(15) = '1' then 
                            carry_when_pos <= '1';
                        else 
                            carry_when_pos <= '0';
                        end if;
        
                        
                        if alu_a(15) = '1' and alu_b(15) = '1' and alu_out_sig(15) = '0' then 
                            carry_when_neg <= '1';
                        else 
                            carry_when_neg <= '0';
                        end if;
                    carry <= carry_when_neg or carry_when_pos;
						  
						if alu_out_sig = "0000000000000000" then
						zero <= '1' ;
						else zero <= '0';
						end if;
						
                end if;
			  
			elsif cz= "01" then --ADZ or ACZ
                if zero_in = "1" then
                    alu_out_sig <= std_logic_vector(unsigned(alu_a) + unsigned(alu_b));--(a+b)
                -- neg_addition <= std_logic_vector(unsigned(negative_a) + unsigned(negative_b));--(-a-b) 
                        if alu_a(15) = '0' and alu_b(15) = '0' and alu_out_sig(15) = '1' then 
                            carry_when_pos <= '1';
                        else 
                            carry_when_pos <= '0';
                        end if;
        
                        
                        if alu_a(15) = '1' and alu_b(15) = '1' and alu_out_sig(15) = '0' then 
                            carry_when_neg <= '1';
                        else 
                            carry_when_neg <= '0';
                        end if;
                    carry <= carry_when_neg or carry_when_pos;
						 
						 
						if alu_out_sig = "0000000000000000" then
						zero <= '1' ;
						else zero <= '0';
						end if;
						
                end if;

            elsif cz ="11" then --AWC or ACW
                alu_out_sig <= std_logic_vector(unsigned(alu_a) + unsigned(alu_b) + unsigned(carry_in));--(a+b)
            -- neg_addition <= std_logic_vector(unsigned(negative_a) + unsigned(negative_b));--(-a-b) 
                        if (((alu_a(15)='0' or alu_b(15)='0') and carry_in ="1") or (alu_a(15) = '0'and alu_b(15) = '0')) and alu_out_sig(15) = '1' then 
                            carry_when_pos <= '1';
                        else 
                            carry_when_pos <= '0';
                        end if;
    
                    
                        if(((alu_a(15)='1' or alu_b(15)='1') and carry_in ="1") or (alu_a(15) = '1'and alu_b(15) = '1')) and alu_out_sig(15) = '0' then 
                            carry_when_neg <= '1';
                        else 
                            carry_when_neg <= '0';
                        end if; 
                carry <= carry_when_neg or carry_when_pos;
					 
					 
					if alu_out_sig = "0000000000000000" then
					zero <= '1' ;
					else zero <= '0';
					end if;

            else  --ADA
                alu_out_sig <= std_logic_vector(unsigned(alu_a) + unsigned(alu_b));--(a+b)
                -- neg_addition <= std_logic_vector(unsigned(negative_a) + unsigned(negative_b));--(-a-b) 
                        if alu_a(15) = '0' and alu_b(15) = '0' and alu_out_sig(15) = '1' then 
                            carry_when_pos <= '1';
                        else 
                            carry_when_pos <= '0';
                        end if;
        
                        
                        if alu_a(15) = '1' and alu_b(15) = '1' and alu_out_sig(15) = '0' then 
                            carry_when_neg <= '1';
                        else 
                            carry_when_neg <= '0';
                        end if;
                    carry <= carry_when_neg or carry_when_pos;
						  
						  
						if alu_out_sig = "0000000000000000" then
						zero <= '1' ;
						else zero <= '0';
						end if;
						
				end if;

		end if;
-------------------------------------------------------------------------------------------------------------------------------
        if alu_op ="0110" or alu_op="0111" or alu_op = "0100" or alu_op="0101" then  --add for LM,SM,LW,SW
            alu_out_sig <= std_logic_vector(signed(alu_a) + signed (alu_b));--(a+b)
        end if;
		  
		  if alu_op = "0100" then
				
				
			if alu_out_sig = "0000000000000000" then
			zero <= '1' ;
			else zero <= '0';
			end if;
			
			end if;
--------------------------------------------------------------------------------------------------------------------
       if alu_op="0000" then --ADI
		    alu_out_sig <= std_logic_vector(unsigned(alu_a) + unsigned(alu_b));--(a+b)
                -- neg_addition <= std_logic_vector(unsigned(negative_a) + unsigned(negative_b));--(-a-b) 
                        if alu_a(15) = '0' and alu_b(15) = '0' and alu_out_sig(15) = '1' then 
                            carry_when_pos <= '1';
                        else 
                            carry_when_pos <= '0';
                        end if;
        
                        
                        if alu_a(15) = '1' and alu_b(15) = '1' and alu_out_sig(15) = '0' then 
                            carry_when_neg <= '1';
                        else 
                            carry_when_neg <= '0';
                        end if;
                    carry <= carry_when_neg or carry_when_pos;
										  
							if alu_out_sig = "0000000000000000" then
							zero <= '1' ;
							else zero <= '0';
							end if;
				end if;
         
	end process;

	alu_out <= alu_out_sig;
--zero <= '1' when alu_out_sig = "0000000000000000" else '0';

	
end architecture ; -- alu
---------carry--------------------------------

Library IEEE;
use IEEE.std_logic_1164.all;
library work;
----use work.Gates.all;

entity reg_carry is
port ( signal rega_input :in  std_logic ; --for n sized register vector will be n-1 down to 0
signal writ: in std_logic;
signal reset: in std_logic;
signal clk: in std_logic;
signal rega_output: out std_logic;
signal opcode: in std_logic_vector(3 downto 0)
 );
end reg_carry;

architecture sim of reg_carry is
	signal output: std_logic;
begin

process(clk) is
   begin
    if not (opcode = "1000" and opcode ="1001" and opcode ="1011") and rising_edge(clk) then
        output<=rega_input;
       elsif(reset='1') then
        rega_output<='0';
    end if;
	 rega_output<= output;
 end process;
end sim;
---------------clock---------------------
--
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity clockTb is
----port (clk : out std_logic);
--end entity clockTb;
--
--architecture bhv of clockTb is
--
--signal rst : std_logic := '0';
----constant clk_frequency : integer := 2e4; --set time period to 5ns By Tanmay
--constant clk_period : time:= 40000 ps;
--signal clk: std_logic := '1';
--signal D50_join,D51_join,D52_join,D53_join,D54_join,D55_join,D56_join,D57_join: std_logic_vector(15 downto 0);
--
--component Dataflow is
-- port (clk, reset : IN STD_LOGIC; D50_join,D51_join,D52_join,D53_join,D54_join,D55_join,D56_join,D57_join:out std_logic_vector(15 downto 0));
--end component;
--
--begin
--project: Dataflow port map(clk, rst,D50_join,D51_join,D52_join,D53_join,D54_join,D55_join,D56_join,D57_join);
--proc: process(clk)
--begin
--clk<= not clk after clk_period/2;
--end process;
--	
--end bhv;
--------complementor-------------------------

library ieee;
use ieee.std_logic_1164.all;
entity complementor is
	Port ( x:in STD_LOGIC_VECTOR (15 downto 0);
			 check: in STD_LOGIC_VEctor(0 downto 0);
			 y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end complementor;

architecture Behavioral of complementor is
begin
	process (x)
begin
	if(check ="1" ) then
		y <= x xor x"FFFF";
	else
		y<=x;
	end if;
end process;
end Behavioral;


-----------------Counter-------------
library ieee;
use ieee.std_logic_1164.all;

entity Counter1 is
    port (
  
      counter_in : in std_logic_vector(2 downto 0);
      counter_out : out std_logic_vector(2 downto 0);
     
      clk : in std_logic
  
    ) ;
  end entity ; -- counter(for LM,SM)
  
  architecture count_inst of counter1 is
  
  begin
  
      process(clk) 
      begin 
          if (clk'event and clk = '1') then 
              counter_out <= counter_in;
          end if;
      end process;
  
  
  end architecture ; -- counter_inst

----Data_memory--------------------------
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
entity data_memory is
  port (
  	--Clock 
	clk : in std_logic;

	--Memory read and write enables

	memory_write : in std_logic_vector(0 downto 0);

	--Address in 
	address_in : in std_logic_vector(15 downto 0);

	--Data in (for write)
	data_in : in std_logic_vector(15 downto 0);

	--Used to Initialize
	initialize : in std_logic;

	--Data out (for read)
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end entity data_memory; -- memory

architecture memory_comp of data_memory is
    --Memory is a collection of 128 16-bit arrays
    type memory_database is array(0 to 127) of std_logic_vector(15 downto 0);
    signal memory_block : memory_database:= ("0000000000000011","0000000000000100",others=>"0000000000000000");
begin
    process(clk)
    begin 
    if (clk'event and clk = '1') then 
		  --if write is enable then write into memory
		  if (memory_write = "1") then
				--initialising with zeros
--				if (initialize = '1') then 
--					loop1 : for i in 0 to 127 loop
--						 memory_block(i) <= "0000000000000000";
--					end loop ; -- loop1
--				else 
					memory_block(to_integer(unsigned(address_in(3 downto 0)))) <= data_in;
				end if;            
        end if;
--    end if;
 end process;

        data_out <= memory_block(to_integer(unsigned(address_in(3 downto 0)))); 

end memory_comp; -- memory_comp

---------------------Decrement-----------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
----use work.Gates.all;

entity Decrement is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(15 downto 0);
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end entity ; 

architecture struct of Decrement is
--    signal a: std_logic_vector(15 downto 0) := "1111111111111110";
begin
	  
	data_out <= (std_logic_vector(unsigned(data_in) - 2));
--);
	
end architecture ; 

----------------Gates---------------------------
library ieee;
use ieee.std_logic_1164.all;

--A package declaration is used to store a set of common declarations, such as components.
--These declarations can then be imported into other design units using a use clause.

package Gates is
  component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;

  component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;

  component NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NAND_2;

  component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR_2;

  component NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NOR_2;

  component XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XOR_2;

  component XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XNOR_2;

  component HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
  end component HALF_ADDER;

end package Gates;


library ieee;
use ieee.std_logic_1164.all;
entity INVERTER is
   port (A: in std_logic; Y: out std_logic);
end entity INVERTER;

architecture Equations of INVERTER is
begin
   Y <= not A;
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity AND_2;

architecture Equations of AND_2 is
begin
   Y <= A and B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NAND_2;

architecture Equations of NAND_2 is
begin
   Y <= not (A and B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity OR_2;

architecture Equations of OR_2 is
begin
   Y <= A or B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NOR_2;

architecture Equations of NOR_2 is
begin
   Y <= not (A or B);
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XOR_2;

architecture Equations of XOR_2 is
begin
   Y <= A xor B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XNOR_2;

architecture Equations of XNOR_2 is
begin
   Y <= not (A xor B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
end entity HALF_ADDER;

architecture Equations of HALF_ADDER is
begin
   S <= (A xor B);
   C <= (A and B);
end Equations;
  
----------------Increment-----------------
library ieee;
use ieee.std_logic_1164.all;
library work;
----use work.Gates.all;

entity increment is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(2 downto 0);
	writ : in std_logic_vector(0 downto 0);
	data_out : out std_logic_vector(2 downto 0)
  ) ;
end entity ; 

architecture struct of increment is
    signal a: std_logic_vector(2 downto 0) := "001";
begin
	 process(writ)	 
begin
   if(writ = "1") then
	data_out <= (a xor data_in);
	
	else data_out <= data_in;
	end if;
	end process;
end architecture ; 
-----------------LLI-----------------------
--Extend 7 bit to 16 bit
library std;
library ieee;
use ieee.std_logic_1164.all;


entity LLI is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	x : in std_logic_vector(8 downto 0);
	y : out std_logic_vector(15 downto 0)
  ) ;
end entity ; 

architecture LLI of LLI is

begin
y <= "0000000" & x;

end architecture ; 
-----------------mux_2to1_16-----------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity mux_2x1_16 is
 port(
 
     x0,x1:in STD_LOGIC_vector(15 downto 0);
     sel:in STD_LOGIC_vector(0 downto 0);
     y : out STD_LOGIC_vector(15 downto 0)
  );
end mux_2x1_16 ;
 
architecture viru_god of mux_2x1_16  is
--signal y :  STD_LOGIC_vector(15 downto 0) ;
begin
process (x0,x1,sel)
begin
case sel is
when "0"=>y<=x0;
when "1"=>y<=x1;

when others=> null;
end case;
end process;

--y <= yout ;
end viru_god;
-----------------mux_4to1_3----------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity mux_4to1_3 is
 port(
 
     x0,x1,x2,x3:in STD_LOGIC_VECTOR (2 downto 0);
     sel:in STD_LOGIC_VECTOR (1 downto 0);
     y : out STD_LOGIC_VECTOR (2 downto 0)
     );
end mux_4to1_3 ;
 
architecture Behavioral of mux_4to1_3  is
begin
process (x0,x1,x2,x3,sel)
begin
case sel is
when "00"=>y<=x0;
when "01"=>y<=x1;
when "10"=>y<=x2;
when "11"=>y<=x3;
when others=> null;
end case;
end process;
end Behavioral;
---------------mux_4to1_16-----------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity mux_4to1_16 is
 port(
 
     x0,x1,x2,x3:in STD_LOGIC_VECTOR (15 downto 0);
     sel:in STD_LOGIC_VECTOR (1 downto 0);
     y : out STD_LOGIC_VECTOR (15 downto 0)
     );
end mux_4to1_16 ;
 
architecture Behavioral of mux_4to1_16  is
begin
process (x0,x1,x2,x3,sel)
begin
case sel is
when "00"=>y<=x0;
when "01"=>y<=x1;
when "10"=>y<=x2;
when "11"=>y<=x3;
when others=> null;
end case;
end process;
end Behavioral;
-------------mux-8to1_16-------------------

library ieee;
use ieee.std_logic_1164.all;
entity mux_8to1_16 is
	Port ( x0,x1,x2,x3,x4,x5,x6,x7:in STD_LOGIC_VECTOR (15 downto 0);
			sel:in STD_LOGIC_VECTOR (2 downto 0);
			y : out STD_LOGIC_VECTOR (15 downto 0)
			);
end mux_8to1_16;

architecture Behavioral of mux_8to1_16 is
begin
	process (x0,x1,x2,x3,x4,x5,x6,x7,sel)
begin
	case sel is
	when "000"=>y<=x0;
	when "001"=>y<=x1;
	when "010"=>y<=x2;
	when "011"=>y<=x3;
	when "100"=>y<=x4;
	when "101"=>y<=x5;
	when "110"=>y<=x6;
	when "111"=>y<=x7;
	when others => null;
	end case;
end process;
end Behavioral;
-----------p1--------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
----use work.Gates.all;

entity reg_a is
port ( signal rega_input :in  std_logic_vector(31 downto 0) ; --for n sized register vector will be n-1 down to 0
signal writ: in std_logic_vector(0 downto 0);
signal reset: in std_logic;
signal clk: in std_logic;
signal rega_output: out std_logic_vector(31 downto 0)
 );
end reg_a;

architecture sim of reg_a is
   signal output: std_logic_vector(31 downto 0):= (others => '0');
	signal count : integer:=0;

--	 rega_output<="00000000000000000000000000000000";

begin

process(clk,reset,writ) is
   begin
	report "pipeline1 = " & integer'image(to_integer(unsigned(rega_input)));
    if rising_edge(clk) then
--	 if(count = 0) then
--		rega_output<="00000000000000000000000000000000";
--	end if;
--		count<=1;
		
	     if(writ="1") then 
        output(31 downto 0)<=rega_input(31 downto 0);
		  
       elsif(reset='1') then
        output<="00000000000000000000000000000000";
		  end if;
    end if;
	      
 end process;
 rega_output(31 downto 0) <= output(31 downto 0);
end sim;
-------------------p2------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
----use work.Gates.all;

entity reg_b is
port ( signal rega_input :in  std_logic_vector(60 downto 0) ; --for n sized register vector will be n-1 down to 0
signal writ: in std_logic_vector(0 downto 0);
signal reset: in std_logic;
signal clk: in std_logic;
signal rega_output: out std_logic_vector(60 downto 0)
 );
end reg_b;

architecture sim of reg_b is
   signal output: std_logic_vector(60 downto 0):= (others => '0');
begin

process(clk) is
   begin
	report "pipeline2 = " & integer'image(to_integer(unsigned(rega_input)));

    if rising_edge(clk) then
	   if(writ="1")then
        output(60 downto 0)<=rega_input(60 downto 0);
		  
       elsif(reset='1') then
        output<="0000000000000000000000000000000000000000000000000000000000000";
		  end if;
    end if;
	    
 end process;
  rega_output(60 downto 0) <= output(60 downto 0); 
end sim;
----------------p3---------------------
Library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
----use work.Gates.all;

entity reg_c1 is
port ( signal rega_input :in  std_logic_vector(82 downto 0) ; --for n sized register vector will be n-1 down to 0
signal writ: in std_logic_vector(0 downto 0);
signal reset: in std_logic;
signal clk: in std_logic;
signal rega_output: out std_logic_vector(82 downto 0)
 );
end reg_c1;

architecture sim of reg_c1 is
   signal output: std_logic_vector(82 downto 0):= (others => '0');
begin

process(clk) is
   begin
		report "pipeline3 = " & integer'image(to_integer(unsigned(rega_input)));

    if rising_edge(clk) then
	     if(writ="1") then
        output(82 downto 0)<=rega_input(82 downto 0);
		  
       elsif(reset='1') then
        output<="00000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		  end if;
    end if;
 end process;
 	     rega_output(82 downto 0) <= output(82 downto 0); 

end sim;
---------------p4-------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
----use work.Gates.all;

entity reg_d is
port ( signal rega_input :in  std_logic_vector(94 downto 0) ; --for n sized register vector will be n-1 down to 0
signal writ: in std_logic_vector(0 downto 0);
signal reset: in std_logic;
signal clk: in std_logic;
signal rega_output: out std_logic_vector(94 downto 0)
 );
end reg_d;

architecture sim of reg_d is
   signal output: std_logic_vector(94 downto 0):= (others => '0');
begin

process(clk,writ,reset) is
   begin
		report "pipeline4 = " & integer'image(to_integer(unsigned(rega_input)));

    if rising_edge(clk) then
	     if(writ="1") then
        output(94 downto 0)<=rega_input(94 downto 0);
		  
		  
       elsif(reset='1') then
        output<="00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
			end if;
	 end if;
 end process;
 	     rega_output(94 downto 0) <= output(94 downto 0); 

end sim;
-------------------p5-----------------------\
Library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
----use work.Gates.all;

entity reg_e is
port ( signal rega_input :in  std_logic_vector(57 downto 0) ; --for n sized register vector will be n-1 down to 0
signal writ: in std_logic_vector(0 downto 0);
signal reset: in std_logic;
signal clk: in std_logic;
signal rega_output: out std_logic_vector(57 downto 0)
 );
end reg_e;

architecture sim of reg_e is
   signal output: std_logic_vector(57 downto 0):= (others => '0');
begin

process(clk,writ,reset) is
   begin
		report "pipeline5 = " & integer'image(to_integer(unsigned(rega_input)));

    if rising_edge(clk) then
	     if(writ="1") then
        output(57 downto 0)<=rega_input(57 downto 0);
		  
		  
       elsif(reset='1') then
        output<="0000000000000000000000000000000000000000000000000000000000";
		  end if;
    end if;
 end process;
 	     rega_output(57 downto 0) <= output(57 downto 0); 

end sim;
--------------------reg_file-----------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_file_1 is
    port
    ( D1,D2,Dout       : out std_logic_vector(15 downto 0);-----output of RF (data read)
		R1 : out std_logic_vector(15 downto 0);
      D3,D0          : in  std_logic_vector(15 downto 0);	----- data write
      write_en 	: in  std_logic;
      reset    	: in  std_logic;
      A1,A2,A3    : in  std_logic_vector(2 downto 0);--- A1,A2 RESS of data out, A3 address of data in 
      clk         : in  std_logic );
end reg_file_1;

architecture behave of reg_file_1 is
	type R is array(0 to 7) of std_logic_vector(15 downto 0); 
    --Eight 16-bit registers R(0) to R(7)
    signal registers : R := ("0000000000000000","0000000000000000","0000000000000000","0000000000000000",
	                          "0000000000000000","0000000000000000","0000000000000000","0000000000000000");
    
    begin
    
        regFile: process(clk,reset,write_en,A3)
        begin
             if(registers(0) = "UUUUUUUUUUUUUUUU") then
						registers(0) <= "0000000000000000";
					end if;
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
	report "PC = " & integer'image(to_integer(unsigned(registers(0))));
		report "R1 = " & integer'image(to_integer(unsigned(registers(1))));
				report "R2 = " & integer'image(to_integer(unsigned(registers(2))));
						report "R3 = " & integer'image(to_integer(unsigned(registers(3))));


		report "R5 = " & integer'image(to_integer(unsigned(registers(5))));


        end process;
        D1 <= registers(to_integer(unsigned(A1))); 
        D2 <= registers(to_integer(unsigned(A2)));
        Dout <= registers(0);
		  R1 <= registers(1);
--		  report "my_signal = " & std_logic'image(Dout(15));
	end behave;
------------SE6----------------------------
--Extend 10 bit to 16 bit
library std;
library ieee;
use ieee.std_logic_1164.all;


entity SE6 is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(9 downto 0);
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end entity ; -- sign_extender_6

architecture SE6 of SE6 is

begin


	data_out(9 downto 0) <= data_in(9 downto 0);
	data_out(10) <= data_in(9);
	data_out(11) <= data_in(9);
	data_out(12) <= data_in(9);
	data_out(13) <= data_in(9);
	data_out(14) <= data_in(9);
	data_out(15) <= data_in(9);
	
end architecture ; -- SE6
-----------------SE9-----------------------
--Extend 7 bit to 16 bit
library std;
library ieee;
use ieee.std_logic_1164.all;


entity SE9 is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(8 downto 0);
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end entity ; -- sign_extender_7

architecture SE9 of SE9 is

begin
data_out(8 downto 0) <= data_in(8 downto 0);
data_out(9) <= data_in(5);
data_out(10) <= data_in(5);
data_out(11) <= data_in(5);
data_out(12) <= data_in(5);
data_out(13) <= data_in(5);
data_out(14) <= data_in(5);
data_out(15) <= data_in(5);

end architecture ; -- SE9
-----------------------SE10-------------------
library std;
library ieee;
use ieee.std_logic_1164.all;


entity SE10 is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit
	data_in : in std_logic_vector(5 downto 0);
	data_out : out std_logic_vector(15 downto 0)
  ) ;
end entity ; -- sign_extender_10

architecture Sign of SE10 is


begin
data_out(5 downto 0) <= data_in(5 downto 0);
data_out(6) <= data_in(5);
data_out(7) <= data_in(5);
data_out(8) <= data_in(5);
data_out(9) <= data_in(5);
data_out(10) <= data_in(5);
data_out(11) <= data_in(5);
data_out(12) <= data_in(5);
data_out(13) <= data_in(5);
data_out(14) <= data_in(5);
data_out(15) <= data_in(5);

end architecture ; -- SE10
--------------SHIFTER--------------------
library ieee;
use ieee.std_logic_1164.all;
library work;
--use work.Gates.all;

entity shifter_6_7 is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(5 downto 0);
	data_out : out std_logic_vector(6 downto 0)
  ) ;
end entity ; -- left shifter shift by 1 bits

architecture Shift1 of shifter_6_7 is

begin


	data_out(6 downto 1) <= data_in(5 downto 0);
	data_out(0) <= '0';
	
	
end architecture ; --- left shifter(1)
-----------Shifter1------------------------
library ieee;
use ieee.std_logic_1164.all;
library work;
--use work.Gates.all;

entity shift_9_10 is
  port (
	--Doesn't need a clock as whenever the input comes, output should be given. It is a combinational circuit

	data_in : in std_logic_vector(8 downto 0);
	data_out : out std_logic_vector(9 downto 0)
  ) ;
end entity ; -- left shifter shift by 1 bits

architecture Shift9 of shift_9_10 is

begin


	data_out(9 downto 1) <= data_in(8 downto 0);
	data_out(0) <= '0';
	
	
end architecture ; --- left shifter(1)
-------------------zero---------------------
Library IEEE;
use IEEE.std_logic_1164.all;
library work;
--use work.Gates.all;

entity reg_z is
port ( signal rega_input :in  std_logic ; --for n sized register vector will be n-1 down to 0
signal writ: in std_logic;
signal reset: in std_logic;
signal clk: in std_logic;
signal rega_output: out std_logic;
signal opcode:in std_logic_vector(3 downto 0)
 );
end reg_z;

architecture sim of reg_z is
	signal output: std_logic;
begin

process(clk) is
   begin
    if not (opcode = "1000" and opcode ="1001" and opcode ="1011") and rising_edge(clk) then
        output<=rega_input;
       elsif(reset='1') then
        rega_output<='0';
    end if;
	 rega_output<= output;
 end process;
end sim;
--------------------------------END--------------------------------