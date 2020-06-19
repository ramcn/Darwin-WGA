# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 1
set hasByteEnable 0
set MemName GACTX_bank3_m00_axi_input_buffer
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 32
set AddrRange 8192
set AddrWd 13
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.158
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
sub_AA { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
sub_AC { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
sub_AG { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
sub_AT { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
sub_CC { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
sub_CG { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
sub_CT { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
sub_GG { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
sub_GT { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
sub_TT { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
sub_N { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
gap_open { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
gap_extend { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
y_drop { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
align_fields { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
ref_len { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
query_len { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 144
	offset_end 151
}
ref_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 152
	offset_end 163
}
query_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 164
	offset_end 175
}
ref_seq { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 176
	offset_end 187
}
query_seq { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 188
	offset_end 199
}
tile_output { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 200
	offset_end 211
}
tb_output { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 212
	offset_end 223
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 2 \
			corename GACTX_bank3_control_axilite \
			name GACTX_bank3_control_s_axi \
			ports {$port_control} \
			op interface \
			is_flushable 0 \ 
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler GACTX_bank3_control_s_axi
}

# Native M_AXI:
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::m_axi_gen] == "::AESL_LIB_XILADAPTER::m_axi_gen"} {
eval "::AESL_LIB_XILADAPTER::m_axi_gen { \
    id 3 \
    corename {m_axi} \
    op interface \
    max_latency -1 \ 
    delay_budget 8.75 \ 
    is_flushable 0 \ 
    name {GACTX_bank3_m00_axi_m_axi} \
} "
} else {
puts "@W \[IMPL-110\] Cannot find AXI interface model in the library. Ignored generation of AXI interface for 'm00_axi'"
}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler GACTX_bank3_m00_axi_m_axi
}

# Native M_AXI:
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::m_axi_gen] == "::AESL_LIB_XILADAPTER::m_axi_gen"} {
eval "::AESL_LIB_XILADAPTER::m_axi_gen { \
    id 4 \
    corename {m_axi} \
    op interface \
    max_latency -1 \ 
    delay_budget 8.75 \ 
    is_flushable 0 \ 
    name {GACTX_bank3_m01_axi_m_axi} \
} "
} else {
puts "@W \[IMPL-110\] Cannot find AXI interface model in the library. Ignored generation of AXI interface for 'm01_axi'"
}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler GACTX_bank3_m01_axi_m_axi
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


