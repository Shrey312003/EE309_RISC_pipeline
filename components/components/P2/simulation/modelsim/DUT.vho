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

-- DATE "05/04/2023 15:44:01"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
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
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(63 DOWNTO 0);
	output_vector : OUT std_logic_vector(60 DOWNTO 0)
	);
END DUT;

-- Design Ports Information
-- input_vector[61]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[62]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[8]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[9]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[10]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[11]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[12]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[13]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[14]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[15]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[16]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[17]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[18]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[19]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[20]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[21]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[22]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[23]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[24]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[25]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[26]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[27]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[28]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[29]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[30]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[31]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[32]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[33]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[34]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[35]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[36]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[37]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[38]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[39]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[40]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[41]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[42]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[43]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[44]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[45]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[46]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[47]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[48]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[49]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[50]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[51]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[52]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[53]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[54]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[55]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[56]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[57]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[58]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[59]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[60]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[63]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[4]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[7]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[8]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[9]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[10]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[11]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[12]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[13]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[14]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[15]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[16]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[17]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[19]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[20]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[21]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[22]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[23]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[24]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[25]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[26]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[27]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[28]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[29]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[30]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[31]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[32]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[33]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[34]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[35]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[36]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[37]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[38]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[39]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[40]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[41]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[42]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[43]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[44]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[45]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[46]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[47]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[48]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[49]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[50]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[51]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[52]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[53]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[54]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[55]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[56]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[57]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[58]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[59]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[60]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(60 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \input_vector[63]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_vector[61]~input_o\ : std_logic;
SIGNAL \input_vector[62]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \output_vector[0]~output_o\ : std_logic;
SIGNAL \output_vector[1]~output_o\ : std_logic;
SIGNAL \output_vector[2]~output_o\ : std_logic;
SIGNAL \output_vector[3]~output_o\ : std_logic;
SIGNAL \output_vector[4]~output_o\ : std_logic;
SIGNAL \output_vector[5]~output_o\ : std_logic;
SIGNAL \output_vector[6]~output_o\ : std_logic;
SIGNAL \output_vector[7]~output_o\ : std_logic;
SIGNAL \output_vector[8]~output_o\ : std_logic;
SIGNAL \output_vector[9]~output_o\ : std_logic;
SIGNAL \output_vector[10]~output_o\ : std_logic;
SIGNAL \output_vector[11]~output_o\ : std_logic;
SIGNAL \output_vector[12]~output_o\ : std_logic;
SIGNAL \output_vector[13]~output_o\ : std_logic;
SIGNAL \output_vector[14]~output_o\ : std_logic;
SIGNAL \output_vector[15]~output_o\ : std_logic;
SIGNAL \output_vector[16]~output_o\ : std_logic;
SIGNAL \output_vector[17]~output_o\ : std_logic;
SIGNAL \output_vector[18]~output_o\ : std_logic;
SIGNAL \output_vector[19]~output_o\ : std_logic;
SIGNAL \output_vector[20]~output_o\ : std_logic;
SIGNAL \output_vector[21]~output_o\ : std_logic;
SIGNAL \output_vector[22]~output_o\ : std_logic;
SIGNAL \output_vector[23]~output_o\ : std_logic;
SIGNAL \output_vector[24]~output_o\ : std_logic;
SIGNAL \output_vector[25]~output_o\ : std_logic;
SIGNAL \output_vector[26]~output_o\ : std_logic;
SIGNAL \output_vector[27]~output_o\ : std_logic;
SIGNAL \output_vector[28]~output_o\ : std_logic;
SIGNAL \output_vector[29]~output_o\ : std_logic;
SIGNAL \output_vector[30]~output_o\ : std_logic;
SIGNAL \output_vector[31]~output_o\ : std_logic;
SIGNAL \output_vector[32]~output_o\ : std_logic;
SIGNAL \output_vector[33]~output_o\ : std_logic;
SIGNAL \output_vector[34]~output_o\ : std_logic;
SIGNAL \output_vector[35]~output_o\ : std_logic;
SIGNAL \output_vector[36]~output_o\ : std_logic;
SIGNAL \output_vector[37]~output_o\ : std_logic;
SIGNAL \output_vector[38]~output_o\ : std_logic;
SIGNAL \output_vector[39]~output_o\ : std_logic;
SIGNAL \output_vector[40]~output_o\ : std_logic;
SIGNAL \output_vector[41]~output_o\ : std_logic;
SIGNAL \output_vector[42]~output_o\ : std_logic;
SIGNAL \output_vector[43]~output_o\ : std_logic;
SIGNAL \output_vector[44]~output_o\ : std_logic;
SIGNAL \output_vector[45]~output_o\ : std_logic;
SIGNAL \output_vector[46]~output_o\ : std_logic;
SIGNAL \output_vector[47]~output_o\ : std_logic;
SIGNAL \output_vector[48]~output_o\ : std_logic;
SIGNAL \output_vector[49]~output_o\ : std_logic;
SIGNAL \output_vector[50]~output_o\ : std_logic;
SIGNAL \output_vector[51]~output_o\ : std_logic;
SIGNAL \output_vector[52]~output_o\ : std_logic;
SIGNAL \output_vector[53]~output_o\ : std_logic;
SIGNAL \output_vector[54]~output_o\ : std_logic;
SIGNAL \output_vector[55]~output_o\ : std_logic;
SIGNAL \output_vector[56]~output_o\ : std_logic;
SIGNAL \output_vector[57]~output_o\ : std_logic;
SIGNAL \output_vector[58]~output_o\ : std_logic;
SIGNAL \output_vector[59]~output_o\ : std_logic;
SIGNAL \output_vector[60]~output_o\ : std_logic;
SIGNAL \input_vector[63]~input_o\ : std_logic;
SIGNAL \input_vector[63]~inputclkctrl_outclk\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \add_instance|output[0]~feeder_combout\ : std_logic;
SIGNAL \input_vector[1]~input_o\ : std_logic;
SIGNAL \add_instance|output[1]~feeder_combout\ : std_logic;
SIGNAL \input_vector[2]~input_o\ : std_logic;
SIGNAL \add_instance|output[2]~feeder_combout\ : std_logic;
SIGNAL \input_vector[3]~input_o\ : std_logic;
SIGNAL \add_instance|output[3]~feeder_combout\ : std_logic;
SIGNAL \input_vector[4]~input_o\ : std_logic;
SIGNAL \add_instance|output[4]~feeder_combout\ : std_logic;
SIGNAL \input_vector[5]~input_o\ : std_logic;
SIGNAL \input_vector[6]~input_o\ : std_logic;
SIGNAL \input_vector[7]~input_o\ : std_logic;
SIGNAL \input_vector[8]~input_o\ : std_logic;
SIGNAL \add_instance|output[8]~feeder_combout\ : std_logic;
SIGNAL \input_vector[9]~input_o\ : std_logic;
SIGNAL \add_instance|output[9]~feeder_combout\ : std_logic;
SIGNAL \input_vector[10]~input_o\ : std_logic;
SIGNAL \input_vector[11]~input_o\ : std_logic;
SIGNAL \add_instance|output[11]~feeder_combout\ : std_logic;
SIGNAL \input_vector[12]~input_o\ : std_logic;
SIGNAL \add_instance|output[12]~feeder_combout\ : std_logic;
SIGNAL \input_vector[13]~input_o\ : std_logic;
SIGNAL \add_instance|output[13]~feeder_combout\ : std_logic;
SIGNAL \input_vector[14]~input_o\ : std_logic;
SIGNAL \add_instance|output[14]~feeder_combout\ : std_logic;
SIGNAL \input_vector[15]~input_o\ : std_logic;
SIGNAL \input_vector[16]~input_o\ : std_logic;
SIGNAL \input_vector[17]~input_o\ : std_logic;
SIGNAL \add_instance|output[17]~feeder_combout\ : std_logic;
SIGNAL \input_vector[18]~input_o\ : std_logic;
SIGNAL \add_instance|output[18]~feeder_combout\ : std_logic;
SIGNAL \input_vector[19]~input_o\ : std_logic;
SIGNAL \add_instance|output[19]~feeder_combout\ : std_logic;
SIGNAL \input_vector[20]~input_o\ : std_logic;
SIGNAL \add_instance|output[20]~feeder_combout\ : std_logic;
SIGNAL \input_vector[21]~input_o\ : std_logic;
SIGNAL \input_vector[22]~input_o\ : std_logic;
SIGNAL \input_vector[23]~input_o\ : std_logic;
SIGNAL \add_instance|output[23]~feeder_combout\ : std_logic;
SIGNAL \input_vector[24]~input_o\ : std_logic;
SIGNAL \add_instance|output[24]~feeder_combout\ : std_logic;
SIGNAL \input_vector[25]~input_o\ : std_logic;
SIGNAL \input_vector[26]~input_o\ : std_logic;
SIGNAL \add_instance|output[26]~feeder_combout\ : std_logic;
SIGNAL \input_vector[27]~input_o\ : std_logic;
SIGNAL \add_instance|output[27]~feeder_combout\ : std_logic;
SIGNAL \input_vector[28]~input_o\ : std_logic;
SIGNAL \input_vector[29]~input_o\ : std_logic;
SIGNAL \add_instance|output[29]~feeder_combout\ : std_logic;
SIGNAL \input_vector[30]~input_o\ : std_logic;
SIGNAL \add_instance|output[30]~feeder_combout\ : std_logic;
SIGNAL \input_vector[31]~input_o\ : std_logic;
SIGNAL \add_instance|output[31]~feeder_combout\ : std_logic;
SIGNAL \input_vector[32]~input_o\ : std_logic;
SIGNAL \add_instance|output[32]~feeder_combout\ : std_logic;
SIGNAL \input_vector[33]~input_o\ : std_logic;
SIGNAL \add_instance|output[33]~feeder_combout\ : std_logic;
SIGNAL \input_vector[34]~input_o\ : std_logic;
SIGNAL \input_vector[35]~input_o\ : std_logic;
SIGNAL \add_instance|output[35]~feeder_combout\ : std_logic;
SIGNAL \input_vector[36]~input_o\ : std_logic;
SIGNAL \add_instance|output[36]~feeder_combout\ : std_logic;
SIGNAL \input_vector[37]~input_o\ : std_logic;
SIGNAL \add_instance|output[37]~feeder_combout\ : std_logic;
SIGNAL \input_vector[38]~input_o\ : std_logic;
SIGNAL \add_instance|output[38]~feeder_combout\ : std_logic;
SIGNAL \input_vector[39]~input_o\ : std_logic;
SIGNAL \add_instance|output[39]~feeder_combout\ : std_logic;
SIGNAL \input_vector[40]~input_o\ : std_logic;
SIGNAL \add_instance|output[40]~feeder_combout\ : std_logic;
SIGNAL \input_vector[41]~input_o\ : std_logic;
SIGNAL \input_vector[42]~input_o\ : std_logic;
SIGNAL \add_instance|output[42]~feeder_combout\ : std_logic;
SIGNAL \input_vector[43]~input_o\ : std_logic;
SIGNAL \add_instance|output[43]~feeder_combout\ : std_logic;
SIGNAL \input_vector[44]~input_o\ : std_logic;
SIGNAL \add_instance|output[44]~feeder_combout\ : std_logic;
SIGNAL \input_vector[45]~input_o\ : std_logic;
SIGNAL \add_instance|output[45]~feeder_combout\ : std_logic;
SIGNAL \input_vector[46]~input_o\ : std_logic;
SIGNAL \input_vector[47]~input_o\ : std_logic;
SIGNAL \input_vector[48]~input_o\ : std_logic;
SIGNAL \add_instance|output[48]~feeder_combout\ : std_logic;
SIGNAL \input_vector[49]~input_o\ : std_logic;
SIGNAL \input_vector[50]~input_o\ : std_logic;
SIGNAL \add_instance|output[50]~feeder_combout\ : std_logic;
SIGNAL \input_vector[51]~input_o\ : std_logic;
SIGNAL \input_vector[52]~input_o\ : std_logic;
SIGNAL \add_instance|output[52]~feeder_combout\ : std_logic;
SIGNAL \input_vector[53]~input_o\ : std_logic;
SIGNAL \input_vector[54]~input_o\ : std_logic;
SIGNAL \input_vector[55]~input_o\ : std_logic;
SIGNAL \add_instance|output[55]~feeder_combout\ : std_logic;
SIGNAL \input_vector[56]~input_o\ : std_logic;
SIGNAL \add_instance|output[56]~feeder_combout\ : std_logic;
SIGNAL \input_vector[57]~input_o\ : std_logic;
SIGNAL \add_instance|output[57]~feeder_combout\ : std_logic;
SIGNAL \input_vector[58]~input_o\ : std_logic;
SIGNAL \add_instance|output[58]~feeder_combout\ : std_logic;
SIGNAL \input_vector[59]~input_o\ : std_logic;
SIGNAL \add_instance|output[59]~feeder_combout\ : std_logic;
SIGNAL \input_vector[60]~input_o\ : std_logic;
SIGNAL \add_instance|output[60]~feeder_combout\ : std_logic;
SIGNAL \add_instance|output\ : std_logic_vector(60 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\input_vector[63]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \input_vector[63]~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y23_N24
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

-- Location: IOOBUF_X31_Y6_N16
\output_vector[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(0),
	devoe => ww_devoe,
	o => \output_vector[0]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\output_vector[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(1),
	devoe => ww_devoe,
	o => \output_vector[1]~output_o\);

-- Location: IOOBUF_X31_Y13_N23
\output_vector[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(2),
	devoe => ww_devoe,
	o => \output_vector[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N16
\output_vector[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(3),
	devoe => ww_devoe,
	o => \output_vector[3]~output_o\);

-- Location: IOOBUF_X31_Y13_N16
\output_vector[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(4),
	devoe => ww_devoe,
	o => \output_vector[4]~output_o\);

-- Location: IOOBUF_X31_Y12_N9
\output_vector[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(5),
	devoe => ww_devoe,
	o => \output_vector[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\output_vector[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(6),
	devoe => ww_devoe,
	o => \output_vector[6]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\output_vector[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(7),
	devoe => ww_devoe,
	o => \output_vector[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\output_vector[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(8),
	devoe => ww_devoe,
	o => \output_vector[8]~output_o\);

-- Location: IOOBUF_X10_Y19_N23
\output_vector[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(9),
	devoe => ww_devoe,
	o => \output_vector[9]~output_o\);

-- Location: IOOBUF_X31_Y1_N16
\output_vector[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(10),
	devoe => ww_devoe,
	o => \output_vector[10]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\output_vector[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(11),
	devoe => ww_devoe,
	o => \output_vector[11]~output_o\);

-- Location: IOOBUF_X31_Y6_N9
\output_vector[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(12),
	devoe => ww_devoe,
	o => \output_vector[12]~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\output_vector[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(13),
	devoe => ww_devoe,
	o => \output_vector[13]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\output_vector[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(14),
	devoe => ww_devoe,
	o => \output_vector[14]~output_o\);

-- Location: IOOBUF_X10_Y22_N2
\output_vector[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(15),
	devoe => ww_devoe,
	o => \output_vector[15]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\output_vector[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(16),
	devoe => ww_devoe,
	o => \output_vector[16]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\output_vector[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(17),
	devoe => ww_devoe,
	o => \output_vector[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\output_vector[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(18),
	devoe => ww_devoe,
	o => \output_vector[18]~output_o\);

-- Location: IOOBUF_X27_Y25_N30
\output_vector[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(19),
	devoe => ww_devoe,
	o => \output_vector[19]~output_o\);

-- Location: IOOBUF_X10_Y21_N9
\output_vector[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(20),
	devoe => ww_devoe,
	o => \output_vector[20]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\output_vector[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(21),
	devoe => ww_devoe,
	o => \output_vector[21]~output_o\);

-- Location: IOOBUF_X1_Y10_N16
\output_vector[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(22),
	devoe => ww_devoe,
	o => \output_vector[22]~output_o\);

-- Location: IOOBUF_X15_Y25_N2
\output_vector[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(23),
	devoe => ww_devoe,
	o => \output_vector[23]~output_o\);

-- Location: IOOBUF_X31_Y9_N23
\output_vector[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(24),
	devoe => ww_devoe,
	o => \output_vector[24]~output_o\);

-- Location: IOOBUF_X31_Y14_N23
\output_vector[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(25),
	devoe => ww_devoe,
	o => \output_vector[25]~output_o\);

-- Location: IOOBUF_X19_Y25_N30
\output_vector[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(26),
	devoe => ww_devoe,
	o => \output_vector[26]~output_o\);

-- Location: IOOBUF_X31_Y13_N2
\output_vector[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(27),
	devoe => ww_devoe,
	o => \output_vector[27]~output_o\);

-- Location: IOOBUF_X10_Y19_N9
\output_vector[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(28),
	devoe => ww_devoe,
	o => \output_vector[28]~output_o\);

-- Location: IOOBUF_X31_Y17_N9
\output_vector[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(29),
	devoe => ww_devoe,
	o => \output_vector[29]~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\output_vector[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(30),
	devoe => ww_devoe,
	o => \output_vector[30]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\output_vector[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(31),
	devoe => ww_devoe,
	o => \output_vector[31]~output_o\);

-- Location: IOOBUF_X11_Y25_N23
\output_vector[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(32),
	devoe => ww_devoe,
	o => \output_vector[32]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\output_vector[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(33),
	devoe => ww_devoe,
	o => \output_vector[33]~output_o\);

-- Location: IOOBUF_X15_Y25_N30
\output_vector[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(34),
	devoe => ww_devoe,
	o => \output_vector[34]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\output_vector[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(35),
	devoe => ww_devoe,
	o => \output_vector[35]~output_o\);

-- Location: IOOBUF_X24_Y25_N2
\output_vector[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(36),
	devoe => ww_devoe,
	o => \output_vector[36]~output_o\);

-- Location: IOOBUF_X31_Y20_N23
\output_vector[37]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(37),
	devoe => ww_devoe,
	o => \output_vector[37]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\output_vector[38]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(38),
	devoe => ww_devoe,
	o => \output_vector[38]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\output_vector[39]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(39),
	devoe => ww_devoe,
	o => \output_vector[39]~output_o\);

-- Location: IOOBUF_X22_Y25_N23
\output_vector[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(40),
	devoe => ww_devoe,
	o => \output_vector[40]~output_o\);

-- Location: IOOBUF_X27_Y25_N23
\output_vector[41]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(41),
	devoe => ww_devoe,
	o => \output_vector[41]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\output_vector[42]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(42),
	devoe => ww_devoe,
	o => \output_vector[42]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\output_vector[43]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(43),
	devoe => ww_devoe,
	o => \output_vector[43]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\output_vector[44]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(44),
	devoe => ww_devoe,
	o => \output_vector[44]~output_o\);

-- Location: IOOBUF_X31_Y19_N9
\output_vector[45]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(45),
	devoe => ww_devoe,
	o => \output_vector[45]~output_o\);

-- Location: IOOBUF_X10_Y17_N9
\output_vector[46]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(46),
	devoe => ww_devoe,
	o => \output_vector[46]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\output_vector[47]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(47),
	devoe => ww_devoe,
	o => \output_vector[47]~output_o\);

-- Location: IOOBUF_X17_Y25_N16
\output_vector[48]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(48),
	devoe => ww_devoe,
	o => \output_vector[48]~output_o\);

-- Location: IOOBUF_X22_Y25_N30
\output_vector[49]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(49),
	devoe => ww_devoe,
	o => \output_vector[49]~output_o\);

-- Location: IOOBUF_X13_Y0_N9
\output_vector[50]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(50),
	devoe => ww_devoe,
	o => \output_vector[50]~output_o\);

-- Location: IOOBUF_X13_Y25_N2
\output_vector[51]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(51),
	devoe => ww_devoe,
	o => \output_vector[51]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\output_vector[52]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(52),
	devoe => ww_devoe,
	o => \output_vector[52]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\output_vector[53]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(53),
	devoe => ww_devoe,
	o => \output_vector[53]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\output_vector[54]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(54),
	devoe => ww_devoe,
	o => \output_vector[54]~output_o\);

-- Location: IOOBUF_X10_Y16_N2
\output_vector[55]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(55),
	devoe => ww_devoe,
	o => \output_vector[55]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\output_vector[56]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(56),
	devoe => ww_devoe,
	o => \output_vector[56]~output_o\);

-- Location: IOOBUF_X31_Y21_N9
\output_vector[57]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(57),
	devoe => ww_devoe,
	o => \output_vector[57]~output_o\);

-- Location: IOOBUF_X31_Y21_N2
\output_vector[58]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(58),
	devoe => ww_devoe,
	o => \output_vector[58]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\output_vector[59]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(59),
	devoe => ww_devoe,
	o => \output_vector[59]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\output_vector[60]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|output\(60),
	devoe => ww_devoe,
	o => \output_vector[60]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\input_vector[63]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(63),
	o => \input_vector[63]~input_o\);

-- Location: CLKCTRL_G3
\input_vector[63]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \input_vector[63]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \input_vector[63]~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y6_N1
\input_vector[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

-- Location: LCCOMB_X30_Y6_N16
\add_instance|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[0]~feeder_combout\ = \input_vector[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[0]~input_o\,
	combout => \add_instance|output[0]~feeder_combout\);

-- Location: FF_X30_Y6_N17
\add_instance|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(0));

-- Location: IOIBUF_X19_Y25_N1
\input_vector[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(1),
	o => \input_vector[1]~input_o\);

-- Location: LCCOMB_X19_Y24_N0
\add_instance|output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[1]~feeder_combout\ = \input_vector[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[1]~input_o\,
	combout => \add_instance|output[1]~feeder_combout\);

-- Location: FF_X19_Y24_N1
\add_instance|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(1));

-- Location: IOIBUF_X31_Y13_N8
\input_vector[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(2),
	o => \input_vector[2]~input_o\);

-- Location: LCCOMB_X29_Y13_N8
\add_instance|output[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[2]~feeder_combout\ = \input_vector[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[2]~input_o\,
	combout => \add_instance|output[2]~feeder_combout\);

-- Location: FF_X29_Y13_N9
\add_instance|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(2));

-- Location: IOIBUF_X31_Y22_N1
\input_vector[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(3),
	o => \input_vector[3]~input_o\);

-- Location: LCCOMB_X30_Y22_N16
\add_instance|output[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[3]~feeder_combout\ = \input_vector[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[3]~input_o\,
	combout => \add_instance|output[3]~feeder_combout\);

-- Location: FF_X30_Y22_N17
\add_instance|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(3));

-- Location: IOIBUF_X31_Y12_N1
\input_vector[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(4),
	o => \input_vector[4]~input_o\);

-- Location: LCCOMB_X30_Y12_N0
\add_instance|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[4]~feeder_combout\ = \input_vector[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[4]~input_o\,
	combout => \add_instance|output[4]~feeder_combout\);

-- Location: FF_X30_Y12_N1
\add_instance|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(4));

-- Location: IOIBUF_X31_Y12_N22
\input_vector[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(5),
	o => \input_vector[5]~input_o\);

-- Location: FF_X29_Y12_N9
\add_instance|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(5));

-- Location: IOIBUF_X27_Y0_N29
\input_vector[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(6),
	o => \input_vector[6]~input_o\);

-- Location: FF_X29_Y1_N9
\add_instance|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(6));

-- Location: IOIBUF_X6_Y10_N15
\input_vector[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(7),
	o => \input_vector[7]~input_o\);

-- Location: FF_X6_Y9_N9
\add_instance|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(7));

-- Location: IOIBUF_X9_Y0_N22
\input_vector[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(8),
	o => \input_vector[8]~input_o\);

-- Location: LCCOMB_X9_Y1_N24
\add_instance|output[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[8]~feeder_combout\ = \input_vector[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[8]~input_o\,
	combout => \add_instance|output[8]~feeder_combout\);

-- Location: FF_X9_Y1_N25
\add_instance|output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(8));

-- Location: IOIBUF_X10_Y15_N1
\input_vector[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(9),
	o => \input_vector[9]~input_o\);

-- Location: LCCOMB_X11_Y17_N8
\add_instance|output[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[9]~feeder_combout\ = \input_vector[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[9]~input_o\,
	combout => \add_instance|output[9]~feeder_combout\);

-- Location: FF_X11_Y17_N9
\add_instance|output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(9));

-- Location: IOIBUF_X29_Y0_N8
\input_vector[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(10),
	o => \input_vector[10]~input_o\);

-- Location: FF_X30_Y1_N17
\add_instance|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(10));

-- Location: IOIBUF_X3_Y0_N1
\input_vector[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(11),
	o => \input_vector[11]~input_o\);

-- Location: LCCOMB_X2_Y1_N24
\add_instance|output[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[11]~feeder_combout\ = \input_vector[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[11]~input_o\,
	combout => \add_instance|output[11]~feeder_combout\);

-- Location: FF_X2_Y1_N25
\add_instance|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(11));

-- Location: IOIBUF_X31_Y6_N22
\input_vector[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(12),
	o => \input_vector[12]~input_o\);

-- Location: LCCOMB_X29_Y6_N8
\add_instance|output[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[12]~feeder_combout\ = \input_vector[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[12]~input_o\,
	combout => \add_instance|output[12]~feeder_combout\);

-- Location: FF_X29_Y6_N9
\add_instance|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(12));

-- Location: IOIBUF_X9_Y0_N15
\input_vector[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(13),
	o => \input_vector[13]~input_o\);

-- Location: LCCOMB_X10_Y4_N0
\add_instance|output[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[13]~feeder_combout\ = \input_vector[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[13]~input_o\,
	combout => \add_instance|output[13]~feeder_combout\);

-- Location: FF_X10_Y4_N1
\add_instance|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(13));

-- Location: IOIBUF_X10_Y18_N1
\input_vector[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(14),
	o => \input_vector[14]~input_o\);

-- Location: LCCOMB_X11_Y18_N8
\add_instance|output[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[14]~feeder_combout\ = \input_vector[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[14]~input_o\,
	combout => \add_instance|output[14]~feeder_combout\);

-- Location: FF_X11_Y18_N9
\add_instance|output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(14));

-- Location: IOIBUF_X10_Y22_N15
\input_vector[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(15),
	o => \input_vector[15]~input_o\);

-- Location: FF_X12_Y22_N1
\add_instance|output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(15));

-- Location: IOIBUF_X1_Y10_N1
\input_vector[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(16),
	o => \input_vector[16]~input_o\);

-- Location: FF_X2_Y9_N9
\add_instance|output[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[16]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(16));

-- Location: IOIBUF_X1_Y10_N22
\input_vector[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(17),
	o => \input_vector[17]~input_o\);

-- Location: LCCOMB_X2_Y4_N24
\add_instance|output[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[17]~feeder_combout\ = \input_vector[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|output[17]~feeder_combout\);

-- Location: FF_X2_Y4_N25
\add_instance|output[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(17));

-- Location: IOIBUF_X15_Y0_N1
\input_vector[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(18),
	o => \input_vector[18]~input_o\);

-- Location: LCCOMB_X13_Y1_N16
\add_instance|output[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[18]~feeder_combout\ = \input_vector[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[18]~input_o\,
	combout => \add_instance|output[18]~feeder_combout\);

-- Location: FF_X13_Y1_N17
\add_instance|output[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(18));

-- Location: IOIBUF_X27_Y25_N8
\input_vector[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(19),
	o => \input_vector[19]~input_o\);

-- Location: LCCOMB_X27_Y24_N8
\add_instance|output[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[19]~feeder_combout\ = \input_vector[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[19]~input_o\,
	combout => \add_instance|output[19]~feeder_combout\);

-- Location: FF_X27_Y24_N9
\add_instance|output[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(19));

-- Location: IOIBUF_X11_Y25_N29
\input_vector[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(20),
	o => \input_vector[20]~input_o\);

-- Location: LCCOMB_X11_Y21_N16
\add_instance|output[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[20]~feeder_combout\ = \input_vector[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[20]~input_o\,
	combout => \add_instance|output[20]~feeder_combout\);

-- Location: FF_X11_Y21_N17
\add_instance|output[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(20));

-- Location: IOIBUF_X24_Y0_N1
\input_vector[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(21),
	o => \input_vector[21]~input_o\);

-- Location: FF_X24_Y1_N25
\add_instance|output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[21]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(21));

-- Location: IOIBUF_X3_Y10_N29
\input_vector[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(22),
	o => \input_vector[22]~input_o\);

-- Location: FF_X3_Y9_N17
\add_instance|output[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[22]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(22));

-- Location: IOIBUF_X17_Y25_N29
\input_vector[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(23),
	o => \input_vector[23]~input_o\);

-- Location: LCCOMB_X17_Y24_N8
\add_instance|output[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[23]~feeder_combout\ = \input_vector[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[23]~input_o\,
	combout => \add_instance|output[23]~feeder_combout\);

-- Location: FF_X17_Y24_N9
\add_instance|output[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(23));

-- Location: IOIBUF_X31_Y9_N8
\input_vector[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(24),
	o => \input_vector[24]~input_o\);

-- Location: LCCOMB_X30_Y9_N16
\add_instance|output[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[24]~feeder_combout\ = \input_vector[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[24]~input_o\,
	combout => \add_instance|output[24]~feeder_combout\);

-- Location: FF_X30_Y9_N17
\add_instance|output[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(24));

-- Location: IOIBUF_X31_Y14_N8
\input_vector[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(25),
	o => \input_vector[25]~input_o\);

-- Location: FF_X30_Y16_N9
\add_instance|output[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[25]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(25));

-- Location: IOIBUF_X19_Y25_N15
\input_vector[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(26),
	o => \input_vector[26]~input_o\);

-- Location: LCCOMB_X20_Y24_N24
\add_instance|output[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[26]~feeder_combout\ = \input_vector[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[26]~input_o\,
	combout => \add_instance|output[26]~feeder_combout\);

-- Location: FF_X20_Y24_N25
\add_instance|output[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(26));

-- Location: IOIBUF_X31_Y15_N15
\input_vector[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(27),
	o => \input_vector[27]~input_o\);

-- Location: LCCOMB_X30_Y13_N16
\add_instance|output[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[27]~feeder_combout\ = \input_vector[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[27]~input_o\,
	combout => \add_instance|output[27]~feeder_combout\);

-- Location: FF_X30_Y13_N17
\add_instance|output[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(27));

-- Location: IOIBUF_X10_Y20_N1
\input_vector[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(28),
	o => \input_vector[28]~input_o\);

-- Location: FF_X11_Y19_N17
\add_instance|output[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[28]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(28));

-- Location: IOIBUF_X31_Y17_N15
\input_vector[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(29),
	o => \input_vector[29]~input_o\);

-- Location: LCCOMB_X30_Y17_N16
\add_instance|output[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[29]~feeder_combout\ = \input_vector[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[29]~input_o\,
	combout => \add_instance|output[29]~feeder_combout\);

-- Location: FF_X30_Y17_N17
\add_instance|output[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(29));

-- Location: IOIBUF_X13_Y25_N15
\input_vector[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(30),
	o => \input_vector[30]~input_o\);

-- Location: LCCOMB_X12_Y24_N24
\add_instance|output[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[30]~feeder_combout\ = \input_vector[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[30]~input_o\,
	combout => \add_instance|output[30]~feeder_combout\);

-- Location: FF_X12_Y24_N25
\add_instance|output[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(30));

-- Location: IOIBUF_X11_Y0_N8
\input_vector[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(31),
	o => \input_vector[31]~input_o\);

-- Location: LCCOMB_X11_Y1_N16
\add_instance|output[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[31]~feeder_combout\ = \input_vector[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[31]~input_o\,
	combout => \add_instance|output[31]~feeder_combout\);

-- Location: FF_X11_Y1_N17
\add_instance|output[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(31));

-- Location: IOIBUF_X11_Y25_N15
\input_vector[32]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(32),
	o => \input_vector[32]~input_o\);

-- Location: LCCOMB_X11_Y24_N16
\add_instance|output[32]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[32]~feeder_combout\ = \input_vector[32]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[32]~input_o\,
	combout => \add_instance|output[32]~feeder_combout\);

-- Location: FF_X11_Y24_N17
\add_instance|output[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(32));

-- Location: IOIBUF_X6_Y0_N1
\input_vector[33]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(33),
	o => \input_vector[33]~input_o\);

-- Location: LCCOMB_X6_Y4_N24
\add_instance|output[33]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[33]~feeder_combout\ = \input_vector[33]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[33]~input_o\,
	combout => \add_instance|output[33]~feeder_combout\);

-- Location: FF_X6_Y4_N25
\add_instance|output[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(33));

-- Location: IOIBUF_X15_Y25_N22
\input_vector[34]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(34),
	o => \input_vector[34]~input_o\);

-- Location: FF_X15_Y24_N1
\add_instance|output[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[34]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(34));

-- Location: IOIBUF_X15_Y0_N8
\input_vector[35]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(35),
	o => \input_vector[35]~input_o\);

-- Location: LCCOMB_X18_Y1_N16
\add_instance|output[35]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[35]~feeder_combout\ = \input_vector[35]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[35]~input_o\,
	combout => \add_instance|output[35]~feeder_combout\);

-- Location: FF_X18_Y1_N17
\add_instance|output[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(35));

-- Location: IOIBUF_X17_Y25_N1
\input_vector[36]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(36),
	o => \input_vector[36]~input_o\);

-- Location: LCCOMB_X25_Y24_N24
\add_instance|output[36]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[36]~feeder_combout\ = \input_vector[36]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[36]~input_o\,
	combout => \add_instance|output[36]~feeder_combout\);

-- Location: FF_X25_Y24_N25
\add_instance|output[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(36));

-- Location: IOIBUF_X29_Y25_N1
\input_vector[37]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(37),
	o => \input_vector[37]~input_o\);

-- Location: LCCOMB_X29_Y24_N8
\add_instance|output[37]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[37]~feeder_combout\ = \input_vector[37]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[37]~input_o\,
	combout => \add_instance|output[37]~feeder_combout\);

-- Location: FF_X29_Y24_N9
\add_instance|output[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(37));

-- Location: IOIBUF_X0_Y2_N1
\input_vector[38]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(38),
	o => \input_vector[38]~input_o\);

-- Location: LCCOMB_X1_Y1_N8
\add_instance|output[38]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[38]~feeder_combout\ = \input_vector[38]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[38]~input_o\,
	combout => \add_instance|output[38]~feeder_combout\);

-- Location: FF_X1_Y1_N9
\add_instance|output[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(38));

-- Location: IOIBUF_X9_Y0_N29
\input_vector[39]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(39),
	o => \input_vector[39]~input_o\);

