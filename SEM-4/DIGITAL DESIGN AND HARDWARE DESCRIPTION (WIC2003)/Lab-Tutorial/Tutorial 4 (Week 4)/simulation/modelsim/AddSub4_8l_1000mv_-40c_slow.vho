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

-- DATE "03/08/2017 17:51:35"

-- 
-- Device: Altera EP4CE115F29I8L Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	XOR8 IS
    PORT (
	a8 : IN std_logic_vector(7 DOWNTO 0);
	b8 : IN std_logic_vector(7 DOWNTO 0);
	c8 : OUT std_logic_vector(7 DOWNTO 0)
	);
END XOR8;

-- Design Ports Information
-- c8[0]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c8[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c8[2]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c8[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c8[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c8[5]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c8[6]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c8[7]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a8[0]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b8[0]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a8[1]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b8[1]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a8[2]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b8[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a8[3]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b8[3]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a8[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b8[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a8[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b8[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a8[6]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b8[6]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a8[7]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b8[7]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF XOR8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a8 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b8 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_c8 : std_logic_vector(7 DOWNTO 0);
SIGNAL \c8[0]~output_o\ : std_logic;
SIGNAL \c8[1]~output_o\ : std_logic;
SIGNAL \c8[2]~output_o\ : std_logic;
SIGNAL \c8[3]~output_o\ : std_logic;
SIGNAL \c8[4]~output_o\ : std_logic;
SIGNAL \c8[5]~output_o\ : std_logic;
SIGNAL \c8[6]~output_o\ : std_logic;
SIGNAL \c8[7]~output_o\ : std_logic;
SIGNAL \b8[0]~input_o\ : std_logic;
SIGNAL \a8[0]~input_o\ : std_logic;
SIGNAL \generate_i:0:XOR4|c~0_combout\ : std_logic;
SIGNAL \a8[1]~input_o\ : std_logic;
SIGNAL \b8[1]~input_o\ : std_logic;
SIGNAL \generate_i:1:XOR4|c~0_combout\ : std_logic;
SIGNAL \b8[2]~input_o\ : std_logic;
SIGNAL \a8[2]~input_o\ : std_logic;
SIGNAL \generate_i:2:XOR4|c~0_combout\ : std_logic;
SIGNAL \a8[3]~input_o\ : std_logic;
SIGNAL \b8[3]~input_o\ : std_logic;
SIGNAL \generate_i:3:XOR4|c~0_combout\ : std_logic;
SIGNAL \b8[4]~input_o\ : std_logic;
SIGNAL \a8[4]~input_o\ : std_logic;
SIGNAL \generate_i:4:XOR4|c~0_combout\ : std_logic;
SIGNAL \a8[5]~input_o\ : std_logic;
SIGNAL \b8[5]~input_o\ : std_logic;
SIGNAL \generate_i:5:XOR4|c~0_combout\ : std_logic;
SIGNAL \a8[6]~input_o\ : std_logic;
SIGNAL \b8[6]~input_o\ : std_logic;
SIGNAL \generate_i:6:XOR4|c~0_combout\ : std_logic;
SIGNAL \b8[7]~input_o\ : std_logic;
SIGNAL \a8[7]~input_o\ : std_logic;
SIGNAL \generate_i:7:XOR4|c~0_combout\ : std_logic;

BEGIN

ww_a8 <= a8;
ww_b8 <= b8;
c8 <= ww_c8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X1_Y0_N23
\c8[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:0:XOR4|c~0_combout\,
	devoe => ww_devoe,
	o => \c8[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\c8[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:1:XOR4|c~0_combout\,
	devoe => ww_devoe,
	o => \c8[1]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\c8[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:2:XOR4|c~0_combout\,
	devoe => ww_devoe,
	o => \c8[2]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\c8[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:3:XOR4|c~0_combout\,
	devoe => ww_devoe,
	o => \c8[3]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\c8[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:4:XOR4|c~0_combout\,
	devoe => ww_devoe,
	o => \c8[4]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\c8[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:5:XOR4|c~0_combout\,
	devoe => ww_devoe,
	o => \c8[5]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\c8[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:6:XOR4|c~0_combout\,
	devoe => ww_devoe,
	o => \c8[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\c8[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:7:XOR4|c~0_combout\,
	devoe => ww_devoe,
	o => \c8[7]~output_o\);

-- Location: IOIBUF_X1_Y0_N15
\b8[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b8(0),
	o => \b8[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\a8[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a8(0),
	o => \a8[0]~input_o\);

-- Location: LCCOMB_X1_Y1_N24
\generate_i:0:XOR4|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:0:XOR4|c~0_combout\ = \b8[0]~input_o\ $ (\a8[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b8[0]~input_o\,
	datac => \a8[0]~input_o\,
	combout => \generate_i:0:XOR4|c~0_combout\);

-- Location: IOIBUF_X85_Y73_N15
\a8[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a8(1),
	o => \a8[1]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\b8[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b8(1),
	o => \b8[1]~input_o\);

-- Location: LCCOMB_X85_Y72_N0
\generate_i:1:XOR4|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:1:XOR4|c~0_combout\ = \a8[1]~input_o\ $ (\b8[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a8[1]~input_o\,
	datad => \b8[1]~input_o\,
	combout => \generate_i:1:XOR4|c~0_combout\);

-- Location: IOIBUF_X0_Y66_N15
\b8[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b8(2),
	o => \b8[2]~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\a8[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a8(2),
	o => \a8[2]~input_o\);

-- Location: LCCOMB_X1_Y66_N16
\generate_i:2:XOR4|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:2:XOR4|c~0_combout\ = \b8[2]~input_o\ $ (\a8[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b8[2]~input_o\,
	datad => \a8[2]~input_o\,
	combout => \generate_i:2:XOR4|c~0_combout\);

-- Location: IOIBUF_X0_Y61_N22
\a8[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a8(3),
	o => \a8[3]~input_o\);

-- Location: IOIBUF_X0_Y62_N15
\b8[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b8(3),
	o => \b8[3]~input_o\);

-- Location: LCCOMB_X1_Y61_N24
\generate_i:3:XOR4|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:3:XOR4|c~0_combout\ = \a8[3]~input_o\ $ (\b8[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8[3]~input_o\,
	datad => \b8[3]~input_o\,
	combout => \generate_i:3:XOR4|c~0_combout\);

-- Location: IOIBUF_X42_Y73_N1
\b8[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b8(4),
	o => \b8[4]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\a8[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a8(4),
	o => \a8[4]~input_o\);

-- Location: LCCOMB_X42_Y72_N0
\generate_i:4:XOR4|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:4:XOR4|c~0_combout\ = \b8[4]~input_o\ $ (\a8[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b8[4]~input_o\,
	datad => \a8[4]~input_o\,
	combout => \generate_i:4:XOR4|c~0_combout\);

-- Location: IOIBUF_X94_Y73_N1
\a8[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a8(5),
	o => \a8[5]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\b8[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b8(5),
	o => \b8[5]~input_o\);

-- Location: LCCOMB_X94_Y72_N24
\generate_i:5:XOR4|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:5:XOR4|c~0_combout\ = \a8[5]~input_o\ $ (\b8[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8[5]~input_o\,
	datad => \b8[5]~input_o\,
	combout => \generate_i:5:XOR4|c~0_combout\);

-- Location: IOIBUF_X0_Y57_N22
\a8[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a8(6),
	o => \a8[6]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\b8[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b8(6),
	o => \b8[6]~input_o\);

-- Location: LCCOMB_X1_Y57_N0
\generate_i:6:XOR4|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:6:XOR4|c~0_combout\ = \a8[6]~input_o\ $ (\b8[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8[6]~input_o\,
	datad => \b8[6]~input_o\,
	combout => \generate_i:6:XOR4|c~0_combout\);

-- Location: IOIBUF_X107_Y73_N1
\b8[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b8(7),
	o => \b8[7]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\a8[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a8(7),
	o => \a8[7]~input_o\);

-- Location: LCCOMB_X107_Y72_N0
\generate_i:7:XOR4|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:7:XOR4|c~0_combout\ = \b8[7]~input_o\ $ (\a8[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b8[7]~input_o\,
	datad => \a8[7]~input_o\,
	combout => \generate_i:7:XOR4|c~0_combout\);

ww_c8(0) <= \c8[0]~output_o\;

ww_c8(1) <= \c8[1]~output_o\;

ww_c8(2) <= \c8[2]~output_o\;

ww_c8(3) <= \c8[3]~output_o\;

ww_c8(4) <= \c8[4]~output_o\;

ww_c8(5) <= \c8[5]~output_o\;

ww_c8(6) <= \c8[6]~output_o\;

ww_c8(7) <= \c8[7]~output_o\;
END structure;


