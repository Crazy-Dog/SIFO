-- megafunction wizard: %LPM_BUSTRI%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_bustri 

-- ============================================================
-- File Name: time_bustri.vhd
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

ENTITY time_bustri IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		enabledt		: IN STD_LOGIC ;
		tridata		: INOUT STD_LOGIC_VECTOR (5 DOWNTO 0)
	);
END time_bustri;


ARCHITECTURE SYN OF time_bustri IS




	COMPONENT lpm_bustri
	GENERIC (
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			enabledt	: IN STD_LOGIC ;
			data	: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
			tridata	: INOUT STD_LOGIC_VECTOR (5 DOWNTO 0)
	);
	END COMPONENT;

BEGIN

	lpm_bustri_component : lpm_bustri
	GENERIC MAP (
		lpm_type => "LPM_BUSTRI",
		lpm_width => 6
	)
	PORT MAP (
		enabledt => enabledt,
		data => data,
		tridata => tridata
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: BiDir NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix II"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "6"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_BUSTRI"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "6"
-- Retrieval info: USED_PORT: data 0 0 6 0 INPUT NODEFVAL data[5..0]
-- Retrieval info: USED_PORT: enabledt 0 0 0 0 INPUT NODEFVAL enabledt
-- Retrieval info: USED_PORT: tridata 0 0 6 0 BIDIR NODEFVAL tridata[5..0]
-- Retrieval info: CONNECT: tridata 0 0 6 0 @tridata 0 0 6 0
-- Retrieval info: CONNECT: @data 0 0 6 0 data 0 0 6 0
-- Retrieval info: CONNECT: @enabledt 0 0 0 0 enabledt 0 0 0 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL time_bustri.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL time_bustri.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL time_bustri.cmp FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL time_bustri.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL time_bustri_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
