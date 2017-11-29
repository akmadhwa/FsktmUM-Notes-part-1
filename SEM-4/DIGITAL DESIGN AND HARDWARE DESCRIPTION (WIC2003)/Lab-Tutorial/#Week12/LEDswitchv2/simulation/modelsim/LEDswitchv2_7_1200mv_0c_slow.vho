-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "05/22/2017 16:52:20"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE2LAB1 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END DE2LAB1;

-- Design Ports Information
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE2LAB1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \MUX2|MUX0[1]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \MUX0|MUX0[1]~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \MUX0|MUX0[1]~1_combout\ : std_logic;
SIGNAL \MUX2|MUX0[1]~0_combout\ : std_logic;
SIGNAL \MUX2|MUX0[1]~0clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \MUX0|MUX0[0]~2_combout\ : std_logic;
SIGNAL \MUX0|MUX0[0]~3_combout\ : std_logic;
SIGNAL \SEG0|Mux5~0_combout\ : std_logic;
SIGNAL \SEG0|Mux4~0_combout\ : std_logic;
SIGNAL \SEG0|Mux4~1_combout\ : std_logic;
SIGNAL \SEG0|Mux1~0_combout\ : std_logic;
SIGNAL \MUX1|MUX0[0]~2_combout\ : std_logic;
SIGNAL \MUX1|MUX0[0]~3_combout\ : std_logic;
SIGNAL \MUX1|MUX0[1]~0_combout\ : std_logic;
SIGNAL \MUX1|MUX0[1]~1_combout\ : std_logic;
SIGNAL \SEG1|Mux5~0_combout\ : std_logic;
SIGNAL \SEG1|Mux4~0_combout\ : std_logic;
SIGNAL \SEG1|Mux4~1_combout\ : std_logic;
SIGNAL \SEG1|Mux1~0_combout\ : std_logic;
SIGNAL \MUX2|MUX0[0]~3_combout\ : std_logic;
SIGNAL \MUX2|MUX0[0]~4_combout\ : std_logic;
SIGNAL \MUX2|MUX0[1]~1_combout\ : std_logic;
SIGNAL \MUX2|MUX0[1]~2_combout\ : std_logic;
SIGNAL \SEG2|Mux5~0_combout\ : std_logic;
SIGNAL \SEG2|Mux4~0_combout\ : std_logic;
SIGNAL \SEG2|Mux4~1_combout\ : std_logic;
SIGNAL \SEG2|Mux1~0_combout\ : std_logic;
SIGNAL \MUX0|MUX0\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MUX1|MUX0\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MUX2|MUX0\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SEG2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \SEG1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \SEG0|ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MUX2|MUX0[1]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MUX2|MUX0[1]~0_combout\);
\SEG2|ALT_INV_Mux5~0_combout\ <= NOT \SEG2|Mux5~0_combout\;
\SEG1|ALT_INV_Mux5~0_combout\ <= NOT \SEG1|Mux5~0_combout\;
\SEG0|ALT_INV_Mux5~0_combout\ <= NOT \SEG0|Mux5~0_combout\;

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX0|MUX0\(0),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|MUX0\(0),
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2|MUX0\(0),
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y18_N0
\MUX0|MUX0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX0|MUX0[1]~0_combout\ = (\SW[9]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[9]~input_o\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \MUX0|MUX0[1]~0_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X114_Y19_N24
\MUX0|MUX0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX0|MUX0[1]~1_combout\ = (\SW[9]~input_o\ & (((\MUX0|MUX0[1]~0_combout\)))) # (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\MUX0|MUX0[1]~0_combout\))) # (!\SW[8]~input_o\ & (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \MUX0|MUX0[1]~0_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \MUX0|MUX0[1]~1_combout\);

-- Location: LCCOMB_X114_Y37_N2
\MUX2|MUX0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX2|MUX0[1]~0_combout\ = (!\SW[8]~input_o\) # (!\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \MUX2|MUX0[1]~0_combout\);

-- Location: CLKCTRL_G6
\MUX2|MUX0[1]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MUX2|MUX0[1]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MUX2|MUX0[1]~0clkctrl_outclk\);

-- Location: LCCOMB_X113_Y19_N24
\MUX0|MUX0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX0|MUX0\(1) = (GLOBAL(\MUX2|MUX0[1]~0clkctrl_outclk\) & ((\MUX0|MUX0[1]~1_combout\))) # (!GLOBAL(\MUX2|MUX0[1]~0clkctrl_outclk\) & (\MUX0|MUX0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX0|MUX0\(1),
	datac => \MUX0|MUX0[1]~1_combout\,
	datad => \MUX2|MUX0[1]~0clkctrl_outclk\,
	combout => \MUX0|MUX0\(1));

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X114_Y19_N10
\MUX0|MUX0[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX0|MUX0[0]~2_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[2]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \MUX0|MUX0[0]~2_combout\);