-- Location: LCCOMB_X6_Y1_N8
\add_instance|output[39]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[39]~feeder_combout\ = \input_vector[39]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[39]~input_o\,
	combout => \add_instance|output[39]~feeder_combout\);

-- Location: FF_X6_Y1_N9
\add_instance|output[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(39));

-- Location: IOIBUF_X22_Y25_N1
\input_vector[40]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(40),
	o => \input_vector[40]~input_o\);

-- Location: LCCOMB_X22_Y24_N0
\add_instance|output[40]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[40]~feeder_combout\ = \input_vector[40]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[40]~input_o\,
	combout => \add_instance|output[40]~feeder_combout\);

-- Location: FF_X22_Y24_N1
\add_instance|output[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(40));

-- Location: IOIBUF_X24_Y25_N22
\input_vector[41]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(41),
	o => \input_vector[41]~input_o\);

-- Location: FF_X24_Y24_N17
\add_instance|output[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[41]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(41));

-- Location: IOIBUF_X22_Y0_N1
\input_vector[42]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(42),
	o => \input_vector[42]~input_o\);

-- Location: LCCOMB_X22_Y1_N24
\add_instance|output[42]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[42]~feeder_combout\ = \input_vector[42]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[42]~input_o\,
	combout => \add_instance|output[42]~feeder_combout\);

