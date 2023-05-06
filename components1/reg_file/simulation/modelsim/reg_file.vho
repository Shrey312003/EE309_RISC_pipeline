-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/27/2022 03:25:55"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reg_file IS
    PORT (
	D1 : OUT std_logic_vector(15 DOWNTO 0);
	D2 : OUT std_logic_vector(15 DOWNTO 0);
	D3 : IN std_logic_vector(15 DOWNTO 0);
	write_en : IN std_logic;
	reset : IN std_logic;
	A1 : IN std_logic_vector(2 DOWNTO 0);
	A2 : IN std_logic_vector(2 DOWNTO 0);
	A3 : IN std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic
	);
END reg_file;

-- Design Ports Information
-- D1[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[4]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[5]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[6]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[7]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[8]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[9]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[10]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[11]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[12]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[13]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[14]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[15]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[1]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[2]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[3]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[4]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[5]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[7]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[8]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[9]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[10]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[11]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[12]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[13]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[14]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[15]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[0]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[0]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[2]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[0]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3[0]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_en	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[1]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[4]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[6]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[7]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[8]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[9]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[10]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[11]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[12]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[13]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[14]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[15]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reg_file IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_write_en : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_A1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \D1[0]~output_o\ : std_logic;
SIGNAL \D1[1]~output_o\ : std_logic;
SIGNAL \D1[2]~output_o\ : std_logic;
SIGNAL \D1[3]~output_o\ : std_logic;
SIGNAL \D1[4]~output_o\ : std_logic;
SIGNAL \D1[5]~output_o\ : std_logic;
SIGNAL \D1[6]~output_o\ : std_logic;
SIGNAL \D1[7]~output_o\ : std_logic;
SIGNAL \D1[8]~output_o\ : std_logic;
SIGNAL \D1[9]~output_o\ : std_logic;
SIGNAL \D1[10]~output_o\ : std_logic;
SIGNAL \D1[11]~output_o\ : std_logic;
SIGNAL \D1[12]~output_o\ : std_logic;
SIGNAL \D1[13]~output_o\ : std_logic;
SIGNAL \D1[14]~output_o\ : std_logic;
SIGNAL \D1[15]~output_o\ : std_logic;
SIGNAL \D2[0]~output_o\ : std_logic;
SIGNAL \D2[1]~output_o\ : std_logic;
SIGNAL \D2[2]~output_o\ : std_logic;
SIGNAL \D2[3]~output_o\ : std_logic;
SIGNAL \D2[4]~output_o\ : std_logic;
SIGNAL \D2[5]~output_o\ : std_logic;
SIGNAL \D2[6]~output_o\ : std_logic;
SIGNAL \D2[7]~output_o\ : std_logic;
SIGNAL \D2[8]~output_o\ : std_logic;
SIGNAL \D2[9]~output_o\ : std_logic;
SIGNAL \D2[10]~output_o\ : std_logic;
SIGNAL \D2[11]~output_o\ : std_logic;
SIGNAL \D2[12]~output_o\ : std_logic;
SIGNAL \D2[13]~output_o\ : std_logic;
SIGNAL \D2[14]~output_o\ : std_logic;
SIGNAL \D2[15]~output_o\ : std_logic;
SIGNAL \A1[2]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \D3[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \A3[1]~input_o\ : std_logic;
SIGNAL \A3[2]~input_o\ : std_logic;
SIGNAL \write_en~input_o\ : std_logic;
SIGNAL \A3[0]~input_o\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \registers[7][0]~q\ : std_logic;
SIGNAL \A1[1]~input_o\ : std_logic;
SIGNAL \A1[0]~input_o\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \registers[6][0]~q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \registers[4][0]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \registers[5][0]~q\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \registers[0][0]~q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \registers[1][0]~q\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \registers[2][0]~q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \registers[3][0]~q\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \D3[1]~input_o\ : std_logic;
SIGNAL \registers[3][1]~q\ : std_logic;
SIGNAL \registers[2][1]~q\ : std_logic;
SIGNAL \registers[1][1]~q\ : std_logic;
SIGNAL \registers[0][1]~q\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \registers[7][1]~q\ : std_logic;
SIGNAL \registers[6][1]~q\ : std_logic;
SIGNAL \registers[4][1]~q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \registers[5][1]~q\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \D3[2]~input_o\ : std_logic;
SIGNAL \registers[3][2]~q\ : std_logic;
SIGNAL \registers[2][2]~q\ : std_logic;
SIGNAL \registers[0][2]~q\ : std_logic;
SIGNAL \registers[1][2]~q\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \registers[7][2]~q\ : std_logic;
SIGNAL \registers[4][2]~q\ : std_logic;
SIGNAL \registers[6][2]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \registers[5][2]~q\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \D3[3]~input_o\ : std_logic;
SIGNAL \registers[0][3]~q\ : std_logic;
SIGNAL \registers[1][3]~q\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \registers[2][3]~q\ : std_logic;
SIGNAL \registers[3][3]~q\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \registers[7][3]~q\ : std_logic;
SIGNAL \registers[5][3]~q\ : std_logic;
SIGNAL \registers[4][3]~q\ : std_logic;
SIGNAL \registers[6][3]~q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \D3[4]~input_o\ : std_logic;
SIGNAL \registers[4][4]~q\ : std_logic;
SIGNAL \registers[6][4]~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \registers[5][4]~q\ : std_logic;
SIGNAL \registers[7][4]~q\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \registers[1][4]~q\ : std_logic;
SIGNAL \registers[0][4]~q\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \registers[2][4]~q\ : std_logic;
SIGNAL \registers[3][4]~q\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \D3[5]~input_o\ : std_logic;
SIGNAL \registers[0][5]~q\ : std_logic;
SIGNAL \registers[1][5]~q\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \registers[2][5]~q\ : std_logic;
SIGNAL \registers[3][5]~q\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \registers[7][5]~q\ : std_logic;
SIGNAL \registers[5][5]~q\ : std_logic;
SIGNAL \registers[4][5]~q\ : std_logic;
SIGNAL \registers[6][5]~q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \D3[6]~input_o\ : std_logic;
SIGNAL \registers[0][6]~q\ : std_logic;
SIGNAL \registers[1][6]~q\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \registers[2][6]~q\ : std_logic;
SIGNAL \registers[3][6]~q\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \registers[7][6]~q\ : std_logic;
SIGNAL \registers[4][6]~q\ : std_logic;
SIGNAL \registers[6][6]~q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \registers[5][6]~q\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \D3[7]~input_o\ : std_logic;
SIGNAL \registers[0][7]~q\ : std_logic;
SIGNAL \registers[1][7]~q\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \registers[2][7]~q\ : std_logic;
SIGNAL \registers[3][7]~q\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \registers[7][7]~q\ : std_logic;
SIGNAL \registers[5][7]~q\ : std_logic;
SIGNAL \registers[4][7]~q\ : std_logic;
SIGNAL \registers[6][7]~q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \D3[8]~input_o\ : std_logic;
SIGNAL \registers[3][8]~q\ : std_logic;
SIGNAL \registers[2][8]~q\ : std_logic;
SIGNAL \registers[1][8]~q\ : std_logic;
SIGNAL \registers[0][8]~q\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \registers[6][8]~q\ : std_logic;
SIGNAL \registers[4][8]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \registers[7][8]~q\ : std_logic;
SIGNAL \registers[5][8]~q\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \D3[9]~input_o\ : std_logic;
SIGNAL \registers[6][9]~q\ : std_logic;
SIGNAL \registers[4][9]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \registers[7][9]~q\ : std_logic;
SIGNAL \registers[5][9]~q\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \registers[3][9]~q\ : std_logic;
SIGNAL \registers[2][9]~q\ : std_logic;
SIGNAL \registers[0][9]~q\ : std_logic;
SIGNAL \registers[1][9]~q\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \D3[10]~input_o\ : std_logic;
SIGNAL \registers[7][10]~q\ : std_logic;
SIGNAL \registers[4][10]~q\ : std_logic;
SIGNAL \registers[6][10]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \registers[5][10]~q\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \registers[3][10]~q\ : std_logic;
SIGNAL \registers[2][10]~q\ : std_logic;
SIGNAL \registers[1][10]~q\ : std_logic;
SIGNAL \registers[0][10]~q\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \D3[11]~input_o\ : std_logic;
SIGNAL \registers[7][11]~q\ : std_logic;
SIGNAL \registers[5][11]~q\ : std_logic;
SIGNAL \registers[6][11]~q\ : std_logic;
SIGNAL \registers[4][11]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \registers[0][11]~q\ : std_logic;
SIGNAL \registers[1][11]~q\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \registers[3][11]~q\ : std_logic;
SIGNAL \registers[2][11]~q\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \D3[12]~input_o\ : std_logic;
SIGNAL \registers[7][12]~q\ : std_logic;
SIGNAL \registers[5][12]~q\ : std_logic;
SIGNAL \registers[6][12]~q\ : std_logic;
SIGNAL \registers[4][12]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \registers[0][12]~q\ : std_logic;
SIGNAL \registers[1][12]~q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \registers[3][12]~q\ : std_logic;
SIGNAL \registers[2][12]~q\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \D3[13]~input_o\ : std_logic;
SIGNAL \registers[4][13]~q\ : std_logic;
SIGNAL \registers[6][13]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \registers[7][13]~q\ : std_logic;
SIGNAL \registers[5][13]~q\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \registers[0][13]~q\ : std_logic;
SIGNAL \registers[1][13]~q\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \registers[2][13]~q\ : std_logic;
SIGNAL \registers[3][13]~q\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \D3[14]~input_o\ : std_logic;
SIGNAL \registers[3][14]~q\ : std_logic;
SIGNAL \registers[2][14]~q\ : std_logic;
SIGNAL \registers[0][14]~q\ : std_logic;
SIGNAL \registers[1][14]~q\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \registers[6][14]~q\ : std_logic;
SIGNAL \registers[4][14]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \registers[7][14]~q\ : std_logic;
SIGNAL \registers[5][14]~q\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \D3[15]~input_o\ : std_logic;
SIGNAL \registers[0][15]~q\ : std_logic;
SIGNAL \registers[1][15]~q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \registers[2][15]~q\ : std_logic;
SIGNAL \registers[3][15]~q\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \registers[4][15]~q\ : std_logic;
SIGNAL \registers[6][15]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \registers[7][15]~q\ : std_logic;
SIGNAL \registers[5][15]~q\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \A2[1]~input_o\ : std_logic;
SIGNAL \A2[0]~input_o\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \A2[2]~input_o\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

D1 <= ww_D1;
D2 <= ww_D2;
ww_D3 <= D3;
ww_write_en <= write_en;
ww_reset <= reset;
ww_A1 <= A1;
ww_A2 <= A2;
ww_A3 <= A3;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y26_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X24_Y0_N9
\D1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~4_combout\,
	devoe => ww_devoe,
	o => \D1[0]~output_o\);

-- Location: IOOBUF_X60_Y10_N16
\D1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~4_combout\,
	devoe => ww_devoe,
	o => \D1[1]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\D1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \D1[2]~output_o\);

