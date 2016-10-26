-- megafunction wizard: %LPM_BUSTRI%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_bustri 

-- ============================================================
-- File Name: lpm_bustri8.vhd
-- Megafunction Name(s):
-- 			lpm_bustri
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 9.1 Build 350 03/24/2010 SP 2 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2010 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY lpm_bustri8 IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		enabledt		: IN STD_LOGIC ;
		enabletr		: IN STD_LOGIC ;
		result		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
		tridata		: INOUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
END lpm_bustri8;


ARCHITECTURE SYN OF lpm_bustri8 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (9 DOWNTO 0);



	COMPONENT lpm_bustri
	GENERIC (
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			enabletr	: IN STD_LOGIC ;
			enabledt	: IN STD_LOGIC ;
			data	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
			tridata	: INOUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(9 DOWNTO 0);

	lpm_bustri_component : lpm_bustri
	GENERIC MAP (
		lpm_type => "LPM_BUSTRI",
		lpm_width => 10
	)
	PORT MAP (
		enabletr => enabletr,
		enabledt => enabledt,
		data => data,
		result => sub_wire0,
		tridata => tridata
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: BiDir NUMERIC "1"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix II"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "10"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_BUSTRI"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "10"
-- Retrieval info: USED_PORT: data 0 0 10 0 INPUT NODEFVAL data[9..0]
-- Retrieval info: USED_PORT: enabledt 0 0 0 0 INPUT NODEFVAL enabledt
-- Retrieval info: USED_PORT: enabletr 0 0 0 0 INPUT NODEFVAL enabletr
-- Retrieval info: USED_PORT: result 0 0 10 0 OUTPUT NODEFVAL result[9..0]
-- Retrieval info: USED_PORT: tridata 0 0 10 0 BIDIR NODEFVAL tridata[9..0]
-- Retrieval info: CONNECT: tridata 0 0 10 0 @tridata 0 0 10 0
-- Retrieval info: CONNECT: @data 0 0 10 0 data 0 0 10 0
-- Retrieval info: CONNECT: @enabledt 0 0 0 0 enabledt 0 0 0 0
-- Retrieval info: CONNECT: result 0 0 10 0 @result 0 0 10 0
-- Retrieval info: CONNECT: @enabletr 0 0 0 0 enabletr 0 0 0 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_bustri8.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_bustri8.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_bustri8.cmp FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_bustri8.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_bustri8_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
