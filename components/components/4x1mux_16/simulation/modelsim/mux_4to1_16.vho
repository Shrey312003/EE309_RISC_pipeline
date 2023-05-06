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

-- DATE "11/27/2022 04:57:47"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux_4to1_16 IS
    PORT (
	x0 : IN std_logic_vector(15 DOWNTO 0);
	x1 : IN std_logic_vector(15 DOWNTO 0);
	x2 : IN std_logic_vector(15 DOWNTO 0);
	x3 : IN std_logic_vector(15 DOWNTO 0);
	sel : IN std_logic_vector(1 DOWNTO 0);
	y : OUT std_logic_vector(15 DOWNTO 0)
	);
END mux_4to1_16;

-- Design Ports Information
-- y[0]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[15]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[0]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[0]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[1]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[1]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[1]	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[2]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[2]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[3]	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[3]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[4]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[4]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[4]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[4]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[5]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[5]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[5]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[6]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[6]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[6]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[6]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[7]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[7]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[7]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[8]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[8]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[8]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[8]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[9]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[9]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[9]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[9]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[10]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[10]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[10]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[10]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[11]	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[11]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[11]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[11]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[12]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[12]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[12]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[12]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[13]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[13]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[13]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[13]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[14]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[14]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[14]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[14]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[15]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[15]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[15]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[15]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux_4to1_16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_x1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_x2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_x3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \y[8]~output_o\ : std_logic;
SIGNAL \y[9]~output_o\ : std_logic;
SIGNAL \y[10]~output_o\ : std_logic;
SIGNAL \y[11]~output_o\ : std_logic;
SIGNAL \y[12]~output_o\ : std_logic;
SIGNAL \y[13]~output_o\ : std_logic;
SIGNAL \y[14]~output_o\ : std_logic;
SIGNAL \y[15]~output_o\ : std_logic;
SIGNAL \x2[0]~input_o\ : std_logic;
SIGNAL \x0[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \x1[0]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \x3[0]~input_o\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \x1[1]~input_o\ : std_logic;
SIGNAL \x2[1]~input_o\ : std_logic;
SIGNAL \x0[1]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \x3[1]~input_o\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \x3[2]~input_o\ : std_logic;
SIGNAL \x2[2]~input_o\ : std_logic;
SIGNAL \x1[2]~input_o\ : std_logic;
SIGNAL \x0[2]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \x0[3]~input_o\ : std_logic;
SIGNAL \x2[3]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \x3[3]~input_o\ : std_logic;
SIGNAL \x1[3]~input_o\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \x2[4]~input_o\ : std_logic;
SIGNAL \x0[4]~input_o\ : std_logic;
SIGNAL \x1[4]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \x3[4]~input_o\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \x1[5]~input_o\ : std_logic;
SIGNAL \x3[5]~input_o\ : std_logic;
SIGNAL \x0[5]~input_o\ : std_logic;
SIGNAL \x2[5]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \x2[6]~input_o\ : std_logic;
SIGNAL \x0[6]~input_o\ : std_logic;
SIGNAL \x1[6]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \x3[6]~input_o\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \x0[7]~input_o\ : std_logic;
SIGNAL \x2[7]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \x3[7]~input_o\ : std_logic;
SIGNAL \x1[7]~input_o\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \x2[8]~input_o\ : std_logic;
SIGNAL \x0[8]~input_o\ : std_logic;
SIGNAL \x1[8]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \x3[8]~input_o\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \x0[9]~input_o\ : std_logic;
SIGNAL \x2[9]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \x3[9]~input_o\ : std_logic;
SIGNAL \x1[9]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \x1[10]~input_o\ : std_logic;
SIGNAL \x0[10]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \x3[10]~input_o\ : std_logic;
SIGNAL \x2[10]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \x3[11]~input_o\ : std_logic;
SIGNAL \x1[11]~input_o\ : std_logic;
SIGNAL \x2[11]~input_o\ : std_logic;
SIGNAL \x0[11]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \x3[12]~input_o\ : std_logic;
SIGNAL \x2[12]~input_o\ : std_logic;
SIGNAL \x0[12]~input_o\ : std_logic;
SIGNAL \x1[12]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \x1[13]~input_o\ : std_logic;
SIGNAL \x0[13]~input_o\ : std_logic;
SIGNAL \x2[13]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \x3[13]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \x2[14]~input_o\ : std_logic;
SIGNAL \x3[14]~input_o\ : std_logic;
SIGNAL \x1[14]~input_o\ : std_logic;
SIGNAL \x0[14]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \x3[15]~input_o\ : std_logic;
SIGNAL \x0[15]~input_o\ : std_logic;
SIGNAL \x2[15]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \x1[15]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x0 <= x0;
ww_x1 <= x1;
ww_x2 <= x2;
ww_x3 <= x3;
ww_sel <= sel;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y34_N8
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

-- Location: IOOBUF_X16_Y0_N30
\y[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X25_Y27_N16
\y[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~1_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\y[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~1_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\y[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\y[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\y[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\y[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\y[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X60_Y22_N16
\y[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \y[8]~output_o\);

-- Location: IOOBUF_X58_Y36_N9
\y[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \y[9]~output_o\);

-- Location: IOOBUF_X60_Y31_N16
\y[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \y[10]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\y[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \y[11]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\y[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \y[12]~output_o\);

-- Location: IOOBUF_X60_Y2_N9
\y[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \y[13]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\y[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \y[14]~output_o\);

-- Location: IOOBUF_X60_Y22_N9
\y[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \y[15]~output_o\);

-- Location: IOIBUF_X28_Y36_N8
\x2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(0),
	o => \x2[0]~input_o\);

-- Location: IOIBUF_X14_Y21_N1
\x0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(0),
	o => \x0[0]~input_o\);

-- Location: IOIBUF_X25_Y26_N22
\sel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\x1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(0),
	o => \x1[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\sel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X10_Y17_N0
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\x1[0]~input_o\))) # (!\sel[0]~input_o\ & (\x0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x0[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \x1[0]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: IOIBUF_X8_Y21_N22
\x3[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(0),
	o => \x3[0]~input_o\);

-- Location: LCCOMB_X10_Y17_N18
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & (((\x3[0]~input_o\) # (!\sel[1]~input_o\)))) # (!\Mux15~0_combout\ & (\x2[0]~input_o\ & ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2[0]~input_o\,
	datab => \Mux15~0_combout\,
	datac => \x3[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: IOIBUF_X8_Y0_N15
\x1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(1),
	o => \x1[1]~input_o\);

-- Location: IOIBUF_X16_Y21_N15
\x2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(1),
	o => \x2[1]~input_o\);

-- Location: IOIBUF_X25_Y26_N15
\x0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(1),
	o => \x0[1]~input_o\);

-- Location: LCCOMB_X10_Y17_N20
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & (\x2[1]~input_o\)) # (!\sel[1]~input_o\ & ((\x0[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \x2[1]~input_o\,
	datac => \x0[1]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
\x3[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(1),
	o => \x3[1]~input_o\);

-- Location: LCCOMB_X10_Y17_N22
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & (((\x3[1]~input_o\) # (!\sel[0]~input_o\)))) # (!\Mux14~0_combout\ & (\x1[1]~input_o\ & ((\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[1]~input_o\,
	datab => \Mux14~0_combout\,
	datac => \x3[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: IOIBUF_X10_Y21_N1
\x3[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(2),
	o => \x3[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\x2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(2),
	o => \x2[2]~input_o\);

-- Location: IOIBUF_X19_Y21_N22
\x1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(2),
	o => \x1[2]~input_o\);

-- Location: IOIBUF_X8_Y21_N15
\x0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(2),
	o => \x0[2]~input_o\);

-- Location: LCCOMB_X10_Y17_N8
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\x1[2]~input_o\)) # (!\sel[0]~input_o\ & ((\x0[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \x0[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X10_Y17_N26
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & ((\x3[2]~input_o\) # ((!\sel[1]~input_o\)))) # (!\Mux13~0_combout\ & (((\x2[2]~input_o\ & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x3[2]~input_o\,
	datab => \x2[2]~input_o\,
	datac => \Mux13~0_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: IOIBUF_X0_Y16_N22
\x0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(3),
	o => \x0[3]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\x2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(3),
	o => \x2[3]~input_o\);

-- Location: LCCOMB_X10_Y17_N12
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & ((\x2[3]~input_o\))) # (!\sel[1]~input_o\ & (\x0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \x0[3]~input_o\,
	datac => \x2[3]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: IOIBUF_X19_Y21_N29
\x3[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(3),
	o => \x3[3]~input_o\);

-- Location: IOIBUF_X12_Y21_N29
\x1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(3),
	o => \x1[3]~input_o\);

-- Location: LCCOMB_X10_Y17_N14
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & ((\x3[3]~input_o\) # ((!\sel[0]~input_o\)))) # (!\Mux12~0_combout\ & (((\x1[3]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \x3[3]~input_o\,
	datac => \x1[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: IOIBUF_X12_Y21_N1
\x2[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(4),
	o => \x2[4]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\x0[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(4),
	o => \x0[4]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\x1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(4),
	o => \x1[4]~input_o\);

-- Location: LCCOMB_X10_Y17_N16
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\sel[0]~input_o\ & (((\x1[4]~input_o\) # (\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & (\x0[4]~input_o\ & ((!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \x0[4]~input_o\,
	datac => \x1[4]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: IOIBUF_X12_Y21_N8
\x3[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(4),
	o => \x3[4]~input_o\);

-- Location: LCCOMB_X10_Y17_N10
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & (((\x3[4]~input_o\) # (!\sel[1]~input_o\)))) # (!\Mux11~0_combout\ & (\x2[4]~input_o\ & ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2[4]~input_o\,
	datab => \Mux11~0_combout\,
	datac => \x3[4]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: IOIBUF_X14_Y21_N29
\x1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(5),
	o => \x1[5]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\x3[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(5),
	o => \x3[5]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\x0[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(5),
	o => \x0[5]~input_o\);

-- Location: IOIBUF_X0_Y18_N1
\x2[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(5),
	o => \x2[5]~input_o\);

-- Location: LCCOMB_X10_Y17_N4
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\sel[1]~input_o\ & (((\x2[5]~input_o\) # (\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\x0[5]~input_o\ & ((!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x0[5]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \x2[5]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X10_Y17_N30
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & (((\x3[5]~input_o\) # (!\sel[0]~input_o\)))) # (!\Mux10~0_combout\ & (\x1[5]~input_o\ & ((\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[5]~input_o\,
	datab => \x3[5]~input_o\,
	datac => \Mux10~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: IOIBUF_X14_Y0_N1
\x2[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(6),
	o => \x2[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\x0[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(6),
	o => \x0[6]~input_o\);

-- Location: IOIBUF_X25_Y28_N15
\x1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(6),
	o => \x1[6]~input_o\);

-- Location: LCCOMB_X10_Y17_N24
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\sel[0]~input_o\ & ((\sel[1]~input_o\) # ((\x1[6]~input_o\)))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\ & (\x0[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \x0[6]~input_o\,
	datad => \x1[6]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X6_Y0_N8
\x3[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(6),
	o => \x3[6]~input_o\);

-- Location: LCCOMB_X10_Y17_N2
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\x3[6]~input_o\) # (!\sel[1]~input_o\)))) # (!\Mux9~0_combout\ & (\x2[6]~input_o\ & ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2[6]~input_o\,
	datab => \Mux9~0_combout\,
	datac => \x3[6]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: IOIBUF_X14_Y21_N22
\x0[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(7),
	o => \x0[7]~input_o\);

-- Location: IOIBUF_X25_Y28_N22
\x2[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(7),
	o => \x2[7]~input_o\);

-- Location: LCCOMB_X10_Y17_N28
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\sel[0]~input_o\ & (\sel[1]~input_o\)) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & ((\x2[7]~input_o\))) # (!\sel[1]~input_o\ & (\x0[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \x0[7]~input_o\,
	datad => \x2[7]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\x3[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(7),
	o => \x3[7]~input_o\);

-- Location: IOIBUF_X6_Y0_N29
\x1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(7),
	o => \x1[7]~input_o\);

-- Location: LCCOMB_X11_Y1_N8
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\sel[0]~input_o\ & ((\Mux8~0_combout\ & (\x3[7]~input_o\)) # (!\Mux8~0_combout\ & ((\x1[7]~input_o\))))) # (!\sel[0]~input_o\ & (\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux8~0_combout\,
	datac => \x3[7]~input_o\,
	datad => \x1[7]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: IOIBUF_X60_Y2_N1
\x2[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(8),
	o => \x2[8]~input_o\);

-- Location: IOIBUF_X36_Y0_N29
\x0[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(8),
	o => \x0[8]~input_o\);

-- Location: IOIBUF_X60_Y14_N15
\x1[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(8),
	o => \x1[8]~input_o\);

-- Location: LCCOMB_X56_Y11_N24
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\sel[1]~input_o\ & (\sel[0]~input_o\)) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\x1[8]~input_o\))) # (!\sel[0]~input_o\ & (\x0[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \x0[8]~input_o\,
	datad => \x1[8]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X60_Y15_N15
\x3[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(8),
	o => \x3[8]~input_o\);

-- Location: LCCOMB_X56_Y11_N10
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\x3[8]~input_o\) # (!\sel[1]~input_o\)))) # (!\Mux7~0_combout\ & (\x2[8]~input_o\ & (\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2[8]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \sel[1]~input_o\,
	datad => \x3[8]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X60_Y10_N15
\x0[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(9),
	o => \x0[9]~input_o\);

-- Location: IOIBUF_X60_Y23_N1
\x2[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(9),
	o => \x2[9]~input_o\);

-- Location: LCCOMB_X56_Y11_N12
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & ((\x2[9]~input_o\))) # (!\sel[1]~input_o\ & (\x0[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x0[9]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \x2[9]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X60_Y2_N15
\x3[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(9),
	o => \x3[9]~input_o\);

-- Location: IOIBUF_X60_Y15_N22
\x1[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(9),
	o => \x1[9]~input_o\);

-- Location: LCCOMB_X56_Y11_N22
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\x3[9]~input_o\)) # (!\sel[0]~input_o\))) # (!\Mux6~0_combout\ & (\sel[0]~input_o\ & ((\x1[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \sel[0]~input_o\,
	datac => \x3[9]~input_o\,
	datad => \x1[9]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X40_Y0_N29
\x1[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(10),
	o => \x1[10]~input_o\);

-- Location: IOIBUF_X58_Y36_N1
\x0[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(10),
	o => \x0[10]~input_o\);

-- Location: LCCOMB_X56_Y11_N8
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\sel[0]~input_o\ & ((\x1[10]~input_o\) # ((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & (((!\sel[1]~input_o\ & \x0[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[10]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \x0[10]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X60_Y10_N23
\x3[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(10),
	o => \x3[10]~input_o\);

-- Location: IOIBUF_X60_Y23_N15
\x2[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(10),
	o => \x2[10]~input_o\);

-- Location: LCCOMB_X56_Y11_N2
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\sel[1]~input_o\ & ((\Mux5~0_combout\ & (\x3[10]~input_o\)) # (!\Mux5~0_combout\ & ((\x2[10]~input_o\))))) # (!\sel[1]~input_o\ & (\Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mux5~0_combout\,
	datac => \x3[10]~input_o\,
	datad => \x2[10]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X60_Y13_N22
\x3[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(11),
	o => \x3[11]~input_o\);

-- Location: IOIBUF_X60_Y8_N8
\x1[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(11),
	o => \x1[11]~input_o\);

-- Location: IOIBUF_X60_Y10_N8
\x2[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(11),
	o => \x2[11]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\x0[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(11),
	o => \x0[11]~input_o\);

-- Location: LCCOMB_X56_Y11_N20
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\sel[1]~input_o\ & ((\sel[0]~input_o\) # ((\x2[11]~input_o\)))) # (!\sel[1]~input_o\ & (!\sel[0]~input_o\ & ((\x0[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \x2[11]~input_o\,
	datad => \x0[11]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X56_Y11_N14
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\sel[0]~input_o\ & ((\Mux4~0_combout\ & (\x3[11]~input_o\)) # (!\Mux4~0_combout\ & ((\x1[11]~input_o\))))) # (!\sel[0]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x3[11]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \x1[11]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X60_Y23_N22
\x3[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(12),
	o => \x3[12]~input_o\);

-- Location: IOIBUF_X53_Y0_N8
\x2[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(12),
	o => \x2[12]~input_o\);

-- Location: IOIBUF_X53_Y0_N1
\x0[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(12),
	o => \x0[12]~input_o\);

-- Location: IOIBUF_X60_Y8_N22
\x1[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(12),
	o => \x1[12]~input_o\);

-- Location: LCCOMB_X56_Y11_N0
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sel[1]~input_o\ & (\sel[0]~input_o\)) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\x1[12]~input_o\))) # (!\sel[0]~input_o\ & (\x0[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \x0[12]~input_o\,
	datad => \x1[12]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X56_Y11_N18
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\sel[1]~input_o\ & ((\Mux3~0_combout\ & (\x3[12]~input_o\)) # (!\Mux3~0_combout\ & ((\x2[12]~input_o\))))) # (!\sel[1]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x3[12]~input_o\,
	datab => \x2[12]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X24_Y0_N29
\x1[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(13),
	o => \x1[13]~input_o\);

-- Location: IOIBUF_X60_Y31_N22
\x0[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(13),
	o => \x0[13]~input_o\);

-- Location: IOIBUF_X60_Y2_N22
\x2[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(13),
	o => \x2[13]~input_o\);

-- Location: LCCOMB_X56_Y11_N28
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\sel[1]~input_o\ & ((\sel[0]~input_o\) # ((\x2[13]~input_o\)))) # (!\sel[1]~input_o\ & (!\sel[0]~input_o\ & (\x0[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \x0[13]~input_o\,
	datad => \x2[13]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X60_Y22_N23
\x3[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(13),
	o => \x3[13]~input_o\);

-- Location: LCCOMB_X56_Y11_N30
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\x3[13]~input_o\) # (!\sel[0]~input_o\)))) # (!\Mux2~0_combout\ & (\x1[13]~input_o\ & (\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[13]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \sel[0]~input_o\,
	datad => \x3[13]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X40_Y0_N22
\x2[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(14),
	o => \x2[14]~input_o\);

-- Location: IOIBUF_X60_Y23_N8
\x3[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(14),
	o => \x3[14]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\x1[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(14),
	o => \x1[14]~input_o\);

-- Location: IOIBUF_X60_Y14_N22
\x0[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(14),
	o => \x0[14]~input_o\);

-- Location: LCCOMB_X56_Y11_N16
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sel[0]~input_o\ & ((\x1[14]~input_o\) # ((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & (((!\sel[1]~input_o\ & \x0[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[14]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \x0[14]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X56_Y11_N26
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\sel[1]~input_o\ & ((\Mux1~0_combout\ & ((\x3[14]~input_o\))) # (!\Mux1~0_combout\ & (\x2[14]~input_o\)))) # (!\sel[1]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \x2[14]~input_o\,
	datac => \x3[14]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X60_Y8_N1
\x3[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(15),
	o => \x3[15]~input_o\);

-- Location: IOIBUF_X60_Y8_N15
\x0[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(15),
	o => \x0[15]~input_o\);

-- Location: IOIBUF_X60_Y13_N15
\x2[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(15),
	o => \x2[15]~input_o\);

-- Location: LCCOMB_X56_Y11_N4
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & ((\x2[15]~input_o\))) # (!\sel[1]~input_o\ & (\x0[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x0[15]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \x2[15]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X60_Y10_N1
\x1[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(15),
	o => \x1[15]~input_o\);

-- Location: LCCOMB_X56_Y11_N6
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\sel[0]~input_o\ & ((\Mux0~0_combout\ & (\x3[15]~input_o\)) # (!\Mux0~0_combout\ & ((\x1[15]~input_o\))))) # (!\sel[0]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x3[15]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \x1[15]~input_o\,
	combout => \Mux0~1_combout\);

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

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;

ww_y(8) <= \y[8]~output_o\;

ww_y(9) <= \y[9]~output_o\;

ww_y(10) <= \y[10]~output_o\;

ww_y(11) <= \y[11]~output_o\;

ww_y(12) <= \y[12]~output_o\;

ww_y(13) <= \y[13]~output_o\;

ww_y(14) <= \y[14]~output_o\;

ww_y(15) <= \y[15]~output_o\;
END structure;


