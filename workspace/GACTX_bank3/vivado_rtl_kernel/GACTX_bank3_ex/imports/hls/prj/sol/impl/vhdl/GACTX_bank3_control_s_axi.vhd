-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity GACTX_bank3_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 8;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC;
    sub_AA                :out  STD_LOGIC_VECTOR(31 downto 0);
    sub_AC                :out  STD_LOGIC_VECTOR(31 downto 0);
    sub_AG                :out  STD_LOGIC_VECTOR(31 downto 0);
    sub_AT                :out  STD_LOGIC_VECTOR(31 downto 0);
    sub_CC                :out  STD_LOGIC_VECTOR(31 downto 0);
    sub_CG                :out  STD_LOGIC_VECTOR(31 downto 0);
    sub_CT                :out  STD_LOGIC_VECTOR(31 downto 0);
    sub_GG                :out  STD_LOGIC_VECTOR(31 downto 0);
    sub_GT                :out  STD_LOGIC_VECTOR(31 downto 0);
    sub_TT                :out  STD_LOGIC_VECTOR(31 downto 0);
    sub_N                 :out  STD_LOGIC_VECTOR(31 downto 0);
    gap_open              :out  STD_LOGIC_VECTOR(31 downto 0);
    gap_extend            :out  STD_LOGIC_VECTOR(31 downto 0);
    y_drop                :out  STD_LOGIC_VECTOR(31 downto 0);
    align_fields          :out  STD_LOGIC_VECTOR(31 downto 0);
    ref_len               :out  STD_LOGIC_VECTOR(31 downto 0);
    query_len             :out  STD_LOGIC_VECTOR(31 downto 0);
    ref_offset            :out  STD_LOGIC_VECTOR(63 downto 0);
    query_offset          :out  STD_LOGIC_VECTOR(63 downto 0);
    ref_seq               :out  STD_LOGIC_VECTOR(63 downto 0);
    query_seq             :out  STD_LOGIC_VECTOR(63 downto 0);
    tile_output           :out  STD_LOGIC_VECTOR(63 downto 0);
    tb_output             :out  STD_LOGIC_VECTOR(63 downto 0)
);
end entity GACTX_bank3_control_s_axi;