-- Location: FF_X22_Y1_N25
\add_instance|output[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(42));

-- Location: IOIBUF_X9_Y0_N1
\input_vector[43]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(43),
	o => \input_vector[43]~input_o\);

-- Location: LCCOMB_X7_Y4_N8
\add_instance|output[43]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[43]~feeder_combout\ = \input_vector[43]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[43]~input_o\,
	combout => \add_instance|output[43]~feeder_combout\);

-- Location: FF_X7_Y4_N9
\add_instance|output[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(43));

-- Location: IOIBUF_X13_Y0_N22
\input_vector[44]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(44),
	o => \input_vector[44]~input_o\);

-- Location: LCCOMB_X10_Y1_N8
\add_instance|output[44]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[44]~feeder_combout\ = \input_vector[44]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[44]~input_o\,
	combout => \add_instance|output[44]~feeder_combout\);

-- Location: FF_X10_Y1_N9
\add_instance|output[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(44));

-- Location: IOIBUF_X31_Y19_N1
\input_vector[45]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(45),
	o => \input_vector[45]~input_o\);

-- Location: LCCOMB_X28_Y19_N8
\add_instance|output[45]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[45]~feeder_combout\ = \input_vector[45]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[45]~input_o\,
	combout => \add_instance|output[45]~feeder_combout\);

