// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XGACTX_BANK3_H
#define XGACTX_BANK3_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xgactx_bank3_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XGactx_bank3_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XGactx_bank3;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGactx_bank3_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGactx_bank3_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGactx_bank3_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGactx_bank3_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XGactx_bank3_Initialize(XGactx_bank3 *InstancePtr, u16 DeviceId);
XGactx_bank3_Config* XGactx_bank3_LookupConfig(u16 DeviceId);
int XGactx_bank3_CfgInitialize(XGactx_bank3 *InstancePtr, XGactx_bank3_Config *ConfigPtr);
#else
int XGactx_bank3_Initialize(XGactx_bank3 *InstancePtr, const char* InstanceName);
int XGactx_bank3_Release(XGactx_bank3 *InstancePtr);
#endif

void XGactx_bank3_Start(XGactx_bank3 *InstancePtr);
u32 XGactx_bank3_IsDone(XGactx_bank3 *InstancePtr);
u32 XGactx_bank3_IsIdle(XGactx_bank3 *InstancePtr);
u32 XGactx_bank3_IsReady(XGactx_bank3 *InstancePtr);
void XGactx_bank3_EnableAutoRestart(XGactx_bank3 *InstancePtr);
void XGactx_bank3_DisableAutoRestart(XGactx_bank3 *InstancePtr);

void XGactx_bank3_Set_sub_AA(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_sub_AA(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_sub_AC(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_sub_AC(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_sub_AG(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_sub_AG(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_sub_AT(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_sub_AT(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_sub_CC(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_sub_CC(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_sub_CG(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_sub_CG(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_sub_CT(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_sub_CT(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_sub_GG(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_sub_GG(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_sub_GT(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_sub_GT(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_sub_TT(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_sub_TT(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_sub_N(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_sub_N(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_gap_open(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_gap_open(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_gap_extend(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_gap_extend(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_y_drop(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_y_drop(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_align_fields(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_align_fields(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_ref_len(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_ref_len(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_query_len(XGactx_bank3 *InstancePtr, u32 Data);
u32 XGactx_bank3_Get_query_len(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_ref_offset(XGactx_bank3 *InstancePtr, u64 Data);
u64 XGactx_bank3_Get_ref_offset(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_query_offset(XGactx_bank3 *InstancePtr, u64 Data);
u64 XGactx_bank3_Get_query_offset(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_ref_seq(XGactx_bank3 *InstancePtr, u64 Data);
u64 XGactx_bank3_Get_ref_seq(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_query_seq(XGactx_bank3 *InstancePtr, u64 Data);
u64 XGactx_bank3_Get_query_seq(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_tile_output(XGactx_bank3 *InstancePtr, u64 Data);
u64 XGactx_bank3_Get_tile_output(XGactx_bank3 *InstancePtr);
void XGactx_bank3_Set_tb_output(XGactx_bank3 *InstancePtr, u64 Data);
u64 XGactx_bank3_Get_tb_output(XGactx_bank3 *InstancePtr);

void XGactx_bank3_InterruptGlobalEnable(XGactx_bank3 *InstancePtr);
void XGactx_bank3_InterruptGlobalDisable(XGactx_bank3 *InstancePtr);
void XGactx_bank3_InterruptEnable(XGactx_bank3 *InstancePtr, u32 Mask);
void XGactx_bank3_InterruptDisable(XGactx_bank3 *InstancePtr, u32 Mask);
void XGactx_bank3_InterruptClear(XGactx_bank3 *InstancePtr, u32 Mask);
u32 XGactx_bank3_InterruptGetEnabled(XGactx_bank3 *InstancePtr);
u32 XGactx_bank3_InterruptGetStatus(XGactx_bank3 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