-- Location: LCCOMB_X114_Y19_N4
\MUX0|MUX0[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX0|MUX0[0]~3_combout\ = (\MUX0|MUX0[0]~2_combout\) # ((\SW[0]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \MUX0|MUX0[0]~2_combout\,
	combout => \MUX0|MUX0[0]~3_combout\);

-- Location: LCCOMB_X114_Y19_N6
\MUX0|MUX0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX0|MUX0\(0) = (GLOBAL(\MUX2|MUX0[1]~0clkctrl_outclk\) & ((\MUX0|MUX0[0]~3_combout\))) # (!GLOBAL(\MUX2|MUX0[1]~0clkctrl_outclk\) & (\MUX0|MUX0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX0|MUX0\(0),
	datac => \MUX0|MUX0[0]~3_combout\,
	datad => \MUX2|MUX0[1]~0clkctrl_outclk\,
	combout => \MUX0|MUX0\(0));

-- Location: LCCOMB_X114_Y27_N8
\SEG0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG0|Mux5~0_combout\ = \MUX0|MUX0\(1) $ (\MUX0|MUX0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX0|MUX0\(1),
	datad => \MUX0|MUX0\(0),
	combout => \SEG0|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y27_N10
\SEG0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG0|Mux4~0_combout\ = (\MUX0|MUX0\(1)) # (\MUX0|MUX0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX0|MUX0\(1),
	datad => \MUX0|MUX0\(0),
	combout => \SEG0|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y27_N12
\SEG0|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG0|Mux4~1_combout\ = (\MUX0|MUX0\(1) & \MUX0|MUX0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX0|MUX0\(1),
	datad => \MUX0|MUX0\(0),
	combout => \SEG0|Mux4~1_combout\);

-- Location: LCCOMB_X114_Y27_N30
\SEG0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG0|Mux1~0_combout\ = (\MUX0|MUX0\(1)) # (!\MUX0|MUX0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX0|MUX0\(1),
	datad => \MUX0|MUX0\(0),
	combout => \SEG0|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y19_N26
\MUX1|MUX0[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX1|MUX0[0]~2_combout\ = (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\SW[4]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \MUX1|MUX0[0]~2_combout\);

-- Location: LCCOMB_X114_Y19_N20
\MUX1|MUX0[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX1|MUX0[0]~3_combout\ = (\MUX1|MUX0[0]~2_combout\) # ((\SW[0]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \MUX1|MUX0[0]~2_combout\,
	combout => \MUX1|MUX0[0]~3_combout\);

-- Location: LCCOMB_X114_Y19_N18
\MUX1|MUX0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX1|MUX0\(0) = (GLOBAL(\MUX2|MUX0[1]~0clkctrl_outclk\) & ((\MUX1|MUX0[0]~3_combout\))) # (!GLOBAL(\MUX2|MUX0[1]~0clkctrl_outclk\) & (\MUX1|MUX0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|MUX0\(0),
	datac => \MUX1|MUX0[0]~3_combout\,
	datad => \MUX2|MUX0[1]~0clkctrl_outclk\,
	combout => \MUX1|MUX0\(0));

-- Location: LCCOMB_X114_Y19_N14
\MUX1|MUX0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX1|MUX0[1]~0_combout\ = (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\SW[5]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \MUX1|MUX0[1]~0_combout\);

-- Location: LCCOMB_X114_Y19_N16
\MUX1|MUX0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX1|MUX0[1]~1_combout\ = (\MUX1|MUX0[1]~0_combout\) # ((\SW[1]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \MUX1|MUX0[1]~0_combout\,
	combout => \MUX1|MUX0[1]~1_combout\);

-- Location: LCCOMB_X114_Y19_N0
\MUX1|MUX0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX1|MUX0\(1) = (GLOBAL(\MUX2|MUX0[1]~0clkctrl_outclk\) & ((\MUX1|MUX0[1]~1_combout\))) # (!GLOBAL(\MUX2|MUX0[1]~0clkctrl_outclk\) & (\MUX1|MUX0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|MUX0\(1),
	datac => \MUX2|MUX0[1]~0clkctrl_outclk\,
	datad => \MUX1|MUX0[1]~1_combout\,
	combout => \MUX1|MUX0\(1));