-- Location: FF_X28_Y19_N9
\add_instance|output[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(45));

-- Location: IOIBUF_X10_Y18_N8
\input_vector[46]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(46),
	o => \input_vector[46]~input_o\);

-- Location: FF_X14_Y17_N9
\add_instance|output[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[46]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(46));

-- Location: IOIBUF_X10_Y19_N15
\input_vector[47]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(47),
	o => \input_vector[47]~input_o\);

-- Location: FF_X15_Y19_N1
\add_instance|output[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[47]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(47));

-- Location: IOIBUF_X17_Y25_N8
\input_vector[48]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(48),
	o => \input_vector[48]~input_o\);

-- Location: LCCOMB_X18_Y24_N0
\add_instance|output[48]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[48]~feeder_combout\ = \input_vector[48]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[48]~input_o\,
	combout => \add_instance|output[48]~feeder_combout\);

-- Location: FF_X18_Y24_N1
\add_instance|output[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(48));

-- Location: IOIBUF_X22_Y25_N8
\input_vector[49]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(49),
	o => \input_vector[49]~input_o\);

-- Location: FF_X23_Y24_N17
\add_instance|output[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[49]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(49));

-- Location: IOIBUF_X13_Y0_N29
\input_vector[50]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(50),
	o => \input_vector[50]~input_o\);

