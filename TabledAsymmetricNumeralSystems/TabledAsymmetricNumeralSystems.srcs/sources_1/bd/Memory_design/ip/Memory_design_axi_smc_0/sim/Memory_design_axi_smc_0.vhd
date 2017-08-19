-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:smartconnect:1.0
-- IP Revision: 5

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Memory_design_axi_smc_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    S00_AXI_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    S00_AXI_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S00_AXI_awlen : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_awlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_awvalid : IN STD_LOGIC;
    S00_AXI_awready : OUT STD_LOGIC;
    S00_AXI_wid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    S00_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S00_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_wlast : IN STD_LOGIC;
    S00_AXI_wvalid : IN STD_LOGIC;
    S00_AXI_wready : OUT STD_LOGIC;
    S00_AXI_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    S00_AXI_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_bvalid : OUT STD_LOGIC;
    S00_AXI_bready : IN STD_LOGIC;
    S00_AXI_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    S00_AXI_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S00_AXI_arlen : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_arlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_arvalid : IN STD_LOGIC;
    S00_AXI_arready : OUT STD_LOGIC;
    S00_AXI_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    S00_AXI_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S00_AXI_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_rlast : OUT STD_LOGIC;
    S00_AXI_rvalid : OUT STD_LOGIC;
    S00_AXI_rready : IN STD_LOGIC;
    M00_AXI_awaddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    M00_AXI_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M00_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_awlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_awvalid : OUT STD_LOGIC;
    M00_AXI_awready : IN STD_LOGIC;
    M00_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M00_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_wlast : OUT STD_LOGIC;
    M00_AXI_wvalid : OUT STD_LOGIC;
    M00_AXI_wready : IN STD_LOGIC;
    M00_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_bvalid : IN STD_LOGIC;
    M00_AXI_bready : OUT STD_LOGIC;
    M00_AXI_araddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    M00_AXI_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M00_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_arlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_arvalid : OUT STD_LOGIC;
    M00_AXI_arready : IN STD_LOGIC;
    M00_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    M00_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_rlast : IN STD_LOGIC;
    M00_AXI_rvalid : IN STD_LOGIC;
    M00_AXI_rready : OUT STD_LOGIC;
    M01_AXI_awaddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    M01_AXI_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M01_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M01_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M01_AXI_awlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M01_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M01_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M01_AXI_awvalid : OUT STD_LOGIC;
    M01_AXI_awready : IN STD_LOGIC;
    M01_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M01_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M01_AXI_wlast : OUT STD_LOGIC;
    M01_AXI_wvalid : OUT STD_LOGIC;
    M01_AXI_wready : IN STD_LOGIC;
    M01_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M01_AXI_bvalid : IN STD_LOGIC;
    M01_AXI_bready : OUT STD_LOGIC;
    M01_AXI_araddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    M01_AXI_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M01_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M01_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M01_AXI_arlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M01_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M01_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M01_AXI_arvalid : OUT STD_LOGIC;
    M01_AXI_arready : IN STD_LOGIC;
    M01_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    M01_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M01_AXI_rlast : IN STD_LOGIC;
    M01_AXI_rvalid : IN STD_LOGIC;
    M01_AXI_rready : OUT STD_LOGIC;
    M02_AXI_awaddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    M02_AXI_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M02_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M02_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M02_AXI_awlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M02_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M02_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M02_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M02_AXI_awvalid : OUT STD_LOGIC;
    M02_AXI_awready : IN STD_LOGIC;
    M02_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M02_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M02_AXI_wlast : OUT STD_LOGIC;
    M02_AXI_wvalid : OUT STD_LOGIC;
    M02_AXI_wready : IN STD_LOGIC;
    M02_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M02_AXI_bvalid : IN STD_LOGIC;
    M02_AXI_bready : OUT STD_LOGIC;
    M02_AXI_araddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    M02_AXI_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M02_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M02_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M02_AXI_arlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M02_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M02_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M02_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M02_AXI_arvalid : OUT STD_LOGIC;
    M02_AXI_arready : IN STD_LOGIC;
    M02_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    M02_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M02_AXI_rlast : IN STD_LOGIC;
    M02_AXI_rvalid : IN STD_LOGIC;
    M02_AXI_rready : OUT STD_LOGIC;
    M03_AXI_awaddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    M03_AXI_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M03_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M03_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M03_AXI_awlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M03_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M03_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M03_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M03_AXI_awvalid : OUT STD_LOGIC;
    M03_AXI_awready : IN STD_LOGIC;
    M03_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M03_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M03_AXI_wlast : OUT STD_LOGIC;
    M03_AXI_wvalid : OUT STD_LOGIC;
    M03_AXI_wready : IN STD_LOGIC;
    M03_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M03_AXI_bvalid : IN STD_LOGIC;
    M03_AXI_bready : OUT STD_LOGIC;
    M03_AXI_araddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    M03_AXI_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M03_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M03_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M03_AXI_arlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M03_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M03_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M03_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M03_AXI_arvalid : OUT STD_LOGIC;
    M03_AXI_arready : IN STD_LOGIC;
    M03_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    M03_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M03_AXI_rlast : IN STD_LOGIC;
    M03_AXI_rvalid : IN STD_LOGIC;
    M03_AXI_rready : OUT STD_LOGIC;
    M04_AXI_awaddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    M04_AXI_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M04_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M04_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M04_AXI_awlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M04_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M04_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M04_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M04_AXI_awvalid : OUT STD_LOGIC;
    M04_AXI_awready : IN STD_LOGIC;
    M04_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M04_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M04_AXI_wlast : OUT STD_LOGIC;
    M04_AXI_wvalid : OUT STD_LOGIC;
    M04_AXI_wready : IN STD_LOGIC;
    M04_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M04_AXI_bvalid : IN STD_LOGIC;
    M04_AXI_bready : OUT STD_LOGIC;
    M04_AXI_araddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    M04_AXI_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M04_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M04_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M04_AXI_arlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M04_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M04_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M04_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M04_AXI_arvalid : OUT STD_LOGIC;
    M04_AXI_arready : IN STD_LOGIC;
    M04_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    M04_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M04_AXI_rlast : IN STD_LOGIC;
    M04_AXI_rvalid : IN STD_LOGIC;
    M04_AXI_rready : OUT STD_LOGIC
  );
