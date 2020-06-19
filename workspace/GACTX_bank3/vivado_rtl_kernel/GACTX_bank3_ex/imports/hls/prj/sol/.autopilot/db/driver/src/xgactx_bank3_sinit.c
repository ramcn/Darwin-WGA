// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xgactx_bank3.h"

extern XGactx_bank3_Config XGactx_bank3_ConfigTable[];

XGactx_bank3_Config *XGactx_bank3_LookupConfig(u16 DeviceId) {
	XGactx_bank3_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGACTX_BANK3_NUM_INSTANCES; Index++) {
		if (XGactx_bank3_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGactx_bank3_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGactx_bank3_Initialize(XGactx_bank3 *InstancePtr, u16 DeviceId) {
	XGactx_bank3_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGactx_bank3_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGactx_bank3_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

