///////////////////////////////////////////////////////////////////////////
//NOTE: This file has been automatically generated by Vivado.
///////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
package slv_m01_axi_vip_pkg;
import axi_vip_pkg::*;
///////////////////////////////////////////////////////////////////////////
// These parameters are named after the component for use in your verification 
// environment.
///////////////////////////////////////////////////////////////////////////
      parameter slv_m01_axi_vip_VIP_PROTOCOL           = 0;
      parameter slv_m01_axi_vip_VIP_READ_WRITE_MODE    = "READ_WRITE";
      parameter slv_m01_axi_vip_VIP_INTERFACE_MODE     = 2;
      parameter slv_m01_axi_vip_VIP_ADDR_WIDTH         = 64;
      parameter slv_m01_axi_vip_VIP_DATA_WIDTH         = 1024;
      parameter slv_m01_axi_vip_VIP_ID_WIDTH           = 0;
      parameter slv_m01_axi_vip_VIP_AWUSER_WIDTH       = 0;
      parameter slv_m01_axi_vip_VIP_ARUSER_WIDTH       = 0;
      parameter slv_m01_axi_vip_VIP_RUSER_WIDTH        = 0;
      parameter slv_m01_axi_vip_VIP_WUSER_WIDTH        = 0;
      parameter slv_m01_axi_vip_VIP_BUSER_WIDTH        = 0;
      parameter slv_m01_axi_vip_VIP_SUPPORTS_NARROW    = 0;
      parameter slv_m01_axi_vip_VIP_HAS_BURST          = 0;
      parameter slv_m01_axi_vip_VIP_HAS_LOCK           = 0;
      parameter slv_m01_axi_vip_VIP_HAS_CACHE          = 0;
      parameter slv_m01_axi_vip_VIP_HAS_REGION         = 0;
      parameter slv_m01_axi_vip_VIP_HAS_QOS            = 0;
      parameter slv_m01_axi_vip_VIP_HAS_PROT           = 0;
      parameter slv_m01_axi_vip_VIP_HAS_WSTRB          = 1;
      parameter slv_m01_axi_vip_VIP_HAS_BRESP          = 0;
      parameter slv_m01_axi_vip_VIP_HAS_RRESP          = 0;
      parameter slv_m01_axi_vip_VIP_HAS_ACLKEN         = 0;
      parameter slv_m01_axi_vip_VIP_HAS_ARESETN        = 0;
///////////////////////////////////////////////////////////////////////////


typedef axi_slv_agent #(slv_m01_axi_vip_VIP_PROTOCOL, 
                        slv_m01_axi_vip_VIP_ADDR_WIDTH,
                        slv_m01_axi_vip_VIP_DATA_WIDTH,
                        slv_m01_axi_vip_VIP_DATA_WIDTH,
                        slv_m01_axi_vip_VIP_ID_WIDTH,
                        slv_m01_axi_vip_VIP_ID_WIDTH,
                        slv_m01_axi_vip_VIP_AWUSER_WIDTH, 
                        slv_m01_axi_vip_VIP_WUSER_WIDTH, 
                        slv_m01_axi_vip_VIP_BUSER_WIDTH, 
                        slv_m01_axi_vip_VIP_ARUSER_WIDTH,
                        slv_m01_axi_vip_VIP_RUSER_WIDTH, 
                        slv_m01_axi_vip_VIP_SUPPORTS_NARROW, 
                        slv_m01_axi_vip_VIP_HAS_BURST,
                        slv_m01_axi_vip_VIP_HAS_LOCK,
                        slv_m01_axi_vip_VIP_HAS_CACHE,
                        slv_m01_axi_vip_VIP_HAS_REGION,
                        slv_m01_axi_vip_VIP_HAS_PROT,
                        slv_m01_axi_vip_VIP_HAS_QOS,
                        slv_m01_axi_vip_VIP_HAS_WSTRB,
                        slv_m01_axi_vip_VIP_HAS_BRESP,
                        slv_m01_axi_vip_VIP_HAS_RRESP,
                        slv_m01_axi_vip_VIP_HAS_ARESETN) slv_m01_axi_vip_slv_t;

typedef axi_slv_mem_agent #(slv_m01_axi_vip_VIP_PROTOCOL, 
                        slv_m01_axi_vip_VIP_ADDR_WIDTH,
                        slv_m01_axi_vip_VIP_DATA_WIDTH,
                        slv_m01_axi_vip_VIP_DATA_WIDTH,
                        slv_m01_axi_vip_VIP_ID_WIDTH,
                        slv_m01_axi_vip_VIP_ID_WIDTH,
                        slv_m01_axi_vip_VIP_AWUSER_WIDTH, 
                        slv_m01_axi_vip_VIP_WUSER_WIDTH, 
                        slv_m01_axi_vip_VIP_BUSER_WIDTH, 
                        slv_m01_axi_vip_VIP_ARUSER_WIDTH,
                        slv_m01_axi_vip_VIP_RUSER_WIDTH, 
                        slv_m01_axi_vip_VIP_SUPPORTS_NARROW, 
                        slv_m01_axi_vip_VIP_HAS_BURST,
                        slv_m01_axi_vip_VIP_HAS_LOCK,
                        slv_m01_axi_vip_VIP_HAS_CACHE,
                        slv_m01_axi_vip_VIP_HAS_REGION,
                        slv_m01_axi_vip_VIP_HAS_PROT,
                        slv_m01_axi_vip_VIP_HAS_QOS,
                        slv_m01_axi_vip_VIP_HAS_WSTRB,
                        slv_m01_axi_vip_VIP_HAS_BRESP,
                        slv_m01_axi_vip_VIP_HAS_RRESP,
                        slv_m01_axi_vip_VIP_HAS_ARESETN) slv_m01_axi_vip_slv_mem_t;
                        
      
///////////////////////////////////////////////////////////////////////////
// How to start the verification component
///////////////////////////////////////////////////////////////////////////
//      slv_m01_axi_vip_slv_t  slv_m01_axi_vip_slv;
//      initial begin : START_slv_m01_axi_vip_SLAVE
//        slv_m01_axi_vip_slv = new("slv_m01_axi_vip_slv", `slv_m01_axi_vip_PATH_TO_INTERFACE);
//        slv_m01_axi_vip_slv.start_slave();
//      end

endpackage : slv_m01_axi_vip_pkg
