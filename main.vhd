--Dataflow
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.all_components.all;
--use work.Components.all;
entity main is
    port(
	----------------------------------
	clk: in std_logic;
	rst: in std_logic
	-----------------------------------
	
	
);
end entity main;

architecture behave of main is	 
	

    signal PC,Out_P,P1_instr,M16_out,D1_P4,D2_P4,Instr,Adder_B,Adder_A,Adder_out,SE_out1,SE_out3,M12_out,SE_out2,M14_OUT,D1,D2,M2_out,M13_out,SE_out5,M5_OUT,PC_P3,SE_out6,SE_out7,C1_out,SE_out8,D2_P3,D1_P3,SE_out4,M6_out,A,B,ALU_out,M7_out,D3,ze_7_out,P5_Out,Data_in,Data_out : std_logic_vector(15 downto 0);

    signal PC_Instr_P1 : std_logic_vector(31 downto 0);
    signal CB1 : std_logic_vector(25 downto 0);

    signal S1_in,SE_in3,SE_in4,ze_7_input : std_logic_vector(8 downto 0);

    signal counter_out,counter_in, Counter, RF_A2_P2, RF_A2, RF_A1, A3,Counter_P5,P5_11to9,P5_8to6,P5_5to3:std_logic_vector(2 downto 0);

    signal MSB, C_out, C_in, Z_out, Z_in,M17_out,C_out1,Z_out1 : std_logic_vector(0 downto 0);

    signal S2_in ,SE_in8,SE_in6 : std_logic_vector(5 downto 0);

    signal S2_out: std_logic_vector(6 downto 0);

    signal P2_7to0, M1_out, Shifter_out, shifter_in : std_logic_vector(7 downto 0);

    signal SE_in5, S3_in : std_logic_vector(8 downto 0);

    signal S1_out ,S3_out: std_logic_vector(9 downto 0);

    signal decoder_out : std_logic_vector(33 downto 0);

    signal inp_p1:std_logic_vector(31 downto 0);
    signal inp_p2:std_logic_vector(60 downto 0);
    signal inp_p3: std_logic_vector(82 downto 0);
    signal inp_p4: std_logic_vector(94 downto 0);
    signal inp_p5: std_logic_vector(57 downto 0);

    signal out_p1: std_logic_vector(31 downto 0);
    signal out_p2: std_logic_vector(60 downto 0);
    signal out_p3: std_logic_vector(82 downto 0);
    signal out_p4: std_logic_vector(94 downto 0);
    signal out_p5: std_logic_vector(57 downto 0);


    signal PC_15to8_CB_Counter_P2 : std_logic_vector(42 downto 0);
    signal PC_Instruction_CB_D1_D2_Counter_P3 : std_logic_vector(75 downto 0);
	signal PC_Instruction_CB_Counter_MSB_C_Z_P4: std_logic_vector(41 downto 0);

	begin
			

        CB1 <= decoder_out(25 downto 0);

        inp_p1 <= PC&Instr;

        inp_p2 <= PC_Instr_P1&CB1&counter_out;

        inp_p3 <= PC_15to8_CB_Counter_P2(42 downto 27) &  PC_15to8_CB_Counter_P2(26 downto 19) & M1_out & PC_15to8_CB_Counter_P2(18 downto 3) & M13_out & M14_OUT &  PC_15to8_CB_Counter_P2(2 downto 0); 

        inp_p4 <= PC_Instruction_CB_D1_D2_Counter_P3 & M5_OUT & MSB & C_out & Z_out;

        inp_p5 <= PC_Instruction_CB_Counter_MSB_C_Z_P4 & M7_out;

	    
----------------------------------------
        S1_in <= out_p1(8 downto 0);
        SE_in3 <= out_p1(8 downto 0);
        PC_Instr_P1 <= out_p1;
        P1_instr <= out_p1(15 downto 0);
------------------------------------------
        PC_15to8_CB_Counter_P2 <= out_p2(60 downto 45 ) & out_p2(44 downto 37) & out_p2(18 downto 0);
        P2_7to0 <= out_p2(36 downto 29);
        RF_A1 <= out_p2(11 downto 9);
        RF_A2_P2 <= out_p2(8 downto 6);
        Counter <= out_p2(2 downto 0);
