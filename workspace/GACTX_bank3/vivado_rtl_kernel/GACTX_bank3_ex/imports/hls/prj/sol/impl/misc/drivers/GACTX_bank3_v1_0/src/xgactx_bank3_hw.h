// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
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

#define XGACTX_BANK3_CONTROL_ADDR_AP_CTRL           0x00
#define XGACTX_BANK3_CONTROL_ADDR_GIE               0x04
#define XGACTX_BANK3_CONTROL_ADDR_IER               0x08
#define XGACTX_BANK3_CONTROL_ADDR_ISR               0x0c
#define XGACTX_BANK3_CONTROL_ADDR_SUB_AA_DATA       0x10
#define XGACTX_BANK3_CONTROL_BITS_SUB_AA_DATA       32
#define XGACTX_BANK3_CONTROL_ADDR_SUB_AC_DATA       0x18
#define XGACTX_BANK3_CONTROL_BITS_SUB_AC_DATA       32
#define XGACTX_BANK3_CONTROL_ADDR_SUB_AG_DATA       0x20
#define XGACTX_BANK3_CONTROL_BITS_SUB_AG_DATA       32
#define XGACTX_BANK3_CONTROL_ADDR_SUB_AT_DATA       0x28
#define XGACTX_BANK3_CONTROL_BITS_SUB_AT_DATA       32
#define XGACTX_BANK3_CONTROL_ADDR_SUB_CC_DATA       0x30
#define XGACTX_BANK3_CONTROL_BITS_SUB_CC_DATA       32
#define XGACTX_BANK3_CONTROL_ADDR_SUB_CG_DATA       0x38
#define XGACTX_BANK3_CONTROL_BITS_SUB_CG_DATA       32
#define XGACTX_BANK3_CONTROL_ADDR_SUB_CT_DATA       0x40
#define XGACTX_BANK3_CONTROL_BITS_SUB_CT_DATA       32
#define XGACTX_BANK3_CONTROL_ADDR_SUB_GG_DATA       0x48
#define XGACTX_BANK3_CONTROL_BITS_SUB_GG_DATA       32
#define XGACTX_BANK3_CONTROL_ADDR_SUB_GT_DATA       0x50
#define XGACTX_BANK3_CONTROL_BITS_SUB_GT_DATA       32
#define XGACTX_BANK3_CONTROL_ADDR_SUB_TT_DATA       0x58
#define XGACTX_BANK3_CONTROL_BITS_SUB_TT_DATA       32
#define XGACTX_BANK3_CONTROL_ADDR_SUB_N_DATA        0x60
#define XGACTX_BANK3_CONTROL_BITS_SUB_N_DATA        32
#define XGACTX_BANK3_CONTROL_ADDR_GAP_OPEN_DATA     0x68
#define XGACTX_BANK3_CONTROL_BITS_GAP_OPEN_DATA     32
#define XGACTX_BANK3_CONTROL_ADDR_GAP_EXTEND_DATA   0x70
#define XGACTX_BANK3_CONTROL_BITS_GAP_EXTEND_DATA   32
#define XGACTX_BANK3_CONTROL_ADDR_Y_DROP_DATA       0x78
#define XGACTX_BANK3_CONTROL_BITS_Y_DROP_DATA       32
#define XGACTX_BANK3_CONTROL_ADDR_ALIGN_FIELDS_DATA 0x80
#define XGACTX_BANK3_CONTROL_BITS_ALIGN_FIELDS_DATA 32
#define XGACTX_BANK3_CONTROL_ADDR_REF_LEN_DATA      0x88
#define XGACTX_BANK3_CONTROL_BITS_REF_LEN_DATA      32
#define XGACTX_BANK3_CONTROL_ADDR_QUERY_LEN_DATA    0x90
#define XGACTX_BANK3_CONTROL_BITS_QUERY_LEN_DATA    32
#define XGACTX_BANK3_CONTROL_ADDR_REF_OFFSET_DATA   0x98
#define XGACTX_BANK3_CONTROL_BITS_REF_OFFSET_DATA   64
#define XGACTX_BANK3_CONTROL_ADDR_QUERY_OFFSET_DATA 0xa4
#define XGACTX_BANK3_CONTROL_BITS_QUERY_OFFSET_DATA 64
#define XGACTX_BANK3_CONTROL_ADDR_REF_SEQ_DATA      0xb0
#define XGACTX_BANK3_CONTROL_BITS_REF_SEQ_DATA      64
#define XGACTX_BANK3_CONTROL_ADDR_QUERY_SEQ_DATA    0xbc
#define XGACTX_BANK3_CONTROL_BITS_QUERY_SEQ_DATA    64
#define XGACTX_BANK3_CONTROL_ADDR_TILE_OUTPUT_DATA  0xc8
#define XGACTX_BANK3_CONTROL_BITS_TILE_OUTPUT_DATA  64
#define XGACTX_BANK3_CONTROL_ADDR_TB_OUTPUT_DATA    0xd4
#define XGACTX_BANK3_CONTROL_BITS_TB_OUTPUT_DATA    64