-- Location: LCCOMB_X12_Y1_N24
\add_instance|output[50]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[50]~feeder_combout\ = \input_vector[50]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[50]~input_o\,
	combout => \add_instance|output[50]~feeder_combout\);

-- Location: FF_X12_Y1_N25
\add_instance|output[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(50));

-- Location: IOIBUF_X10_Y21_N22
\input_vector[51]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(51),
	o => \input_vector[51]~input_o\);

-- Location: FF_X13_Y22_N1
\add_instance|output[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[51]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(51));

-- Location: IOIBUF_X6_Y0_N29
\input_vector[52]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(52),
	o => \input_vector[52]~input_o\);

-- Location: LCCOMB_X4_Y4_N0
\add_instance|output[52]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[52]~feeder_combout\ = \input_vector[52]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[52]~input_o\,
	combout => \add_instance|output[52]~feeder_combout\);

-- Location: FF_X4_Y4_N1
\add_instance|output[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(52));

-- Location: IOIBUF_X0_Y6_N22
\input_vector[53]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(53),
	o => \input_vector[53]~input_o\);

-- Location: FF_X3_Y4_N1
\add_instance|output[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[53]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(53));

-- Location: IOIBUF_X27_Y0_N15
\input_vector[54]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(54),
	o => \input_vector[54]~input_o\);