-- Location: IOOBUF_X60_Y23_N23
\D1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~4_combout\,
	devoe => ww_devoe,
	o => \D1[3]~output_o\);

-- Location: IOOBUF_X8_Y21_N23
\D1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => \D1[4]~output_o\);

-- Location: IOOBUF_X60_Y10_N2
\D1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	devoe => ww_devoe,
	o => \D1[5]~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\D1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => \D1[6]~output_o\);

-- Location: IOOBUF_X40_Y36_N30
\D1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~4_combout\,
	devoe => ww_devoe,
	o => \D1[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\D1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~4_combout\,
	devoe => ww_devoe,
	o => \D1[8]~output_o\);

-- Location: IOOBUF_X8_Y0_N16
\D1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~4_combout\,
	devoe => ww_devoe,
	o => \D1[9]~output_o\);

-- Location: IOOBUF_X16_Y21_N16
\D1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \D1[10]~output_o\);

-- Location: IOOBUF_X25_Y28_N16
\D1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~4_combout\,
	devoe => ww_devoe,
	o => \D1[11]~output_o\);

-- Location: IOOBUF_X25_Y26_N16
\D1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	devoe => ww_devoe,
	o => \D1[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\D1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \D1[13]~output_o\);

-- Location: IOOBUF_X8_Y21_N16
\D1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	devoe => ww_devoe,
	o => \D1[14]~output_o\);

-- Location: IOOBUF_X60_Y23_N9
\D1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	devoe => ww_devoe,
	o => \D1[15]~output_o\);

-- Location: IOOBUF_X60_Y10_N9
\D2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~4_combout\,
	devoe => ww_devoe,
	o => \D2[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\D2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~4_combout\,
	devoe => ww_devoe,
	o => \D2[1]~output_o\);

-- Location: IOOBUF_X12_Y21_N9
\D2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~4_combout\,
	devoe => ww_devoe,
	o => \D2[2]~output_o\);

-- Location: IOOBUF_X60_Y22_N16
\D2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~4_combout\,
	devoe => ww_devoe,
	o => \D2[3]~output_o\);

-- Location: IOOBUF_X58_Y36_N9
\D2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~4_combout\,
	devoe => ww_devoe,
	o => \D2[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\D2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~4_combout\,
	devoe => ww_devoe,
	o => \D2[5]~output_o\);

-- Location: IOOBUF_X28_Y36_N9
\D2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~4_combout\,
	devoe => ww_devoe,
	o => \D2[6]~output_o\);