END Memory_design_axi_smc_0;

ARCHITECTURE Memory_design_axi_smc_0_arch OF Memory_design_axi_smc_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Memory_design_axi_smc_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_3fbf IS
    PORT (
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      S00_AXI_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      S00_AXI_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S00_AXI_awlen : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_awlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_awvalid : IN STD_LOGIC;
      S00_AXI_awready : OUT STD_LOGIC;
      S00_AXI_wid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      S00_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S00_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_wlast : IN STD_LOGIC;
      S00_AXI_wvalid : IN STD_LOGIC;
      S00_AXI_wready : OUT STD_LOGIC;
      S00_AXI_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      S00_AXI_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_bvalid : OUT STD_LOGIC;
      S00_AXI_bready : IN STD_LOGIC;
      S00_AXI_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      S00_AXI_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S00_AXI_arlen : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_arlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_arvalid : IN STD_LOGIC;
      S00_AXI_arready : OUT STD_LOGIC;
      S00_AXI_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      S00_AXI_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      S00_AXI_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_rlast : OUT STD_LOGIC;
      S00_AXI_rvalid : OUT STD_LOGIC;
      S00_AXI_rready : IN STD_LOGIC;
      M00_AXI_awaddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      M00_AXI_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M00_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_awlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M00_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_awvalid : OUT STD_LOGIC;
      M00_AXI_awready : IN STD_LOGIC;
      M00_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M00_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_wlast : OUT STD_LOGIC;
      M00_AXI_wvalid : OUT STD_LOGIC;
      M00_AXI_wready : IN STD_LOGIC;
      M00_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_bvalid : IN STD_LOGIC;
      M00_AXI_bready : OUT STD_LOGIC;
      M00_AXI_araddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      M00_AXI_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M00_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_arlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M00_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_arvalid : OUT STD_LOGIC;
      M00_AXI_arready : IN STD_LOGIC;
      M00_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      M00_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_rlast : IN STD_LOGIC;
      M00_AXI_rvalid : IN STD_LOGIC;
      M00_AXI_rready : OUT STD_LOGIC;
      M01_AXI_awaddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      M01_AXI_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M01_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M01_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M01_AXI_awlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M01_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M01_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M01_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M01_AXI_awvalid : OUT STD_LOGIC;
      M01_AXI_awready : IN STD_LOGIC;
      M01_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M01_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M01_AXI_wlast : OUT STD_LOGIC;
      M01_AXI_wvalid : OUT STD_LOGIC;
      M01_AXI_wready : IN STD_LOGIC;
      M01_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M01_AXI_bvalid : IN STD_LOGIC;
      M01_AXI_bready : OUT STD_LOGIC;
      M01_AXI_araddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      M01_AXI_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M01_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M01_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M01_AXI_arlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M01_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M01_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M01_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M01_AXI_arvalid : OUT STD_LOGIC;
      M01_AXI_arready : IN STD_LOGIC;
      M01_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      M01_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M01_AXI_rlast : IN STD_LOGIC;
      M01_AXI_rvalid : IN STD_LOGIC;
      M01_AXI_rready : OUT STD_LOGIC;
      M02_AXI_awaddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      M02_AXI_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M02_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M02_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M02_AXI_awlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M02_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M02_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M02_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M02_AXI_awvalid : OUT STD_LOGIC;
      M02_AXI_awready : IN STD_LOGIC;
      M02_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M02_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M02_AXI_wlast : OUT STD_LOGIC;
      M02_AXI_wvalid : OUT STD_LOGIC;
      M02_AXI_wready : IN STD_LOGIC;
      M02_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M02_AXI_bvalid : IN STD_LOGIC;
      M02_AXI_bready : OUT STD_LOGIC;
      M02_AXI_araddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      M02_AXI_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M02_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M02_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M02_AXI_arlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M02_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M02_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M02_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M02_AXI_arvalid : OUT STD_LOGIC;
      M02_AXI_arready : IN STD_LOGIC;
      M02_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      M02_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M02_AXI_rlast : IN STD_LOGIC;
      M02_AXI_rvalid : IN STD_LOGIC;
      M02_AXI_rready : OUT STD_LOGIC;
      M03_AXI_awaddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      M03_AXI_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M03_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M03_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M03_AXI_awlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M03_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M03_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M03_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M03_AXI_awvalid : OUT STD_LOGIC;
      M03_AXI_awready : IN STD_LOGIC;
      M03_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M03_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M03_AXI_wlast : OUT STD_LOGIC;
      M03_AXI_wvalid : OUT STD_LOGIC;
      M03_AXI_wready : IN STD_LOGIC;
      M03_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M03_AXI_bvalid : IN STD_LOGIC;
      M03_AXI_bready : OUT STD_LOGIC;
      M03_AXI_araddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      M03_AXI_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M03_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M03_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M03_AXI_arlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M03_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M03_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M03_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M03_AXI_arvalid : OUT STD_LOGIC;
      M03_AXI_arready : IN STD_LOGIC;
      M03_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      M03_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M03_AXI_rlast : IN STD_LOGIC;
      M03_AXI_rvalid : IN STD_LOGIC;
      M03_AXI_rready : OUT STD_LOGIC;
      M04_AXI_awaddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      M04_AXI_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M04_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M04_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M04_AXI_awlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M04_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M04_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M04_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M04_AXI_awvalid : OUT STD_LOGIC;
      M04_AXI_awready : IN STD_LOGIC;
      M04_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M04_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M04_AXI_wlast : OUT STD_LOGIC;
      M04_AXI_wvalid : OUT STD_LOGIC;
      M04_AXI_wready : IN STD_LOGIC;
      M04_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M04_AXI_bvalid : IN STD_LOGIC;
      M04_AXI_bready : OUT STD_LOGIC;
      M04_AXI_araddr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      M04_AXI_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M04_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M04_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M04_AXI_arlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M04_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M04_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M04_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M04_AXI_arvalid : OUT STD_LOGIC;
      M04_AXI_arready : IN STD_LOGIC;
      M04_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      M04_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M04_AXI_rlast : IN STD_LOGIC;
      M04_AXI_rvalid : IN STD_LOGIC;
      M04_AXI_rready : OUT STD_LOGIC
    );
  END COMPONENT bd_3fbf;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M02_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M03_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M03_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M04_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M04_AXI RREADY";
