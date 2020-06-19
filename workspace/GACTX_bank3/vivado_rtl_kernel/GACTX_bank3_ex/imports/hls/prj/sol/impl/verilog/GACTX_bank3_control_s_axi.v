// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module GACTX_bank3_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    output wire [31:0]                   sub_AA,
    output wire [31:0]                   sub_AC,
    output wire [31:0]                   sub_AG,
    output wire [31:0]                   sub_AT,
    output wire [31:0]                   sub_CC,
    output wire [31:0]                   sub_CG,
    output wire [31:0]                   sub_CT,
    output wire [31:0]                   sub_GG,
    output wire [31:0]                   sub_GT,
    output wire [31:0]                   sub_TT,
    output wire [31:0]                   sub_N,
    output wire [31:0]                   gap_open,
    output wire [31:0]                   gap_extend,
    output wire [31:0]                   y_drop,
    output wire [31:0]                   align_fields,
    output wire [31:0]                   ref_len,
    output wire [31:0]                   query_len,
    output wire [63:0]                   ref_offset,
    output wire [63:0]                   query_offset,
    output wire [63:0]                   ref_seq,
    output wire [63:0]                   query_seq,
    output wire [63:0]                   tile_output,
    output wire [63:0]                   tb_output
);
//------------------------Address Info-------------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of sub_AA
//        bit 31~0 - sub_AA[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of sub_AC
//        bit 31~0 - sub_AC[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of sub_AG
//        bit 31~0 - sub_AG[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of sub_AT
//        bit 31~0 - sub_AT[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of sub_CC
//        bit 31~0 - sub_CC[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of sub_CG
//        bit 31~0 - sub_CG[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of sub_CT
//        bit 31~0 - sub_CT[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of sub_GG
//        bit 31~0 - sub_GG[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of sub_GT
//        bit 31~0 - sub_GT[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of sub_TT
//        bit 31~0 - sub_TT[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of sub_N
//        bit 31~0 - sub_N[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of gap_open
//        bit 31~0 - gap_open[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of gap_extend
//        bit 31~0 - gap_extend[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of y_drop
//        bit 31~0 - y_drop[31:0] (Read/Write)
// 0x7c : reserved
// 0x80 : Data signal of align_fields
//        bit 31~0 - align_fields[31:0] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of ref_len
//        bit 31~0 - ref_len[31:0] (Read/Write)
// 0x8c : reserved
// 0x90 : Data signal of query_len
//        bit 31~0 - query_len[31:0] (Read/Write)
// 0x94 : reserved
// 0x98 : Data signal of ref_offset
//        bit 31~0 - ref_offset[31:0] (Read/Write)
// 0x9c : Data signal of ref_offset
//        bit 31~0 - ref_offset[63:32] (Read/Write)
// 0xa0 : reserved
// 0xa4 : Data signal of query_offset
//        bit 31~0 - query_offset[31:0] (Read/Write)
// 0xa8 : Data signal of query_offset
//        bit 31~0 - query_offset[63:32] (Read/Write)
// 0xac : reserved
// 0xb0 : Data signal of ref_seq
//        bit 31~0 - ref_seq[31:0] (Read/Write)
// 0xb4 : Data signal of ref_seq
//        bit 31~0 - ref_seq[63:32] (Read/Write)
// 0xb8 : reserved
// 0xbc : Data signal of query_seq
//        bit 31~0 - query_seq[31:0] (Read/Write)
// 0xc0 : Data signal of query_seq
//        bit 31~0 - query_seq[63:32] (Read/Write)
// 0xc4 : reserved
// 0xc8 : Data signal of tile_output
//        bit 31~0 - tile_output[31:0] (Read/Write)
// 0xcc : Data signal of tile_output
//        bit 31~0 - tile_output[63:32] (Read/Write)
// 0xd0 : reserved
// 0xd4 : Data signal of tb_output
//        bit 31~0 - tb_output[31:0] (Read/Write)
// 0xd8 : Data signal of tb_output
//        bit 31~0 - tb_output[63:32] (Read/Write)
// 0xdc : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL             = 8'h00,
    ADDR_GIE                 = 8'h04,
    ADDR_IER                 = 8'h08,
    ADDR_ISR                 = 8'h0c,
    ADDR_SUB_AA_DATA_0       = 8'h10,
    ADDR_SUB_AA_CTRL         = 8'h14,
    ADDR_SUB_AC_DATA_0       = 8'h18,
    ADDR_SUB_AC_CTRL         = 8'h1c,
    ADDR_SUB_AG_DATA_0       = 8'h20,
    ADDR_SUB_AG_CTRL         = 8'h24,
    ADDR_SUB_AT_DATA_0       = 8'h28,
    ADDR_SUB_AT_CTRL         = 8'h2c,
    ADDR_SUB_CC_DATA_0       = 8'h30,
    ADDR_SUB_CC_CTRL         = 8'h34,
    ADDR_SUB_CG_DATA_0       = 8'h38,
    ADDR_SUB_CG_CTRL         = 8'h3c,
    ADDR_SUB_CT_DATA_0       = 8'h40,
    ADDR_SUB_CT_CTRL         = 8'h44,
    ADDR_SUB_GG_DATA_0       = 8'h48,
    ADDR_SUB_GG_CTRL         = 8'h4c,
    ADDR_SUB_GT_DATA_0       = 8'h50,
    ADDR_SUB_GT_CTRL         = 8'h54,
    ADDR_SUB_TT_DATA_0       = 8'h58,
    ADDR_SUB_TT_CTRL         = 8'h5c,
    ADDR_SUB_N_DATA_0        = 8'h60,
    ADDR_SUB_N_CTRL          = 8'h64,
    ADDR_GAP_OPEN_DATA_0     = 8'h68,
    ADDR_GAP_OPEN_CTRL       = 8'h6c,
    ADDR_GAP_EXTEND_DATA_0   = 8'h70,
    ADDR_GAP_EXTEND_CTRL     = 8'h74,
    ADDR_Y_DROP_DATA_0       = 8'h78,
    ADDR_Y_DROP_CTRL         = 8'h7c,
    ADDR_ALIGN_FIELDS_DATA_0 = 8'h80,
    ADDR_ALIGN_FIELDS_CTRL   = 8'h84,
    ADDR_REF_LEN_DATA_0      = 8'h88,
    ADDR_REF_LEN_CTRL        = 8'h8c,
    ADDR_QUERY_LEN_DATA_0    = 8'h90,
    ADDR_QUERY_LEN_CTRL      = 8'h94,
    ADDR_REF_OFFSET_DATA_0   = 8'h98,
    ADDR_REF_OFFSET_DATA_1   = 8'h9c,
    ADDR_REF_OFFSET_CTRL     = 8'ha0,
    ADDR_QUERY_OFFSET_DATA_0 = 8'ha4,
    ADDR_QUERY_OFFSET_DATA_1 = 8'ha8,
    ADDR_QUERY_OFFSET_CTRL   = 8'hac,
    ADDR_REF_SEQ_DATA_0      = 8'hb0,
    ADDR_REF_SEQ_DATA_1      = 8'hb4,
    ADDR_REF_SEQ_CTRL        = 8'hb8,
    ADDR_QUERY_SEQ_DATA_0    = 8'hbc,
    ADDR_QUERY_SEQ_DATA_1    = 8'hc0,
    ADDR_QUERY_SEQ_CTRL      = 8'hc4,
    ADDR_TILE_OUTPUT_DATA_0  = 8'hc8,
    ADDR_TILE_OUTPUT_DATA_1  = 8'hcc,
    ADDR_TILE_OUTPUT_CTRL    = 8'hd0,
    ADDR_TB_OUTPUT_DATA_0    = 8'hd4,
    ADDR_TB_OUTPUT_DATA_1    = 8'hd8,
    ADDR_TB_OUTPUT_CTRL      = 8'hdc,
    WRIDLE                   = 2'd0,
    WRDATA                   = 2'd1,
    WRRESP                   = 2'd2,
    WRRESET                  = 2'd3,
    RDIDLE                   = 2'd0,
    RDDATA                   = 2'd1,
    RDRESET                  = 2'd2,
    ADDR_BITS         = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [31:0]                   int_sub_AA = 'b0;
    reg  [31:0]                   int_sub_AC = 'b0;
    reg  [31:0]                   int_sub_AG = 'b0;
    reg  [31:0]                   int_sub_AT = 'b0;
    reg  [31:0]                   int_sub_CC = 'b0;
    reg  [31:0]                   int_sub_CG = 'b0;
    reg  [31:0]                   int_sub_CT = 'b0;
    reg  [31:0]                   int_sub_GG = 'b0;
    reg  [31:0]                   int_sub_GT = 'b0;
    reg  [31:0]                   int_sub_TT = 'b0;
    reg  [31:0]                   int_sub_N = 'b0;
    reg  [31:0]                   int_gap_open = 'b0;
    reg  [31:0]                   int_gap_extend = 'b0;
    reg  [31:0]                   int_y_drop = 'b0;
    reg  [31:0]                   int_align_fields = 'b0;
    reg  [31:0]                   int_ref_len = 'b0;
    reg  [31:0]                   int_query_len = 'b0;
    reg  [63:0]                   int_ref_offset = 'b0;
    reg  [63:0]                   int_query_offset = 'b0;
    reg  [63:0]                   int_ref_seq = 'b0;
    reg  [63:0]                   int_query_seq = 'b0;
    reg  [63:0]                   int_tile_output = 'b0;
    reg  [63:0]                   int_tb_output = 'b0;