-- Location: IOOBUF_X60_Y13_N23
\D2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~4_combout\,
	devoe => ww_devoe,
	o => \D2[7]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\D2[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~4_combout\,
	devoe => ww_devoe,
	o => \D2[8]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\D2[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~4_combout\,
	devoe => ww_devoe,
	o => \D2[9]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\D2[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~4_combout\,
	devoe => ww_devoe,
	o => \D2[10]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\D2[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => \D2[11]~output_o\);

-- Location: IOOBUF_X14_Y21_N2
\D2[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~4_combout\,
	devoe => ww_devoe,
	o => \D2[12]~output_o\);

-- Location: IOOBUF_X25_Y26_N23
\D2[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~4_combout\,
	devoe => ww_devoe,
	o => \D2[13]~output_o\);

-- Location: IOOBUF_X60_Y23_N2
\D2[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~4_combout\,
	devoe => ww_devoe,
	o => \D2[14]~output_o\);

-- Location: IOOBUF_X60_Y22_N24
\D2[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~4_combout\,
	devoe => ww_devoe,
	o => \D2[15]~output_o\);

-- Location: IOIBUF_X19_Y21_N22
\A1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(2),
	o => \A1[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X60_Y15_N22
\D3[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(0),
	o => \D3[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X40_Y36_N15
\A3[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3(1),
	o => \A3[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\A3[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3(2),
	o => \A3[2]~input_o\);

-- Location: IOIBUF_X60_Y14_N15
\write_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_en,
	o => \write_en~input_o\);

-- Location: IOIBUF_X25_Y29_N22
\A3[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3(0),
	o => \A3[0]~input_o\);

-- Location: LCCOMB_X34_Y18_N28
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\A3[1]~input_o\ & (\A3[2]~input_o\ & (\write_en~input_o\ & \A3[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[1]~input_o\,
	datab => \A3[2]~input_o\,
	datac => \write_en~input_o\,
	datad => \A3[0]~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: FF_X32_Y17_N11
\registers[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][0]~q\);

-- Location: IOIBUF_X25_Y27_N15
\A1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(1),
	o => \A1[1]~input_o\);

-- Location: IOIBUF_X60_Y22_N8
\A1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(0),
	o => \A1[0]~input_o\);

-- Location: LCCOMB_X34_Y18_N16
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\A3[1]~input_o\ & (\A3[2]~input_o\ & (\write_en~input_o\ & !\A3[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[1]~input_o\,
	datab => \A3[2]~input_o\,
	datac => \write_en~input_o\,
	datad => \A3[0]~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: FF_X33_Y17_N25
\registers[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][0]~q\);

-- Location: LCCOMB_X34_Y18_N18
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\A3[1]~input_o\ & (\A3[2]~input_o\ & (\write_en~input_o\ & !\A3[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[1]~input_o\,
	datab => \A3[2]~input_o\,
	datac => \write_en~input_o\,
	datad => \A3[0]~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: FF_X33_Y17_N11
\registers[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][0]~q\);

-- Location: LCCOMB_X33_Y17_N24
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\A1[1]~input_o\ & ((\A1[0]~input_o\) # ((\registers[6][0]~q\)))) # (!\A1[1]~input_o\ & (!\A1[0]~input_o\ & ((\registers[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][0]~q\,
	datad => \registers[4][0]~q\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X34_Y18_N14
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\A3[1]~input_o\ & (\A3[2]~input_o\ & (\write_en~input_o\ & \A3[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[1]~input_o\,
	datab => \A3[2]~input_o\,
	datac => \write_en~input_o\,
	datad => \A3[0]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: FF_X32_Y17_N25
\registers[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][0]~q\);

-- Location: LCCOMB_X32_Y17_N24
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & ((\registers[7][0]~q\) # ((!\A1[0]~input_o\)))) # (!\Mux15~0_combout\ & (((\registers[5][0]~q\ & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][0]~q\,
	datab => \Mux15~0_combout\,
	datac => \registers[5][0]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X34_Y18_N26
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\A3[1]~input_o\ & (!\A3[2]~input_o\ & (\write_en~input_o\ & !\A3[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[1]~input_o\,
	datab => \A3[2]~input_o\,
	datac => \write_en~input_o\,
	datad => \A3[0]~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: FF_X30_Y17_N27
\registers[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][0]~q\);

-- Location: LCCOMB_X34_Y18_N24
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\A3[1]~input_o\ & (!\A3[2]~input_o\ & (\write_en~input_o\ & \A3[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[1]~input_o\,
	datab => \A3[2]~input_o\,
	datac => \write_en~input_o\,
	datad => \A3[0]~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: FF_X30_Y17_N9
\registers[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][0]~q\);

-- Location: LCCOMB_X30_Y17_N8
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\A1[0]~input_o\ & (((\registers[1][0]~q\) # (\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & (\registers[0][0]~q\ & ((!\A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[0][0]~q\,
	datab => \A1[0]~input_o\,
	datac => \registers[1][0]~q\,
	datad => \A1[1]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X34_Y18_N30
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\A3[1]~input_o\ & (!\A3[2]~input_o\ & (\write_en~input_o\ & !\A3[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[1]~input_o\,
	datab => \A3[2]~input_o\,
	datac => \write_en~input_o\,
	datad => \A3[0]~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: FF_X31_Y17_N25
\registers[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][0]~q\);

-- Location: LCCOMB_X34_Y18_N4
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\A3[1]~input_o\ & (!\A3[2]~input_o\ & (\write_en~input_o\ & \A3[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[1]~input_o\,
	datab => \A3[2]~input_o\,
	datac => \write_en~input_o\,
	datad => \A3[0]~input_o\,
	combout => \Decoder0~7_combout\);

-- Location: FF_X31_Y17_N3
\registers[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][0]~q\);

-- Location: LCCOMB_X31_Y17_N24
\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux15~2_combout\ & (((\registers[3][0]~q\)) # (!\A1[1]~input_o\))) # (!\Mux15~2_combout\ & (\A1[1]~input_o\ & (\registers[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \registers[2][0]~q\,
	datad => \registers[3][0]~q\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X32_Y17_N20
\Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\A1[2]~input_o\ & (\Mux15~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1[2]~input_o\,
	datac => \Mux15~1_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux15~4_combout\);

-- Location: IOIBUF_X25_Y29_N15
\D3[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(1),
	o => \D3[1]~input_o\);

-- Location: FF_X31_Y17_N15
\registers[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][1]~q\);

-- Location: FF_X31_Y17_N13
\registers[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][1]~q\);

-- Location: FF_X30_Y17_N21
\registers[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][1]~q\);

-- Location: FF_X30_Y17_N15
\registers[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][1]~q\);

-- Location: LCCOMB_X30_Y17_N20
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\registers[1][1]~q\)) # (!\A1[0]~input_o\ & ((\registers[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \registers[1][1]~q\,
	datad => \registers[0][1]~q\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X31_Y17_N12
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\A1[1]~input_o\ & ((\Mux14~2_combout\ & (\registers[3][1]~q\)) # (!\Mux14~2_combout\ & ((\registers[2][1]~q\))))) # (!\A1[1]~input_o\ & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \registers[3][1]~q\,
	datac => \registers[2][1]~q\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: FF_X32_Y17_N1
\registers[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][1]~q\);

-- Location: FF_X33_Y17_N13
\registers[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][1]~q\);

-- Location: FF_X33_Y17_N7
\registers[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][1]~q\);

-- Location: LCCOMB_X33_Y17_N12
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\A1[1]~input_o\ & ((\A1[0]~input_o\) # ((\registers[6][1]~q\)))) # (!\A1[1]~input_o\ & (!\A1[0]~input_o\ & ((\registers[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][1]~q\,
	datad => \registers[4][1]~q\,
	combout => \Mux14~0_combout\);

-- Location: FF_X32_Y17_N15
\registers[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][1]~q\);

-- Location: LCCOMB_X32_Y17_N14
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & ((\registers[7][1]~q\) # ((!\A1[0]~input_o\)))) # (!\Mux14~0_combout\ & (((\registers[5][1]~q\ & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][1]~q\,
	datab => \Mux14~0_combout\,
	datac => \registers[5][1]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X32_Y17_N2
\Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\A1[2]~input_o\ & ((\Mux14~1_combout\))) # (!\A1[2]~input_o\ & (\Mux14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datab => \A1[2]~input_o\,
	datad => \Mux14~1_combout\,
	combout => \Mux14~4_combout\);

-- Location: IOIBUF_X10_Y21_N15
\D3[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(2),
	o => \D3[2]~input_o\);

-- Location: FF_X31_Y17_N27
\registers[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][2]~q\);

-- Location: FF_X31_Y17_N17
\registers[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][2]~q\);

-- Location: FF_X30_Y17_N19
\registers[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][2]~q\);

-- Location: FF_X30_Y17_N25
\registers[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][2]~q\);

-- Location: LCCOMB_X30_Y17_N24
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\A1[1]~input_o\ & (((\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & ((\registers[1][2]~q\))) # (!\A1[0]~input_o\ & (\registers[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \registers[0][2]~q\,
	datac => \registers[1][2]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X31_Y17_N16
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\A1[1]~input_o\ & ((\Mux13~2_combout\ & (\registers[3][2]~q\)) # (!\Mux13~2_combout\ & ((\registers[2][2]~q\))))) # (!\A1[1]~input_o\ & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][2]~q\,
	datab => \A1[1]~input_o\,
	datac => \registers[2][2]~q\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: FF_X32_Y17_N23
\registers[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][2]~q\);

-- Location: FF_X33_Y17_N19
\registers[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][2]~q\);

-- Location: FF_X33_Y17_N9
\registers[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][2]~q\);

-- Location: LCCOMB_X33_Y17_N8
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\A1[1]~input_o\ & (((\registers[6][2]~q\) # (\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & (\registers[4][2]~q\ & ((!\A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \registers[4][2]~q\,
	datac => \registers[6][2]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: FF_X32_Y17_N5
\registers[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][2]~q\);

-- Location: LCCOMB_X32_Y17_N4
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & ((\registers[7][2]~q\) # ((!\A1[0]~input_o\)))) # (!\Mux13~0_combout\ & (((\registers[5][2]~q\ & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][2]~q\,
	datab => \Mux13~0_combout\,
	datac => \registers[5][2]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X31_Y17_N20
\Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\A1[2]~input_o\ & ((\Mux13~1_combout\))) # (!\A1[2]~input_o\ & (\Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datac => \A1[2]~input_o\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~4_combout\);

-- Location: IOIBUF_X24_Y0_N29
\D3[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(3),
	o => \D3[3]~input_o\);

-- Location: FF_X30_Y17_N31
\registers[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][3]~q\);

-- Location: FF_X30_Y17_N13
\registers[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][3]~q\);

-- Location: LCCOMB_X30_Y17_N12
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\A1[1]~input_o\ & (((\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & ((\registers[1][3]~q\))) # (!\A1[0]~input_o\ & (\registers[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \registers[0][3]~q\,
	datac => \registers[1][3]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: FF_X31_Y17_N7
\registers[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][3]~q\);

-- Location: FF_X31_Y17_N1
\registers[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][3]~q\);

-- Location: LCCOMB_X31_Y17_N6
\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux12~2_combout\ & (((\registers[3][3]~q\)) # (!\A1[1]~input_o\))) # (!\Mux12~2_combout\ & (\A1[1]~input_o\ & (\registers[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \registers[2][3]~q\,
	datad => \registers[3][3]~q\,
	combout => \Mux12~3_combout\);

-- Location: FF_X32_Y17_N27
\registers[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][3]~q\);

-- Location: FF_X32_Y17_N9
\registers[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][3]~q\);

-- Location: FF_X33_Y17_N23
\registers[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][3]~q\);

-- Location: FF_X33_Y17_N5
\registers[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][3]~q\);

-- Location: LCCOMB_X33_Y17_N4
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\registers[6][3]~q\))) # (!\A1[1]~input_o\ & (\registers[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[4][3]~q\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][3]~q\,
	datad => \A1[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X32_Y17_N8
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\A1[0]~input_o\ & ((\Mux12~0_combout\ & (\registers[7][3]~q\)) # (!\Mux12~0_combout\ & ((\registers[5][3]~q\))))) # (!\A1[0]~input_o\ & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][3]~q\,
	datab => \A1[0]~input_o\,
	datac => \registers[5][3]~q\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X33_Y20_N8
\Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\A1[2]~input_o\ & ((\Mux12~1_combout\))) # (!\A1[2]~input_o\ & (\Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1[2]~input_o\,
	datac => \Mux12~3_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~4_combout\);

-- Location: IOIBUF_X14_Y21_N22
\D3[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(4),
	o => \D3[4]~input_o\);

-- Location: FF_X33_Y17_N27
\registers[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][4]~q\);

-- Location: FF_X33_Y17_N1
\registers[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][4]~q\);

-- Location: LCCOMB_X33_Y17_N0
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\registers[6][4]~q\))) # (!\A1[1]~input_o\ & (\registers[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[4][4]~q\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][4]~q\,
	datad => \A1[1]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: FF_X31_Y18_N25
\registers[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][4]~q\);

-- Location: FF_X31_Y18_N11
\registers[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][4]~q\);

-- Location: LCCOMB_X31_Y18_N24
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & (((\registers[7][4]~q\)) # (!\A1[0]~input_o\))) # (!\Mux11~0_combout\ & (\A1[0]~input_o\ & (\registers[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \A1[0]~input_o\,
	datac => \registers[5][4]~q\,
	datad => \registers[7][4]~q\,
	combout => \Mux11~1_combout\);

