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

-- DATE "03/19/2017 14:15:24"

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

ENTITY 	AddSub8 IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	c_in : IN std_logic;
	sum : OUT std_logic_vector(15 DOWNTO 0);
	c_out : OUT std_logic
	);
END AddSub8;

-- Design Ports Information
-- b[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[0]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[8]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[9]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[10]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[11]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[12]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[13]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[14]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[15]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AddSub8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_c_in : std_logic;
SIGNAL ww_sum : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_c_out : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \sum[0]~output_o\ : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \sum[4]~output_o\ : std_logic;
SIGNAL \sum[5]~output_o\ : std_logic;
SIGNAL \sum[6]~output_o\ : std_logic;
SIGNAL \sum[7]~output_o\ : std_logic;
SIGNAL \sum[8]~output_o\ : std_logic;
SIGNAL \sum[9]~output_o\ : std_logic;
SIGNAL \sum[10]~output_o\ : std_logic;
SIGNAL \sum[11]~output_o\ : std_logic;
SIGNAL \sum[12]~output_o\ : std_logic;
SIGNAL \sum[13]~output_o\ : std_logic;
SIGNAL \sum[14]~output_o\ : std_logic;
SIGNAL \sum[15]~output_o\ : std_logic;
SIGNAL \c_out~output_o\ : std_logic;
SIGNAL \c_in~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:0:Adder16_0|generate_i:1:Adder4_0|s~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:0:Adder16_0|generate_i:2:Adder4_0|s~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:0:Adder16_0|generate_i:3:Adder4_0|s~combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:1:Adder16_0|generate_i:0:Adder4_0|s~0_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:1:Adder16_0|generate_i:1:Adder4_0|s~0_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:1:Adder16_0|generate_i:2:Adder4_0|s~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:1:Adder16_0|generate_i:3:Adder4_0|s~0_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:2:Adder16_0|generate_i:0:Adder4_0|s~combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:2:Adder16_0|generate_i:1:Adder4_0|s~0_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:2:Adder16_0|generate_i:2:Adder4_0|s~0_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:2:Adder16_0|generate_i:3:Adder4_0|s~0_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:3:Adder16_0|generate_i:0:Adder4_0|s~combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:3:Adder16_0|generate_i:1:Adder4_0|s~combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:3:Adder16_0|generate_i:2:Adder4_0|s~0_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:3:Adder16_0|generate_i:3:Adder4_0|s~0_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \AddSub16|generate_i:3:Adder16_0|generate_i:3:Adder4_0|c_out~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c_in <= c_in;
sum <= ww_sum;
c_out <= ww_c_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X60_Y0_N16
\sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:0:Adder16_0|generate_i:1:Adder4_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:0:Adder16_0|generate_i:2:Adder4_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:0:Adder16_0|generate_i:3:Adder4_0|s~combout\,
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\sum[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:1:Adder16_0|generate_i:0:Adder4_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\sum[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:1:Adder16_0|generate_i:1:Adder4_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\sum[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:1:Adder16_0|generate_i:2:Adder4_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[6]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\sum[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:1:Adder16_0|generate_i:3:Adder4_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[7]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\sum[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:2:Adder16_0|generate_i:0:Adder4_0|s~combout\,
	devoe => ww_devoe,
	o => \sum[8]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\sum[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:2:Adder16_0|generate_i:1:Adder4_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[9]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\sum[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:2:Adder16_0|generate_i:2:Adder4_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[10]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\sum[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:2:Adder16_0|generate_i:3:Adder4_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[11]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\sum[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:3:Adder16_0|generate_i:0:Adder4_0|s~combout\,
	devoe => ww_devoe,
	o => \sum[12]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\sum[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:3:Adder16_0|generate_i:1:Adder4_0|s~combout\,
	devoe => ww_devoe,
	o => \sum[13]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\sum[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:3:Adder16_0|generate_i:2:Adder4_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[14]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\sum[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:3:Adder16_0|generate_i:3:Adder4_0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[15]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\c_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub16|generate_i:3:Adder16_0|generate_i:3:Adder4_0|c_out~0_combout\,
	devoe => ww_devoe,
	o => \c_out~output_o\);

-- Location: IOIBUF_X0_Y5_N15
\c_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in,
	o => \c_in~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X1_Y16_N0
\AddSub16|generate_i:0:Adder16_0|generate_i:1:Adder4_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:0:Adder16_0|generate_i:1:Adder4_0|s~0_combout\ = (!\c_in~input_o\ & \a[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_in~input_o\,
	datad => \a[0]~input_o\,
	combout => \AddSub16|generate_i:0:Adder16_0|generate_i:1:Adder4_0|s~0_combout\);

-- Location: IOIBUF_X0_Y4_N22
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X1_Y4_N0
\AddSub16|generate_i:0:Adder16_0|generate_i:2:Adder4_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:0:Adder16_0|generate_i:2:Adder4_0|s~0_combout\ = (\a[1]~input_o\ & !\c_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datad => \c_in~input_o\,
	combout => \AddSub16|generate_i:0:Adder16_0|generate_i:2:Adder4_0|s~0_combout\);

-- Location: IOIBUF_X0_Y9_N15
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X1_Y8_N0
\AddSub16|generate_i:0:Adder16_0|generate_i:3:Adder4_0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:0:Adder16_0|generate_i:3:Adder4_0|s~combout\ = (!\c_in~input_o\ & \a[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_in~input_o\,
	datad => \a[2]~input_o\,
	combout => \AddSub16|generate_i:0:Adder16_0|generate_i:3:Adder4_0|s~combout\);

-- Location: IOIBUF_X0_Y13_N1
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X1_Y13_N0
\AddSub16|generate_i:1:Adder16_0|generate_i:0:Adder4_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:1:Adder16_0|generate_i:0:Adder4_0|s~0_combout\ = (!\c_in~input_o\ & \a[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_in~input_o\,
	datad => \a[3]~input_o\,
	combout => \AddSub16|generate_i:1:Adder16_0|generate_i:0:Adder4_0|s~0_combout\);

-- Location: IOIBUF_X0_Y19_N8
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X1_Y13_N18
\AddSub16|generate_i:1:Adder16_0|generate_i:1:Adder4_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:1:Adder16_0|generate_i:1:Adder4_0|s~0_combout\ = (!\c_in~input_o\ & \a[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_in~input_o\,
	datac => \a[4]~input_o\,
	combout => \AddSub16|generate_i:1:Adder16_0|generate_i:1:Adder4_0|s~0_combout\);

-- Location: IOIBUF_X1_Y0_N1
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X1_Y7_N0
\AddSub16|generate_i:1:Adder16_0|generate_i:2:Adder4_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:1:Adder16_0|generate_i:2:Adder4_0|s~0_combout\ = (!\c_in~input_o\ & \a[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_in~input_o\,
	datad => \a[5]~input_o\,
	combout => \AddSub16|generate_i:1:Adder16_0|generate_i:2:Adder4_0|s~0_combout\);

-- Location: IOIBUF_X0_Y10_N15
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X1_Y14_N0
\AddSub16|generate_i:1:Adder16_0|generate_i:3:Adder4_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:1:Adder16_0|generate_i:3:Adder4_0|s~0_combout\ = (!\c_in~input_o\ & \a[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_in~input_o\,
	datad => \a[6]~input_o\,
	combout => \AddSub16|generate_i:1:Adder16_0|generate_i:3:Adder4_0|s~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X1_Y18_N0
\AddSub16|generate_i:2:Adder16_0|generate_i:0:Adder4_0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:2:Adder16_0|generate_i:0:Adder4_0|s~combout\ = (!\c_in~input_o\ & \a[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in~input_o\,
	datad => \a[7]~input_o\,
	combout => \AddSub16|generate_i:2:Adder16_0|generate_i:0:Adder4_0|s~combout\);

-- Location: IOIBUF_X3_Y0_N1
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X3_Y1_N24
\AddSub16|generate_i:2:Adder16_0|generate_i:1:Adder4_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:2:Adder16_0|generate_i:1:Adder4_0|s~0_combout\ = (!\c_in~input_o\ & \a[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_in~input_o\,
	datac => \a[8]~input_o\,
	combout => \AddSub16|generate_i:2:Adder16_0|generate_i:1:Adder4_0|s~0_combout\);

-- Location: IOIBUF_X0_Y12_N15
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LCCOMB_X1_Y12_N0
\AddSub16|generate_i:2:Adder16_0|generate_i:2:Adder4_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:2:Adder16_0|generate_i:2:Adder4_0|s~0_combout\ = (!\c_in~input_o\ & \a[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_in~input_o\,
	datad => \a[9]~input_o\,
	combout => \AddSub16|generate_i:2:Adder16_0|generate_i:2:Adder4_0|s~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X1_Y11_N8
\AddSub16|generate_i:2:Adder16_0|generate_i:3:Adder4_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:2:Adder16_0|generate_i:3:Adder4_0|s~0_combout\ = (!\c_in~input_o\ & \a[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in~input_o\,
	datad => \a[10]~input_o\,
	combout => \AddSub16|generate_i:2:Adder16_0|generate_i:3:Adder4_0|s~0_combout\);

-- Location: IOIBUF_X1_Y0_N8
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X1_Y1_N24
\AddSub16|generate_i:3:Adder16_0|generate_i:0:Adder4_0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:3:Adder16_0|generate_i:0:Adder4_0|s~combout\ = (!\c_in~input_o\ & \a[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_in~input_o\,
	datac => \a[11]~input_o\,
	combout => \AddSub16|generate_i:3:Adder16_0|generate_i:0:Adder4_0|s~combout\);

-- Location: IOIBUF_X0_Y11_N15
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X1_Y11_N18
\AddSub16|generate_i:3:Adder16_0|generate_i:1:Adder4_0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:3:Adder16_0|generate_i:1:Adder4_0|s~combout\ = (!\c_in~input_o\ & \a[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in~input_o\,
	datad => \a[12]~input_o\,
	combout => \AddSub16|generate_i:3:Adder16_0|generate_i:1:Adder4_0|s~combout\);

-- Location: IOIBUF_X0_Y15_N22
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X1_Y14_N18
\AddSub16|generate_i:3:Adder16_0|generate_i:2:Adder4_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:3:Adder16_0|generate_i:2:Adder4_0|s~0_combout\ = (!\c_in~input_o\ & \a[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_in~input_o\,
	datac => \a[13]~input_o\,
	combout => \AddSub16|generate_i:3:Adder16_0|generate_i:2:Adder4_0|s~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X1_Y4_N18
\AddSub16|generate_i:3:Adder16_0|generate_i:3:Adder4_0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:3:Adder16_0|generate_i:3:Adder4_0|s~0_combout\ = (!\c_in~input_o\ & \a[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_in~input_o\,
	datac => \a[14]~input_o\,
	combout => \AddSub16|generate_i:3:Adder16_0|generate_i:3:Adder4_0|s~0_combout\);

-- Location: IOIBUF_X0_Y17_N15
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X1_Y17_N16
\AddSub16|generate_i:3:Adder16_0|generate_i:3:Adder4_0|c_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddSub16|generate_i:3:Adder16_0|generate_i:3:Adder4_0|c_out~0_combout\ = (\c_in~input_o\) # (\a[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in~input_o\,
	datad => \a[15]~input_o\,
	combout => \AddSub16|generate_i:3:Adder16_0|generate_i:3:Adder4_0|c_out~0_combout\);

-- Location: IOIBUF_X40_Y0_N22
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X115_Y62_N22
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

ww_sum(0) <= \sum[0]~output_o\;

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_sum(4) <= \sum[4]~output_o\;

ww_sum(5) <= \sum[5]~output_o\;

ww_sum(6) <= \sum[6]~output_o\;

ww_sum(7) <= \sum[7]~output_o\;

ww_sum(8) <= \sum[8]~output_o\;

ww_sum(9) <= \sum[9]~output_o\;

ww_sum(10) <= \sum[10]~output_o\;

ww_sum(11) <= \sum[11]~output_o\;

ww_sum(12) <= \sum[12]~output_o\;

ww_sum(13) <= \sum[13]~output_o\;

ww_sum(14) <= \sum[14]~output_o\;

ww_sum(15) <= \sum[15]~output_o\;

ww_c_out <= \c_out~output_o\;
END structure;


