set moduleName GACTX_bank3
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {GACTX_bank3}
set C_modelType { void 0 }
set C_modelArgList {
	{ m00_axi int 32 regular {axi_master 2}  }
	{ m01_axi int 32 regular {axi_master 2}  }
	{ sub_AA int 32 unused {axi_slave 0}  }
	{ sub_AC int 32 unused {axi_slave 0}  }
	{ sub_AG int 32 unused {axi_slave 0}  }
	{ sub_AT int 32 unused {axi_slave 0}  }
	{ sub_CC int 32 unused {axi_slave 0}  }
	{ sub_CG int 32 unused {axi_slave 0}  }
	{ sub_CT int 32 unused {axi_slave 0}  }
	{ sub_GG int 32 unused {axi_slave 0}  }
	{ sub_GT int 32 unused {axi_slave 0}  }
	{ sub_TT int 32 unused {axi_slave 0}  }
	{ sub_N int 32 unused {axi_slave 0}  }
	{ gap_open int 32 unused {axi_slave 0}  }
	{ gap_extend int 32 unused {axi_slave 0}  }
	{ y_drop int 32 unused {axi_slave 0}  }
	{ align_fields int 32 unused {axi_slave 0}  }
	{ ref_len int 32 unused {axi_slave 0}  }
	{ query_len int 32 unused {axi_slave 0}  }
	{ ref_offset int 64 unused {axi_slave 0}  }
	{ query_offset int 64 unused {axi_slave 0}  }
	{ ref_seq int 64 regular {axi_slave 0}  }
	{ query_seq int 64 unused {axi_slave 0}  }
	{ tile_output int 64 regular {axi_slave 0}  }
	{ tb_output int 64 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m00_axi", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ref_seq","cData": "int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "ref_seq","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "query_seq","cData": "int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "query_seq","bundle": "control"},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m01_axi", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tile_output","cData": "int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "tile_output","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "tb_output","cData": "int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "tb_output","bundle": "control"},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sub_AA", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_AA","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "sub_AC", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_AC","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "sub_AG", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_AG","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "sub_AT", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_AT","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "sub_CC", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_CC","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "sub_CG", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_CG","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "sub_CT", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_CT","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "sub_GG", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_GG","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "sub_GT", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_GT","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "sub_TT", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_TT","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "sub_N", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_N","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "gap_open", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "gap_open","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "gap_extend", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "gap_extend","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "y_drop", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y_drop","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "align_fields", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "align_fields","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "ref_len", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ref_len","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "query_len", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "query_len","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "ref_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "ref_offset","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":152}, "offset_end" : {"in":163}} , 
 	{ "Name" : "query_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "query_offset","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":164}, "offset_end" : {"in":175}} , 
 	{ "Name" : "ref_seq", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":176}, "offset_end" : {"in":187}} , 
 	{ "Name" : "query_seq", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":188}, "offset_end" : {"in":199}} , 
 	{ "Name" : "tile_output", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":200}, "offset_end" : {"in":211}} , 
 	{ "Name" : "tb_output", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":212}, "offset_end" : {"in":223}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_m00_axi_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_m00_axi_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_m00_axi_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_m00_axi_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_m00_axi_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_m00_axi_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_m00_axi_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_m00_axi_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_m00_axi_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_m00_axi_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_m00_axi_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_m00_axi_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_m00_axi_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_m00_axi_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_m00_axi_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_m00_axi_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_m00_axi_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_m00_axi_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_m00_axi_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_m00_axi_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_m00_axi_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_m00_axi_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_m00_axi_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_m00_axi_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_m00_axi_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_m00_axi_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_m00_axi_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_m00_axi_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_m00_axi_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_m00_axi_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_m00_axi_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_m00_axi_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_m00_axi_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_m00_axi_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_m00_axi_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_m00_axi_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_m00_axi_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_m00_axi_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_m00_axi_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_m00_axi_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_m00_axi_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_m00_axi_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_m00_axi_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_m00_axi_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_m00_axi_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_m01_axi_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_m01_axi_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_m01_axi_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_m01_axi_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_m01_axi_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_m01_axi_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_m01_axi_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_m01_axi_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_m01_axi_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_m01_axi_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_m01_axi_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_m01_axi_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_m01_axi_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_m01_axi_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_m01_axi_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_m01_axi_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_m01_axi_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_m01_axi_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_m01_axi_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_m01_axi_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_m01_axi_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_m01_axi_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_m01_axi_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_m01_axi_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_m01_axi_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_m01_axi_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_m01_axi_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_m01_axi_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_m01_axi_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_m01_axi_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_m01_axi_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_m01_axi_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_m01_axi_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_m01_axi_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_m01_axi_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_m01_axi_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_m01_axi_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_m01_axi_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_m01_axi_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_m01_axi_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_m01_axi_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_m01_axi_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_m01_axi_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_m01_axi_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_m01_axi_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"GACTX_bank3","role":"start","value":"0","valid_bit":"0"},{"name":"GACTX_bank3","role":"continue","value":"0","valid_bit":"4"},{"name":"GACTX_bank3","role":"auto_start","value":"0","valid_bit":"7"},{"name":"sub_AA","role":"data","value":"16"},{"name":"sub_AC","role":"data","value":"24"},{"name":"sub_AG","role":"data","value":"32"},{"name":"sub_AT","role":"data","value":"40"},{"name":"sub_CC","role":"data","value":"48"},{"name":"sub_CG","role":"data","value":"56"},{"name":"sub_CT","role":"data","value":"64"},{"name":"sub_GG","role":"data","value":"72"},{"name":"sub_GT","role":"data","value":"80"},{"name":"sub_TT","role":"data","value":"88"},{"name":"sub_N","role":"data","value":"96"},{"name":"gap_open","role":"data","value":"104"},{"name":"gap_extend","role":"data","value":"112"},{"name":"y_drop","role":"data","value":"120"},{"name":"align_fields","role":"data","value":"128"},{"name":"ref_len","role":"data","value":"136"},{"name":"query_len","role":"data","value":"144"},{"name":"ref_offset","role":"data","value":"152"},{"name":"query_offset","role":"data","value":"164"},{"name":"ref_seq","role":"data","value":"176"},{"name":"query_seq","role":"data","value":"188"},{"name":"tile_output","role":"data","value":"200"},{"name":"tb_output","role":"data","value":"212"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"GACTX_bank3","role":"start","value":"0","valid_bit":"0"},{"name":"GACTX_bank3","role":"done","value":"0","valid_bit":"1"},{"name":"GACTX_bank3","role":"idle","value":"0","valid_bit":"2"},{"name":"GACTX_bank3","role":"ready","value":"0","valid_bit":"3"},{"name":"GACTX_bank3","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_m00_axi_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWVALID" }} , 
 	{ "name": "m_axi_m00_axi_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWREADY" }} , 
 	{ "name": "m_axi_m00_axi_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWADDR" }} , 
 	{ "name": "m_axi_m00_axi_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWID" }} , 
 	{ "name": "m_axi_m00_axi_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWLEN" }} , 
 	{ "name": "m_axi_m00_axi_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_m00_axi_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWBURST" }} , 
 	{ "name": "m_axi_m00_axi_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_m00_axi_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_m00_axi_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWPROT" }} , 
 	{ "name": "m_axi_m00_axi_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWQOS" }} , 
 	{ "name": "m_axi_m00_axi_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWREGION" }} , 
 	{ "name": "m_axi_m00_axi_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "AWUSER" }} , 
 	{ "name": "m_axi_m00_axi_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "WVALID" }} , 
 	{ "name": "m_axi_m00_axi_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "WREADY" }} , 
 	{ "name": "m_axi_m00_axi_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m00_axi", "role": "WDATA" }} , 
 	{ "name": "m_axi_m00_axi_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m00_axi", "role": "WSTRB" }} , 
 	{ "name": "m_axi_m00_axi_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "WLAST" }} , 
 	{ "name": "m_axi_m00_axi_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "WID" }} , 
 	{ "name": "m_axi_m00_axi_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "WUSER" }} , 
 	{ "name": "m_axi_m00_axi_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARVALID" }} , 
 	{ "name": "m_axi_m00_axi_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARREADY" }} , 
 	{ "name": "m_axi_m00_axi_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARADDR" }} , 
 	{ "name": "m_axi_m00_axi_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARID" }} , 
 	{ "name": "m_axi_m00_axi_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARLEN" }} , 
 	{ "name": "m_axi_m00_axi_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_m00_axi_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARBURST" }} , 
 	{ "name": "m_axi_m00_axi_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_m00_axi_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_m00_axi_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARPROT" }} , 
 	{ "name": "m_axi_m00_axi_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARQOS" }} , 
 	{ "name": "m_axi_m00_axi_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARREGION" }} , 
 	{ "name": "m_axi_m00_axi_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "ARUSER" }} , 
 	{ "name": "m_axi_m00_axi_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "RVALID" }} , 
 	{ "name": "m_axi_m00_axi_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "RREADY" }} , 
 	{ "name": "m_axi_m00_axi_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m00_axi", "role": "RDATA" }} , 
 	{ "name": "m_axi_m00_axi_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "RLAST" }} , 
 	{ "name": "m_axi_m00_axi_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "RID" }} , 
 	{ "name": "m_axi_m00_axi_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "RUSER" }} , 
 	{ "name": "m_axi_m00_axi_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m00_axi", "role": "RRESP" }} , 
 	{ "name": "m_axi_m00_axi_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "BVALID" }} , 
 	{ "name": "m_axi_m00_axi_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "BREADY" }} , 
 	{ "name": "m_axi_m00_axi_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m00_axi", "role": "BRESP" }} , 
 	{ "name": "m_axi_m00_axi_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "BID" }} , 
 	{ "name": "m_axi_m00_axi_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m00_axi", "role": "BUSER" }} , 
 	{ "name": "m_axi_m01_axi_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWVALID" }} , 
 	{ "name": "m_axi_m01_axi_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWREADY" }} , 
 	{ "name": "m_axi_m01_axi_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWADDR" }} , 
 	{ "name": "m_axi_m01_axi_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWID" }} , 
 	{ "name": "m_axi_m01_axi_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWLEN" }} , 
 	{ "name": "m_axi_m01_axi_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_m01_axi_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWBURST" }} , 
 	{ "name": "m_axi_m01_axi_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_m01_axi_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_m01_axi_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWPROT" }} , 
 	{ "name": "m_axi_m01_axi_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWQOS" }} , 
 	{ "name": "m_axi_m01_axi_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWREGION" }} , 
 	{ "name": "m_axi_m01_axi_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "AWUSER" }} , 
 	{ "name": "m_axi_m01_axi_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "WVALID" }} , 
 	{ "name": "m_axi_m01_axi_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "WREADY" }} , 
 	{ "name": "m_axi_m01_axi_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m01_axi", "role": "WDATA" }} , 
 	{ "name": "m_axi_m01_axi_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m01_axi", "role": "WSTRB" }} , 
 	{ "name": "m_axi_m01_axi_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "WLAST" }} , 
 	{ "name": "m_axi_m01_axi_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "WID" }} , 
 	{ "name": "m_axi_m01_axi_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "WUSER" }} , 
 	{ "name": "m_axi_m01_axi_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARVALID" }} , 
 	{ "name": "m_axi_m01_axi_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARREADY" }} , 
 	{ "name": "m_axi_m01_axi_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARADDR" }} , 
 	{ "name": "m_axi_m01_axi_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARID" }} , 
 	{ "name": "m_axi_m01_axi_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARLEN" }} , 
 	{ "name": "m_axi_m01_axi_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_m01_axi_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARBURST" }} , 
 	{ "name": "m_axi_m01_axi_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_m01_axi_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_m01_axi_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARPROT" }} , 
 	{ "name": "m_axi_m01_axi_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARQOS" }} , 
 	{ "name": "m_axi_m01_axi_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARREGION" }} , 
 	{ "name": "m_axi_m01_axi_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "ARUSER" }} , 
 	{ "name": "m_axi_m01_axi_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "RVALID" }} , 
 	{ "name": "m_axi_m01_axi_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "RREADY" }} , 
 	{ "name": "m_axi_m01_axi_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m01_axi", "role": "RDATA" }} , 
 	{ "name": "m_axi_m01_axi_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "RLAST" }} , 
 	{ "name": "m_axi_m01_axi_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "RID" }} , 
 	{ "name": "m_axi_m01_axi_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "RUSER" }} , 
 	{ "name": "m_axi_m01_axi_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m01_axi", "role": "RRESP" }} , 
 	{ "name": "m_axi_m01_axi_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "BVALID" }} , 
 	{ "name": "m_axi_m01_axi_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "BREADY" }} , 
 	{ "name": "m_axi_m01_axi_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m01_axi", "role": "BRESP" }} , 
 	{ "name": "m_axi_m01_axi_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "BID" }} , 
 	{ "name": "m_axi_m01_axi_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m01_axi", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "GACTX_bank3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24609", "EstimateLatencyMax" : "24609",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "m00_axi", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "m00_axi_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "m00_axi_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "m00_axi_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "m00_axi_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "m00_axi_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "m01_axi", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "m01_axi_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "m01_axi_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "m01_axi_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "m01_axi_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "m01_axi_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "sub_AA", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_AC", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_AG", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_AT", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_CC", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_CG", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_CT", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_GG", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_GT", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_TT", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_N", "Type" : "None", "Direction" : "I"},
			{"Name" : "gap_open", "Type" : "None", "Direction" : "I"},
			{"Name" : "gap_extend", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_drop", "Type" : "None", "Direction" : "I"},
			{"Name" : "align_fields", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_seq", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_seq", "Type" : "None", "Direction" : "I"},
			{"Name" : "tile_output", "Type" : "None", "Direction" : "I"},
			{"Name" : "tb_output", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GACTX_bank3_control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GACTX_bank3_m00_axi_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GACTX_bank3_m01_axi_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m00_axi_input_buffer_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m00_axi_output_buffer_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m01_axi_input_buffer_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m01_axi_output_buffer_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	GACTX_bank3 {
		m00_axi {Type IO LastRead 14 FirstWrite 14}
		m01_axi {Type IO LastRead 25 FirstWrite 26}
		sub_AA {Type I LastRead -1 FirstWrite -1}
		sub_AC {Type I LastRead -1 FirstWrite -1}
		sub_AG {Type I LastRead -1 FirstWrite -1}
		sub_AT {Type I LastRead -1 FirstWrite -1}
		sub_CC {Type I LastRead -1 FirstWrite -1}
		sub_CG {Type I LastRead -1 FirstWrite -1}
		sub_CT {Type I LastRead -1 FirstWrite -1}
		sub_GG {Type I LastRead -1 FirstWrite -1}
		sub_GT {Type I LastRead -1 FirstWrite -1}
		sub_TT {Type I LastRead -1 FirstWrite -1}
		sub_N {Type I LastRead -1 FirstWrite -1}
		gap_open {Type I LastRead -1 FirstWrite -1}
		gap_extend {Type I LastRead -1 FirstWrite -1}
		y_drop {Type I LastRead -1 FirstWrite -1}
		align_fields {Type I LastRead -1 FirstWrite -1}
		ref_len {Type I LastRead -1 FirstWrite -1}
		query_len {Type I LastRead -1 FirstWrite -1}
		ref_offset {Type I LastRead -1 FirstWrite -1}
		query_offset {Type I LastRead -1 FirstWrite -1}
		ref_seq {Type I LastRead 0 FirstWrite -1}
		query_seq {Type I LastRead -1 FirstWrite -1}
		tile_output {Type I LastRead 0 FirstWrite -1}
		tb_output {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24609", "Max" : "24609"}
	, {"Name" : "Interval", "Min" : "24610", "Max" : "24610"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
]}

set Spec2ImplPortList { 
	m00_axi { m_axi {  { m_axi_m00_axi_AWVALID VALID 1 1 }  { m_axi_m00_axi_AWREADY READY 0 1 }  { m_axi_m00_axi_AWADDR ADDR 1 64 }  { m_axi_m00_axi_AWID ID 1 1 }  { m_axi_m00_axi_AWLEN LEN 1 8 }  { m_axi_m00_axi_AWSIZE SIZE 1 3 }  { m_axi_m00_axi_AWBURST BURST 1 2 }  { m_axi_m00_axi_AWLOCK LOCK 1 2 }  { m_axi_m00_axi_AWCACHE CACHE 1 4 }  { m_axi_m00_axi_AWPROT PROT 1 3 }  { m_axi_m00_axi_AWQOS QOS 1 4 }  { m_axi_m00_axi_AWREGION REGION 1 4 }  { m_axi_m00_axi_AWUSER USER 1 1 }  { m_axi_m00_axi_WVALID VALID 1 1 }  { m_axi_m00_axi_WREADY READY 0 1 }  { m_axi_m00_axi_WDATA DATA 1 32 }  { m_axi_m00_axi_WSTRB STRB 1 4 }  { m_axi_m00_axi_WLAST LAST 1 1 }  { m_axi_m00_axi_WID ID 1 1 }  { m_axi_m00_axi_WUSER USER 1 1 }  { m_axi_m00_axi_ARVALID VALID 1 1 }  { m_axi_m00_axi_ARREADY READY 0 1 }  { m_axi_m00_axi_ARADDR ADDR 1 64 }  { m_axi_m00_axi_ARID ID 1 1 }  { m_axi_m00_axi_ARLEN LEN 1 8 }  { m_axi_m00_axi_ARSIZE SIZE 1 3 }  { m_axi_m00_axi_ARBURST BURST 1 2 }  { m_axi_m00_axi_ARLOCK LOCK 1 2 }  { m_axi_m00_axi_ARCACHE CACHE 1 4 }  { m_axi_m00_axi_ARPROT PROT 1 3 }  { m_axi_m00_axi_ARQOS QOS 1 4 }  { m_axi_m00_axi_ARREGION REGION 1 4 }  { m_axi_m00_axi_ARUSER USER 1 1 }  { m_axi_m00_axi_RVALID VALID 0 1 }  { m_axi_m00_axi_RREADY READY 1 1 }  { m_axi_m00_axi_RDATA DATA 0 32 }  { m_axi_m00_axi_RLAST LAST 0 1 }  { m_axi_m00_axi_RID ID 0 1 }  { m_axi_m00_axi_RUSER USER 0 1 }  { m_axi_m00_axi_RRESP RESP 0 2 }  { m_axi_m00_axi_BVALID VALID 0 1 }  { m_axi_m00_axi_BREADY READY 1 1 }  { m_axi_m00_axi_BRESP RESP 0 2 }  { m_axi_m00_axi_BID ID 0 1 }  { m_axi_m00_axi_BUSER USER 0 1 } } }
	m01_axi { m_axi {  { m_axi_m01_axi_AWVALID VALID 1 1 }  { m_axi_m01_axi_AWREADY READY 0 1 }  { m_axi_m01_axi_AWADDR ADDR 1 64 }  { m_axi_m01_axi_AWID ID 1 1 }  { m_axi_m01_axi_AWLEN LEN 1 8 }  { m_axi_m01_axi_AWSIZE SIZE 1 3 }  { m_axi_m01_axi_AWBURST BURST 1 2 }  { m_axi_m01_axi_AWLOCK LOCK 1 2 }  { m_axi_m01_axi_AWCACHE CACHE 1 4 }  { m_axi_m01_axi_AWPROT PROT 1 3 }  { m_axi_m01_axi_AWQOS QOS 1 4 }  { m_axi_m01_axi_AWREGION REGION 1 4 }  { m_axi_m01_axi_AWUSER USER 1 1 }  { m_axi_m01_axi_WVALID VALID 1 1 }  { m_axi_m01_axi_WREADY READY 0 1 }  { m_axi_m01_axi_WDATA DATA 1 32 }  { m_axi_m01_axi_WSTRB STRB 1 4 }  { m_axi_m01_axi_WLAST LAST 1 1 }  { m_axi_m01_axi_WID ID 1 1 }  { m_axi_m01_axi_WUSER USER 1 1 }  { m_axi_m01_axi_ARVALID VALID 1 1 }  { m_axi_m01_axi_ARREADY READY 0 1 }  { m_axi_m01_axi_ARADDR ADDR 1 64 }  { m_axi_m01_axi_ARID ID 1 1 }  { m_axi_m01_axi_ARLEN LEN 1 8 }  { m_axi_m01_axi_ARSIZE SIZE 1 3 }  { m_axi_m01_axi_ARBURST BURST 1 2 }  { m_axi_m01_axi_ARLOCK LOCK 1 2 }  { m_axi_m01_axi_ARCACHE CACHE 1 4 }  { m_axi_m01_axi_ARPROT PROT 1 3 }  { m_axi_m01_axi_ARQOS QOS 1 4 }  { m_axi_m01_axi_ARREGION REGION 1 4 }  { m_axi_m01_axi_ARUSER USER 1 1 }  { m_axi_m01_axi_RVALID VALID 0 1 }  { m_axi_m01_axi_RREADY READY 1 1 }  { m_axi_m01_axi_RDATA DATA 0 32 }  { m_axi_m01_axi_RLAST LAST 0 1 }  { m_axi_m01_axi_RID ID 0 1 }  { m_axi_m01_axi_RUSER USER 0 1 }  { m_axi_m01_axi_RRESP RESP 0 2 }  { m_axi_m01_axi_BVALID VALID 0 1 }  { m_axi_m01_axi_BREADY READY 1 1 }  { m_axi_m01_axi_BRESP RESP 0 2 }  { m_axi_m01_axi_BID ID 0 1 }  { m_axi_m01_axi_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ m00_axi { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ m01_axi { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ m00_axi 1 }
	{ m01_axi 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ m00_axi 1 }
	{ m01_axi 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