-- Location: FF_X30_Y17_N17
\registers[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][4]~q\);

-- Location: FF_X30_Y17_N11
\registers[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][4]~q\);

-- Location: LCCOMB_X30_Y17_N16
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\registers[1][4]~q\)) # (!\A1[0]~input_o\ & ((\registers[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \registers[1][4]~q\,
	datad => \registers[0][4]~q\,
	combout => \Mux11~2_combout\);

-- Location: FF_X31_Y17_N11
\registers[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][4]~q\);

-- Location: FF_X31_Y17_N29
\registers[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][4]~q\);

-- Location: LCCOMB_X31_Y17_N10
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux11~2_combout\ & (((\registers[3][4]~q\)) # (!\A1[1]~input_o\))) # (!\Mux11~2_combout\ & (\A1[1]~input_o\ & (\registers[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \registers[2][4]~q\,
	datad => \registers[3][4]~q\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X31_Y17_N22
\Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\A1[2]~input_o\ & (\Mux11~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[2]~input_o\,
	datab => \Mux11~1_combout\,
	datac => \Mux11~3_combout\,
	combout => \Mux11~4_combout\);

-- Location: IOIBUF_X12_Y21_N29
\D3[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(5),
	o => \D3[5]~input_o\);

-- Location: FF_X30_Y17_N23
\registers[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][5]~q\);

-- Location: FF_X30_Y17_N5
\registers[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][5]~q\);

-- Location: LCCOMB_X30_Y17_N4
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\A1[0]~input_o\ & (((\registers[1][5]~q\) # (\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & (\registers[0][5]~q\ & ((!\A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[0][5]~q\,
	datab => \A1[0]~input_o\,
	datac => \registers[1][5]~q\,
	datad => \A1[1]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: FF_X31_Y17_N9
\registers[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][5]~q\);

-- Location: FF_X31_Y17_N19
\registers[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][5]~q\);

-- Location: LCCOMB_X31_Y17_N8
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~2_combout\ & (((\registers[3][5]~q\)) # (!\A1[1]~input_o\))) # (!\Mux10~2_combout\ & (\A1[1]~input_o\ & (\registers[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \registers[2][5]~q\,
	datad => \registers[3][5]~q\,
	combout => \Mux10~3_combout\);

-- Location: FF_X31_Y18_N31
\registers[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][5]~q\);

-- Location: FF_X31_Y18_N29
\registers[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][5]~q\);

-- Location: FF_X33_Y17_N15
\registers[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][5]~q\);

-- Location: FF_X33_Y17_N21
\registers[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][5]~q\);

-- Location: LCCOMB_X33_Y17_N20
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\A1[1]~input_o\ & (((\registers[6][5]~q\) # (\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & (\registers[4][5]~q\ & ((!\A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \registers[4][5]~q\,
	datac => \registers[6][5]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X31_Y18_N28
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\A1[0]~input_o\ & ((\Mux10~0_combout\ & (\registers[7][5]~q\)) # (!\Mux10~0_combout\ & ((\registers[5][5]~q\))))) # (!\A1[0]~input_o\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][5]~q\,
	datab => \A1[0]~input_o\,
	datac => \registers[5][5]~q\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X32_Y17_N12
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\A1[2]~input_o\ & ((\Mux10~1_combout\))) # (!\A1[2]~input_o\ & (\Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \A1[2]~input_o\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~4_combout\);

-- Location: IOIBUF_X36_Y0_N29
\D3[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(6),
	o => \D3[6]~input_o\);

-- Location: FF_X30_Y17_N3
\registers[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][6]~q\);

-- Location: FF_X30_Y17_N1
\registers[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][6]~q\);

-- Location: LCCOMB_X30_Y17_N0
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\A1[1]~input_o\ & (((\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & ((\registers[1][6]~q\))) # (!\A1[0]~input_o\ & (\registers[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \registers[0][6]~q\,
	datac => \registers[1][6]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: FF_X32_Y18_N1
\registers[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][6]~q\);

-- Location: FF_X32_Y18_N27
\registers[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][6]~q\);

-- Location: LCCOMB_X32_Y18_N0
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & (((\registers[3][6]~q\)) # (!\A1[1]~input_o\))) # (!\Mux9~2_combout\ & (\A1[1]~input_o\ & (\registers[2][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \registers[2][6]~q\,
	datad => \registers[3][6]~q\,
	combout => \Mux9~3_combout\);

-- Location: FF_X31_Y18_N27
\registers[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][6]~q\);

-- Location: FF_X33_Y17_N3
\registers[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][6]~q\);

-- Location: FF_X33_Y17_N17
\registers[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][6]~q\);

-- Location: LCCOMB_X33_Y17_N16
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\A1[1]~input_o\ & (((\registers[6][6]~q\) # (\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & (\registers[4][6]~q\ & ((!\A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \registers[4][6]~q\,
	datac => \registers[6][6]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: FF_X31_Y18_N9
\registers[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][6]~q\);

-- Location: LCCOMB_X31_Y18_N8
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & ((\registers[7][6]~q\) # ((!\A1[0]~input_o\)))) # (!\Mux9~0_combout\ & (((\registers[5][6]~q\ & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][6]~q\,
	datab => \Mux9~0_combout\,
	datac => \registers[5][6]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X32_Y18_N28
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\A1[2]~input_o\ & ((\Mux9~1_combout\))) # (!\A1[2]~input_o\ & (\Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1[2]~input_o\,
	datac => \Mux9~3_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~4_combout\);

-- Location: IOIBUF_X0_Y18_N1
\D3[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(7),
	o => \D3[7]~input_o\);

-- Location: FF_X30_Y17_N7
\registers[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][7]~q\);

-- Location: FF_X30_Y17_N29
\registers[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][7]~q\);

-- Location: LCCOMB_X30_Y17_N28
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\A1[1]~input_o\ & (((\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & ((\registers[1][7]~q\))) # (!\A1[0]~input_o\ & (\registers[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \registers[0][7]~q\,
	datac => \registers[1][7]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: FF_X32_Y18_N31
\registers[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][7]~q\);

-- Location: FF_X32_Y18_N9
\registers[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][7]~q\);

-- Location: LCCOMB_X32_Y18_N30
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\ & (((\registers[3][7]~q\)) # (!\A1[1]~input_o\))) # (!\Mux8~2_combout\ & (\A1[1]~input_o\ & (\registers[2][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \registers[2][7]~q\,
	datad => \registers[3][7]~q\,
	combout => \Mux8~3_combout\);

-- Location: FF_X31_Y18_N23
\registers[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][7]~q\);

-- Location: FF_X31_Y18_N5
\registers[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][7]~q\);

-- Location: FF_X33_Y17_N31
\registers[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][7]~q\);

-- Location: FF_X33_Y17_N29
\registers[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][7]~q\);

-- Location: LCCOMB_X33_Y17_N28
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\registers[6][7]~q\))) # (!\A1[1]~input_o\ & (\registers[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[4][7]~q\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][7]~q\,
	datad => \A1[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X31_Y18_N4
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\A1[0]~input_o\ & ((\Mux8~0_combout\ & (\registers[7][7]~q\)) # (!\Mux8~0_combout\ & ((\registers[5][7]~q\))))) # (!\A1[0]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][7]~q\,
	datab => \A1[0]~input_o\,
	datac => \registers[5][7]~q\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X32_Y18_N10
\Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\A1[2]~input_o\ & ((\Mux8~1_combout\))) # (!\A1[2]~input_o\ & (\Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \A1[2]~input_o\,
	datac => \Mux8~1_combout\,
	combout => \Mux8~4_combout\);

-- Location: IOIBUF_X25_Y27_N22
\D3[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(8),
	o => \D3[8]~input_o\);

-- Location: FF_X32_Y18_N15
\registers[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][8]~q\);

-- Location: FF_X32_Y18_N21
\registers[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][8]~q\);

-- Location: FF_X32_Y19_N25
\registers[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][8]~q\);

-- Location: FF_X32_Y19_N3
\registers[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][8]~q\);

-- Location: LCCOMB_X32_Y19_N24
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\A1[0]~input_o\ & ((\A1[1]~input_o\) # ((\registers[1][8]~q\)))) # (!\A1[0]~input_o\ & (!\A1[1]~input_o\ & ((\registers[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \A1[1]~input_o\,
	datac => \registers[1][8]~q\,
	datad => \registers[0][8]~q\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X32_Y18_N20
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\A1[1]~input_o\ & ((\Mux7~2_combout\ & (\registers[3][8]~q\)) # (!\Mux7~2_combout\ & ((\registers[2][8]~q\))))) # (!\A1[1]~input_o\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][8]~q\,
	datab => \A1[1]~input_o\,
	datac => \registers[2][8]~q\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: FF_X30_Y18_N9
\registers[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][8]~q\);

-- Location: FF_X30_Y18_N11
\registers[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][8]~q\);

-- Location: LCCOMB_X30_Y18_N8
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\A1[1]~input_o\ & ((\A1[0]~input_o\) # ((\registers[6][8]~q\)))) # (!\A1[1]~input_o\ & (!\A1[0]~input_o\ & ((\registers[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][8]~q\,
	datad => \registers[4][8]~q\,
	combout => \Mux7~0_combout\);