-- Location: FF_X27_Y1_N9
\add_instance|output[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	asdata => \input_vector[54]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(54));

-- Location: IOIBUF_X10_Y20_N8
\input_vector[55]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(55),
	o => \input_vector[55]~input_o\);

-- Location: LCCOMB_X11_Y16_N16
\add_instance|output[55]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[55]~feeder_combout\ = \input_vector[55]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[55]~input_o\,
	combout => \add_instance|output[55]~feeder_combout\);

-- Location: FF_X11_Y16_N17
\add_instance|output[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[55]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(55));

-- Location: IOIBUF_X13_Y25_N22
\input_vector[56]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(56),
	o => \input_vector[56]~input_o\);

-- Location: LCCOMB_X11_Y22_N16
\add_instance|output[56]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[56]~feeder_combout\ = \input_vector[56]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[56]~input_o\,
	combout => \add_instance|output[56]~feeder_combout\);

-- Location: FF_X11_Y22_N17
\add_instance|output[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(56));

-- Location: IOIBUF_X29_Y25_N29
\input_vector[57]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(57),
	o => \input_vector[57]~input_o\);

-- Location: LCCOMB_X29_Y21_N8
\add_instance|output[57]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[57]~feeder_combout\ = \input_vector[57]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[57]~input_o\,
	combout => \add_instance|output[57]~feeder_combout\);