//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_SUB_AA_DATA_0: begin
                    rdata <= int_sub_AA[31:0];
                end
                ADDR_SUB_AC_DATA_0: begin
                    rdata <= int_sub_AC[31:0];
                end
                ADDR_SUB_AG_DATA_0: begin
                    rdata <= int_sub_AG[31:0];
                end
                ADDR_SUB_AT_DATA_0: begin
                    rdata <= int_sub_AT[31:0];
                end
                ADDR_SUB_CC_DATA_0: begin
                    rdata <= int_sub_CC[31:0];
                end
                ADDR_SUB_CG_DATA_0: begin
                    rdata <= int_sub_CG[31:0];
                end
                ADDR_SUB_CT_DATA_0: begin
                    rdata <= int_sub_CT[31:0];
                end
                ADDR_SUB_GG_DATA_0: begin
                    rdata <= int_sub_GG[31:0];
                end
                ADDR_SUB_GT_DATA_0: begin
                    rdata <= int_sub_GT[31:0];
                end
                ADDR_SUB_TT_DATA_0: begin
                    rdata <= int_sub_TT[31:0];
                end
                ADDR_SUB_N_DATA_0: begin
                    rdata <= int_sub_N[31:0];
                end
                ADDR_GAP_OPEN_DATA_0: begin
                    rdata <= int_gap_open[31:0];
                end
                ADDR_GAP_EXTEND_DATA_0: begin
                    rdata <= int_gap_extend[31:0];
                end
                ADDR_Y_DROP_DATA_0: begin
                    rdata <= int_y_drop[31:0];
                end
                ADDR_ALIGN_FIELDS_DATA_0: begin
                    rdata <= int_align_fields[31:0];
                end
                ADDR_REF_LEN_DATA_0: begin
                    rdata <= int_ref_len[31:0];
                end
                ADDR_QUERY_LEN_DATA_0: begin
                    rdata <= int_query_len[31:0];
                end
                ADDR_REF_OFFSET_DATA_0: begin
                    rdata <= int_ref_offset[31:0];
                end
                ADDR_REF_OFFSET_DATA_1: begin
                    rdata <= int_ref_offset[63:32];
                end
                ADDR_QUERY_OFFSET_DATA_0: begin
                    rdata <= int_query_offset[31:0];
                end
                ADDR_QUERY_OFFSET_DATA_1: begin
                    rdata <= int_query_offset[63:32];
                end
                ADDR_REF_SEQ_DATA_0: begin
                    rdata <= int_ref_seq[31:0];
                end
                ADDR_REF_SEQ_DATA_1: begin
                    rdata <= int_ref_seq[63:32];
                end
                ADDR_QUERY_SEQ_DATA_0: begin
                    rdata <= int_query_seq[31:0];
                end
                ADDR_QUERY_SEQ_DATA_1: begin
                    rdata <= int_query_seq[63:32];
                end
                ADDR_TILE_OUTPUT_DATA_0: begin
                    rdata <= int_tile_output[31:0];
                end
                ADDR_TILE_OUTPUT_DATA_1: begin
                    rdata <= int_tile_output[63:32];
                end
                ADDR_TB_OUTPUT_DATA_0: begin
                    rdata <= int_tb_output[31:0];
                end
                ADDR_TB_OUTPUT_DATA_1: begin
                    rdata <= int_tb_output[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt    = int_gie & (|int_isr);
assign ap_start     = int_ap_start;
assign sub_AA       = int_sub_AA;
assign sub_AC       = int_sub_AC;
assign sub_AG       = int_sub_AG;
assign sub_AT       = int_sub_AT;
assign sub_CC       = int_sub_CC;
assign sub_CG       = int_sub_CG;
assign sub_CT       = int_sub_CT;
assign sub_GG       = int_sub_GG;
assign sub_GT       = int_sub_GT;
assign sub_TT       = int_sub_TT;
assign sub_N        = int_sub_N;
assign gap_open     = int_gap_open;
assign gap_extend   = int_gap_extend;
assign y_drop       = int_y_drop;
assign align_fields = int_align_fields;
assign ref_len      = int_ref_len;
assign query_len    = int_query_len;
assign ref_offset   = int_ref_offset;
assign query_offset = int_query_offset;
assign ref_seq      = int_ref_seq;
assign query_seq    = int_query_seq;
assign tile_output  = int_tile_output;
assign tb_output    = int_tb_output;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_sub_AA[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_sub_AA[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SUB_AA_DATA_0)
            int_sub_AA[31:0] <= (WDATA[31:0] & wmask) | (int_sub_AA[31:0] & ~wmask);
    end
end

// int_sub_AC[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_sub_AC[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SUB_AC_DATA_0)
            int_sub_AC[31:0] <= (WDATA[31:0] & wmask) | (int_sub_AC[31:0] & ~wmask);
    end
end

// int_sub_AG[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_sub_AG[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SUB_AG_DATA_0)
            int_sub_AG[31:0] <= (WDATA[31:0] & wmask) | (int_sub_AG[31:0] & ~wmask);
    end
end

// int_sub_AT[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_sub_AT[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SUB_AT_DATA_0)
            int_sub_AT[31:0] <= (WDATA[31:0] & wmask) | (int_sub_AT[31:0] & ~wmask);
    end
end

// int_sub_CC[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_sub_CC[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SUB_CC_DATA_0)
            int_sub_CC[31:0] <= (WDATA[31:0] & wmask) | (int_sub_CC[31:0] & ~wmask);
    end
end

// int_sub_CG[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_sub_CG[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SUB_CG_DATA_0)
            int_sub_CG[31:0] <= (WDATA[31:0] & wmask) | (int_sub_CG[31:0] & ~wmask);
    end
end

// int_sub_CT[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_sub_CT[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SUB_CT_DATA_0)
            int_sub_CT[31:0] <= (WDATA[31:0] & wmask) | (int_sub_CT[31:0] & ~wmask);
    end
end

// int_sub_GG[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_sub_GG[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SUB_GG_DATA_0)
            int_sub_GG[31:0] <= (WDATA[31:0] & wmask) | (int_sub_GG[31:0] & ~wmask);
    end
end

// int_sub_GT[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_sub_GT[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SUB_GT_DATA_0)
            int_sub_GT[31:0] <= (WDATA[31:0] & wmask) | (int_sub_GT[31:0] & ~wmask);
    end
end

// int_sub_TT[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_sub_TT[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SUB_TT_DATA_0)
            int_sub_TT[31:0] <= (WDATA[31:0] & wmask) | (int_sub_TT[31:0] & ~wmask);
    end
end

// int_sub_N[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_sub_N[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SUB_N_DATA_0)
            int_sub_N[31:0] <= (WDATA[31:0] & wmask) | (int_sub_N[31:0] & ~wmask);
    end
end

// int_gap_open[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_gap_open[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GAP_OPEN_DATA_0)
            int_gap_open[31:0] <= (WDATA[31:0] & wmask) | (int_gap_open[31:0] & ~wmask);
    end
end

// int_gap_extend[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_gap_extend[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GAP_EXTEND_DATA_0)
            int_gap_extend[31:0] <= (WDATA[31:0] & wmask) | (int_gap_extend[31:0] & ~wmask);
    end
end

// int_y_drop[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_y_drop[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Y_DROP_DATA_0)
            int_y_drop[31:0] <= (WDATA[31:0] & wmask) | (int_y_drop[31:0] & ~wmask);
    end
end

// int_align_fields[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_align_fields[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ALIGN_FIELDS_DATA_0)
            int_align_fields[31:0] <= (WDATA[31:0] & wmask) | (int_align_fields[31:0] & ~wmask);
    end
end

// int_ref_len[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ref_len[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_REF_LEN_DATA_0)
            int_ref_len[31:0] <= (WDATA[31:0] & wmask) | (int_ref_len[31:0] & ~wmask);
    end
end

// int_query_len[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_query_len[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERY_LEN_DATA_0)
            int_query_len[31:0] <= (WDATA[31:0] & wmask) | (int_query_len[31:0] & ~wmask);
    end
end

// int_ref_offset[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ref_offset[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_REF_OFFSET_DATA_0)
            int_ref_offset[31:0] <= (WDATA[31:0] & wmask) | (int_ref_offset[31:0] & ~wmask);
    end
end

// int_ref_offset[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_ref_offset[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_REF_OFFSET_DATA_1)
            int_ref_offset[63:32] <= (WDATA[31:0] & wmask) | (int_ref_offset[63:32] & ~wmask);
    end
end

// int_query_offset[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_query_offset[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERY_OFFSET_DATA_0)
            int_query_offset[31:0] <= (WDATA[31:0] & wmask) | (int_query_offset[31:0] & ~wmask);
    end
end

// int_query_offset[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_query_offset[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERY_OFFSET_DATA_1)
            int_query_offset[63:32] <= (WDATA[31:0] & wmask) | (int_query_offset[63:32] & ~wmask);
    end
end

// int_ref_seq[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ref_seq[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_REF_SEQ_DATA_0)
            int_ref_seq[31:0] <= (WDATA[31:0] & wmask) | (int_ref_seq[31:0] & ~wmask);
    end
end

// int_ref_seq[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_ref_seq[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_REF_SEQ_DATA_1)
            int_ref_seq[63:32] <= (WDATA[31:0] & wmask) | (int_ref_seq[63:32] & ~wmask);
    end
end

// int_query_seq[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_query_seq[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERY_SEQ_DATA_0)
            int_query_seq[31:0] <= (WDATA[31:0] & wmask) | (int_query_seq[31:0] & ~wmask);
    end
end

// int_query_seq[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_query_seq[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERY_SEQ_DATA_1)
            int_query_seq[63:32] <= (WDATA[31:0] & wmask) | (int_query_seq[63:32] & ~wmask);
    end
end

// int_tile_output[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_tile_output[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TILE_OUTPUT_DATA_0)
            int_tile_output[31:0] <= (WDATA[31:0] & wmask) | (int_tile_output[31:0] & ~wmask);
    end
end

// int_tile_output[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_tile_output[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TILE_OUTPUT_DATA_1)
            int_tile_output[63:32] <= (WDATA[31:0] & wmask) | (int_tile_output[63:32] & ~wmask);
    end
end

// int_tb_output[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_tb_output[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TB_OUTPUT_DATA_0)
            int_tb_output[31:0] <= (WDATA[31:0] & wmask) | (int_tb_output[31:0] & ~wmask);
    end
end

// int_tb_output[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_tb_output[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TB_OUTPUT_DATA_1)
            int_tb_output[63:32] <= (WDATA[31:0] & wmask) | (int_tb_output[63:32] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
