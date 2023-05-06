library std;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
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