-----------------------------------------
        S2_in<=  out_p3(56 downto 51);
        PC_P3 <= out_p3(82 downto 67);
        SE_in6 <= out_p3(56 downto 51);
        D1_P3 <= out_p3(34 downto 19);
        S3_in <= out_p3(59 downto 51);
        D2_P3 <= out_p3(18 downto 3) ;
        SE_in8 <= out_p3(56 downto 51);
        D1_P3 <= out_p3(34 downto 19);
        MSB <= out_p3(57 downto 57);
        shifter_in <= out_p3(58 downto 51);
        PC_Instruction_CB_D1_D2_Counter_P3 <= out_p3(82 downto 51) & out_p3(43 downto 35) & out_p3(34 downto 0);

-------------------------------------------------
        D1_P4 <= out_p4(53 downto 38);
        Out_P <= out_p4(18 downto 3);
        D1_P4 <= out_p4(53 downto 38);
        D2_P4 <= out_p4(37 downto 22);
        PC_Instruction_CB_Counter_MSB_C_Z_P4 <=
        out_p4(94 downto 79) & out_p4(78 downto 63) & out_p4(57 downto 54)  & out_p4(21 downto 19) & out_p4(2 downto 0);
--------------------------------------------------

        Counter_P5<=out_p5(21 downto 19);
        P5_11to9<=out_p5(37 downto 35);
        P5_8to6<=out_p5(34 downto 32);
        P5_5to3<=out_p5(31 downto 29);
        ze_7_input<=out_p5(34 downto 26);
        P5_Out<=out_p5(15 downto 0) ;

------------------------PR-------------------------
        P1: reg_a

            port map(rega_input => inp_p1, writ => decoder_out(33 downto 33), reset => rst , clk =>clk , rega_output => out_p1);
        
        P2: reg_b

            port map(rega_input => inp_p2, writ => "1", reset => rst , clk =>clk , rega_output => out_p2);

        P3: reg_c1

            port map(rega_input => inp_p3, writ => out_p2(19 downto 19), reset => rst , clk =>clk , rega_output => out_p3);

        P4: reg_d

            port map(rega_input => inp_p4, writ => out_p3(44 downto 44), reset => rst , clk =>clk , rega_output => out_p4);

        P5: reg_e

            port map(rega_input => inp_p5, writ => out_p4(58 downto 58), reset => rst , clk =>clk , rega_output => out_p5);

        
-----------------------------------------------------
        
        Data_Memory1: data_memory
             port map(clk => clk,memory_write => out_p4(60 downto 60),address_in => M16_out,data_in => Data_in,initialize => rst, data_out => Data_out);
        
        C1: complementor
            port map(x=>D2_p3,
            check=>decoder_out(11 downto 11), y=>C1_out);
	     
		Instruction_memory : instr_memory
	        port map(address_in=>PC, initialize => rst,data_out=>Instr);
		  
		decoder1 : Decoder
            port map(instruct_info => P1_instr,  
            clk => clk,c => C_out,z => Z_out,CB => Decoder_out);
	     
		Incrementer1 : increment
		  port map(data_in => counter_out, data_out => counter_in, writ => decoder_out(32 downto 32));
		  
		Counter2: counter1
		  port map(counter_in => counter_in, counter_out => counter_out ,clk=>clk);
		  
		Decrementer: decrement
		  port map(data_in => PC, data_out =>Adder_B);
		  
		Adder1: Adder
		  port map(data_in_1 => Adder_A, data_in_2 => Adder_B,wrt => '1', data_out =>Adder_out);
        
        ALU1: ALU
            port map(alu_a =>A, alu_b => B ,cz => out_p3(52 downto 51), carry_in => C_in, zero_in => Z_in ,alu_op => out_p3(66 downto 63), alu_out => ALU_out, carry => C_out1(0), zero=> Z_out1(0));

        C: reg_carry
            port map(rega_input => C_out1(0), writ =>'1', reset => rst, clk => clk, rega_output => C_in(0), opcode => out_p3(66 downto 63) );

        Z: reg_z
            port map(rega_input => Z_out1(0), writ =>'1', reset => rst, clk => clk, rega_output => Z_in(0), opcode => out_p3(66 downto 63) );
        
        Shifter: L_shift
            port map(data_in => shifter_in, data_out =>Shifter_out);
        
        Register_file: reg_file_1
            port map(D1 => D1,D2 => D2,Dout => PC,
            D3 =>D3,D0 => M12_out ,
            write_en =>out_p2(3 ),
            reset => '0' ,
            A1 => RF_A1,A2 => RF_A2,A3=>A3,
            clk => clk);
        
        