-- Location: FF_X29_Y21_N9
\add_instance|output[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[57]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(57));

-- Location: IOIBUF_X31_Y22_N8
\input_vector[58]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(58),
	o => \input_vector[58]~input_o\);

-- Location: LCCOMB_X30_Y21_N16
\add_instance|output[58]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[58]~feeder_combout\ = \input_vector[58]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[58]~input_o\,
	combout => \add_instance|output[58]~feeder_combout\);

-- Location: FF_X30_Y21_N17
\add_instance|output[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(58));

-- Location: IOIBUF_X10_Y18_N22
\input_vector[59]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(59),
	o => \input_vector[59]~input_o\);

-- Location: LCCOMB_X12_Y18_N0
\add_instance|output[59]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[59]~feeder_combout\ = \input_vector[59]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[59]~input_o\,
	combout => \add_instance|output[59]~feeder_combout\);

-- Location: FF_X12_Y18_N1
\add_instance|output[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[59]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(59));

-- Location: IOIBUF_X31_Y1_N22
\input_vector[60]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(60),
	o => \input_vector[60]~input_o\);

-- Location: LCCOMB_X27_Y1_N2
\add_instance|output[60]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|output[60]~feeder_combout\ = \input_vector[60]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[60]~input_o\,
	combout => \add_instance|output[60]~feeder_combout\);