BEGIN
  U0 : bd_3fbf
    PORT MAP (
      aclk => aclk,
      aresetn => aresetn,
      S00_AXI_awid => S00_AXI_awid,
      S00_AXI_awaddr => S00_AXI_awaddr,
      S00_AXI_awlen => S00_AXI_awlen,
      S00_AXI_awsize => S00_AXI_awsize,
      S00_AXI_awburst => S00_AXI_awburst,
      S00_AXI_awlock => S00_AXI_awlock,
      S00_AXI_awcache => S00_AXI_awcache,
      S00_AXI_awprot => S00_AXI_awprot,
      S00_AXI_awqos => S00_AXI_awqos,
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_wid => S00_AXI_wid,
      S00_AXI_wdata => S00_AXI_wdata,
      S00_AXI_wstrb => S00_AXI_wstrb,
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wvalid => S00_AXI_wvalid,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_bid => S00_AXI_bid,
      S00_AXI_bresp => S00_AXI_bresp,
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_arid => S00_AXI_arid,
      S00_AXI_araddr => S00_AXI_araddr,
      S00_AXI_arlen => S00_AXI_arlen,
      S00_AXI_arsize => S00_AXI_arsize,
      S00_AXI_arburst => S00_AXI_arburst,
      S00_AXI_arlock => S00_AXI_arlock,
      S00_AXI_arcache => S00_AXI_arcache,
      S00_AXI_arprot => S00_AXI_arprot,
      S00_AXI_arqos => S00_AXI_arqos,
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_rid => S00_AXI_rid,
      S00_AXI_rdata => S00_AXI_rdata,
      S00_AXI_rresp => S00_AXI_rresp,
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_rready => S00_AXI_rready,
      M00_AXI_awaddr => M00_AXI_awaddr,
      M00_AXI_awlen => M00_AXI_awlen,
      M00_AXI_awsize => M00_AXI_awsize,
      M00_AXI_awburst => M00_AXI_awburst,
      M00_AXI_awlock => M00_AXI_awlock,
      M00_AXI_awcache => M00_AXI_awcache,
      M00_AXI_awprot => M00_AXI_awprot,
      M00_AXI_awqos => M00_AXI_awqos,
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_wdata => M00_AXI_wdata,
      M00_AXI_wstrb => M00_AXI_wstrb,
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wvalid => M00_AXI_wvalid,
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_bresp => M00_AXI_bresp,
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_araddr => M00_AXI_araddr,
      M00_AXI_arlen => M00_AXI_arlen,
      M00_AXI_arsize => M00_AXI_arsize,
      M00_AXI_arburst => M00_AXI_arburst,
      M00_AXI_arlock => M00_AXI_arlock,
      M00_AXI_arcache => M00_AXI_arcache,
      M00_AXI_arprot => M00_AXI_arprot,
      M00_AXI_arqos => M00_AXI_arqos,
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_rdata => M00_AXI_rdata,
      M00_AXI_rresp => M00_AXI_rresp,
      M00_AXI_rlast => M00_AXI_rlast,
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_rready => M00_AXI_rready,
      M01_AXI_awaddr => M01_AXI_awaddr,
      M01_AXI_awlen => M01_AXI_awlen,
      M01_AXI_awsize => M01_AXI_awsize,
      M01_AXI_awburst => M01_AXI_awburst,
      M01_AXI_awlock => M01_AXI_awlock,
      M01_AXI_awcache => M01_AXI_awcache,
      M01_AXI_awprot => M01_AXI_awprot,
      M01_AXI_awqos => M01_AXI_awqos,
      M01_AXI_awvalid => M01_AXI_awvalid,
      M01_AXI_awready => M01_AXI_awready,
      M01_AXI_wdata => M01_AXI_wdata,
      M01_AXI_wstrb => M01_AXI_wstrb,
      M01_AXI_wlast => M01_AXI_wlast,
      M01_AXI_wvalid => M01_AXI_wvalid,
      M01_AXI_wready => M01_AXI_wready,
      M01_AXI_bresp => M01_AXI_bresp,
      M01_AXI_bvalid => M01_AXI_bvalid,
      M01_AXI_bready => M01_AXI_bready,
      M01_AXI_araddr => M01_AXI_araddr,
      M01_AXI_arlen => M01_AXI_arlen,
      M01_AXI_arsize => M01_AXI_arsize,
      M01_AXI_arburst => M01_AXI_arburst,
      M01_AXI_arlock => M01_AXI_arlock,
      M01_AXI_arcache => M01_AXI_arcache,
      M01_AXI_arprot => M01_AXI_arprot,
      M01_AXI_arqos => M01_AXI_arqos,
      M01_AXI_arvalid => M01_AXI_arvalid,
      M01_AXI_arready => M01_AXI_arready,
      M01_AXI_rdata => M01_AXI_rdata,
      M01_AXI_rresp => M01_AXI_rresp,
      M01_AXI_rlast => M01_AXI_rlast,
      M01_AXI_rvalid => M01_AXI_rvalid,
      M01_AXI_rready => M01_AXI_rready,
      M02_AXI_awaddr => M02_AXI_awaddr,
      M02_AXI_awlen => M02_AXI_awlen,
      M02_AXI_awsize => M02_AXI_awsize,
      M02_AXI_awburst => M02_AXI_awburst,
      M02_AXI_awlock => M02_AXI_awlock,
      M02_AXI_awcache => M02_AXI_awcache,
      M02_AXI_awprot => M02_AXI_awprot,
      M02_AXI_awqos => M02_AXI_awqos,
      M02_AXI_awvalid => M02_AXI_awvalid,
      M02_AXI_awready => M02_AXI_awready,
      M02_AXI_wdata => M02_AXI_wdata,
      M02_AXI_wstrb => M02_AXI_wstrb,
      M02_AXI_wlast => M02_AXI_wlast,
      M02_AXI_wvalid => M02_AXI_wvalid,
      M02_AXI_wready => M02_AXI_wready,
      M02_AXI_bresp => M02_AXI_bresp,
      M02_AXI_bvalid => M02_AXI_bvalid,
      M02_AXI_bready => M02_AXI_bready,
      M02_AXI_araddr => M02_AXI_araddr,
      M02_AXI_arlen => M02_AXI_arlen,
      M02_AXI_arsize => M02_AXI_arsize,
      M02_AXI_arburst => M02_AXI_arburst,
      M02_AXI_arlock => M02_AXI_arlock,
      M02_AXI_arcache => M02_AXI_arcache,
      M02_AXI_arprot => M02_AXI_arprot,
      M02_AXI_arqos => M02_AXI_arqos,
      M02_AXI_arvalid => M02_AXI_arvalid,
      M02_AXI_arready => M02_AXI_arready,
      M02_AXI_rdata => M02_AXI_rdata,
      M02_AXI_rresp => M02_AXI_rresp,
      M02_AXI_rlast => M02_AXI_rlast,
      M02_AXI_rvalid => M02_AXI_rvalid,
      M02_AXI_rready => M02_AXI_rready,
      M03_AXI_awaddr => M03_AXI_awaddr,
      M03_AXI_awlen => M03_AXI_awlen,
      M03_AXI_awsize => M03_AXI_awsize,
      M03_AXI_awburst => M03_AXI_awburst,
      M03_AXI_awlock => M03_AXI_awlock,
      M03_AXI_awcache => M03_AXI_awcache,
      M03_AXI_awprot => M03_AXI_awprot,
      M03_AXI_awqos => M03_AXI_awqos,
      M03_AXI_awvalid => M03_AXI_awvalid,
      M03_AXI_awready => M03_AXI_awready,
      M03_AXI_wdata => M03_AXI_wdata,
      M03_AXI_wstrb => M03_AXI_wstrb,
      M03_AXI_wlast => M03_AXI_wlast,
      M03_AXI_wvalid => M03_AXI_wvalid,
      M03_AXI_wready => M03_AXI_wready,
      M03_AXI_bresp => M03_AXI_bresp,
      M03_AXI_bvalid => M03_AXI_bvalid,
      M03_AXI_bready => M03_AXI_bready,
      M03_AXI_araddr => M03_AXI_araddr,
      M03_AXI_arlen => M03_AXI_arlen,
      M03_AXI_arsize => M03_AXI_arsize,
      M03_AXI_arburst => M03_AXI_arburst,
      M03_AXI_arlock => M03_AXI_arlock,
      M03_AXI_arcache => M03_AXI_arcache,
      M03_AXI_arprot => M03_AXI_arprot,
      M03_AXI_arqos => M03_AXI_arqos,
      M03_AXI_arvalid => M03_AXI_arvalid,
      M03_AXI_arready => M03_AXI_arready,
      M03_AXI_rdata => M03_AXI_rdata,
      M03_AXI_rresp => M03_AXI_rresp,
      M03_AXI_rlast => M03_AXI_rlast,
      M03_AXI_rvalid => M03_AXI_rvalid,
      M03_AXI_rready => M03_AXI_rready,
      M04_AXI_awaddr => M04_AXI_awaddr,
      M04_AXI_awlen => M04_AXI_awlen,
      M04_AXI_awsize => M04_AXI_awsize,
      M04_AXI_awburst => M04_AXI_awburst,
      M04_AXI_awlock => M04_AXI_awlock,
      M04_AXI_awcache => M04_AXI_awcache,
      M04_AXI_awprot => M04_AXI_awprot,
      M04_AXI_awqos => M04_AXI_awqos,
      M04_AXI_awvalid => M04_AXI_awvalid,
      M04_AXI_awready => M04_AXI_awready,
      M04_AXI_wdata => M04_AXI_wdata,
      M04_AXI_wstrb => M04_AXI_wstrb,
      M04_AXI_wlast => M04_AXI_wlast,
      M04_AXI_wvalid => M04_AXI_wvalid,
      M04_AXI_wready => M04_AXI_wready,
      M04_AXI_bresp => M04_AXI_bresp,
      M04_AXI_bvalid => M04_AXI_bvalid,
      M04_AXI_bready => M04_AXI_bready,
      M04_AXI_araddr => M04_AXI_araddr,
      M04_AXI_arlen => M04_AXI_arlen,
      M04_AXI_arsize => M04_AXI_arsize,
      M04_AXI_arburst => M04_AXI_arburst,
      M04_AXI_arlock => M04_AXI_arlock,
      M04_AXI_arcache => M04_AXI_arcache,
      M04_AXI_arprot => M04_AXI_arprot,
      M04_AXI_arqos => M04_AXI_arqos,
      M04_AXI_arvalid => M04_AXI_arvalid,
      M04_AXI_arready => M04_AXI_arready,
      M04_AXI_rdata => M04_AXI_rdata,
      M04_AXI_rresp => M04_AXI_rresp,
      M04_AXI_rlast => M04_AXI_rlast,
      M04_AXI_rvalid => M04_AXI_rvalid,
      M04_AXI_rready => M04_AXI_rready
    );
END Memory_design_axi_smc_0_arch;