-- Location: FF_X31_Y18_N3
\registers[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][8]~q\);

-- Location: FF_X31_Y18_N17
\registers[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][8]~q\);

-- Location: LCCOMB_X31_Y18_N16
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((\registers[7][8]~q\) # ((!\A1[0]~input_o\)))) # (!\Mux7~0_combout\ & (((\registers[5][8]~q\ & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \registers[7][8]~q\,
	datac => \registers[5][8]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X32_Y18_N24
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\A1[2]~input_o\ & ((\Mux7~1_combout\))) # (!\A1[2]~input_o\ & (\Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \A1[2]~input_o\,
	datac => \Mux7~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: IOIBUF_X28_Y36_N1
\D3[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(9),
	o => \D3[9]~input_o\);

-- Location: FF_X30_Y18_N5
\registers[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][9]~q\);

-- Location: FF_X30_Y18_N23
\registers[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][9]~q\);

-- Location: LCCOMB_X30_Y18_N4
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\A1[1]~input_o\ & ((\A1[0]~input_o\) # ((\registers[6][9]~q\)))) # (!\A1[1]~input_o\ & (!\A1[0]~input_o\ & ((\registers[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][9]~q\,
	datad => \registers[4][9]~q\,
	combout => \Mux6~0_combout\);

-- Location: FF_X29_Y18_N19
\registers[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][9]~q\);

-- Location: FF_X29_Y18_N17
\registers[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][9]~q\);

-- Location: LCCOMB_X29_Y18_N16
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((\registers[7][9]~q\) # ((!\A1[0]~input_o\)))) # (!\Mux6~0_combout\ & (((\registers[5][9]~q\ & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \registers[7][9]~q\,
	datac => \registers[5][9]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: FF_X32_Y18_N13
\registers[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][9]~q\);

-- Location: FF_X32_Y18_N3
\registers[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][9]~q\);

-- Location: FF_X32_Y19_N31
\registers[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][9]~q\);

-- Location: FF_X32_Y19_N13
\registers[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][9]~q\);

-- Location: LCCOMB_X32_Y19_N12
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\A1[1]~input_o\ & (((\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & ((\registers[1][9]~q\))) # (!\A1[0]~input_o\ & (\registers[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[0][9]~q\,
	datab => \A1[1]~input_o\,
	datac => \registers[1][9]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X32_Y18_N2
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\A1[1]~input_o\ & ((\Mux6~2_combout\ & (\registers[3][9]~q\)) # (!\Mux6~2_combout\ & ((\registers[2][9]~q\))))) # (!\A1[1]~input_o\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \registers[3][9]~q\,
	datac => \registers[2][9]~q\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X29_Y18_N4
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\A1[2]~input_o\ & (\Mux6~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[2]~input_o\,
	datab => \Mux6~1_combout\,
	datac => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: IOIBUF_X60_Y23_N15
\D3[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(10),
	o => \D3[10]~input_o\);

-- Location: FF_X29_Y18_N9
\registers[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][10]~q\);

-- Location: FF_X30_Y18_N27
\registers[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][10]~q\);

-- Location: FF_X30_Y18_N1
\registers[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][10]~q\);

-- Location: LCCOMB_X30_Y18_N0
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\registers[6][10]~q\))) # (!\A1[1]~input_o\ & (\registers[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[4][10]~q\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][10]~q\,
	datad => \A1[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: FF_X29_Y18_N7
\registers[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][10]~q\);

-- Location: LCCOMB_X29_Y18_N6
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & ((\registers[7][10]~q\) # ((!\A1[0]~input_o\)))) # (!\Mux5~0_combout\ & (((\registers[5][10]~q\ & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][10]~q\,
	datab => \Mux5~0_combout\,
	datac => \registers[5][10]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: FF_X29_Y19_N11
\registers[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][10]~q\);

-- Location: FF_X29_Y19_N17
\registers[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][10]~q\);

-- Location: FF_X32_Y19_N9
\registers[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][10]~q\);

-- Location: FF_X32_Y19_N19
\registers[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][10]~q\);

-- Location: LCCOMB_X32_Y19_N8
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\A1[0]~input_o\ & ((\A1[1]~input_o\) # ((\registers[1][10]~q\)))) # (!\A1[0]~input_o\ & (!\A1[1]~input_o\ & ((\registers[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \A1[1]~input_o\,
	datac => \registers[1][10]~q\,
	datad => \registers[0][10]~q\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X29_Y19_N16
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\A1[1]~input_o\ & ((\Mux5~2_combout\ & (\registers[3][10]~q\)) # (!\Mux5~2_combout\ & ((\registers[2][10]~q\))))) # (!\A1[1]~input_o\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][10]~q\,
	datab => \A1[1]~input_o\,
	datac => \registers[2][10]~q\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X29_Y19_N12
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\A1[2]~input_o\ & (\Mux5~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datac => \A1[2]~input_o\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~4_combout\);

-- Location: IOIBUF_X25_Y28_N22
\D3[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(11),
	o => \D3[11]~input_o\);

-- Location: FF_X29_Y18_N21
\registers[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][11]~q\);

-- Location: FF_X29_Y18_N11
\registers[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][11]~q\);

-- Location: FF_X30_Y18_N13
\registers[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][11]~q\);

-- Location: FF_X30_Y18_N7
\registers[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][11]~q\);

-- Location: LCCOMB_X30_Y18_N12
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\A1[1]~input_o\ & ((\A1[0]~input_o\) # ((\registers[6][11]~q\)))) # (!\A1[1]~input_o\ & (!\A1[0]~input_o\ & ((\registers[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][11]~q\,
	datad => \registers[4][11]~q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X29_Y18_N10
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\A1[0]~input_o\ & ((\Mux4~0_combout\ & (\registers[7][11]~q\)) # (!\Mux4~0_combout\ & ((\registers[5][11]~q\))))) # (!\A1[0]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \registers[7][11]~q\,
	datac => \registers[5][11]~q\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: FF_X32_Y19_N23
\registers[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][11]~q\);

-- Location: FF_X32_Y19_N29
\registers[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][11]~q\);

-- Location: LCCOMB_X32_Y19_N28
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\A1[1]~input_o\ & (((\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & ((\registers[1][11]~q\))) # (!\A1[0]~input_o\ & (\registers[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[0][11]~q\,
	datab => \A1[1]~input_o\,
	datac => \registers[1][11]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: FF_X29_Y19_N25
\registers[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][11]~q\);

-- Location: FF_X29_Y19_N7
\registers[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][11]~q\);

-- Location: LCCOMB_X29_Y19_N6
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & ((\registers[3][11]~q\) # ((!\A1[1]~input_o\)))) # (!\Mux4~2_combout\ & (((\registers[2][11]~q\ & \A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \registers[3][11]~q\,
	datac => \registers[2][11]~q\,
	datad => \A1[1]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X29_Y19_N2
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\A1[2]~input_o\ & (\Mux4~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~1_combout\,
	datac => \A1[2]~input_o\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: IOIBUF_X60_Y13_N15
\D3[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(12),
	o => \D3[12]~input_o\);

-- Location: FF_X29_Y18_N1
\registers[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][12]~q\);

-- Location: FF_X29_Y18_N31
\registers[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][12]~q\);

-- Location: FF_X30_Y18_N25
\registers[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][12]~q\);

-- Location: FF_X30_Y18_N19
\registers[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][12]~q\);

-- Location: LCCOMB_X30_Y18_N24
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\A1[1]~input_o\ & ((\A1[0]~input_o\) # ((\registers[6][12]~q\)))) # (!\A1[1]~input_o\ & (!\A1[0]~input_o\ & ((\registers[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][12]~q\,
	datad => \registers[4][12]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X29_Y18_N30
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\A1[0]~input_o\ & ((\Mux3~0_combout\ & (\registers[7][12]~q\)) # (!\Mux3~0_combout\ & ((\registers[5][12]~q\))))) # (!\A1[0]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \registers[7][12]~q\,
	datac => \registers[5][12]~q\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: FF_X32_Y19_N27
\registers[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][12]~q\);

-- Location: FF_X32_Y19_N17
\registers[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][12]~q\);

-- Location: LCCOMB_X32_Y19_N16
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\A1[1]~input_o\ & (((\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & ((\registers[1][12]~q\))) # (!\A1[0]~input_o\ & (\registers[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[0][12]~q\,
	datab => \A1[1]~input_o\,
	datac => \registers[1][12]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: FF_X29_Y19_N23
\registers[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][12]~q\);

-- Location: FF_X29_Y19_N5
\registers[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][12]~q\);

