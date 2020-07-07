/*
MIT License

Copyright (c) 2019 Sneha D. Goenka, Yatish Turakhia, Gill Bejerano and William J. Dally

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

`default_nettype none
`timescale 1 ns / 1 ps
module GACTX_bank3_v1_0 #(
  parameter integer C_S00_AXI_ADDR_WIDTH = 4 ,
  parameter integer C_S00_AXI_DATA_WIDTH = 32 ,
  parameter integer C_M00_AXI_ADDR_WIDTH       = 32 ,
  parameter integer C_M00_AXI_DATA_WIDTH       = 32
)
(
  // System Signals
  input  wire                                    s00_axi_aclk               ,
  input  wire                                    s00_axi_aresetn             ,
  input  wire                                    m00_axi_aclk               ,
  input  wire                                    m00_axi_aresetn             ,
  //  Note: A minimum subset of AXI4 memory mapped signals are declared.  AXI
  // signals omitted from these interfaces are automatically inferred with the
  // optimal values for Xilinx SDx systems.  This allows Xilinx AXI4 Interconnects
  // within the system to be optimized by removing logic for AXI4 protocol
  // features that are not necessary. When adapting AXI4 masters within the RTL
  // kernel that have signals not declared below, it is suitable to add the
  // signals to the declarations below to connect them to the AXI4 Master.
  // 
  // List of ommited signals - effect
  // -------------------------------
  // ID - Transaction ID are used for multithreading and out of order
  // transactions.  This increases complexity. This saves logic and increases Fmax
  // in the system when ommited.
  // SIZE - Default value is log2(data width in bytes). Needed for subsize bursts.
  // This saves logic and increases Fmax in the system when ommited.
  // BURST - Default value (0b01) is incremental.  Wrap and fixed bursts are not
  // recommended. This saves logic and increases Fmax in the system when ommited.
  // LOCK - Not supported in AXI4
  // CACHE - Default value (0b0011) allows modifiable transactions. No benefit to
  // changing this.
  // PROT - Has no effect in SDx systems.
  // QOS - Has no effect in SDx systems.
  // REGION - Has no effect in SDx systems.
  // USER - Has no effect in SDx systems.
  // RESP - Not useful in most SDx systems.
  // 
  // AXI4 master interface m00_axi
  output wire                                    m00_axi_awvalid      ,
  input  wire                                    m00_axi_awready      ,
  output wire [C_M00_AXI_ADDR_WIDTH-1:0]         m00_axi_awaddr       ,
  output wire [8-1:0]                            m00_axi_awlen        ,
  output wire                                    m00_axi_wvalid       ,
  input  wire                                    m00_axi_wready       ,
  output wire [C_M00_AXI_DATA_WIDTH-1:0]         m00_axi_wdata        ,
  output wire [C_M00_AXI_DATA_WIDTH/8-1:0]       m00_axi_wstrb        ,
  output wire                                    m00_axi_wlast        ,
  input  wire                                    m00_axi_bvalid       ,
  output wire                                    m00_axi_bready       ,
  output wire                                    m00_axi_arvalid      ,
  input  wire                                    m00_axi_arready      ,
  output wire [C_M00_AXI_ADDR_WIDTH-1:0]         m00_axi_araddr       ,
  output wire [8-1:0]                            m00_axi_arlen        ,
  input  wire                                    m00_axi_rvalid       ,
  output wire                                    m00_axi_rready       ,
  input  wire [C_M00_AXI_DATA_WIDTH-1:0]         m00_axi_rdata        ,
  input  wire                                    m00_axi_rlast        ,

  // AXI4-Lite slave interface
  input  wire                                    s00_axi_awvalid,
  output wire                                    s00_axi_awready,
  input  wire [C_S00_AXI_ADDR_WIDTH-1:0]   s00_axi_awaddr ,
  input  wire                                    s00_axi_wvalid ,
  output wire                                    s00_axi_wready ,
  input  wire [C_S00_AXI_DATA_WIDTH-1:0]   s00_axi_wdata  ,
  input  wire [C_S00_AXI_DATA_WIDTH/8-1:0] s00_axi_wstrb  ,
  input  wire                                    s00_axi_arvalid,
  output wire                                    s00_axi_arready,
  input  wire [C_S00_AXI_ADDR_WIDTH-1:0]   s00_axi_araddr ,
  output wire                                    s00_axi_rvalid ,
  input  wire                                    s00_axi_rready ,
  output wire [C_S00_AXI_DATA_WIDTH-1:0]   s00_axi_rdata  ,
  output wire [2-1:0]                            s00_axi_rresp  ,
  output wire                                    s00_axi_bvalid ,
  input  wire                                    s00_axi_bready ,
  output wire [2-1:0]                            s00_axi_bresp  ,
  output wire                                    irq            
);

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////
(* DONT_TOUCH = "yes" *)
reg                                 areset           = 1'b0;
wire                                ap_start               ;
wire                                ap_idle                ;
wire                                ap_done                ;
wire [32-1:0]                       sub_AA                 ;
wire [32-1:0]                       sub_AC                 ;
wire [32-1:0]                       sub_AG                 ;
wire [32-1:0]                       sub_AT                 ;
wire [32-1:0]                       sub_CC                 ;
wire [32-1:0]                       sub_CG                 ;
wire [32-1:0]                       sub_CT                 ;
wire [32-1:0]                       sub_GG                 ;
wire [32-1:0]                       sub_GT                 ;
wire [32-1:0]                       sub_TT                 ;
wire [32-1:0]                       sub_N                  ;
wire [32-1:0]                       gap_open               ;
wire [32-1:0]                       gap_extend             ;
wire [32-1:0]                       y_drop                 ;
wire [32-1:0]                       align_fields           ;
wire [32-1:0]                       ref_len                ;
wire [32-1:0]                       query_len              ;
wire [64-1:0]                       ref_offset             ;
wire [64-1:0]                       query_offset           ;
wire [64-1:0]                       ref_seq                ;
wire [64-1:0]                       query_seq              ;
wire [64-1:0]                       tile_output            ;
wire [64-1:0]                       tb_output              ;


///////////////////////////////////////////////////////////////////////////////
// AXI4-Lite slave interface
///////////////////////////////////////////////////////////////////////////////

GACTX_AXISlave #(
  .C_ADDR_WIDTH ( C_S00_AXI_ADDR_WIDTH ),
  .C_DATA_WIDTH ( C_S00_AXI_DATA_WIDTH )
)
inst_axi_slave (
  .aclk         ( s00_axi_aclk                ),
  .areset       ( s00_axi_aresetn                ),
  .aclk_en      ( 1'b1                  ),
  .awvalid      ( s00_axi_awvalid ),
  .awready      ( s00_axi_awready ),
  .awaddr       ( s00_axi_awaddr  ),
  .wvalid       ( s00_axi_wvalid  ),
  .wready       ( s00_axi_wready  ),
  .wdata        ( s00_axi_wdata   ),
  .wstrb        ( s00_axi_wstrb   ),
  .arvalid      ( s00_axi_arvalid ),
  .arready      ( s00_axi_arready ),
  .araddr       ( s00_axi_araddr  ),
  .rvalid       ( s00_axi_rvalid  ),
  .rready       ( s00_axi_rready  ),
  .rdata        ( s00_axi_rdata   ),
  .rresp        ( s00_axi_rresp   ),
  .bvalid       ( s00_axi_bvalid  ),
  .bready       ( s00_axi_bready  ),
  .bresp        ( s00_axi_bresp   ),
  .interrupt    ( irq             ),
  .ap_start     ( ap_start              ),
  .ap_done      ( ap_done               ),
  .ap_idle      ( ap_idle               ),
  .sub_AA       ( sub_AA                ),
  .sub_AC       ( sub_AC                ),
  .sub_AG       ( sub_AG                ),
  .sub_AT       ( sub_AT                ),
  .sub_CC       ( sub_CC                ),
  .sub_CG       ( sub_CG                ),
  .sub_CT       ( sub_CT                ),
  .sub_GG       ( sub_GG                ),
  .sub_GT       ( sub_GT                ),
  .sub_TT       ( sub_TT                ),
  .sub_N        ( sub_N                 ),
  .gap_open     ( gap_open              ),
  .gap_extend   ( gap_extend            ),
  .y_drop       ( y_drop                ),
  .align_fields ( align_fields          ),
  .ref_len      ( ref_len               ),
  .query_len    ( query_len             ),
  .ref_offset   ( ref_offset            ),
  .query_offset ( query_offset          ),
  .ref_seq      ( ref_seq               ),
  .query_seq    ( query_seq             ),
  .tile_output  ( tile_output           ),
  .tb_output    ( tb_output             )
);

///////////////////////////////////////////////////////////////////////////////
// Kernel logic
///////////////////////////////////////////////////////////////////////////////

GACTX_Kernel #(
  .C_M_AXI_ADDR_WIDTH ( C_M00_AXI_ADDR_WIDTH ),
  .C_M_AXI_DATA_WIDTH ( C_M00_AXI_DATA_WIDTH )
)
inst_kernel (
  .aclk            ( m00_axi_aclk          ),
  .areset          ( m00_axi_aresetn          ),
  .m00_axi_awvalid ( m00_axi_awvalid ),
  .m00_axi_awready ( m00_axi_awready ),
  .m00_axi_awaddr  ( m00_axi_awaddr  ),
  .m00_axi_awlen   ( m00_axi_awlen   ),
  .m00_axi_wvalid  ( m00_axi_wvalid  ),
  .m00_axi_wready  ( m00_axi_wready  ),
  .m00_axi_wdata   ( m00_axi_wdata   ),
  .m00_axi_wstrb   ( m00_axi_wstrb   ),
  .m00_axi_wlast   ( m00_axi_wlast   ),
  .m00_axi_bvalid  ( m00_axi_bvalid  ),
  .m00_axi_bready  ( m00_axi_bready  ),
  .m00_axi_arvalid ( m00_axi_arvalid ),
  .m00_axi_arready ( m00_axi_arready ),
  .m00_axi_araddr  ( m00_axi_araddr  ),
  .m00_axi_arlen   ( m00_axi_arlen   ),
  .m00_axi_rvalid  ( m00_axi_rvalid  ),
  .m00_axi_rready  ( m00_axi_rready  ),
  .m00_axi_rdata   ( m00_axi_rdata   ),
  .m00_axi_rlast   ( m00_axi_rlast   ),
  .ap_start        ( ap_start        ),
  .ap_done         ( ap_done         ),
  .ap_idle         ( ap_idle         ),
  .sub_AA          ( sub_AA          ),
  .sub_AC          ( sub_AC          ),
  .sub_AG          ( sub_AG          ),
  .sub_AT          ( sub_AT          ),
  .sub_CC          ( sub_CC          ),
  .sub_CG          ( sub_CG          ),
  .sub_CT          ( sub_CT          ),
  .sub_GG          ( sub_GG          ),
  .sub_GT          ( sub_GT          ),
  .sub_TT          ( sub_TT          ),
  .sub_N           ( sub_N           ),
  .gap_open        ( gap_open        ),
  .gap_extend      ( gap_extend      ),
  .y_drop          ( y_drop          ),
  .align_fields    ( align_fields    ),
  .ref_len         ( ref_len         ),
  .query_len       ( query_len       ),
  .ref_offset      ( ref_offset      ),
  .query_offset    ( query_offset    ),
  .ref_seq         ( ref_seq         ),
  .query_seq       ( query_seq       ),
  .tile_output     ( tile_output     ),
  .tb_output       ( tb_output       )
);

endmodule
`default_nettype wire