-- Location: LCCOMB_X114_Y22_N0
\SEG1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG1|Mux5~0_combout\ = \MUX1|MUX0\(0) $ (\MUX1|MUX0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|MUX0\(0),
	datad => \MUX1|MUX0\(1),
	combout => \SEG1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y22_N2
\SEG1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG1|Mux4~0_combout\ = (\MUX1|MUX0\(0)) # (\MUX1|MUX0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|MUX0\(0),
	datad => \MUX1|MUX0\(1),
	combout => \SEG1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y22_N28
\SEG1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG1|Mux4~1_combout\ = (\MUX1|MUX0\(0) & \MUX1|MUX0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|MUX0\(0),
	datad => \MUX1|MUX0\(1),
	combout => \SEG1|Mux4~1_combout\);

-- Location: LCCOMB_X114_Y22_N14
\SEG1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG1|Mux1~0_combout\ = (\MUX1|MUX0\(1)) # (!\MUX1|MUX0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|MUX0\(0),
	datad => \MUX1|MUX0\(1),
	combout => \SEG1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y19_N2
\MUX2|MUX0[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX2|MUX0[0]~3_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[8]~input_o\ & (\SW[2]~input_o\)))) # (!\SW[9]~input_o\ & (((\SW[0]~input_o\ & !\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \MUX2|MUX0[0]~3_combout\);

-- Location: LCCOMB_X114_Y19_N12
\MUX2|MUX0[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX2|MUX0[0]~4_combout\ = (\MUX2|MUX0[0]~3_combout\) # ((\SW[4]~input_o\ & (!\SW[9]~input_o\ & \SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \MUX2|MUX0[0]~3_combout\,
	combout => \MUX2|MUX0[0]~4_combout\);

-- Location: LCCOMB_X114_Y19_N22
\MUX2|MUX0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX2|MUX0\(0) = (GLOBAL(\MUX2|MUX0[1]~0clkctrl_outclk\) & ((\MUX2|MUX0[0]~4_combout\))) # (!GLOBAL(\MUX2|MUX0[1]~0clkctrl_outclk\) & (\MUX2|MUX0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|MUX0\(0),
	datac => \MUX2|MUX0[0]~4_combout\,
	datad => \MUX2|MUX0[1]~0clkctrl_outclk\,
	combout => \MUX2|MUX0\(0));

-- Location: LCCOMB_X114_Y19_N30
\MUX2|MUX0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX2|MUX0[1]~1_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[8]~input_o\ & (\SW[3]~input_o\)))) # (!\SW[9]~input_o\ & (((\SW[1]~input_o\ & !\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \MUX2|MUX0[1]~1_combout\);

-- Location: LCCOMB_X114_Y19_N8
\MUX2|MUX0[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX2|MUX0[1]~2_combout\ = (\MUX2|MUX0[1]~1_combout\) # ((\SW[5]~input_o\ & (!\SW[9]~input_o\ & \SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \MUX2|MUX0[1]~1_combout\,
	datad => \SW[8]~input_o\,
	combout => \MUX2|MUX0[1]~2_combout\);

-- Location: LCCOMB_X114_Y19_N28
\MUX2|MUX0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX2|MUX0\(1) = (GLOBAL(\MUX2|MUX0[1]~0clkctrl_outclk\) & ((\MUX2|MUX0[1]~2_combout\))) # (!GLOBAL(\MUX2|MUX0[1]~0clkctrl_outclk\) & (\MUX2|MUX0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|MUX0\(1),
	datac => \MUX2|MUX0[1]~0clkctrl_outclk\,
	datad => \MUX2|MUX0[1]~2_combout\,
	combout => \MUX2|MUX0\(1));

-- Location: LCCOMB_X114_Y20_N8
\SEG2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG2|Mux5~0_combout\ = \MUX2|MUX0\(0) $ (\MUX2|MUX0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|MUX0\(0),
	datad => \MUX2|MUX0\(1),
	combout => \SEG2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y20_N18
\SEG2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG2|Mux4~0_combout\ = (\MUX2|MUX0\(0)) # (\MUX2|MUX0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|MUX0\(0),
	datad => \MUX2|MUX0\(1),
	combout => \SEG2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y20_N12
\SEG2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG2|Mux4~1_combout\ = (\MUX2|MUX0\(0) & \MUX2|MUX0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|MUX0\(0),
	datad => \MUX2|MUX0\(1),
	combout => \SEG2|Mux4~1_combout\);

-- Location: LCCOMB_X114_Y20_N22
\SEG2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG2|Mux1~0_combout\ = (\MUX2|MUX0\(1)) # (!\MUX2|MUX0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|MUX0\(0),
	datad => \MUX2|MUX0\(1),
	combout => \SEG2|Mux1~0_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;
END structure;


