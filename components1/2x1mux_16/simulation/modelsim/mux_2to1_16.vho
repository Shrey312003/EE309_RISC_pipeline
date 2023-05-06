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

-- DATE "11/27/2022 05:03:26"

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

ENTITY 	mux_2to1_16 IS
    PORT (
	x0 : IN std_logic_vector(15 DOWNTO 0);
	x1 : IN std_logic_vector(15 DOWNTO 0);
	sel : IN std_logic;
	y : OUT std_logic_vector(15 DOWNTO 0)
	);
END mux_2to1_16;

-- Design Ports Information
-- y[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[15]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[0]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[0]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[1]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[1]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[3]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[3]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[4]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[4]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[5]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[6]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[6]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[7]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[7]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[8]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[8]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[9]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[9]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[10]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[10]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[11]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[11]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[12]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[12]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[13]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[13]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[14]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[14]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[15]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[15]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux_2to1_16 IS
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
SIGNAL ww_sel : std_logic;
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
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \x1[0]~input_o\ : std_logic;
SIGNAL \x0[0]~input_o\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \x1[1]~input_o\ : std_logic;
SIGNAL \x0[1]~input_o\ : std_logic;
SIGNAL \y~1_combout\ : std_logic;
SIGNAL \x0[2]~input_o\ : std_logic;
SIGNAL \x1[2]~input_o\ : std_logic;
SIGNAL \y~2_combout\ : std_logic;
SIGNAL \x0[3]~input_o\ : std_logic;
SIGNAL \x1[3]~input_o\ : std_logic;
SIGNAL \y~3_combout\ : std_logic;
SIGNAL \x0[4]~input_o\ : std_logic;
SIGNAL \x1[4]~input_o\ : std_logic;
SIGNAL \y~4_combout\ : std_logic;
SIGNAL \x0[5]~input_o\ : std_logic;
SIGNAL \x1[5]~input_o\ : std_logic;
SIGNAL \y~5_combout\ : std_logic;
SIGNAL \x0[6]~input_o\ : std_logic;
SIGNAL \x1[6]~input_o\ : std_logic;
SIGNAL \y~6_combout\ : std_logic;
SIGNAL \x0[7]~input_o\ : std_logic;
SIGNAL \x1[7]~input_o\ : std_logic;
SIGNAL \y~7_combout\ : std_logic;
SIGNAL \x1[8]~input_o\ : std_logic;
SIGNAL \x0[8]~input_o\ : std_logic;
SIGNAL \y~8_combout\ : std_logic;
SIGNAL \x0[9]~input_o\ : std_logic;
SIGNAL \x1[9]~input_o\ : std_logic;
SIGNAL \y~9_combout\ : std_logic;
SIGNAL \x0[10]~input_o\ : std_logic;
SIGNAL \x1[10]~input_o\ : std_logic;
SIGNAL \y~10_combout\ : std_logic;
SIGNAL \x1[11]~input_o\ : std_logic;
SIGNAL \x0[11]~input_o\ : std_logic;
SIGNAL \y~11_combout\ : std_logic;
SIGNAL \x1[12]~input_o\ : std_logic;
SIGNAL \x0[12]~input_o\ : std_logic;
SIGNAL \y~12_combout\ : std_logic;
SIGNAL \x1[13]~input_o\ : std_logic;
SIGNAL \x0[13]~input_o\ : std_logic;
SIGNAL \y~13_combout\ : std_logic;
SIGNAL \x1[14]~input_o\ : std_logic;
SIGNAL \x0[14]~input_o\ : std_logic;
SIGNAL \y~14_combout\ : std_logic;
SIGNAL \x0[15]~input_o\ : std_logic;
SIGNAL \x1[15]~input_o\ : std_logic;
SIGNAL \y~15_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x0 <= x0;
ww_x1 <= x1;
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

-- Location: LCCOMB_X26_Y25_N24
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

-- Location: IOOBUF_X60_Y22_N16
\y[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~0_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X25_Y29_N23
\y[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~1_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\y[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~2_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X53_Y0_N9
\y[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~3_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\y[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~4_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\y[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~5_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X60_Y2_N9
\y[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~6_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X19_Y21_N23
\y[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~7_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\y[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~8_combout\,
	devoe => ww_devoe,
	o => \y[8]~output_o\);

-- Location: IOOBUF_X60_Y2_N2
\y[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~9_combout\,
	devoe => ww_devoe,
	o => \y[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\y[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~10_combout\,
	devoe => ww_devoe,
	o => \y[10]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\y[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~11_combout\,
	devoe => ww_devoe,
	o => \y[11]~output_o\);

-- Location: IOOBUF_X60_Y8_N9
\y[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~12_combout\,
	devoe => ww_devoe,
	o => \y[12]~output_o\);

-- Location: IOOBUF_X12_Y21_N30
\y[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~13_combout\,
	devoe => ww_devoe,
	o => \y[13]~output_o\);

-- Location: IOOBUF_X14_Y21_N2
\y[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~14_combout\,
	devoe => ww_devoe,
	o => \y[14]~output_o\);

-- Location: IOOBUF_X60_Y8_N16
\y[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~15_combout\,
	devoe => ww_devoe,
	o => \y[15]~output_o\);

-- Location: IOIBUF_X16_Y0_N29
\sel~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: IOIBUF_X16_Y21_N15
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

-- Location: IOIBUF_X25_Y28_N22
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

-- Location: LCCOMB_X28_Y20_N24
\y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~0_combout\ = (\sel~input_o\ & (\x1[0]~input_o\)) # (!\sel~input_o\ & ((\x0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~input_o\,
	datac => \x1[0]~input_o\,
	datad => \x0[0]~input_o\,
	combout => \y~0_combout\);

-- Location: IOIBUF_X25_Y26_N15
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

-- Location: IOIBUF_X60_Y14_N15
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

-- Location: LCCOMB_X25_Y14_N0
\y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~1_combout\ = (\sel~input_o\ & (\x1[1]~input_o\)) # (!\sel~input_o\ & ((\x0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x1[1]~input_o\,
	datac => \sel~input_o\,
	datad => \x0[1]~input_o\,
	combout => \y~1_combout\);

-- Location: IOIBUF_X40_Y0_N1
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

-- Location: IOIBUF_X40_Y0_N22
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

-- Location: LCCOMB_X40_Y1_N16
\y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~2_combout\ = (\sel~input_o\ & ((\x1[2]~input_o\))) # (!\sel~input_o\ & (\x0[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x0[2]~input_o\,
	datac => \sel~input_o\,
	datad => \x1[2]~input_o\,
	combout => \y~2_combout\);

-- Location: IOIBUF_X60_Y8_N22
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

-- Location: IOIBUF_X36_Y0_N29
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

-- Location: LCCOMB_X43_Y7_N16
\y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~3_combout\ = (\sel~input_o\ & ((\x1[3]~input_o\))) # (!\sel~input_o\ & (\x0[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datac => \x0[3]~input_o\,
	datad => \x1[3]~input_o\,
	combout => \y~3_combout\);

-- Location: IOIBUF_X36_Y0_N8
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

-- Location: IOIBUF_X25_Y27_N22
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

-- Location: LCCOMB_X32_Y4_N8
\y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~4_combout\ = (\sel~input_o\ & ((\x1[4]~input_o\))) # (!\sel~input_o\ & (\x0[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datac => \x0[4]~input_o\,
	datad => \x1[4]~input_o\,
	combout => \y~4_combout\);

-- Location: IOIBUF_X14_Y21_N29
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

-- Location: IOIBUF_X14_Y21_N22
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

-- Location: LCCOMB_X15_Y20_N24
\y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~5_combout\ = (\sel~input_o\ & ((\x1[5]~input_o\))) # (!\sel~input_o\ & (\x0[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x0[5]~input_o\,
	datac => \sel~input_o\,
	datad => \x1[5]~input_o\,
	combout => \y~5_combout\);

-- Location: IOIBUF_X60_Y2_N15
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

-- Location: IOIBUF_X60_Y2_N22
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

-- Location: LCCOMB_X59_Y2_N16
\y~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~6_combout\ = (\sel~input_o\ & ((\x1[6]~input_o\))) # (!\sel~input_o\ & (\x0[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \x0[6]~input_o\,
	datad => \x1[6]~input_o\,
	combout => \y~6_combout\);

-- Location: IOIBUF_X8_Y0_N15
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

-- Location: IOIBUF_X60_Y10_N8
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

-- Location: LCCOMB_X32_Y4_N26
\y~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~7_combout\ = (\sel~input_o\ & ((\x1[7]~input_o\))) # (!\sel~input_o\ & (\x0[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x0[7]~input_o\,
	datac => \sel~input_o\,
	datad => \x1[7]~input_o\,
	combout => \y~7_combout\);

-- Location: IOIBUF_X21_Y0_N22
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

-- Location: IOIBUF_X25_Y27_N15
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

-- Location: LCCOMB_X25_Y1_N24
\y~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~8_combout\ = (\sel~input_o\ & (\x1[8]~input_o\)) # (!\sel~input_o\ & ((\x0[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~input_o\,
	datac => \x1[8]~input_o\,
	datad => \x0[8]~input_o\,
	combout => \y~8_combout\);

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

-- Location: IOIBUF_X60_Y13_N15
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

-- Location: LCCOMB_X54_Y6_N16
\y~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~9_combout\ = (\sel~input_o\ & ((\x1[9]~input_o\))) # (!\sel~input_o\ & (\x0[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x0[9]~input_o\,
	datac => \sel~input_o\,
	datad => \x1[9]~input_o\,
	combout => \y~9_combout\);

-- Location: IOIBUF_X53_Y0_N1
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

-- Location: IOIBUF_X21_Y0_N29
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

-- Location: LCCOMB_X25_Y1_N2
\y~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~10_combout\ = (\sel~input_o\ & ((\x1[10]~input_o\))) # (!\sel~input_o\ & (\x0[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~input_o\,
	datac => \x0[10]~input_o\,
	datad => \x1[10]~input_o\,
	combout => \y~10_combout\);

-- Location: IOIBUF_X25_Y26_N22
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

-- Location: IOIBUF_X25_Y28_N15
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

-- Location: LCCOMB_X26_Y20_N0
\y~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~11_combout\ = (\sel~input_o\ & (\x1[11]~input_o\)) # (!\sel~input_o\ & ((\x0[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~input_o\,
	datac => \x1[11]~input_o\,
	datad => \x0[11]~input_o\,
	combout => \y~11_combout\);

