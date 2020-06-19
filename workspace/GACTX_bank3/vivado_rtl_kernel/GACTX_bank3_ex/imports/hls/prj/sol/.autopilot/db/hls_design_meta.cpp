#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("m_axi_m00_axi_AWVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_m00_axi_AWREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_m00_axi_AWADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_m00_axi_AWID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_m00_axi_AWLEN", 8, hls_out, 0, "m_axi", "LEN", 1),
	Port_Property("m_axi_m00_axi_AWSIZE", 3, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_m00_axi_AWBURST", 2, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_m00_axi_AWLOCK", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_m00_axi_AWCACHE", 4, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_m00_axi_AWPROT", 3, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_m00_axi_AWQOS", 4, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_m00_axi_AWREGION", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_m00_axi_AWUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_m00_axi_WVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_m00_axi_WREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_m00_axi_WDATA", 32, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_m00_axi_WSTRB", 4, hls_out, 0, "m_axi", "STRB", 1),
	Port_Property("m_axi_m00_axi_WLAST", 1, hls_out, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_m00_axi_WID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_m00_axi_WUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_m00_axi_ARVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_m00_axi_ARREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_m00_axi_ARADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_m00_axi_ARID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_m00_axi_ARLEN", 8, hls_out, 0, "m_axi", "LEN", 1),
	Port_Property("m_axi_m00_axi_ARSIZE", 3, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_m00_axi_ARBURST", 2, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_m00_axi_ARLOCK", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_m00_axi_ARCACHE", 4, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_m00_axi_ARPROT", 3, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_m00_axi_ARQOS", 4, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_m00_axi_ARREGION", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_m00_axi_ARUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_m00_axi_RVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_m00_axi_RREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_m00_axi_RDATA", 32, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_m00_axi_RLAST", 1, hls_in, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_m00_axi_RID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_m00_axi_RUSER", 1, hls_in, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_m00_axi_RRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_m00_axi_BVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_m00_axi_BREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_m00_axi_BRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_m00_axi_BID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_m00_axi_BUSER", 1, hls_in, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_m01_axi_AWVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_m01_axi_AWREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_m01_axi_AWADDR", 64, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_m01_axi_AWID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_m01_axi_AWLEN", 8, hls_out, 1, "m_axi", "LEN", 1),
	Port_Property("m_axi_m01_axi_AWSIZE", 3, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_m01_axi_AWBURST", 2, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_m01_axi_AWLOCK", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_m01_axi_AWCACHE", 4, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_m01_axi_AWPROT", 3, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_m01_axi_AWQOS", 4, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_m01_axi_AWREGION", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_m01_axi_AWUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_m01_axi_WVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_m01_axi_WREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_m01_axi_WDATA", 32, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_m01_axi_WSTRB", 4, hls_out, 1, "m_axi", "STRB", 1),
	Port_Property("m_axi_m01_axi_WLAST", 1, hls_out, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_m01_axi_WID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_m01_axi_WUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_m01_axi_ARVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_m01_axi_ARREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_m01_axi_ARADDR", 64, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_m01_axi_ARID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_m01_axi_ARLEN", 8, hls_out, 1, "m_axi", "LEN", 1),
	Port_Property("m_axi_m01_axi_ARSIZE", 3, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_m01_axi_ARBURST", 2, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_m01_axi_ARLOCK", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_m01_axi_ARCACHE", 4, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_m01_axi_ARPROT", 3, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_m01_axi_ARQOS", 4, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_m01_axi_ARREGION", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_m01_axi_ARUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_m01_axi_RVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_m01_axi_RREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_m01_axi_RDATA", 32, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_m01_axi_RLAST", 1, hls_in, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_m01_axi_RID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_m01_axi_RUSER", 1, hls_in, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_m01_axi_RRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_m01_axi_BVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_m01_axi_BREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_m01_axi_BRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_m01_axi_BID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_m01_axi_BUSER", 1, hls_in, 1, "m_axi", "USER", 1),
	Port_Property("s_axi_control_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_AWADDR", 8, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_ARADDR", 8, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "GACTX_bank3";
