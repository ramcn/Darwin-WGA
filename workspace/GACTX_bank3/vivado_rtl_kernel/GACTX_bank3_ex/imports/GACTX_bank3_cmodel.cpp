// This is a generated file. Use and modify at your own risk.
////////////////////////////////////////////////////////////////////////////////

//-----------------------------------------------------------------------------
// kernel: GACTX_bank3
//
// Purpose: This is a C-model of the RTL kernel intended to be used for cpu
//          emulation.  It is designed to only be functionally equivalent to
//          the RTL Kernel.
//-----------------------------------------------------------------------------
#define WORD_SIZE 32
#define SHORT_WORD_SIZE 16
#define CHAR_WORD_SIZE 8
// Transfer size and buffer size are in words.
#define TRANSFER_SIZE_BITS WORD_SIZE*4096*8
#define BUFFER_WORD_SIZE 8192
#include <string.h>
#include <stdbool.h>
#include "hls_half.h"
#include "ap_axi_sdata.h"
#include "hls_stream.h"


// Function declaration/Interface pragmas to match RTL Kernel
extern "C" void GACTX_bank3 (
    int sub_AA,
    int sub_AC,
    int sub_AG,
    int sub_AT,
    int sub_CC,
    int sub_CG,
    int sub_CT,
    int sub_GG,
    int sub_GT,
    int sub_TT,
    int sub_N,
    int gap_open,
    int gap_extend,
    int y_drop,
    unsigned int align_fields,
    unsigned int ref_len,
    unsigned int query_len,
    unsigned long ref_offset,
    unsigned long query_offset,
    int* ref_seq,
    int* query_seq,
    int* tile_output,
    int* tb_output
) {

    #pragma HLS INTERFACE m_axi port=ref_seq offset=slave bundle=m00_axi
    #pragma HLS INTERFACE m_axi port=query_seq offset=slave bundle=m00_axi
    #pragma HLS INTERFACE m_axi port=tile_output offset=slave bundle=m01_axi
    #pragma HLS INTERFACE m_axi port=tb_output offset=slave bundle=m01_axi
    #pragma HLS INTERFACE s_axilite port=sub_AA bundle=control
    #pragma HLS INTERFACE s_axilite port=sub_AC bundle=control
    #pragma HLS INTERFACE s_axilite port=sub_AG bundle=control
    #pragma HLS INTERFACE s_axilite port=sub_AT bundle=control
    #pragma HLS INTERFACE s_axilite port=sub_CC bundle=control
    #pragma HLS INTERFACE s_axilite port=sub_CG bundle=control
    #pragma HLS INTERFACE s_axilite port=sub_CT bundle=control
    #pragma HLS INTERFACE s_axilite port=sub_GG bundle=control
    #pragma HLS INTERFACE s_axilite port=sub_GT bundle=control
    #pragma HLS INTERFACE s_axilite port=sub_TT bundle=control
    #pragma HLS INTERFACE s_axilite port=sub_N bundle=control
    #pragma HLS INTERFACE s_axilite port=gap_open bundle=control
    #pragma HLS INTERFACE s_axilite port=gap_extend bundle=control
    #pragma HLS INTERFACE s_axilite port=y_drop bundle=control
    #pragma HLS INTERFACE s_axilite port=align_fields bundle=control
    #pragma HLS INTERFACE s_axilite port=ref_len bundle=control
    #pragma HLS INTERFACE s_axilite port=query_len bundle=control
    #pragma HLS INTERFACE s_axilite port=ref_offset bundle=control
    #pragma HLS INTERFACE s_axilite port=query_offset bundle=control
    #pragma HLS INTERFACE s_axilite port=ref_seq bundle=control
    #pragma HLS INTERFACE s_axilite port=query_seq bundle=control
    #pragma HLS INTERFACE s_axilite port=tile_output bundle=control
    #pragma HLS INTERFACE s_axilite port=tb_output bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    #pragma HLS INTERFACE ap_ctrl_hs port=return

// Modify contents below to match the function of the RTL Kernel
    unsigned int data;

    // Create input and output buffers for interface m00_axi
    int m00_axi_input_buffer[BUFFER_WORD_SIZE];
    int m00_axi_output_buffer[BUFFER_WORD_SIZE];


    // length is specified in number of words.
    unsigned int m00_axi_length = 4096;


    // Assign input to a buffer
    memcpy(m00_axi_input_buffer, (int*) ref_seq, m00_axi_length*sizeof(int));

    // Add 1 to input buffer and assign to output buffer.
    for (unsigned int i = 0; i < m00_axi_length; i++) {
      m00_axi_output_buffer[i] = m00_axi_input_buffer[i]  + 1;
    }

    // assign output buffer out to memory
    memcpy((int*) ref_seq, m00_axi_output_buffer, m00_axi_length*sizeof(int));


    // Create input and output buffers for interface m01_axi
    int m01_axi_input_buffer[BUFFER_WORD_SIZE];
    int m01_axi_output_buffer[BUFFER_WORD_SIZE];


    // length is specified in number of words.
    unsigned int m01_axi_length = 4096;


    // Assign input to a buffer
    memcpy(m01_axi_input_buffer, (int*) tile_output, m01_axi_length*sizeof(int));

    // Add 1 to input buffer and assign to output buffer.
    for (unsigned int i = 0; i < m01_axi_length; i++) {
      m01_axi_output_buffer[i] = m01_axi_input_buffer[i]  + 1;
    }

    // assign output buffer out to memory
    memcpy((int*) tile_output, m01_axi_output_buffer, m01_axi_length*sizeof(int));


}