-- Location: LCCOMB_X29_Y19_N4
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & ((\registers[3][12]~q\) # ((!\A1[1]~input_o\)))) # (!\Mux3~2_combout\ & (((\registers[2][12]~q\ & \A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \registers[3][12]~q\,
	datac => \registers[2][12]~q\,
	datad => \A1[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X29_Y19_N0
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\A1[2]~input_o\ & (\Mux3~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \A1[2]~input_o\,
	datac => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: IOIBUF_X19_Y0_N22
\D3[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(13),
	o => \D3[13]~input_o\);

-- Location: FF_X30_Y18_N31
\registers[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][13]~q\);

-- Location: FF_X30_Y18_N21
\registers[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][13]~q\);

-- Location: LCCOMB_X30_Y18_N20
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\registers[6][13]~q\))) # (!\A1[1]~input_o\ & (\registers[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[4][13]~q\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][13]~q\,
	datad => \A1[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: FF_X29_Y18_N29
\registers[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][13]~q\);

-- Location: FF_X29_Y18_N27
\registers[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][13]~q\);

-- Location: LCCOMB_X29_Y18_N26
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\registers[7][13]~q\) # ((!\A1[0]~input_o\)))) # (!\Mux2~0_combout\ & (((\registers[5][13]~q\ & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \registers[7][13]~q\,
	datac => \registers[5][13]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: FF_X32_Y19_N15
\registers[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][13]~q\);

-- Location: FF_X32_Y19_N21
\registers[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][13]~q\);

-- Location: LCCOMB_X32_Y19_N20
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\A1[0]~input_o\ & (((\registers[1][13]~q\) # (\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & (\registers[0][13]~q\ & ((!\A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \registers[0][13]~q\,
	datac => \registers[1][13]~q\,
	datad => \A1[1]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: FF_X29_Y19_N19
\registers[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][13]~q\);

-- Location: FF_X29_Y19_N21
\registers[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][13]~q\);

-- Location: LCCOMB_X29_Y19_N18
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & (((\registers[3][13]~q\)) # (!\A1[1]~input_o\))) # (!\Mux2~2_combout\ & (\A1[1]~input_o\ & (\registers[2][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \registers[2][13]~q\,
	datad => \registers[3][13]~q\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X29_Y18_N22
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\A1[2]~input_o\ & (\Mux2~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[2]~input_o\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: IOIBUF_X14_Y21_N29
\D3[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(14),
	o => \D3[14]~input_o\);

-- Location: FF_X29_Y19_N9
\registers[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][14]~q\);

-- Location: FF_X29_Y19_N15
\registers[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][14]~q\);

-- Location: FF_X32_Y19_N11
\registers[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][14]~q\);

-- Location: FF_X32_Y19_N1
\registers[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][14]~q\);

-- Location: LCCOMB_X32_Y19_N0
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\A1[1]~input_o\ & (((\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & ((\registers[1][14]~q\))) # (!\A1[0]~input_o\ & (\registers[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[0][14]~q\,
	datab => \A1[1]~input_o\,
	datac => \registers[1][14]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X29_Y19_N14
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\A1[1]~input_o\ & ((\Mux1~2_combout\ & (\registers[3][14]~q\)) # (!\Mux1~2_combout\ & ((\registers[2][14]~q\))))) # (!\A1[1]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][14]~q\,
	datab => \A1[1]~input_o\,
	datac => \registers[2][14]~q\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: FF_X30_Y18_N17
\registers[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][14]~q\);

-- Location: FF_X30_Y18_N3
\registers[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][14]~q\);

-- Location: LCCOMB_X30_Y18_N16
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\A1[1]~input_o\ & ((\A1[0]~input_o\) # ((\registers[6][14]~q\)))) # (!\A1[1]~input_o\ & (!\A1[0]~input_o\ & ((\registers[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][14]~q\,
	datad => \registers[4][14]~q\,
	combout => \Mux1~0_combout\);

-- Location: FF_X31_Y18_N15
\registers[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][14]~q\);

-- Location: FF_X31_Y18_N13
\registers[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][14]~q\);

-- Location: LCCOMB_X31_Y18_N12
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\registers[7][14]~q\) # ((!\A1[0]~input_o\)))) # (!\Mux1~0_combout\ & (((\registers[5][14]~q\ & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \registers[7][14]~q\,
	datac => \registers[5][14]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X29_Y19_N26
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\A1[2]~input_o\ & ((\Mux1~1_combout\))) # (!\A1[2]~input_o\ & (\Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datac => \A1[2]~input_o\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~4_combout\);

-- Location: IOIBUF_X60_Y15_N15
\D3[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(15),
	o => \D3[15]~input_o\);

-- Location: FF_X32_Y19_N7
\registers[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[0][15]~q\);

-- Location: FF_X32_Y19_N5
\registers[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][15]~q\);

-- Location: LCCOMB_X32_Y19_N4
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\A1[1]~input_o\ & (((\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & ((\registers[1][15]~q\))) # (!\A1[0]~input_o\ & (\registers[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[0][15]~q\,
	datab => \A1[1]~input_o\,
	datac => \registers[1][15]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: FF_X34_Y18_N9
\registers[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][15]~q\);

-- Location: FF_X34_Y18_N11
\registers[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][15]~q\);

-- Location: LCCOMB_X34_Y18_N8
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\A1[1]~input_o\ & ((\Mux0~2_combout\ & ((\registers[3][15]~q\))) # (!\Mux0~2_combout\ & (\registers[2][15]~q\)))) # (!\A1[1]~input_o\ & (\Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \Mux0~2_combout\,
	datac => \registers[2][15]~q\,
	datad => \registers[3][15]~q\,
	combout => \Mux0~3_combout\);

-- Location: FF_X30_Y18_N15
\registers[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][15]~q\);

-- Location: FF_X30_Y18_N29
\registers[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][15]~q\);

-- Location: LCCOMB_X30_Y18_N28
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\registers[6][15]~q\))) # (!\A1[1]~input_o\ & (\registers[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[4][15]~q\,
	datab => \A1[0]~input_o\,
	datac => \registers[6][15]~q\,
	datad => \A1[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: FF_X31_Y18_N19
\registers[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][15]~q\);

-- Location: FF_X31_Y18_N1
\registers[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][15]~q\);

-- Location: LCCOMB_X31_Y18_N0
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((\registers[7][15]~q\) # ((!\A1[0]~input_o\)))) # (!\Mux0~0_combout\ & (((\registers[5][15]~q\ & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \registers[7][15]~q\,
	datac => \registers[5][15]~q\,
	datad => \A1[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X31_Y18_N20
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\A1[2]~input_o\ & ((\Mux0~1_combout\))) # (!\A1[2]~input_o\ & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1[2]~input_o\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~4_combout\);

-- Location: IOIBUF_X19_Y21_N29
\A2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(1),
	o => \A2[1]~input_o\);

-- Location: IOIBUF_X38_Y36_N15
\A2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(0),
	o => \A2[0]~input_o\);

-- Location: LCCOMB_X30_Y17_N26
\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][0]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][0]~q\,
	datac => \registers[0][0]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X31_Y17_N2
\Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux31~2_combout\ & (((\registers[3][0]~q\)) # (!\A2[1]~input_o\))) # (!\Mux31~2_combout\ & (\A2[1]~input_o\ & ((\registers[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \A2[1]~input_o\,
	datac => \registers[3][0]~q\,
	datad => \registers[2][0]~q\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X33_Y17_N10
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\registers[6][0]~q\))) # (!\A2[1]~input_o\ & (\registers[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][0]~q\,
	datad => \registers[6][0]~q\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X32_Y17_N10
\Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\A2[0]~input_o\ & ((\Mux31~0_combout\ & (\registers[7][0]~q\)) # (!\Mux31~0_combout\ & ((\registers[5][0]~q\))))) # (!\A2[0]~input_o\ & (\Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \Mux31~0_combout\,
	datac => \registers[7][0]~q\,
	datad => \registers[5][0]~q\,
	combout => \Mux31~1_combout\);

-- Location: IOIBUF_X40_Y0_N29
\A2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(2),
	o => \A2[2]~input_o\);

-- Location: LCCOMB_X32_Y17_N30
\Mux31~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\A2[2]~input_o\ & ((\Mux31~1_combout\))) # (!\A2[2]~input_o\ & (\Mux31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datac => \Mux31~1_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X30_Y17_N14
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][1]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][1]~q\,
	datac => \registers[0][1]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X31_Y17_N14
\Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux30~2_combout\ & (((\registers[3][1]~q\)) # (!\A2[1]~input_o\))) # (!\Mux30~2_combout\ & (\A2[1]~input_o\ & ((\registers[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~2_combout\,
	datab => \A2[1]~input_o\,
	datac => \registers[3][1]~q\,
	datad => \registers[2][1]~q\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X33_Y17_N6
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\A2[1]~input_o\ & ((\registers[6][1]~q\) # ((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & (((\registers[4][1]~q\ & !\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][1]~q\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][1]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X32_Y17_N0
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\A2[0]~input_o\ & ((\Mux30~0_combout\ & ((\registers[7][1]~q\))) # (!\Mux30~0_combout\ & (\registers[5][1]~q\)))) # (!\A2[0]~input_o\ & (((\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \registers[5][1]~q\,
	datac => \registers[7][1]~q\,
	datad => \Mux30~0_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X32_Y17_N16
\Mux30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\A2[2]~input_o\ & ((\Mux30~1_combout\))) # (!\A2[2]~input_o\ & (\Mux30~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Mux30~1_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X33_Y17_N18
\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\A2[1]~input_o\ & ((\registers[6][2]~q\) # ((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & (((\registers[4][2]~q\ & !\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][2]~q\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][2]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X32_Y17_N22
\Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\A2[0]~input_o\ & ((\Mux29~0_combout\ & ((\registers[7][2]~q\))) # (!\Mux29~0_combout\ & (\registers[5][2]~q\)))) # (!\A2[0]~input_o\ & (((\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \registers[5][2]~q\,
	datac => \registers[7][2]~q\,
	datad => \Mux29~0_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X30_Y17_N18
\Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][2]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][2]~q\,
	datac => \registers[0][2]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X31_Y17_N26
\Mux29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\A2[1]~input_o\ & ((\Mux29~2_combout\ & (\registers[3][2]~q\)) # (!\Mux29~2_combout\ & ((\registers[2][2]~q\))))) # (!\A2[1]~input_o\ & (\Mux29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \Mux29~2_combout\,
	datac => \registers[3][2]~q\,
	datad => \registers[2][2]~q\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X32_Y17_N18
\Mux29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\A2[2]~input_o\ & (\Mux29~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datac => \Mux29~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X33_Y17_N22
\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\A2[1]~input_o\ & ((\registers[6][3]~q\) # ((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & (((\registers[4][3]~q\ & !\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[6][3]~q\,
	datac => \registers[4][3]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X32_Y17_N26
\Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\A2[0]~input_o\ & ((\Mux28~0_combout\ & ((\registers[7][3]~q\))) # (!\Mux28~0_combout\ & (\registers[5][3]~q\)))) # (!\A2[0]~input_o\ & (((\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \registers[5][3]~q\,
	datac => \registers[7][3]~q\,
	datad => \Mux28~0_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X30_Y17_N30
\Mux28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\A2[1]~input_o\ & (\A2[0]~input_o\)) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & ((\registers[1][3]~q\))) # (!\A2[0]~input_o\ & (\registers[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \A2[0]~input_o\,
	datac => \registers[0][3]~q\,
	datad => \registers[1][3]~q\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X31_Y17_N0
\Mux28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\A2[1]~input_o\ & ((\Mux28~2_combout\ & ((\registers[3][3]~q\))) # (!\Mux28~2_combout\ & (\registers[2][3]~q\)))) # (!\A2[1]~input_o\ & (((\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[2][3]~q\,
	datab => \A2[1]~input_o\,
	datac => \registers[3][3]~q\,
	datad => \Mux28~2_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X32_Y17_N28
\Mux28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\A2[2]~input_o\ & (\Mux28~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux28~1_combout\,
	datac => \Mux28~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X30_Y17_N10
\Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][4]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][4]~q\,
	datac => \registers[0][4]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X31_Y17_N28
\Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\A2[1]~input_o\ & ((\Mux27~2_combout\ & ((\registers[3][4]~q\))) # (!\Mux27~2_combout\ & (\registers[2][4]~q\)))) # (!\A2[1]~input_o\ & (((\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[2][4]~q\,
	datab => \A2[1]~input_o\,
	datac => \registers[3][4]~q\,
	datad => \Mux27~2_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X33_Y17_N26
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\registers[6][4]~q\))) # (!\A2[1]~input_o\ & (\registers[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][4]~q\,
	datad => \registers[6][4]~q\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X31_Y18_N10
\Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux27~0_combout\ & (((\registers[7][4]~q\) # (!\A2[0]~input_o\)))) # (!\Mux27~0_combout\ & (\registers[5][4]~q\ & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \registers[5][4]~q\,
	datac => \registers[7][4]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X31_Y17_N4
\Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\A2[2]~input_o\ & ((\Mux27~1_combout\))) # (!\A2[2]~input_o\ & (\Mux27~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux27~3_combout\,
	datac => \A2[2]~input_o\,
	datad => \Mux27~1_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X33_Y17_N14
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\registers[6][5]~q\))) # (!\A2[1]~input_o\ & (\registers[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][5]~q\,
	datad => \registers[6][5]~q\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X31_Y18_N30
\Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\ & (((\registers[7][5]~q\) # (!\A2[0]~input_o\)))) # (!\Mux26~0_combout\ & (\registers[5][5]~q\ & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \registers[5][5]~q\,
	datac => \registers[7][5]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X30_Y17_N22
\Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][5]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][5]~q\,
	datac => \registers[0][5]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X31_Y17_N18
\Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\A2[1]~input_o\ & ((\Mux26~2_combout\ & ((\registers[3][5]~q\))) # (!\Mux26~2_combout\ & (\registers[2][5]~q\)))) # (!\A2[1]~input_o\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[2][5]~q\,
	datac => \registers[3][5]~q\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X31_Y17_N30
\Mux26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\A2[2]~input_o\ & (\Mux26~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datac => \A2[2]~input_o\,
	datad => \Mux26~3_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X33_Y17_N2
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\registers[6][6]~q\))) # (!\A2[1]~input_o\ & (\registers[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][6]~q\,
	datad => \registers[6][6]~q\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X31_Y18_N26
\Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & (((\registers[7][6]~q\) # (!\A2[0]~input_o\)))) # (!\Mux25~0_combout\ & (\registers[5][6]~q\ & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \registers[5][6]~q\,
	datac => \registers[7][6]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X30_Y17_N2
\Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][6]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][6]~q\,
	datac => \registers[0][6]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X32_Y18_N26
\Mux25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux25~2_combout\ & (((\registers[3][6]~q\)) # (!\A2[1]~input_o\))) # (!\Mux25~2_combout\ & (\A2[1]~input_o\ & ((\registers[2][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~2_combout\,
	datab => \A2[1]~input_o\,
	datac => \registers[3][6]~q\,
	datad => \registers[2][6]~q\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X32_Y18_N22
\Mux25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\A2[2]~input_o\ & (\Mux25~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datac => \Mux25~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X33_Y17_N30
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\registers[6][7]~q\))) # (!\A2[1]~input_o\ & (\registers[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][7]~q\,
	datad => \registers[6][7]~q\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X31_Y18_N22
\Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\ & (((\registers[7][7]~q\) # (!\A2[0]~input_o\)))) # (!\Mux24~0_combout\ & (\registers[5][7]~q\ & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \registers[5][7]~q\,
	datac => \registers[7][7]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X30_Y17_N6
\Mux24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\A2[1]~input_o\ & (\A2[0]~input_o\)) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & ((\registers[1][7]~q\))) # (!\A2[0]~input_o\ & (\registers[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \A2[0]~input_o\,
	datac => \registers[0][7]~q\,
	datad => \registers[1][7]~q\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X32_Y18_N8
\Mux24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux24~2_combout\ & (((\registers[3][7]~q\)) # (!\A2[1]~input_o\))) # (!\Mux24~2_combout\ & (\A2[1]~input_o\ & ((\registers[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \A2[1]~input_o\,
	datac => \registers[3][7]~q\,
	datad => \registers[2][7]~q\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X32_Y18_N16
\Mux24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\A2[2]~input_o\ & (\Mux24~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux24~1_combout\,
	datac => \Mux24~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X30_Y18_N10
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\A2[0]~input_o\ & (((\A2[1]~input_o\)))) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & (\registers[6][8]~q\)) # (!\A2[1]~input_o\ & ((\registers[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \registers[6][8]~q\,
	datac => \registers[4][8]~q\,
	datad => \A2[1]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X31_Y18_N2
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & (((\registers[7][8]~q\) # (!\A2[0]~input_o\)))) # (!\Mux23~0_combout\ & (\registers[5][8]~q\ & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \registers[5][8]~q\,
	datac => \registers[7][8]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X32_Y19_N2
\Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][8]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][8]~q\,
	datac => \registers[0][8]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X32_Y18_N14
\Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux23~2_combout\ & (((\registers[3][8]~q\)) # (!\A2[1]~input_o\))) # (!\Mux23~2_combout\ & (\A2[1]~input_o\ & ((\registers[2][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~2_combout\,
	datab => \A2[1]~input_o\,
	datac => \registers[3][8]~q\,
	datad => \registers[2][8]~q\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X32_Y18_N18
\Mux23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\A2[2]~input_o\ & (\Mux23~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datac => \Mux23~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X32_Y19_N30
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\A2[1]~input_o\ & (\A2[0]~input_o\)) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & ((\registers[1][9]~q\))) # (!\A2[0]~input_o\ & (\registers[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \A2[0]~input_o\,
	datac => \registers[0][9]~q\,
	datad => \registers[1][9]~q\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X32_Y18_N12
\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux22~2_combout\ & (((\registers[3][9]~q\)) # (!\A2[1]~input_o\))) # (!\Mux22~2_combout\ & (\A2[1]~input_o\ & ((\registers[2][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \A2[1]~input_o\,
	datac => \registers[3][9]~q\,
	datad => \registers[2][9]~q\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X30_Y18_N22
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\registers[6][9]~q\))) # (!\A2[1]~input_o\ & (\registers[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][9]~q\,
	datad => \registers[6][9]~q\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X29_Y18_N18
\Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & (((\registers[7][9]~q\) # (!\A2[0]~input_o\)))) # (!\Mux22~0_combout\ & (\registers[5][9]~q\ & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][9]~q\,
	datab => \Mux22~0_combout\,
	datac => \registers[7][9]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X32_Y18_N4
\Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\A2[2]~input_o\ & ((\Mux22~1_combout\))) # (!\A2[2]~input_o\ & (\Mux22~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datac => \Mux22~1_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X32_Y19_N18
\Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][10]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][10]~q\,
	datac => \registers[0][10]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X29_Y19_N10
\Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\A2[1]~input_o\ & ((\Mux21~2_combout\ & (\registers[3][10]~q\)) # (!\Mux21~2_combout\ & ((\registers[2][10]~q\))))) # (!\A2[1]~input_o\ & (\Mux21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \Mux21~2_combout\,
	datac => \registers[3][10]~q\,
	datad => \registers[2][10]~q\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X30_Y18_N26
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\registers[6][10]~q\))) # (!\A2[1]~input_o\ & (\registers[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][10]~q\,
	datad => \registers[6][10]~q\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X29_Y18_N8
\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & (((\registers[7][10]~q\) # (!\A2[0]~input_o\)))) # (!\Mux21~0_combout\ & (\registers[5][10]~q\ & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][10]~q\,
	datab => \Mux21~0_combout\,
	datac => \registers[7][10]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X29_Y18_N24
\Mux21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\A2[2]~input_o\ & ((\Mux21~1_combout\))) # (!\A2[2]~input_o\ & (\Mux21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~3_combout\,
	datac => \Mux21~1_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X30_Y18_N6
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\registers[6][11]~q\))) # (!\A2[1]~input_o\ & (\registers[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][11]~q\,
	datad => \registers[6][11]~q\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X29_Y18_N20
\Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\A2[0]~input_o\ & ((\Mux20~0_combout\ & ((\registers[7][11]~q\))) # (!\Mux20~0_combout\ & (\registers[5][11]~q\)))) # (!\A2[0]~input_o\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][11]~q\,
	datab => \A2[0]~input_o\,
	datac => \registers[7][11]~q\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X32_Y19_N22
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][11]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][11]~q\,
	datac => \registers[0][11]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X29_Y19_N24
\Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\A2[1]~input_o\ & ((\Mux20~2_combout\ & ((\registers[3][11]~q\))) # (!\Mux20~2_combout\ & (\registers[2][11]~q\)))) # (!\A2[1]~input_o\ & (((\Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[2][11]~q\,
	datac => \registers[3][11]~q\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X29_Y18_N2
\Mux20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\A2[2]~input_o\ & (\Mux20~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux20~1_combout\,
	datac => \Mux20~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X30_Y18_N18
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\registers[6][12]~q\))) # (!\A2[1]~input_o\ & (\registers[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][12]~q\,
	datad => \registers[6][12]~q\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X29_Y18_N0
\Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\ & (((\registers[7][12]~q\) # (!\A2[0]~input_o\)))) # (!\Mux19~0_combout\ & (\registers[5][12]~q\ & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][12]~q\,
	datab => \Mux19~0_combout\,
	datac => \registers[7][12]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X32_Y19_N26
\Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][12]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][12]~q\,
	datac => \registers[0][12]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X29_Y19_N22
\Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\A2[1]~input_o\ & ((\Mux19~2_combout\ & ((\registers[3][12]~q\))) # (!\Mux19~2_combout\ & (\registers[2][12]~q\)))) # (!\A2[1]~input_o\ & (((\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[2][12]~q\,
	datac => \registers[3][12]~q\,
	datad => \Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X29_Y19_N28
\Mux19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\A2[2]~input_o\ & (\Mux19~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux19~1_combout\,
	datac => \Mux19~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X32_Y19_N14
\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][13]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][13]~q\,
	datac => \registers[0][13]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X29_Y19_N20
\Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\A2[1]~input_o\ & ((\Mux18~2_combout\ & ((\registers[3][13]~q\))) # (!\Mux18~2_combout\ & (\registers[2][13]~q\)))) # (!\A2[1]~input_o\ & (((\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[2][13]~q\,
	datac => \registers[3][13]~q\,
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X30_Y18_N30
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\A2[0]~input_o\ & (((\A2[1]~input_o\)))) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & (\registers[6][13]~q\)) # (!\A2[1]~input_o\ & ((\registers[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \registers[6][13]~q\,
	datac => \registers[4][13]~q\,
	datad => \A2[1]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X29_Y18_N28
\Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & (((\registers[7][13]~q\) # (!\A2[0]~input_o\)))) # (!\Mux18~0_combout\ & (\registers[5][13]~q\ & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \registers[5][13]~q\,
	datac => \registers[7][13]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X29_Y18_N12
\Mux18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\A2[2]~input_o\ & ((\Mux18~1_combout\))) # (!\A2[2]~input_o\ & (\Mux18~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => \Mux18~1_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X30_Y18_N2
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\registers[6][14]~q\))) # (!\A2[1]~input_o\ & (\registers[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][14]~q\,
	datad => \registers[6][14]~q\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X31_Y18_N14
\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & (((\registers[7][14]~q\) # (!\A2[0]~input_o\)))) # (!\Mux17~0_combout\ & (\registers[5][14]~q\ & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][14]~q\,
	datab => \Mux17~0_combout\,
	datac => \registers[7][14]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X32_Y19_N10
\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][14]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][14]~q\,
	datac => \registers[0][14]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X29_Y19_N8
\Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\A2[1]~input_o\ & ((\Mux17~2_combout\ & ((\registers[3][14]~q\))) # (!\Mux17~2_combout\ & (\registers[2][14]~q\)))) # (!\A2[1]~input_o\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[2][14]~q\,
	datac => \registers[3][14]~q\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X29_Y19_N30
\Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\A2[2]~input_o\ & (\Mux17~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux17~1_combout\,
	datac => \Mux17~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X32_Y19_N6
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\A2[1]~input_o\ & (((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A2[0]~input_o\ & (\registers[1][15]~q\)) # (!\A2[0]~input_o\ & ((\registers[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[1][15]~q\,
	datac => \registers[0][15]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X34_Y18_N10
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\A2[1]~input_o\ & ((\Mux16~2_combout\ & ((\registers[3][15]~q\))) # (!\Mux16~2_combout\ & (\registers[2][15]~q\)))) # (!\A2[1]~input_o\ & (((\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \registers[2][15]~q\,
	datac => \registers[3][15]~q\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X30_Y18_N14
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\registers[6][15]~q\))) # (!\A2[1]~input_o\ & (\registers[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \registers[4][15]~q\,
	datad => \registers[6][15]~q\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X31_Y18_N18
\Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & (((\registers[7][15]~q\) # (!\A2[0]~input_o\)))) # (!\Mux16~0_combout\ & (\registers[5][15]~q\ & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \registers[5][15]~q\,
	datac => \registers[7][15]~q\,
	datad => \A2[0]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X34_Y18_N20
\Mux16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\A2[2]~input_o\ & ((\Mux16~1_combout\))) # (!\A2[2]~input_o\ & (\Mux16~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux16~3_combout\,
	datac => \A2[2]~input_o\,
	datad => \Mux16~1_combout\,
	combout => \Mux16~4_combout\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_D1(0) <= \D1[0]~output_o\;

ww_D1(1) <= \D1[1]~output_o\;

ww_D1(2) <= \D1[2]~output_o\;

ww_D1(3) <= \D1[3]~output_o\;

ww_D1(4) <= \D1[4]~output_o\;

ww_D1(5) <= \D1[5]~output_o\;

ww_D1(6) <= \D1[6]~output_o\;

ww_D1(7) <= \D1[7]~output_o\;

ww_D1(8) <= \D1[8]~output_o\;

ww_D1(9) <= \D1[9]~output_o\;

ww_D1(10) <= \D1[10]~output_o\;

ww_D1(11) <= \D1[11]~output_o\;

ww_D1(12) <= \D1[12]~output_o\;

ww_D1(13) <= \D1[13]~output_o\;

ww_D1(14) <= \D1[14]~output_o\;

ww_D1(15) <= \D1[15]~output_o\;

ww_D2(0) <= \D2[0]~output_o\;

ww_D2(1) <= \D2[1]~output_o\;

ww_D2(2) <= \D2[2]~output_o\;

ww_D2(3) <= \D2[3]~output_o\;

ww_D2(4) <= \D2[4]~output_o\;

ww_D2(5) <= \D2[5]~output_o\;

ww_D2(6) <= \D2[6]~output_o\;

ww_D2(7) <= \D2[7]~output_o\;

ww_D2(8) <= \D2[8]~output_o\;

ww_D2(9) <= \D2[9]~output_o\;

ww_D2(10) <= \D2[10]~output_o\;

ww_D2(11) <= \D2[11]~output_o\;

ww_D2(12) <= \D2[12]~output_o\;

ww_D2(13) <= \D2[13]~output_o\;

ww_D2(14) <= \D2[14]~output_o\;

ww_D2(15) <= \D2[15]~output_o\;
END structure;