-- ------------------------Address Info-------------------
-- 0x00 : Control signals
--        bit 0  - ap_start (Read/Write/COH)
--        bit 1  - ap_done (Read/COR)
--        bit 2  - ap_idle (Read)
--        bit 3  - ap_ready (Read)
--        bit 7  - auto_restart (Read/Write)
--        others - reserved
-- 0x04 : Global Interrupt Enable Register
--        bit 0  - Global Interrupt Enable (Read/Write)
--        others - reserved
-- 0x08 : IP Interrupt Enable Register (Read/Write)
--        bit 0  - Channel 0 (ap_done)
--        bit 1  - Channel 1 (ap_ready)
--        others - reserved
-- 0x0c : IP Interrupt Status Register (Read/TOW)
--        bit 0  - Channel 0 (ap_done)
--        bit 1  - Channel 1 (ap_ready)
--        others - reserved
-- 0x10 : Data signal of sub_AA
--        bit 31~0 - sub_AA[31:0] (Read/Write)
-- 0x14 : reserved
-- 0x18 : Data signal of sub_AC
--        bit 31~0 - sub_AC[31:0] (Read/Write)
-- 0x1c : reserved
-- 0x20 : Data signal of sub_AG
--        bit 31~0 - sub_AG[31:0] (Read/Write)
-- 0x24 : reserved
-- 0x28 : Data signal of sub_AT
--        bit 31~0 - sub_AT[31:0] (Read/Write)
-- 0x2c : reserved
-- 0x30 : Data signal of sub_CC
--        bit 31~0 - sub_CC[31:0] (Read/Write)
-- 0x34 : reserved
-- 0x38 : Data signal of sub_CG
--        bit 31~0 - sub_CG[31:0] (Read/Write)
-- 0x3c : reserved
-- 0x40 : Data signal of sub_CT
--        bit 31~0 - sub_CT[31:0] (Read/Write)
-- 0x44 : reserved
-- 0x48 : Data signal of sub_GG
--        bit 31~0 - sub_GG[31:0] (Read/Write)
-- 0x4c : reserved
-- 0x50 : Data signal of sub_GT
--        bit 31~0 - sub_GT[31:0] (Read/Write)
-- 0x54 : reserved
-- 0x58 : Data signal of sub_TT
--        bit 31~0 - sub_TT[31:0] (Read/Write)
-- 0x5c : reserved
-- 0x60 : Data signal of sub_N
--        bit 31~0 - sub_N[31:0] (Read/Write)
-- 0x64 : reserved
-- 0x68 : Data signal of gap_open
--        bit 31~0 - gap_open[31:0] (Read/Write)
-- 0x6c : reserved
-- 0x70 : Data signal of gap_extend
--        bit 31~0 - gap_extend[31:0] (Read/Write)
-- 0x74 : reserved
-- 0x78 : Data signal of y_drop
--        bit 31~0 - y_drop[31:0] (Read/Write)
-- 0x7c : reserved
-- 0x80 : Data signal of align_fields
--        bit 31~0 - align_fields[31:0] (Read/Write)
-- 0x84 : reserved
-- 0x88 : Data signal of ref_len
--        bit 31~0 - ref_len[31:0] (Read/Write)
-- 0x8c : reserved
-- 0x90 : Data signal of query_len
--        bit 31~0 - query_len[31:0] (Read/Write)
-- 0x94 : reserved
-- 0x98 : Data signal of ref_offset
--        bit 31~0 - ref_offset[31:0] (Read/Write)
-- 0x9c : Data signal of ref_offset
--        bit 31~0 - ref_offset[63:32] (Read/Write)
-- 0xa0 : reserved
-- 0xa4 : Data signal of query_offset
--        bit 31~0 - query_offset[31:0] (Read/Write)
-- 0xa8 : Data signal of query_offset
--        bit 31~0 - query_offset[63:32] (Read/Write)
-- 0xac : reserved
-- 0xb0 : Data signal of ref_seq
--        bit 31~0 - ref_seq[31:0] (Read/Write)
-- 0xb4 : Data signal of ref_seq
--        bit 31~0 - ref_seq[63:32] (Read/Write)
-- 0xb8 : reserved
-- 0xbc : Data signal of query_seq
--        bit 31~0 - query_seq[31:0] (Read/Write)
-- 0xc0 : Data signal of query_seq
--        bit 31~0 - query_seq[63:32] (Read/Write)
-- 0xc4 : reserved
-- 0xc8 : Data signal of tile_output
--        bit 31~0 - tile_output[31:0] (Read/Write)
-- 0xcc : Data signal of tile_output
--        bit 31~0 - tile_output[63:32] (Read/Write)
-- 0xd0 : reserved
-- 0xd4 : Data signal of tb_output
--        bit 31~0 - tb_output[31:0] (Read/Write)
-- 0xd8 : Data signal of tb_output
--        bit 31~0 - tb_output[63:32] (Read/Write)
-- 0xdc : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of GACTX_bank3_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL             : INTEGER := 16#00#;
    constant ADDR_GIE                 : INTEGER := 16#04#;
    constant ADDR_IER                 : INTEGER := 16#08#;
    constant ADDR_ISR                 : INTEGER := 16#0c#;
    constant ADDR_SUB_AA_DATA_0       : INTEGER := 16#10#;
    constant ADDR_SUB_AA_CTRL         : INTEGER := 16#14#;
    constant ADDR_SUB_AC_DATA_0       : INTEGER := 16#18#;
    constant ADDR_SUB_AC_CTRL         : INTEGER := 16#1c#;
    constant ADDR_SUB_AG_DATA_0       : INTEGER := 16#20#;
    constant ADDR_SUB_AG_CTRL         : INTEGER := 16#24#;
    constant ADDR_SUB_AT_DATA_0       : INTEGER := 16#28#;
    constant ADDR_SUB_AT_CTRL         : INTEGER := 16#2c#;
    constant ADDR_SUB_CC_DATA_0       : INTEGER := 16#30#;
    constant ADDR_SUB_CC_CTRL         : INTEGER := 16#34#;
    constant ADDR_SUB_CG_DATA_0       : INTEGER := 16#38#;
    constant ADDR_SUB_CG_CTRL         : INTEGER := 16#3c#;
    constant ADDR_SUB_CT_DATA_0       : INTEGER := 16#40#;
    constant ADDR_SUB_CT_CTRL         : INTEGER := 16#44#;
    constant ADDR_SUB_GG_DATA_0       : INTEGER := 16#48#;
    constant ADDR_SUB_GG_CTRL         : INTEGER := 16#4c#;
    constant ADDR_SUB_GT_DATA_0       : INTEGER := 16#50#;
    constant ADDR_SUB_GT_CTRL         : INTEGER := 16#54#;
    constant ADDR_SUB_TT_DATA_0       : INTEGER := 16#58#;
    constant ADDR_SUB_TT_CTRL         : INTEGER := 16#5c#;
    constant ADDR_SUB_N_DATA_0        : INTEGER := 16#60#;
    constant ADDR_SUB_N_CTRL          : INTEGER := 16#64#;
    constant ADDR_GAP_OPEN_DATA_0     : INTEGER := 16#68#;
    constant ADDR_GAP_OPEN_CTRL       : INTEGER := 16#6c#;
    constant ADDR_GAP_EXTEND_DATA_0   : INTEGER := 16#70#;
    constant ADDR_GAP_EXTEND_CTRL     : INTEGER := 16#74#;
    constant ADDR_Y_DROP_DATA_0       : INTEGER := 16#78#;
    constant ADDR_Y_DROP_CTRL         : INTEGER := 16#7c#;
    constant ADDR_ALIGN_FIELDS_DATA_0 : INTEGER := 16#80#;
    constant ADDR_ALIGN_FIELDS_CTRL   : INTEGER := 16#84#;
    constant ADDR_REF_LEN_DATA_0      : INTEGER := 16#88#;
    constant ADDR_REF_LEN_CTRL        : INTEGER := 16#8c#;
    constant ADDR_QUERY_LEN_DATA_0    : INTEGER := 16#90#;
    constant ADDR_QUERY_LEN_CTRL      : INTEGER := 16#94#;
    constant ADDR_REF_OFFSET_DATA_0   : INTEGER := 16#98#;
    constant ADDR_REF_OFFSET_DATA_1   : INTEGER := 16#9c#;
    constant ADDR_REF_OFFSET_CTRL     : INTEGER := 16#a0#;
    constant ADDR_QUERY_OFFSET_DATA_0 : INTEGER := 16#a4#;
    constant ADDR_QUERY_OFFSET_DATA_1 : INTEGER := 16#a8#;
    constant ADDR_QUERY_OFFSET_CTRL   : INTEGER := 16#ac#;
    constant ADDR_REF_SEQ_DATA_0      : INTEGER := 16#b0#;
    constant ADDR_REF_SEQ_DATA_1      : INTEGER := 16#b4#;
    constant ADDR_REF_SEQ_CTRL        : INTEGER := 16#b8#;
    constant ADDR_QUERY_SEQ_DATA_0    : INTEGER := 16#bc#;
    constant ADDR_QUERY_SEQ_DATA_1    : INTEGER := 16#c0#;
    constant ADDR_QUERY_SEQ_CTRL      : INTEGER := 16#c4#;
    constant ADDR_TILE_OUTPUT_DATA_0  : INTEGER := 16#c8#;
    constant ADDR_TILE_OUTPUT_DATA_1  : INTEGER := 16#cc#;
    constant ADDR_TILE_OUTPUT_CTRL    : INTEGER := 16#d0#;
    constant ADDR_TB_OUTPUT_DATA_0    : INTEGER := 16#d4#;
    constant ADDR_TB_OUTPUT_DATA_1    : INTEGER := 16#d8#;
    constant ADDR_TB_OUTPUT_CTRL      : INTEGER := 16#dc#;
    constant ADDR_BITS         : INTEGER := 8;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(31 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(31 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC;
    signal int_ap_ready        : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_sub_AA          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_sub_AC          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_sub_AG          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_sub_AT          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_sub_CC          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_sub_CG          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_sub_CT          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_sub_GG          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_sub_GT          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_sub_TT          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_sub_N           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_gap_open        : UNSIGNED(31 downto 0) := (others => '0');
    signal int_gap_extend      : UNSIGNED(31 downto 0) := (others => '0');
    signal int_y_drop          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_align_fields    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ref_len         : UNSIGNED(31 downto 0) := (others => '0');
    signal int_query_len       : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ref_offset      : UNSIGNED(63 downto 0) := (others => '0');
    signal int_query_offset    : UNSIGNED(63 downto 0) := (others => '0');
    signal int_ref_seq         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_query_seq       : UNSIGNED(63 downto 0) := (others => '0');
    signal int_tile_output     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_tb_output       : UNSIGNED(63 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------

-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data <= (7 => int_auto_restart, 3 => int_ap_ready, 2 => int_ap_idle, 1 => int_ap_done, 0 => int_ap_start, others => '0');
                    when ADDR_GIE =>
                        rdata_data <= (0 => int_gie, others => '0');
                    when ADDR_IER =>
                        rdata_data <= (1 => int_ier(1), 0 => int_ier(0), others => '0');
                    when ADDR_ISR =>
                        rdata_data <= (1 => int_isr(1), 0 => int_isr(0), others => '0');
                    when ADDR_SUB_AA_DATA_0 =>
                        rdata_data <= RESIZE(int_sub_AA(31 downto 0), 32);
                    when ADDR_SUB_AC_DATA_0 =>
                        rdata_data <= RESIZE(int_sub_AC(31 downto 0), 32);
                    when ADDR_SUB_AG_DATA_0 =>
                        rdata_data <= RESIZE(int_sub_AG(31 downto 0), 32);
                    when ADDR_SUB_AT_DATA_0 =>
                        rdata_data <= RESIZE(int_sub_AT(31 downto 0), 32);
                    when ADDR_SUB_CC_DATA_0 =>
                        rdata_data <= RESIZE(int_sub_CC(31 downto 0), 32);
                    when ADDR_SUB_CG_DATA_0 =>
                        rdata_data <= RESIZE(int_sub_CG(31 downto 0), 32);
                    when ADDR_SUB_CT_DATA_0 =>
                        rdata_data <= RESIZE(int_sub_CT(31 downto 0), 32);
                    when ADDR_SUB_GG_DATA_0 =>
                        rdata_data <= RESIZE(int_sub_GG(31 downto 0), 32);
                    when ADDR_SUB_GT_DATA_0 =>
                        rdata_data <= RESIZE(int_sub_GT(31 downto 0), 32);
                    when ADDR_SUB_TT_DATA_0 =>
                        rdata_data <= RESIZE(int_sub_TT(31 downto 0), 32);
                    when ADDR_SUB_N_DATA_0 =>
                        rdata_data <= RESIZE(int_sub_N(31 downto 0), 32);
                    when ADDR_GAP_OPEN_DATA_0 =>
                        rdata_data <= RESIZE(int_gap_open(31 downto 0), 32);
                    when ADDR_GAP_EXTEND_DATA_0 =>
                        rdata_data <= RESIZE(int_gap_extend(31 downto 0), 32);
                    when ADDR_Y_DROP_DATA_0 =>
                        rdata_data <= RESIZE(int_y_drop(31 downto 0), 32);
                    when ADDR_ALIGN_FIELDS_DATA_0 =>
                        rdata_data <= RESIZE(int_align_fields(31 downto 0), 32);
                    when ADDR_REF_LEN_DATA_0 =>
                        rdata_data <= RESIZE(int_ref_len(31 downto 0), 32);
                    when ADDR_QUERY_LEN_DATA_0 =>
                        rdata_data <= RESIZE(int_query_len(31 downto 0), 32);
                    when ADDR_REF_OFFSET_DATA_0 =>
                        rdata_data <= RESIZE(int_ref_offset(31 downto 0), 32);
                    when ADDR_REF_OFFSET_DATA_1 =>
                        rdata_data <= RESIZE(int_ref_offset(63 downto 32), 32);
                    when ADDR_QUERY_OFFSET_DATA_0 =>
                        rdata_data <= RESIZE(int_query_offset(31 downto 0), 32);
                    when ADDR_QUERY_OFFSET_DATA_1 =>
                        rdata_data <= RESIZE(int_query_offset(63 downto 32), 32);
                    when ADDR_REF_SEQ_DATA_0 =>
                        rdata_data <= RESIZE(int_ref_seq(31 downto 0), 32);
                    when ADDR_REF_SEQ_DATA_1 =>
                        rdata_data <= RESIZE(int_ref_seq(63 downto 32), 32);
                    when ADDR_QUERY_SEQ_DATA_0 =>
                        rdata_data <= RESIZE(int_query_seq(31 downto 0), 32);
                    when ADDR_QUERY_SEQ_DATA_1 =>
                        rdata_data <= RESIZE(int_query_seq(63 downto 32), 32);
                    when ADDR_TILE_OUTPUT_DATA_0 =>
                        rdata_data <= RESIZE(int_tile_output(31 downto 0), 32);
                    when ADDR_TILE_OUTPUT_DATA_1 =>
                        rdata_data <= RESIZE(int_tile_output(63 downto 32), 32);
                    when ADDR_TB_OUTPUT_DATA_0 =>
                        rdata_data <= RESIZE(int_tb_output(31 downto 0), 32);
                    when ADDR_TB_OUTPUT_DATA_1 =>
                        rdata_data <= RESIZE(int_tb_output(63 downto 32), 32);
                    when others =>
                        rdata_data <= (others => '0');
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1));
    ap_start             <= int_ap_start;
    sub_AA               <= STD_LOGIC_VECTOR(int_sub_AA);
    sub_AC               <= STD_LOGIC_VECTOR(int_sub_AC);
    sub_AG               <= STD_LOGIC_VECTOR(int_sub_AG);
    sub_AT               <= STD_LOGIC_VECTOR(int_sub_AT);
    sub_CC               <= STD_LOGIC_VECTOR(int_sub_CC);
    sub_CG               <= STD_LOGIC_VECTOR(int_sub_CG);
    sub_CT               <= STD_LOGIC_VECTOR(int_sub_CT);
    sub_GG               <= STD_LOGIC_VECTOR(int_sub_GG);
    sub_GT               <= STD_LOGIC_VECTOR(int_sub_GT);
    sub_TT               <= STD_LOGIC_VECTOR(int_sub_TT);
    sub_N                <= STD_LOGIC_VECTOR(int_sub_N);
    gap_open             <= STD_LOGIC_VECTOR(int_gap_open);
    gap_extend           <= STD_LOGIC_VECTOR(int_gap_extend);
    y_drop               <= STD_LOGIC_VECTOR(int_y_drop);
    align_fields         <= STD_LOGIC_VECTOR(int_align_fields);
    ref_len              <= STD_LOGIC_VECTOR(int_ref_len);
    query_len            <= STD_LOGIC_VECTOR(int_query_len);
    ref_offset           <= STD_LOGIC_VECTOR(int_ref_offset);
    query_offset         <= STD_LOGIC_VECTOR(int_query_offset);
    ref_seq              <= STD_LOGIC_VECTOR(int_ref_seq);
    query_seq            <= STD_LOGIC_VECTOR(int_query_seq);
    tile_output          <= STD_LOGIC_VECTOR(int_tile_output);
    tb_output            <= STD_LOGIC_VECTOR(int_tb_output);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (ap_done = '1') then
                    int_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_ready <= ap_ready;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= "00";
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SUB_AA_DATA_0) then
                    int_sub_AA(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_sub_AA(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SUB_AC_DATA_0) then
                    int_sub_AC(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_sub_AC(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SUB_AG_DATA_0) then
                    int_sub_AG(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_sub_AG(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SUB_AT_DATA_0) then
                    int_sub_AT(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_sub_AT(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SUB_CC_DATA_0) then
                    int_sub_CC(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_sub_CC(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SUB_CG_DATA_0) then
                    int_sub_CG(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_sub_CG(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SUB_CT_DATA_0) then
                    int_sub_CT(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_sub_CT(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SUB_GG_DATA_0) then
                    int_sub_GG(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_sub_GG(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SUB_GT_DATA_0) then
                    int_sub_GT(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_sub_GT(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SUB_TT_DATA_0) then
                    int_sub_TT(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_sub_TT(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SUB_N_DATA_0) then
                    int_sub_N(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_sub_N(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GAP_OPEN_DATA_0) then
                    int_gap_open(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gap_open(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GAP_EXTEND_DATA_0) then
                    int_gap_extend(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gap_extend(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_Y_DROP_DATA_0) then
                    int_y_drop(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_y_drop(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ALIGN_FIELDS_DATA_0) then
                    int_align_fields(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_align_fields(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_REF_LEN_DATA_0) then
                    int_ref_len(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_ref_len(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_QUERY_LEN_DATA_0) then
                    int_query_len(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_query_len(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_REF_OFFSET_DATA_0) then
                    int_ref_offset(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_ref_offset(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_REF_OFFSET_DATA_1) then
                    int_ref_offset(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_ref_offset(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_QUERY_OFFSET_DATA_0) then
                    int_query_offset(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_query_offset(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_QUERY_OFFSET_DATA_1) then
                    int_query_offset(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_query_offset(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_REF_SEQ_DATA_0) then
                    int_ref_seq(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_ref_seq(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_REF_SEQ_DATA_1) then
                    int_ref_seq(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_ref_seq(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_QUERY_SEQ_DATA_0) then
                    int_query_seq(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_query_seq(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_QUERY_SEQ_DATA_1) then
                    int_query_seq(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_query_seq(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TILE_OUTPUT_DATA_0) then
                    int_tile_output(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_tile_output(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TILE_OUTPUT_DATA_1) then
                    int_tile_output(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_tile_output(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TB_OUTPUT_DATA_0) then
                    int_tb_output(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_tb_output(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TB_OUTPUT_DATA_1) then
                    int_tb_output(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_tb_output(63 downto 32));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
