// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xgactx_bank3.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGactx_bank3_CfgInitialize(XGactx_bank3 *InstancePtr, XGactx_bank3_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGactx_bank3_Start(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XGactx_bank3_IsDone(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XGactx_bank3_IsIdle(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XGactx_bank3_IsReady(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XGactx_bank3_EnableAutoRestart(XGactx_bank3 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XGactx_bank3_DisableAutoRestart(XGactx_bank3 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_AP_CTRL, 0);
}

void XGactx_bank3_Set_sub_AA(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_AA_DATA, Data);
}

u32 XGactx_bank3_Get_sub_AA(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_AA_DATA);
    return Data;
}

void XGactx_bank3_Set_sub_AC(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_AC_DATA, Data);
}

u32 XGactx_bank3_Get_sub_AC(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_AC_DATA);
    return Data;
}

void XGactx_bank3_Set_sub_AG(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_AG_DATA, Data);
}

u32 XGactx_bank3_Get_sub_AG(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_AG_DATA);
    return Data;
}

void XGactx_bank3_Set_sub_AT(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_AT_DATA, Data);
}

u32 XGactx_bank3_Get_sub_AT(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_AT_DATA);
    return Data;
}

void XGactx_bank3_Set_sub_CC(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_CC_DATA, Data);
}

u32 XGactx_bank3_Get_sub_CC(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_CC_DATA);
    return Data;
}

void XGactx_bank3_Set_sub_CG(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_CG_DATA, Data);
}

u32 XGactx_bank3_Get_sub_CG(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_CG_DATA);
    return Data;
}

void XGactx_bank3_Set_sub_CT(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_CT_DATA, Data);
}

u32 XGactx_bank3_Get_sub_CT(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_CT_DATA);
    return Data;
}

void XGactx_bank3_Set_sub_GG(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_GG_DATA, Data);
}

u32 XGactx_bank3_Get_sub_GG(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_GG_DATA);
    return Data;
}

void XGactx_bank3_Set_sub_GT(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_GT_DATA, Data);
}

u32 XGactx_bank3_Get_sub_GT(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_GT_DATA);
    return Data;
}

void XGactx_bank3_Set_sub_TT(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_TT_DATA, Data);
}

u32 XGactx_bank3_Get_sub_TT(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_TT_DATA);
    return Data;
}

void XGactx_bank3_Set_sub_N(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_N_DATA, Data);
}

u32 XGactx_bank3_Get_sub_N(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_SUB_N_DATA);
    return Data;
}

void XGactx_bank3_Set_gap_open(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_GAP_OPEN_DATA, Data);
}

u32 XGactx_bank3_Get_gap_open(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_GAP_OPEN_DATA);
    return Data;
}

void XGactx_bank3_Set_gap_extend(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_GAP_EXTEND_DATA, Data);
}

u32 XGactx_bank3_Get_gap_extend(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_GAP_EXTEND_DATA);
    return Data;
}

void XGactx_bank3_Set_y_drop(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_Y_DROP_DATA, Data);
}

u32 XGactx_bank3_Get_y_drop(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_Y_DROP_DATA);
    return Data;
}

void XGactx_bank3_Set_align_fields(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_ALIGN_FIELDS_DATA, Data);
}

u32 XGactx_bank3_Get_align_fields(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_ALIGN_FIELDS_DATA);
    return Data;
}

void XGactx_bank3_Set_ref_len(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_REF_LEN_DATA, Data);
}

u32 XGactx_bank3_Get_ref_len(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_REF_LEN_DATA);
    return Data;
}

void XGactx_bank3_Set_query_len(XGactx_bank3 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_QUERY_LEN_DATA, Data);
}

u32 XGactx_bank3_Get_query_len(XGactx_bank3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_QUERY_LEN_DATA);
    return Data;
}

void XGactx_bank3_Set_ref_offset(XGactx_bank3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_REF_OFFSET_DATA, (u32)(Data));
    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_REF_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XGactx_bank3_Get_ref_offset(XGactx_bank3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_REF_OFFSET_DATA);
    Data += (u64)XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_REF_OFFSET_DATA + 4) << 32;
    return Data;
}

void XGactx_bank3_Set_query_offset(XGactx_bank3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_QUERY_OFFSET_DATA, (u32)(Data));
    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_QUERY_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XGactx_bank3_Get_query_offset(XGactx_bank3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_QUERY_OFFSET_DATA);
    Data += (u64)XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_QUERY_OFFSET_DATA + 4) << 32;
    return Data;
}

void XGactx_bank3_Set_ref_seq(XGactx_bank3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_REF_SEQ_DATA, (u32)(Data));
    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_REF_SEQ_DATA + 4, (u32)(Data >> 32));
}

u64 XGactx_bank3_Get_ref_seq(XGactx_bank3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_REF_SEQ_DATA);
    Data += (u64)XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_REF_SEQ_DATA + 4) << 32;
    return Data;
}

void XGactx_bank3_Set_query_seq(XGactx_bank3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_QUERY_SEQ_DATA, (u32)(Data));
    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_QUERY_SEQ_DATA + 4, (u32)(Data >> 32));
}

u64 XGactx_bank3_Get_query_seq(XGactx_bank3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_QUERY_SEQ_DATA);
    Data += (u64)XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_QUERY_SEQ_DATA + 4) << 32;
    return Data;
}

void XGactx_bank3_Set_tile_output(XGactx_bank3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_TILE_OUTPUT_DATA, (u32)(Data));
    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_TILE_OUTPUT_DATA + 4, (u32)(Data >> 32));
}

u64 XGactx_bank3_Get_tile_output(XGactx_bank3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_TILE_OUTPUT_DATA);
    Data += (u64)XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_TILE_OUTPUT_DATA + 4) << 32;
    return Data;
}

void XGactx_bank3_Set_tb_output(XGactx_bank3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_TB_OUTPUT_DATA, (u32)(Data));
    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_TB_OUTPUT_DATA + 4, (u32)(Data >> 32));
}

u64 XGactx_bank3_Get_tb_output(XGactx_bank3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_TB_OUTPUT_DATA);
    Data += (u64)XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_TB_OUTPUT_DATA + 4) << 32;
    return Data;
}

void XGactx_bank3_InterruptGlobalEnable(XGactx_bank3 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_GIE, 1);
}

void XGactx_bank3_InterruptGlobalDisable(XGactx_bank3 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_GIE, 0);
}

void XGactx_bank3_InterruptEnable(XGactx_bank3 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_IER);
    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_IER, Register | Mask);
}

void XGactx_bank3_InterruptDisable(XGactx_bank3 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_IER);
    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_IER, Register & (~Mask));
}

void XGactx_bank3_InterruptClear(XGactx_bank3 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGactx_bank3_WriteReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_ISR, Mask);
}

u32 XGactx_bank3_InterruptGetEnabled(XGactx_bank3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_IER);
}

u32 XGactx_bank3_InterruptGetStatus(XGactx_bank3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGactx_bank3_ReadReg(InstancePtr->Control_BaseAddress, XGACTX_BANK3_CONTROL_ADDR_ISR);
}