---------------SE-----------------------------------
		SE1_6bit: SE6
		  port map(data_in => S1_out, data_out => SE_out1);
        
        SE2_9bit: SE7
          port map(data_in => S2_out, data_out => SE_out2);
        
        SE3_7bit: SE9
		  port map(data_in => SE_in3, data_out => SE_out3);
        
        SE4_7bit:SE9
            port map(data_in => SE_in4, data_out => SE_out4);
        
        SE5_7bit:SE9
            port map(data_in => SE_in5, data_out => SE_out5);
        
        SE6_10bit:SE10
            port map(data_in => SE_in6, data_out => SE_out6);

        SE7_6bit:SE6
            port map(data_in => S3_out, data_out => SE_out7);

        SE8_10bit:SE10
            port map(data_in => SE_in8, data_out => SE_out8);
        
        ze_7:SE9
            port map(data_in => ze_7_input, data_out => ze_7_out);
            
---------------------------S------------------------
        
		  
		S1: shift_9_10
		  port map(data_in => S1_in, data_out => S1_out);
        
        S2: shifter_6_7
            port map(data_in => S2_in, data_out => S2_out);

        S3: shift_9_10
            port map(data_in => S3_in, data_out => S3_out);
        
        -----------------------------MUXES-----------
        M9: mux_4to1_16
            port map(x0 => SE_out1, x1 => SE_out2, x2 => "0000000000000010", x3 => "0000000000000100", y => Adder_A, sel => decoder_out(30 downto 29));

        M12: mux_5to1_16 
            port map(x0 => M7_out , x1 => SE_out3,x2 => M14_OUT, x3=> M5_OUT,x4 => Adder_out, y => M12_out, sel => decoder_out(28 downto 26));
		  
		M15: mux_2to1_3
            port map(x0=> RF_A2_P2, x1 => Counter, y => RF_A2,  sel=> out_p2(28 downto 28));
        
        M1: mux_2to1_8
            port map(x0 => P2_7to0, x1 => Shifter_out, y=> M1_out, sel => out_p2(27 downto 27));

        M2: mux_2to1_16
            port map(x0 => D1, x1 => M6_out, y=> M2_out , sel =>  out_p2(26 downto 26));

        M13: mux_6to1_16 
            port map(x0 => M7_out , x1 => M5_OUT,x2 => M2_out, x3=> SE_out4, x4 => D3 , x5 => SE_out5, y => M13_out, sel =>  out_p2(25 downto 23));
        
        M14: mux_6to1_16 
            port map(x0 => M7_out , x1 => M5_OUT,x2 => D2, x3=> SE_out4, x4 => D3 , x5 => SE_out5, y => M14_out, sel =>  out_p2(22 downto 20));
        
        M3: mux_3to1_16
            port map(x0 => PC_P3, x1 => D1_P3, x2=> SE_out6, y=> A , sel => out_p3 (50 downto 49));
        
       
        M4: mux_4to1_16 
            port map(x0 => SE_out7, x1 => C1_out, x2=> SE_out8, x3 => "0000000000000001", y=> B , sel =>  out_p3(48 downto 47));
        
        M5: mux_2to1_16
            port map(x0 => ALU_out, x1 => D1_P3, y=> M5_OUT, sel =>  out_p3(45 downto 45));
        
        M6: mux_2to1_16
            port map(x0 => D1_P3, x1 => ALU_out, y=> M6_out, sel => MSB);
        
        M16: mux_2to1_16
            port map(x0 => D1_P4, x1 => Out_P, y=> M16_out, sel => out_p4( 62 downto 62));
        
        M8: mux_2to1_16
            port map(x0 => D1_P4, x1 => D2_P4, y=> Data_in, sel =>  out_p4(60 downto 60));
        
        M7: mux_2to1_16
            port map(x0 => Data_out, x1 => Out_P, y=> M7_out, sel =>  out_p4(61 downto 61));
        
        M10: mux_4to1_3
            port map(x0 => Counter_P5, x1 => P5_11to9, x2=> P5_8to6, x3 => P5_5to3, y=> A3 , sel =>  out_p5(25 downto 24));
        
        M11: mux_2to1_16
            port map(x0 => ze_7_out, x1 => P5_Out, y=> D3, sel =>  out_p5(23 downto 23));
        
        M17: mux_4to1_1 
            port map(x0 =>out_p5(18 downto 18), x1 => out_p5(17 downto 17), x2=> out_p5(16 downto 16), x3 =>out_p5(22 downto 22), y=> M17_out , sel1 =>  out_p5(41 downto 38), sel2 => out_p5(27 downto 26));
        
        
        
		
end behave;