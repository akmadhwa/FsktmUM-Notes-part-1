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

-- DATE "03/15/2017 15:30:52"

-- 
-- Device: Altera EP4CE6E22C8L Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	nAdder IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	c_in : IN std_logic;
	sum : OUT std_logic_vector(7 DOWNTO 0);
	c_out : OUT std_logic
	);
END nAdder;

-- Design Ports Information
-- sum[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_c_in : std_logic;
SIGNAL ww_sum : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_c_out : std_logic;
SIGNAL \sum[0]~output_o\ : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \sum[4]~output_o\ : std_logic;
SIGNAL \sum[5]~output_o\ : std_logic;
SIGNAL \sum[6]~output_o\ : std_logic;
SIGNAL \sum[7]~output_o\ : std_logic;
SIGNAL \c_out~output_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \c_in~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \generate_i:0:nAdder_0|s~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \generate_i:0:nAdder_0|c_out~1_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \generate_i:0:nAdder_0|c_out~0_combout\ : std_logic;
SIGNAL \generate_i:1:nAdder_0|s~combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \generate_i:1:nAdder_0|c_out~0_combout\ : std_logic;
SIGNAL \generate_i:2:nAdder_0|s~0_combout\ : std_logic;
SIGNAL \generate_i:2:nAdder_0|c_out~1_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \generate_i:2:nAdder_0|c_out~0_combout\ : std_logic;
SIGNAL \generate_i:3:nAdder_0|s~combout\ : std_logic;
SIGNAL \generate_i:3:nAdder_0|c_out~0_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \generate_i:4:nAdder_0|s~0_combout\ : std_logic;
SIGNAL \generate_i:4:nAdder_0|c_out~0_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \generate_i:4:nAdder_0|c_out~1_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \generate_i:5:nAdder_0|s~combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \generate_i:5:nAdder_0|c_out~0_combout\ : std_logic;
SIGNAL \generate_i:6:nAdder_0|s~0_combout\ : std_logic;
SIGNAL \generate_i:6:nAdder_0|c_out~1_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \generate_i:6:nAdder_0|c_out~0_combout\ : std_logic;
SIGNAL \generate_i:7:nAdder_0|s~combout\ : std_logic;
SIGNAL \generate_i:7:nAdder_0|c_out~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c_in <= c_in;
sum <= ww_sum;
c_out <= ww_c_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X1_Y0_N23
\sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:0:nAdder_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:1:nAdder_0|s~combout\,
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:2:nAdder_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:3:nAdder_0|s~combout\,
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\sum[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:4:nAdder_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\sum[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:5:nAdder_0|s~combout\,
	devoe => ww_devoe,
	o => \sum[5]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\sum[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:6:nAdder_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[6]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\sum[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:7:nAdder_0|s~combout\,
	devoe => ww_devoe,
	o => \sum[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\c_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_i:7:nAdder_0|c_out~0_combout\,
	devoe => ww_devoe,
	o => \c_out~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\c_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in,
	o => \c_in~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X4_Y9_N0
\generate_i:0:nAdder_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:0:nAdder_0|s~0_combout\ = \b[0]~input_o\ $ (\c_in~input_o\ $ (\a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datac => \c_in~input_o\,
	datad => \a[0]~input_o\,
	combout => \generate_i:0:nAdder_0|s~0_combout\);

-- Location: IOIBUF_X0_Y7_N1
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X4_Y9_N20
\generate_i:0:nAdder_0|c_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:0:nAdder_0|c_out~1_combout\ = (\b[0]~input_o\ & ((\c_in~input_o\) # (\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datac => \c_in~input_o\,
	datad => \a[0]~input_o\,
	combout => \generate_i:0:nAdder_0|c_out~1_combout\);

-- Location: IOIBUF_X1_Y0_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X4_Y9_N2
\generate_i:0:nAdder_0|c_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:0:nAdder_0|c_out~0_combout\ = (\c_in~input_o\ & \a[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in~input_o\,
	datad => \a[0]~input_o\,
	combout => \generate_i:0:nAdder_0|c_out~0_combout\);

-- Location: LCCOMB_X4_Y9_N22
\generate_i:1:nAdder_0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:1:nAdder_0|s~combout\ = \b[1]~input_o\ $ (\a[1]~input_o\ $ (((\generate_i:0:nAdder_0|c_out~1_combout\) # (\generate_i:0:nAdder_0|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \generate_i:0:nAdder_0|c_out~1_combout\,
	datac => \a[1]~input_o\,
	datad => \generate_i:0:nAdder_0|c_out~0_combout\,
	combout => \generate_i:1:nAdder_0|s~combout\);

-- Location: IOIBUF_X0_Y8_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X4_Y9_N24
\generate_i:1:nAdder_0|c_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:1:nAdder_0|c_out~0_combout\ = (\b[1]~input_o\ & ((\generate_i:0:nAdder_0|c_out~1_combout\) # ((\a[1]~input_o\) # (\generate_i:0:nAdder_0|c_out~0_combout\)))) # (!\b[1]~input_o\ & (\a[1]~input_o\ & ((\generate_i:0:nAdder_0|c_out~1_combout\) # 
-- (\generate_i:0:nAdder_0|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \generate_i:0:nAdder_0|c_out~1_combout\,
	datac => \a[1]~input_o\,
	datad => \generate_i:0:nAdder_0|c_out~0_combout\,
	combout => \generate_i:1:nAdder_0|c_out~0_combout\);

-- Location: LCCOMB_X4_Y9_N26
\generate_i:2:nAdder_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:2:nAdder_0|s~0_combout\ = \b[2]~input_o\ $ (\a[2]~input_o\ $ (\generate_i:1:nAdder_0|c_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \generate_i:1:nAdder_0|c_out~0_combout\,
	combout => \generate_i:2:nAdder_0|s~0_combout\);

-- Location: LCCOMB_X4_Y9_N6
\generate_i:2:nAdder_0|c_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:2:nAdder_0|c_out~1_combout\ = (\b[2]~input_o\ & ((\a[2]~input_o\) # (\generate_i:1:nAdder_0|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \generate_i:1:nAdder_0|c_out~0_combout\,
	combout => \generate_i:2:nAdder_0|c_out~1_combout\);

-- Location: IOIBUF_X0_Y23_N15
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X4_Y9_N28
\generate_i:2:nAdder_0|c_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:2:nAdder_0|c_out~0_combout\ = (\a[2]~input_o\ & \generate_i:1:nAdder_0|c_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[2]~input_o\,
	datad => \generate_i:1:nAdder_0|c_out~0_combout\,
	combout => \generate_i:2:nAdder_0|c_out~0_combout\);

-- Location: LCCOMB_X4_Y9_N16
\generate_i:3:nAdder_0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:3:nAdder_0|s~combout\ = \a[3]~input_o\ $ (\b[3]~input_o\ $ (((\generate_i:2:nAdder_0|c_out~1_combout\) # (\generate_i:2:nAdder_0|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_i:2:nAdder_0|c_out~1_combout\,
	datab => \a[3]~input_o\,
	datac => \b[3]~input_o\,
	datad => \generate_i:2:nAdder_0|c_out~0_combout\,
	combout => \generate_i:3:nAdder_0|s~combout\);

-- Location: LCCOMB_X4_Y9_N10
\generate_i:3:nAdder_0|c_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:3:nAdder_0|c_out~0_combout\ = (\a[3]~input_o\ & ((\generate_i:2:nAdder_0|c_out~1_combout\) # ((\b[3]~input_o\) # (\generate_i:2:nAdder_0|c_out~0_combout\)))) # (!\a[3]~input_o\ & (\b[3]~input_o\ & ((\generate_i:2:nAdder_0|c_out~1_combout\) # 
-- (\generate_i:2:nAdder_0|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_i:2:nAdder_0|c_out~1_combout\,
	datab => \a[3]~input_o\,
	datac => \b[3]~input_o\,
	datad => \generate_i:2:nAdder_0|c_out~0_combout\,
	combout => \generate_i:3:nAdder_0|c_out~0_combout\);

-- Location: IOIBUF_X11_Y24_N15
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X4_Y9_N4
\generate_i:4:nAdder_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:4:nAdder_0|s~0_combout\ = \generate_i:3:nAdder_0|c_out~0_combout\ $ (\b[4]~input_o\ $ (\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_i:3:nAdder_0|c_out~0_combout\,
	datac => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \generate_i:4:nAdder_0|s~0_combout\);

-- Location: LCCOMB_X4_Y9_N30
\generate_i:4:nAdder_0|c_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:4:nAdder_0|c_out~0_combout\ = (\generate_i:3:nAdder_0|c_out~0_combout\ & \a[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_i:3:nAdder_0|c_out~0_combout\,
	datad => \a[4]~input_o\,
	combout => \generate_i:4:nAdder_0|c_out~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X4_Y9_N8
\generate_i:4:nAdder_0|c_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:4:nAdder_0|c_out~1_combout\ = (\b[4]~input_o\ & ((\generate_i:3:nAdder_0|c_out~0_combout\) # (\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_i:3:nAdder_0|c_out~0_combout\,
	datac => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \generate_i:4:nAdder_0|c_out~1_combout\);

-- Location: IOIBUF_X0_Y11_N22
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X4_Y9_N18
\generate_i:5:nAdder_0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:5:nAdder_0|s~combout\ = \b[5]~input_o\ $ (\a[5]~input_o\ $ (((\generate_i:4:nAdder_0|c_out~0_combout\) # (\generate_i:4:nAdder_0|c_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_i:4:nAdder_0|c_out~0_combout\,
	datab => \b[5]~input_o\,
	datac => \generate_i:4:nAdder_0|c_out~1_combout\,
	datad => \a[5]~input_o\,
	combout => \generate_i:5:nAdder_0|s~combout\);

-- Location: IOIBUF_X3_Y24_N22
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X4_Y9_N12
\generate_i:5:nAdder_0|c_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:5:nAdder_0|c_out~0_combout\ = (\b[5]~input_o\ & ((\generate_i:4:nAdder_0|c_out~0_combout\) # ((\generate_i:4:nAdder_0|c_out~1_combout\) # (\a[5]~input_o\)))) # (!\b[5]~input_o\ & (\a[5]~input_o\ & ((\generate_i:4:nAdder_0|c_out~0_combout\) # 
-- (\generate_i:4:nAdder_0|c_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_i:4:nAdder_0|c_out~0_combout\,
	datab => \b[5]~input_o\,
	datac => \generate_i:4:nAdder_0|c_out~1_combout\,
	datad => \a[5]~input_o\,
	combout => \generate_i:5:nAdder_0|c_out~0_combout\);

-- Location: LCCOMB_X4_Y23_N24
\generate_i:6:nAdder_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:6:nAdder_0|s~0_combout\ = \a[6]~input_o\ $ (\b[6]~input_o\ $ (\generate_i:5:nAdder_0|c_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[6]~input_o\,
	datac => \b[6]~input_o\,
	datad => \generate_i:5:nAdder_0|c_out~0_combout\,
	combout => \generate_i:6:nAdder_0|s~0_combout\);

-- Location: LCCOMB_X4_Y23_N12
\generate_i:6:nAdder_0|c_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:6:nAdder_0|c_out~1_combout\ = (\b[6]~input_o\ & ((\a[6]~input_o\) # (\generate_i:5:nAdder_0|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[6]~input_o\,
	datac => \b[6]~input_o\,
	datad => \generate_i:5:nAdder_0|c_out~0_combout\,
	combout => \generate_i:6:nAdder_0|c_out~1_combout\);

-- Location: IOIBUF_X1_Y24_N1
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X4_Y23_N10
\generate_i:6:nAdder_0|c_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:6:nAdder_0|c_out~0_combout\ = (\a[6]~input_o\ & \generate_i:5:nAdder_0|c_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[6]~input_o\,
	datad => \generate_i:5:nAdder_0|c_out~0_combout\,
	combout => \generate_i:6:nAdder_0|c_out~0_combout\);

-- Location: LCCOMB_X4_Y23_N6
\generate_i:7:nAdder_0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:7:nAdder_0|s~combout\ = \a[7]~input_o\ $ (\b[7]~input_o\ $ (((\generate_i:6:nAdder_0|c_out~1_combout\) # (\generate_i:6:nAdder_0|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_i:6:nAdder_0|c_out~1_combout\,
	datab => \a[7]~input_o\,
	datac => \b[7]~input_o\,
	datad => \generate_i:6:nAdder_0|c_out~0_combout\,
	combout => \generate_i:7:nAdder_0|s~combout\);

-- Location: LCCOMB_X4_Y23_N8
\generate_i:7:nAdder_0|c_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_i:7:nAdder_0|c_out~0_combout\ = (\a[7]~input_o\ & ((\generate_i:6:nAdder_0|c_out~1_combout\) # ((\b[7]~input_o\) # (\generate_i:6:nAdder_0|c_out~0_combout\)))) # (!\a[7]~input_o\ & (\b[7]~input_o\ & ((\generate_i:6:nAdder_0|c_out~1_combout\) # 
-- (\generate_i:6:nAdder_0|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_i:6:nAdder_0|c_out~1_combout\,
	datab => \a[7]~input_o\,
	datac => \b[7]~input_o\,
	datad => \generate_i:6:nAdder_0|c_out~0_combout\,
	combout => \generate_i:7:nAdder_0|c_out~0_combout\);

ww_sum(0) <= \sum[0]~output_o\;

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_sum(4) <= \sum[4]~output_o\;

ww_sum(5) <= \sum[5]~output_o\;

ww_sum(6) <= \sum[6]~output_o\;

ww_sum(7) <= \sum[7]~output_o\;

ww_c_out <= \c_out~output_o\;
END structure;