-- Location: FF_X27_Y1_N3
\add_instance|output[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[63]~inputclkctrl_outclk\,
	d => \add_instance|output[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|output\(60));

-- Location: IOIBUF_X17_Y25_N22
\input_vector[61]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(61),
	o => \input_vector[61]~input_o\);

-- Location: IOIBUF_X27_Y25_N15
\input_vector[62]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(62),
	o => \input_vector[62]~input_o\);

-- Location: UNVM_X0_Y11_N40
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_output_vector(0) <= \output_vector[0]~output_o\;

ww_output_vector(1) <= \output_vector[1]~output_o\;

ww_output_vector(2) <= \output_vector[2]~output_o\;

ww_output_vector(3) <= \output_vector[3]~output_o\;

ww_output_vector(4) <= \output_vector[4]~output_o\;

ww_output_vector(5) <= \output_vector[5]~output_o\;

ww_output_vector(6) <= \output_vector[6]~output_o\;

ww_output_vector(7) <= \output_vector[7]~output_o\;

ww_output_vector(8) <= \output_vector[8]~output_o\;

ww_output_vector(9) <= \output_vector[9]~output_o\;

ww_output_vector(10) <= \output_vector[10]~output_o\;

ww_output_vector(11) <= \output_vector[11]~output_o\;

ww_output_vector(12) <= \output_vector[12]~output_o\;

ww_output_vector(13) <= \output_vector[13]~output_o\;

ww_output_vector(14) <= \output_vector[14]~output_o\;

ww_output_vector(15) <= \output_vector[15]~output_o\;

ww_output_vector(16) <= \output_vector[16]~output_o\;

ww_output_vector(17) <= \output_vector[17]~output_o\;

ww_output_vector(18) <= \output_vector[18]~output_o\;

ww_output_vector(19) <= \output_vector[19]~output_o\;

ww_output_vector(20) <= \output_vector[20]~output_o\;

ww_output_vector(21) <= \output_vector[21]~output_o\;

ww_output_vector(22) <= \output_vector[22]~output_o\;

ww_output_vector(23) <= \output_vector[23]~output_o\;

ww_output_vector(24) <= \output_vector[24]~output_o\;

ww_output_vector(25) <= \output_vector[25]~output_o\;

ww_output_vector(26) <= \output_vector[26]~output_o\;

ww_output_vector(27) <= \output_vector[27]~output_o\;

ww_output_vector(28) <= \output_vector[28]~output_o\;

ww_output_vector(29) <= \output_vector[29]~output_o\;

ww_output_vector(30) <= \output_vector[30]~output_o\;

ww_output_vector(31) <= \output_vector[31]~output_o\;

ww_output_vector(32) <= \output_vector[32]~output_o\;

ww_output_vector(33) <= \output_vector[33]~output_o\;

ww_output_vector(34) <= \output_vector[34]~output_o\;

ww_output_vector(35) <= \output_vector[35]~output_o\;

ww_output_vector(36) <= \output_vector[36]~output_o\;

ww_output_vector(37) <= \output_vector[37]~output_o\;

ww_output_vector(38) <= \output_vector[38]~output_o\;

ww_output_vector(39) <= \output_vector[39]~output_o\;

ww_output_vector(40) <= \output_vector[40]~output_o\;

ww_output_vector(41) <= \output_vector[41]~output_o\;

ww_output_vector(42) <= \output_vector[42]~output_o\;

ww_output_vector(43) <= \output_vector[43]~output_o\;

ww_output_vector(44) <= \output_vector[44]~output_o\;

ww_output_vector(45) <= \output_vector[45]~output_o\;

ww_output_vector(46) <= \output_vector[46]~output_o\;

ww_output_vector(47) <= \output_vector[47]~output_o\;

ww_output_vector(48) <= \output_vector[48]~output_o\;

ww_output_vector(49) <= \output_vector[49]~output_o\;

ww_output_vector(50) <= \output_vector[50]~output_o\;

ww_output_vector(51) <= \output_vector[51]~output_o\;

ww_output_vector(52) <= \output_vector[52]~output_o\;

ww_output_vector(53) <= \output_vector[53]~output_o\;

ww_output_vector(54) <= \output_vector[54]~output_o\;

ww_output_vector(55) <= \output_vector[55]~output_o\;

ww_output_vector(56) <= \output_vector[56]~output_o\;

ww_output_vector(57) <= \output_vector[57]~output_o\;

ww_output_vector(58) <= \output_vector[58]~output_o\;

ww_output_vector(59) <= \output_vector[59]~output_o\;

ww_output_vector(60) <= \output_vector[60]~output_o\;
END structure;


