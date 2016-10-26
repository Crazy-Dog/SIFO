# Copyright (C) 1991-2010 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II: Generate Tcl File for Project
# File: lab4.tcl
# Generated on: Tue Sep 27 19:20:52 2016

# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "lab4"]} {
		puts "Project lab4 is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists lab4]} {
		project_open -revision lab4 lab4
	} else {
		project_new -revision lab4 lab4
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Stratix II"
	set_global_assignment -name DEVICE AUTO
	set_global_assignment -name TOP_LEVEL_ENTITY CommandRetrieval
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION "9.1 SP2"
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "18:06:36  SEPTEMBER 25, 2016"
	set_global_assignment -name LAST_QUARTUS_VERSION "9.1 SP2"
	set_global_assignment -name USE_GENERATED_PHYSICAL_CONSTRAINTS OFF -section_id eda_blast_fpga
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE FASTEST
	set_global_assignment -name BDF_FILE lab4.bdf
	set_global_assignment -name BDF_FILE ControlUnit.bdf
	set_global_assignment -name BDF_FILE CommandRetrieval.bdf
	set_global_assignment -name QIP_FILE lpm_dff0.qip
	set_global_assignment -name QIP_FILE lpm_add_sub0.qip
	set_global_assignment -name QIP_FILE lpm_dff1.qip
	set_global_assignment -name LL_ROOT_REGION ON -entity lab4 -section_id "Root Region"
	set_global_assignment -name LL_MEMBER_STATE LOCKED -entity lab4 -section_id "Root Region"
	set_global_assignment -name VECTOR_WAVEFORM_FILE CommandRetrieval.vwf
	set_global_assignment -name SIMULATION_MODE FUNCTIONAL
	set_global_assignment -name QIP_FILE counter.qip
	set_global_assignment -name BDF_FILE InstructionDecoder.bdf
	set_global_assignment -name VECTOR_WAVEFORM_FILE InstructionDecoder.vwf
	set_global_assignment -name VECTOR_WAVEFORM_FILE ControlUnit.vwf
	set_global_assignment -name BDF_FILE Memory.bdf
	set_global_assignment -name HEX_FILE ROM.hex
	set_global_assignment -name HEX_FILE RAM.hex
	set_global_assignment -name VECTOR_WAVEFORM_FILE M.vwf
	set_global_assignment -name VECTOR_WAVEFORM_FILE Memory.vwf
	set_global_assignment -name INCREMENTAL_VECTOR_INPUT_SOURCE Memory.vwf
	set_global_assignment -name BDF_FILE OperandRetrieval.bdf
	set_global_assignment -name QIP_FILE ../Lab3/comparator0.qip
	set_global_assignment -name QIP_FILE ../Lab3/lpm_bustri0.qip
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name LL_ROOT_REGION ON -section_id "Root Region"
	set_global_assignment -name LL_MEMBER_STATE LOCKED -section_id "Root Region"
	set_global_assignment -name QIP_FILE constant0.qip
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