-- Location: IOIBUF_X14_Y0_N8
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

-- Location: IOIBUF_X24_Y0_N8
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

-- Location: LCCOMB_X32_Y4_N20
\y~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~12_combout\ = (\sel~input_o\ & (\x1[12]~input_o\)) # (!\sel~input_o\ & ((\x0[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x1[12]~input_o\,
	datac => \sel~input_o\,
	datad => \x0[12]~input_o\,
	combout => \y~12_combout\);

-- Location: IOIBUF_X40_Y0_N29
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

-- Location: IOIBUF_X60_Y8_N1
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

-- Location: LCCOMB_X40_Y1_N10
\y~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~13_combout\ = (\sel~input_o\ & (\x1[13]~input_o\)) # (!\sel~input_o\ & ((\x0[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[13]~input_o\,
	datac => \sel~input_o\,
	datad => \x0[13]~input_o\,
	combout => \y~13_combout\);

-- Location: IOIBUF_X19_Y21_N29
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

-- Location: IOIBUF_X60_Y15_N15
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

-- Location: LCCOMB_X26_Y20_N10
\y~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~14_combout\ = (\sel~input_o\ & (\x1[14]~input_o\)) # (!\sel~input_o\ & ((\x0[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[14]~input_o\,
	datab => \sel~input_o\,
	datad => \x0[14]~input_o\,
	combout => \y~14_combout\);

-- Location: IOIBUF_X6_Y0_N29
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

-- Location: IOIBUF_X24_Y0_N29
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

-- Location: LCCOMB_X32_Y4_N14
\y~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y~15_combout\ = (\sel~input_o\ & ((\x1[15]~input_o\))) # (!\sel~input_o\ & (\x0[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datac => \x0[15]~input_o\,
	datad => \x1[15]~input_o\,
	combout => \y~15_combout\);

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


