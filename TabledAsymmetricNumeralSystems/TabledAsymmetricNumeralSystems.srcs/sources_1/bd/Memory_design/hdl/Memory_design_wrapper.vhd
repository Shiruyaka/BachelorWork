--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
--Date        : Mon Aug 14 14:49:41 2017
--Host        : Tomek-Komputer running 64-bit major release  (build 9200)
--Command     : generate_target Memory_design_wrapper.bd
--Design      : Memory_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Memory_design_wrapper is
  port (
    DATA_IN_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_IN_BRAM_clk : in STD_LOGIC;
    DATA_IN_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_IN_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_IN_BRAM_en : in STD_LOGIC;
    DATA_IN_BRAM_rst : in STD_LOGIC;
    DATA_IN_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DATA_OUT_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_clk : in STD_LOGIC;
    DATA_OUT_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_en : in STD_LOGIC;
    DATA_OUT_BRAM_rst : in STD_LOGIC;
    DATA_OUT_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    ENCODING_TABLE_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ENCODING_TABLE_BRAM_clk : in STD_LOGIC;
    ENCODING_TABLE_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ENCODING_TABLE_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENCODING_TABLE_BRAM_en : in STD_LOGIC;
    ENCODING_TABLE_BRAM_rst : in STD_LOGIC;
    ENCODING_TABLE_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    NB_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    NB_BRAM_clk : in STD_LOGIC;
    NB_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    NB_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    NB_BRAM_en : in STD_LOGIC;
    NB_BRAM_rst : in STD_LOGIC;
    NB_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    START_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    START_BRAM_clk : in STD_LOGIC;
    START_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    START_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    START_BRAM_en : in STD_LOGIC;
    START_BRAM_rst : in STD_LOGIC;
    START_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end Memory_design_wrapper;

architecture STRUCTURE of Memory_design_wrapper is
  component Memory_design is
  port (
    START_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    START_BRAM_clk : in STD_LOGIC;
    START_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    START_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    START_BRAM_en : in STD_LOGIC;
    START_BRAM_rst : in STD_LOGIC;
    START_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    NB_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    NB_BRAM_clk : in STD_LOGIC;
    NB_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    NB_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    NB_BRAM_en : in STD_LOGIC;
    NB_BRAM_rst : in STD_LOGIC;
    NB_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    ENCODING_TABLE_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ENCODING_TABLE_BRAM_clk : in STD_LOGIC;
    ENCODING_TABLE_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ENCODING_TABLE_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENCODING_TABLE_BRAM_en : in STD_LOGIC;
    ENCODING_TABLE_BRAM_rst : in STD_LOGIC;
    ENCODING_TABLE_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DATA_IN_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_IN_BRAM_clk : in STD_LOGIC;
    DATA_IN_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_IN_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_IN_BRAM_en : in STD_LOGIC;
    DATA_IN_BRAM_rst : in STD_LOGIC;
    DATA_IN_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DATA_OUT_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_clk : in STD_LOGIC;
    DATA_OUT_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_en : in STD_LOGIC;
    DATA_OUT_BRAM_rst : in STD_LOGIC;
    DATA_OUT_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Memory_design;
begin
Memory_design_i: component Memory_design
     port map (
      DATA_IN_BRAM_addr(31 downto 0) => DATA_IN_BRAM_addr(31 downto 0),
      DATA_IN_BRAM_clk => DATA_IN_BRAM_clk,
      DATA_IN_BRAM_din(31 downto 0) => DATA_IN_BRAM_din(31 downto 0),
      DATA_IN_BRAM_dout(31 downto 0) => DATA_IN_BRAM_dout(31 downto 0),
      DATA_IN_BRAM_en => DATA_IN_BRAM_en,
      DATA_IN_BRAM_rst => DATA_IN_BRAM_rst,
      DATA_IN_BRAM_we(3 downto 0) => DATA_IN_BRAM_we(3 downto 0),
      DATA_OUT_BRAM_addr(31 downto 0) => DATA_OUT_BRAM_addr(31 downto 0),
      DATA_OUT_BRAM_clk => DATA_OUT_BRAM_clk,
      DATA_OUT_BRAM_din(31 downto 0) => DATA_OUT_BRAM_din(31 downto 0),
      DATA_OUT_BRAM_dout(31 downto 0) => DATA_OUT_BRAM_dout(31 downto 0),
      DATA_OUT_BRAM_en => DATA_OUT_BRAM_en,
      DATA_OUT_BRAM_rst => DATA_OUT_BRAM_rst,
      DATA_OUT_BRAM_we(3 downto 0) => DATA_OUT_BRAM_we(3 downto 0),
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      ENCODING_TABLE_BRAM_addr(31 downto 0) => ENCODING_TABLE_BRAM_addr(31 downto 0),
      ENCODING_TABLE_BRAM_clk => ENCODING_TABLE_BRAM_clk,
      ENCODING_TABLE_BRAM_din(31 downto 0) => ENCODING_TABLE_BRAM_din(31 downto 0),
      ENCODING_TABLE_BRAM_dout(31 downto 0) => ENCODING_TABLE_BRAM_dout(31 downto 0),
      ENCODING_TABLE_BRAM_en => ENCODING_TABLE_BRAM_en,
      ENCODING_TABLE_BRAM_rst => ENCODING_TABLE_BRAM_rst,
      ENCODING_TABLE_BRAM_we(3 downto 0) => ENCODING_TABLE_BRAM_we(3 downto 0),
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      NB_BRAM_addr(31 downto 0) => NB_BRAM_addr(31 downto 0),
      NB_BRAM_clk => NB_BRAM_clk,
      NB_BRAM_din(31 downto 0) => NB_BRAM_din(31 downto 0),
      NB_BRAM_dout(31 downto 0) => NB_BRAM_dout(31 downto 0),
      NB_BRAM_en => NB_BRAM_en,
      NB_BRAM_rst => NB_BRAM_rst,
      NB_BRAM_we(3 downto 0) => NB_BRAM_we(3 downto 0),
      START_BRAM_addr(31 downto 0) => START_BRAM_addr(31 downto 0),
      START_BRAM_clk => START_BRAM_clk,
      START_BRAM_din(31 downto 0) => START_BRAM_din(31 downto 0),
      START_BRAM_dout(31 downto 0) => START_BRAM_dout(31 downto 0),
      START_BRAM_en => START_BRAM_en,
      START_BRAM_rst => START_BRAM_rst,
      START_BRAM_we(3 downto 0) => START_BRAM_we(3 downto 0)
    );
end STRUCTURE;
