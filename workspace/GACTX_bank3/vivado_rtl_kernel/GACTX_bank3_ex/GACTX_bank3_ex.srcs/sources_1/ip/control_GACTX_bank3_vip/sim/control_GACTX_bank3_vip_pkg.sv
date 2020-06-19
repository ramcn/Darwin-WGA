///////////////////////////////////////////////////////////////////////////
//NOTE: This file has been automatically generated by Vivado.
///////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
package control_GACTX_bank3_vip_pkg;
import axi_vip_pkg::*;
///////////////////////////////////////////////////////////////////////////
// These parameters are named after the component for use in your verification 
// environment.
///////////////////////////////////////////////////////////////////////////
      parameter control_GACTX_bank3_vip_VIP_PROTOCOL           = 2;
      parameter control_GACTX_bank3_vip_VIP_READ_WRITE_MODE    = "READ_WRITE";
      parameter control_GACTX_bank3_vip_VIP_INTERFACE_MODE     = 0;
      parameter control_GACTX_bank3_vip_VIP_ADDR_WIDTH         = 12;
      parameter control_GACTX_bank3_vip_VIP_DATA_WIDTH         = 32;
      parameter control_GACTX_bank3_vip_VIP_ID_WIDTH           = 0;
      parameter control_GACTX_bank3_vip_VIP_AWUSER_WIDTH       = 0;
      parameter control_GACTX_bank3_vip_VIP_ARUSER_WIDTH       = 0;
      parameter control_GACTX_bank3_vip_VIP_RUSER_WIDTH        = 0;
      parameter control_GACTX_bank3_vip_VIP_WUSER_WIDTH        = 0;
      parameter control_GACTX_bank3_vip_VIP_BUSER_WIDTH        = 0;
      parameter control_GACTX_bank3_vip_VIP_SUPPORTS_NARROW    = 0;
      parameter control_GACTX_bank3_vip_VIP_HAS_BURST          = 0;
      parameter control_GACTX_bank3_vip_VIP_HAS_LOCK           = 0;
      parameter control_GACTX_bank3_vip_VIP_HAS_CACHE          = 0;
      parameter control_GACTX_bank3_vip_VIP_HAS_REGION         = 0;
      parameter control_GACTX_bank3_vip_VIP_HAS_QOS            = 0;
      parameter control_GACTX_bank3_vip_VIP_HAS_PROT           = 0;
      parameter control_GACTX_bank3_vip_VIP_HAS_WSTRB          = 1;
      parameter control_GACTX_bank3_vip_VIP_HAS_BRESP          = 1;
      parameter control_GACTX_bank3_vip_VIP_HAS_RRESP          = 1;
      parameter control_GACTX_bank3_vip_VIP_HAS_ACLKEN         = 0;
      parameter control_GACTX_bank3_vip_VIP_HAS_ARESETN        = 0;
///////////////////////////////////////////////////////////////////////////
typedef axi_mst_agent #(control_GACTX_bank3_vip_VIP_PROTOCOL, 
                        control_GACTX_bank3_vip_VIP_ADDR_WIDTH,
                        control_GACTX_bank3_vip_VIP_DATA_WIDTH,
                        control_GACTX_bank3_vip_VIP_DATA_WIDTH,
                        control_GACTX_bank3_vip_VIP_ID_WIDTH,
                        control_GACTX_bank3_vip_VIP_ID_WIDTH,
                        control_GACTX_bank3_vip_VIP_AWUSER_WIDTH, 
                        control_GACTX_bank3_vip_VIP_WUSER_WIDTH, 
                        control_GACTX_bank3_vip_VIP_BUSER_WIDTH, 
                        control_GACTX_bank3_vip_VIP_ARUSER_WIDTH,
                        control_GACTX_bank3_vip_VIP_RUSER_WIDTH, 
                        control_GACTX_bank3_vip_VIP_SUPPORTS_NARROW, 
                        control_GACTX_bank3_vip_VIP_HAS_BURST,
                        control_GACTX_bank3_vip_VIP_HAS_LOCK,
                        control_GACTX_bank3_vip_VIP_HAS_CACHE,
                        control_GACTX_bank3_vip_VIP_HAS_REGION,
                        control_GACTX_bank3_vip_VIP_HAS_PROT,
                        control_GACTX_bank3_vip_VIP_HAS_QOS,
                        control_GACTX_bank3_vip_VIP_HAS_WSTRB,
                        control_GACTX_bank3_vip_VIP_HAS_BRESP,
                        control_GACTX_bank3_vip_VIP_HAS_RRESP,
                        control_GACTX_bank3_vip_VIP_HAS_ARESETN) control_GACTX_bank3_vip_mst_t;
      
///////////////////////////////////////////////////////////////////////////
// How to start the verification component
///////////////////////////////////////////////////////////////////////////
//      control_GACTX_bank3_vip_mst_t  control_GACTX_bank3_vip_mst;
//      initial begin : START_control_GACTX_bank3_vip_MASTER
//        control_GACTX_bank3_vip_mst = new("control_GACTX_bank3_vip_mst", `control_GACTX_bank3_vip_PATH_TO_INTERFACE);
//        control_GACTX_bank3_vip_mst.start_master();
//      end



endpackage : control_GACTX_bank3_vip_pkg
