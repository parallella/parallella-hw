-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.3.1 (lin64) Build 1056140 Thu Oct 30 16:30:39 MDT 2014
-- Date        : Wed Apr  8 23:17:21 2015
-- Host        : parallella running 64-bit Ubuntu 14.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/aolofsson/Work_all/parallella-hw/fpga/ip/xilinx/axi_bram_ctrl_16b/axi_bram_ctrl_16b_funcsim.vhdl
-- Design      : axi_bram_ctrl_16b
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_16b_axi_lite is
  port (
    s_axi_awready : out STD_LOGIC;
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_16b_axi_lite : entity is "axi_lite";
end axi_bram_ctrl_16b_axi_lite;

architecture STRUCTURE of axi_bram_ctrl_16b_axi_lite is
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal axi_aresetn_d1 : STD_LOGIC;
  signal axi_wready_cmb : STD_LOGIC;
  signal bvalid_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal lite_sm_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal lite_sm_ns0 : STD_LOGIC;
  signal \n_0_FSM_sequential_lite_sm_cs[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_lite_sm_cs[0]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_lite_sm_cs[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_lite_sm_cs[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_lite_sm_cs[1]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_lite_sm_cs[1]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_sequential_lite_sm_cs[1]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_sequential_lite_sm_cs[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_lite_sm_cs[2]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_ARREADY.axi_arready_int_i_1\ : STD_LOGIC;
  signal \n_0_GEN_R.axi_rvalid_int_i_1\ : STD_LOGIC;
  signal n_0_axi_bvalid_int_i_1 : STD_LOGIC;
  signal n_0_axi_wready_int_i_2 : STD_LOGIC;
  signal n_0_axi_wready_int_i_3 : STD_LOGIC;
  signal n_0_bram_en_a_INST_0_i_1 : STD_LOGIC;
  signal n_0_bram_en_a_INST_0_i_2 : STD_LOGIC;
  signal n_0_bram_en_a_INST_0_i_3 : STD_LOGIC;
  signal n_0_bram_en_a_INST_0_i_4 : STD_LOGIC;
  signal \n_0_bram_we_a[3]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[0]_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[1]_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[1]_i_2\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[2]_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[2]_i_2\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[2]_i_3\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[2]_i_4\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_lite_sm_cs_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_lite_sm_cs_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_lite_sm_cs_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_BID_int[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_int_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of bram_en_a_INST_0_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bvalid_cnt[1]_i_2\ : label is "soft_lutpair0";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
\FSM_sequential_lite_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBABAAA888A8"
    )
    port map (
      I0 => \n_0_FSM_sequential_lite_sm_cs[0]_i_2\,
      I1 => \n_0_FSM_sequential_lite_sm_cs[1]_i_3\,
      I2 => \n_0_FSM_sequential_lite_sm_cs[1]_i_4\,
      I3 => n_0_bram_en_a_INST_0_i_2,
      I4 => \n_0_FSM_sequential_lite_sm_cs[1]_i_5\,
      I5 => lite_sm_cs(0),
      O => \n_0_FSM_sequential_lite_sm_cs[0]_i_1\
    );
\FSM_sequential_lite_sm_cs[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => lite_sm_cs(2),
      I2 => lite_sm_cs(0),
      O => \n_0_FSM_sequential_lite_sm_cs[0]_i_2\
    );
\FSM_sequential_lite_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBABAAA888A8"
    )
    port map (
      I0 => \n_0_FSM_sequential_lite_sm_cs[1]_i_2\,
      I1 => \n_0_FSM_sequential_lite_sm_cs[1]_i_3\,
      I2 => \n_0_FSM_sequential_lite_sm_cs[1]_i_4\,
      I3 => n_0_bram_en_a_INST_0_i_2,
      I4 => \n_0_FSM_sequential_lite_sm_cs[1]_i_5\,
      I5 => lite_sm_cs(1),
      O => \n_0_FSM_sequential_lite_sm_cs[1]_i_1\
    );
\FSM_sequential_lite_sm_cs[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lite_sm_cs(2),
      I1 => lite_sm_cs(1),
      I2 => s_axi_arvalid,
      I3 => lite_sm_cs(0),
      O => \n_0_FSM_sequential_lite_sm_cs[1]_i_2\
    );
\FSM_sequential_lite_sm_cs[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => lite_sm_cs(1),
      I1 => lite_sm_cs(2),
      O => \n_0_FSM_sequential_lite_sm_cs[1]_i_3\
    );
\FSM_sequential_lite_sm_cs[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
    port map (
      I0 => s_axi_rready,
      I1 => \^o3\,
      I2 => lite_sm_cs(0),
      I3 => s_axi_arvalid,
      O => \n_0_FSM_sequential_lite_sm_cs[1]_i_4\
    );
\FSM_sequential_lite_sm_cs[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F808F808F80"
    )
    port map (
      I0 => s_axi_rready,
      I1 => \^o3\,
      I2 => lite_sm_cs(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_wvalid,
      I5 => s_axi_awvalid,
      O => \n_0_FSM_sequential_lite_sm_cs[1]_i_5\
    );
\FSM_sequential_lite_sm_cs[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => \n_0_FSM_sequential_lite_sm_cs[2]_i_2\,
      I1 => lite_sm_cs(2),
      O => \n_0_FSM_sequential_lite_sm_cs[2]_i_1\
    );
\FSM_sequential_lite_sm_cs[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAEFEAEFFAFFEAE"
    )
    port map (
      I0 => \n_0_FSM_sequential_lite_sm_cs[1]_i_3\,
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(0),
      I3 => lite_sm_ns0,
      I4 => n_0_bram_en_a_INST_0_i_2,
      I5 => n_0_axi_wready_int_i_2,
      O => \n_0_FSM_sequential_lite_sm_cs[2]_i_2\
    );
\FSM_sequential_lite_sm_cs[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_axi_rready,
      I1 => \^o3\,
      O => lite_sm_ns0
    );
\FSM_sequential_lite_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_FSM_sequential_lite_sm_cs[0]_i_1\,
      Q => lite_sm_cs(0),
      R => \^o1\
    );
\FSM_sequential_lite_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_FSM_sequential_lite_sm_cs[1]_i_1\,
      Q => lite_sm_cs(1),
      R => \^o1\
    );
\FSM_sequential_lite_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_FSM_sequential_lite_sm_cs[2]_i_1\,
      Q => lite_sm_cs(2),
      R => \^o1\
    );
\GEN_ARREADY.axi_arready_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00D500D500"
    )
    port map (
      I0 => axi_aresetn_d1,
      I1 => s_axi_rready,
      I2 => \^o3\,
      I3 => s_axi_aresetn,
      I4 => s_axi_arvalid,
      I5 => \^s_axi_arready\,
      O => \n_0_GEN_ARREADY.axi_arready_int_i_1\
    );
\GEN_ARREADY.axi_arready_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_ARREADY.axi_arready_int_i_1\,
      Q => \^s_axi_arready\,
      R => '0'
    );
\GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_BID_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
    port map (
      I0 => s_axi_awid(0),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_bid(0),
      O => O4
    );
\GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_RID_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
    port map (
      I0 => s_axi_arid(0),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => s_axi_rid(0),
      O => O5
    );
\GEN_R.axi_rvalid_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0010001000"
    )
    port map (
      I0 => lite_sm_cs(2),
      I1 => lite_sm_cs(0),
      I2 => s_axi_arvalid,
      I3 => s_axi_aresetn,
      I4 => s_axi_rready,
      I5 => \^o3\,
      O => \n_0_GEN_R.axi_rvalid_int_i_1\
    );
\GEN_R.axi_rvalid_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_R.axi_rvalid_int_i_1\,
      Q => \^o3\,
      R => '0'
    );
axi_aresetn_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_aresetn,
      Q => axi_aresetn_d1,
      R => '0'
    );
axi_bvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8AAA8AAA8AAA8"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => bvalid_cnt(2),
      I2 => bvalid_cnt(1),
      I3 => bvalid_cnt(0),
      I4 => \^o2\,
      I5 => s_axi_bready,
      O => n_0_axi_bvalid_int_i_1
    );
axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_bvalid_int_i_1,
      Q => \^o2\,
      R => '0'
    );
axi_wready_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF101100000000"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => n_0_axi_wready_int_i_2,
      I2 => \n_0_bram_we_a[3]_INST_0_i_1\,
      I3 => bvalid_cnt(2),
      I4 => lite_sm_cs(2),
      I5 => n_0_axi_wready_int_i_3,
      O => axi_wready_cmb
    );
axi_wready_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => n_0_axi_wready_int_i_2
    );
axi_wready_int_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => lite_sm_cs(1),
      I1 => lite_sm_cs(0),
      O => n_0_axi_wready_int_i_3
    );
axi_wready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready_cmb,
      Q => \^s_axi_awready\,
      R => \^o1\
    );
\bram_addr_a[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(8),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(8),
      O => bram_addr_a(8)
    );
\bram_addr_a[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(9),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(9),
      O => bram_addr_a(9)
    );
\bram_addr_a[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(10),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(10),
      O => bram_addr_a(10)
    );
\bram_addr_a[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(11),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(11),
      O => bram_addr_a(11)
    );
\bram_addr_a[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(12),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(12),
      O => bram_addr_a(12)
    );
\bram_addr_a[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(13),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(13),
      O => bram_addr_a(13)
    );
\bram_addr_a[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(0),
      O => bram_addr_a(0)
    );
\bram_addr_a[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(1),
      O => bram_addr_a(1)
    );
\bram_addr_a[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(2),
      O => bram_addr_a(2)
    );
\bram_addr_a[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(3),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(3),
      O => bram_addr_a(3)
    );
\bram_addr_a[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(4),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(4),
      O => bram_addr_a(4)
    );
\bram_addr_a[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(5),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(5),
      O => bram_addr_a(5)
    );
\bram_addr_a[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(6),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(6),
      O => bram_addr_a(6)
    );
\bram_addr_a[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAEEAAA0AA22"
    )
    port map (
      I0 => s_axi_awaddr(7),
      I1 => s_axi_arvalid,
      I2 => lite_sm_cs(1),
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => s_axi_araddr(7),
      O => bram_addr_a(7)
    );
bram_en_a_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => n_0_bram_en_a_INST_0_i_1,
      I2 => n_0_bram_en_a_INST_0_i_2,
      I3 => n_0_bram_en_a_INST_0_i_3,
      I4 => lite_sm_cs(0),
      I5 => n_0_bram_en_a_INST_0_i_4,
      O => bram_en_a
    );
bram_en_a_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => lite_sm_cs(2),
      O => n_0_bram_en_a_INST_0_i_1
    );
bram_en_a_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => bvalid_cnt(1),
      I1 => bvalid_cnt(0),
      I2 => bvalid_cnt(2),
      O => n_0_bram_en_a_INST_0_i_2
    );
bram_en_a_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF40"
    )
    port map (
      I0 => lite_sm_cs(1),
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_arvalid,
      I4 => lite_sm_cs(2),
      O => n_0_bram_en_a_INST_0_i_3
    );
bram_en_a_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lite_sm_cs(2),
      I1 => lite_sm_cs(1),
      O => n_0_bram_en_a_INST_0_i_4
    );
bram_rst_a_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_axi_aresetn,
      O => \^o1\
    );
\bram_we_a[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA0051"
    )
    port map (
      I0 => lite_sm_cs(2),
      I1 => bvalid_cnt(2),
      I2 => \n_0_bram_we_a[3]_INST_0_i_1\,
      I3 => I1,
      I4 => lite_sm_cs(0),
      I5 => lite_sm_cs(1),
      O => bram_we_a(0)
    );
\bram_we_a[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA0051"
    )
    port map (
      I0 => lite_sm_cs(2),
      I1 => bvalid_cnt(2),
      I2 => \n_0_bram_we_a[3]_INST_0_i_1\,
      I3 => I2,
      I4 => lite_sm_cs(0),
      I5 => lite_sm_cs(1),
      O => bram_we_a(1)
    );
\bram_we_a[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA0051"
    )
    port map (
      I0 => lite_sm_cs(2),
      I1 => bvalid_cnt(2),
      I2 => \n_0_bram_we_a[3]_INST_0_i_1\,
      I3 => I3,
      I4 => lite_sm_cs(0),
      I5 => lite_sm_cs(1),
      O => bram_we_a(2)
    );
\bram_we_a[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA0051"
    )
    port map (
      I0 => lite_sm_cs(2),
      I1 => bvalid_cnt(2),
      I2 => \n_0_bram_we_a[3]_INST_0_i_1\,
      I3 => I4,
      I4 => lite_sm_cs(0),
      I5 => lite_sm_cs(1),
      O => bram_we_a(3)
    );
\bram_we_a[3]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => bvalid_cnt(0),
      I1 => bvalid_cnt(1),
      O => \n_0_bram_we_a[3]_INST_0_i_1\
    );
\bvalid_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0F08F0F4F0F70F0"
    )
    port map (
      I0 => \n_0_bvalid_cnt[2]_i_2\,
      I1 => bvalid_cnt(2),
      I2 => bvalid_cnt(0),
      I3 => bvalid_cnt(1),
      I4 => \n_0_bvalid_cnt[2]_i_3\,
      I5 => \n_0_bvalid_cnt[1]_i_2\,
      O => \n_0_bvalid_cnt[0]_i_1\
    );
\bvalid_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F00F4FF07F00"
    )
    port map (
      I0 => \n_0_bvalid_cnt[2]_i_2\,
      I1 => bvalid_cnt(2),
      I2 => bvalid_cnt(0),
      I3 => bvalid_cnt(1),
      I4 => \n_0_bvalid_cnt[2]_i_3\,
      I5 => \n_0_bvalid_cnt[1]_i_2\,
      O => \n_0_bvalid_cnt[1]_i_1\
    );
\bvalid_cnt[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
    port map (
      I0 => bvalid_cnt(2),
      I1 => bvalid_cnt(1),
      I2 => bvalid_cnt(0),
      I3 => \^o2\,
      I4 => s_axi_bready,
      O => \n_0_bvalid_cnt[1]_i_2\
    );
\bvalid_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FFFFFFCC0000000"
    )
    port map (
      I0 => \n_0_bvalid_cnt[2]_i_2\,
      I1 => \n_0_bvalid_cnt[2]_i_3\,
      I2 => \n_0_bvalid_cnt[2]_i_4\,
      I3 => bvalid_cnt(0),
      I4 => bvalid_cnt(1),
      I5 => bvalid_cnt(2),
      O => \n_0_bvalid_cnt[2]_i_1\
    );
\bvalid_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => lite_sm_cs(2),
      I1 => lite_sm_cs(0),
      I2 => lite_sm_cs(1),
      O => \n_0_bvalid_cnt[2]_i_2\
    );
\bvalid_cnt[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF40"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => lite_sm_cs(2),
      I4 => lite_sm_cs(0),
      I5 => lite_sm_cs(1),
      O => \n_0_bvalid_cnt[2]_i_3\
    );
\bvalid_cnt[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => s_axi_bready,
      I1 => \^o2\,
      O => \n_0_bvalid_cnt[2]_i_4\
    );
\bvalid_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_bvalid_cnt[0]_i_1\,
      Q => bvalid_cnt(0),
      R => \^o1\
    );
\bvalid_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_bvalid_cnt[1]_i_1\,
      Q => bvalid_cnt(1),
      R => \^o1\
    );
\bvalid_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_bvalid_cnt[2]_i_1\,
      Q => bvalid_cnt(2),
      R => \^o1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_16b_axi_bram_ctrl_top is
  port (
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 13 downto 0 );
    O3 : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_16b_axi_bram_ctrl_top : entity is "axi_bram_ctrl_top";
end axi_bram_ctrl_16b_axi_bram_ctrl_top;

architecture STRUCTURE of axi_bram_ctrl_16b_axi_bram_ctrl_top is
  signal \^o2\ : STD_LOGIC;
  signal \n_8_GEN_AXI4LITE.I_AXI_LITE\ : STD_LOGIC;
  signal \n_9_GEN_AXI4LITE.I_AXI_LITE\ : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  O2 <= \^o2\;
  s_axi_bid(0) <= \^s_axi_bid\(0);
  s_axi_rid(0) <= \^s_axi_rid\(0);
\GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_BID_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_8_GEN_AXI4LITE.I_AXI_LITE\,
      Q => \^s_axi_bid\(0),
      R => \^o2\
    );
\GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_RID_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_9_GEN_AXI4LITE.I_AXI_LITE\,
      Q => \^s_axi_rid\(0),
      R => \^o2\
    );
\GEN_AXI4LITE.I_AXI_LITE\: entity work.axi_bram_ctrl_16b_axi_lite
    port map (
      I1 => I1,
      I2 => I2,
      I3 => I3,
      I4 => I4,
      O1 => \^o2\,
      O2 => O3,
      O3 => O1,
      O4 => \n_8_GEN_AXI4LITE.I_AXI_LITE\,
      O5 => \n_9_GEN_AXI4LITE.I_AXI_LITE\,
      bram_addr_a(13 downto 0) => bram_addr_a(13 downto 0),
      bram_en_a => bram_en_a,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(13 downto 0) => s_axi_araddr(13 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(13 downto 0) => s_axi_awaddr(13 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => \^s_axi_bid\(0),
      s_axi_bready => s_axi_bready,
      s_axi_rid(0) => \^s_axi_rid\(0),
      s_axi_rready => s_axi_rready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is "axi_bram_ctrl";
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is "EXTERNAL";
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 16384;
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 14;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 16;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is "AXI4LITE";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is "zynq";
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 32;
  attribute C_ECC : integer;
  attribute C_ECC of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ : entity is "yes";
end \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\;

architecture STRUCTURE of \axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \^bram_rddata_a\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \n_0_bram_we_a[0]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_bram_we_a[1]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_bram_we_a[2]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_bram_we_a[3]_INST_0_i_2\ : STD_LOGIC;
  signal \^s_axi_aclk\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_rlast\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bram_we_a[0]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bram_we_a[1]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bram_we_a[2]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bram_we_a[3]_INST_0_i_2\ : label is "soft_lutpair3";
begin
  \^bram_rddata_a\(31 downto 0) <= bram_rddata_a(31 downto 0);
  \^s_axi_aclk\ <= s_axi_aclk;
  \^s_axi_wdata\(31 downto 0) <= s_axi_wdata(31 downto 0);
  bram_addr_a(15 downto 2) <= \^bram_addr_a\(15 downto 2);
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  bram_addr_b(15) <= \<const0>\;
  bram_addr_b(14) <= \<const0>\;
  bram_addr_b(13) <= \<const0>\;
  bram_addr_b(12) <= \<const0>\;
  bram_addr_b(11) <= \<const0>\;
  bram_addr_b(10) <= \<const0>\;
  bram_addr_b(9) <= \<const0>\;
  bram_addr_b(8) <= \<const0>\;
  bram_addr_b(7) <= \<const0>\;
  bram_addr_b(6) <= \<const0>\;
  bram_addr_b(5) <= \<const0>\;
  bram_addr_b(4) <= \<const0>\;
  bram_addr_b(3) <= \<const0>\;
  bram_addr_b(2) <= \<const0>\;
  bram_addr_b(1) <= \<const0>\;
  bram_addr_b(0) <= \<const0>\;
  bram_clk_a <= \^s_axi_aclk\;
  bram_clk_b <= \<const0>\;
  bram_en_b <= \<const0>\;
  bram_rst_b <= \<const0>\;
  bram_we_b(3) <= \<const0>\;
  bram_we_b(2) <= \<const0>\;
  bram_we_b(1) <= \<const0>\;
  bram_we_b(0) <= \<const0>\;
  bram_wrdata_a(31 downto 0) <= \^s_axi_wdata\(31 downto 0);
  bram_wrdata_b(31) <= \<const0>\;
  bram_wrdata_b(30) <= \<const0>\;
  bram_wrdata_b(29) <= \<const0>\;
  bram_wrdata_b(28) <= \<const0>\;
  bram_wrdata_b(27) <= \<const0>\;
  bram_wrdata_b(26) <= \<const0>\;
  bram_wrdata_b(25) <= \<const0>\;
  bram_wrdata_b(24) <= \<const0>\;
  bram_wrdata_b(23) <= \<const0>\;
  bram_wrdata_b(22) <= \<const0>\;
  bram_wrdata_b(21) <= \<const0>\;
  bram_wrdata_b(20) <= \<const0>\;
  bram_wrdata_b(19) <= \<const0>\;
  bram_wrdata_b(18) <= \<const0>\;
  bram_wrdata_b(17) <= \<const0>\;
  bram_wrdata_b(16) <= \<const0>\;
  bram_wrdata_b(15) <= \<const0>\;
  bram_wrdata_b(14) <= \<const0>\;
  bram_wrdata_b(13) <= \<const0>\;
  bram_wrdata_b(12) <= \<const0>\;
  bram_wrdata_b(11) <= \<const0>\;
  bram_wrdata_b(10) <= \<const0>\;
  bram_wrdata_b(9) <= \<const0>\;
  bram_wrdata_b(8) <= \<const0>\;
  bram_wrdata_b(7) <= \<const0>\;
  bram_wrdata_b(6) <= \<const0>\;
  bram_wrdata_b(5) <= \<const0>\;
  bram_wrdata_b(4) <= \<const0>\;
  bram_wrdata_b(3) <= \<const0>\;
  bram_wrdata_b(2) <= \<const0>\;
  bram_wrdata_b(1) <= \<const0>\;
  bram_wrdata_b(0) <= \<const0>\;
  ecc_interrupt <= \<const0>\;
  ecc_ue <= \<const0>\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
  s_axi_rdata(31 downto 0) <= \^bram_rddata_a\(31 downto 0);
  s_axi_rlast <= \^s_axi_rlast\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \^s_axi_rlast\;
  s_axi_wready <= \^s_axi_awready\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\bram_we_a[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_wstrb(0),
      O => \n_0_bram_we_a[0]_INST_0_i_1\
    );
\bram_we_a[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_wstrb(1),
      O => \n_0_bram_we_a[1]_INST_0_i_1\
    );
\bram_we_a[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_wstrb(2),
      O => \n_0_bram_we_a[2]_INST_0_i_1\
    );
\bram_we_a[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_wstrb(3),
      O => \n_0_bram_we_a[3]_INST_0_i_2\
    );
\gext_inst.abcv4_0_ext_inst\: entity work.axi_bram_ctrl_16b_axi_bram_ctrl_top
    port map (
      I1 => \n_0_bram_we_a[0]_INST_0_i_1\,
      I2 => \n_0_bram_we_a[1]_INST_0_i_1\,
      I3 => \n_0_bram_we_a[2]_INST_0_i_1\,
      I4 => \n_0_bram_we_a[3]_INST_0_i_2\,
      O1 => \^s_axi_rlast\,
      O2 => bram_rst_a,
      O3 => s_axi_bvalid,
      bram_addr_a(13 downto 0) => \^bram_addr_a\(15 downto 2),
      bram_en_a => bram_en_a,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(13 downto 0) => s_axi_araddr(15 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(13 downto 0) => s_axi_awaddr(15 downto 2),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rready => s_axi_rready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_16b is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_bram_ctrl_16b : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_bram_ctrl_16b : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of axi_bram_ctrl_16b : entity is "axi_bram_ctrl,Vivado 2014.3.1";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_bram_ctrl_16b : entity is "axi_bram_ctrl_16b,axi_bram_ctrl,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of axi_bram_ctrl_16b : entity is "axi_bram_ctrl_16b,axi_bram_ctrl,{x_ipProduct=Vivado 2014.3.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_bram_ctrl,x_ipVersion=4.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,C_BRAM_INST_MODE=EXTERNAL,C_MEMORY_DEPTH=16384,C_BRAM_ADDR_WIDTH=14,C_S_AXI_ADDR_WIDTH=16,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ID_WIDTH=1,C_S_AXI_PROTOCOL=AXI4LITE,C_S_AXI_SUPPORTS_NARROW_BURST=0,C_SINGLE_PORT_BRAM=1,C_FAMILY=zynq,C_S_AXI_CTRL_ADDR_WIDTH=32,C_S_AXI_CTRL_DATA_WIDTH=32,C_ECC=0,C_ECC_TYPE=0,C_FAULT_INJECT=0,C_ECC_ONOFF_RESET_VALUE=0}";
end axi_bram_ctrl_16b;

architecture STRUCTURE of axi_bram_ctrl_16b is
  signal NLW_U0_bram_clk_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_en_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_rst_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_ue_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_addr_b_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_bram_we_b_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_bram_wrdata_b_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of U0 : label is 14;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of U0 : label is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of U0 : label is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of U0 : label is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of U0 : label is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of U0 : label is 16384;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 16;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of U0 : label is "AXI4LITE";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of U0 : label is 0;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U0 : label is std.standard.true;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.\axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0\
    port map (
      bram_addr_a(15 downto 0) => bram_addr_a(15 downto 0),
      bram_addr_b(15 downto 0) => NLW_U0_bram_addr_b_UNCONNECTED(15 downto 0),
      bram_clk_a => bram_clk_a,
      bram_clk_b => NLW_U0_bram_clk_b_UNCONNECTED,
      bram_en_a => bram_en_a,
      bram_en_b => NLW_U0_bram_en_b_UNCONNECTED,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_rddata_b(31) => '0',
      bram_rddata_b(30) => '0',
      bram_rddata_b(29) => '0',
      bram_rddata_b(28) => '0',
      bram_rddata_b(27) => '0',
      bram_rddata_b(26) => '0',
      bram_rddata_b(25) => '0',
      bram_rddata_b(24) => '0',
      bram_rddata_b(23) => '0',
      bram_rddata_b(22) => '0',
      bram_rddata_b(21) => '0',
      bram_rddata_b(20) => '0',
      bram_rddata_b(19) => '0',
      bram_rddata_b(18) => '0',
      bram_rddata_b(17) => '0',
      bram_rddata_b(16) => '0',
      bram_rddata_b(15) => '0',
      bram_rddata_b(14) => '0',
      bram_rddata_b(13) => '0',
      bram_rddata_b(12) => '0',
      bram_rddata_b(11) => '0',
      bram_rddata_b(10) => '0',
      bram_rddata_b(9) => '0',
      bram_rddata_b(8) => '0',
      bram_rddata_b(7) => '0',
      bram_rddata_b(6) => '0',
      bram_rddata_b(5) => '0',
      bram_rddata_b(4) => '0',
      bram_rddata_b(3) => '0',
      bram_rddata_b(2) => '0',
      bram_rddata_b(1) => '0',
      bram_rddata_b(0) => '0',
      bram_rst_a => bram_rst_a,
      bram_rst_b => NLW_U0_bram_rst_b_UNCONNECTED,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_we_b(3 downto 0) => NLW_U0_bram_we_b_UNCONNECTED(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      bram_wrdata_b(31 downto 0) => NLW_U0_bram_wrdata_b_UNCONNECTED(31 downto 0),
      ecc_interrupt => NLW_U0_ecc_interrupt_UNCONNECTED,
      ecc_ue => NLW_U0_ecc_ue_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(15 downto 0) => s_axi_araddr(15 downto 0),
      s_axi_arburst(1) => '0',
      s_axi_arburst(0) => '0',
      s_axi_arcache(3) => '0',
      s_axi_arcache(2) => '0',
      s_axi_arcache(1) => '0',
      s_axi_arcache(0) => '0',
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => '0',
      s_axi_arlen(7) => '0',
      s_axi_arlen(6) => '0',
      s_axi_arlen(5) => '0',
      s_axi_arlen(4) => '0',
      s_axi_arlen(3) => '0',
      s_axi_arlen(2) => '0',
      s_axi_arlen(1) => '0',
      s_axi_arlen(0) => '0',
      s_axi_arlock => '0',
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2) => '0',
      s_axi_arsize(1) => '0',
      s_axi_arsize(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(15 downto 0) => s_axi_awaddr(15 downto 0),
      s_axi_awburst(1) => '0',
      s_axi_awburst(0) => '0',
      s_axi_awcache(3) => '0',
      s_axi_awcache(2) => '0',
      s_axi_awcache(1) => '0',
      s_axi_awcache(0) => '0',
      s_axi_awid(0) => '0',
      s_axi_awlen(7) => '0',
      s_axi_awlen(6) => '0',
      s_axi_awlen(5) => '0',
      s_axi_awlen(4) => '0',
      s_axi_awlen(3) => '0',
      s_axi_awlen(2) => '0',
      s_axi_awlen(1) => '0',
      s_axi_awlen(0) => '0',
      s_axi_awlock => '0',
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2) => '0',
      s_axi_awsize(1) => '0',
      s_axi_awsize(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_ctrl_araddr(31) => '0',
      s_axi_ctrl_araddr(30) => '0',
      s_axi_ctrl_araddr(29) => '0',
      s_axi_ctrl_araddr(28) => '0',
      s_axi_ctrl_araddr(27) => '0',
      s_axi_ctrl_araddr(26) => '0',
      s_axi_ctrl_araddr(25) => '0',
      s_axi_ctrl_araddr(24) => '0',
      s_axi_ctrl_araddr(23) => '0',
      s_axi_ctrl_araddr(22) => '0',
      s_axi_ctrl_araddr(21) => '0',
      s_axi_ctrl_araddr(20) => '0',
      s_axi_ctrl_araddr(19) => '0',
      s_axi_ctrl_araddr(18) => '0',
      s_axi_ctrl_araddr(17) => '0',
      s_axi_ctrl_araddr(16) => '0',
      s_axi_ctrl_araddr(15) => '0',
      s_axi_ctrl_araddr(14) => '0',
      s_axi_ctrl_araddr(13) => '0',
      s_axi_ctrl_araddr(12) => '0',
      s_axi_ctrl_araddr(11) => '0',
      s_axi_ctrl_araddr(10) => '0',
      s_axi_ctrl_araddr(9) => '0',
      s_axi_ctrl_araddr(8) => '0',
      s_axi_ctrl_araddr(7) => '0',
      s_axi_ctrl_araddr(6) => '0',
      s_axi_ctrl_araddr(5) => '0',
      s_axi_ctrl_araddr(4) => '0',
      s_axi_ctrl_araddr(3) => '0',
      s_axi_ctrl_araddr(2) => '0',
      s_axi_ctrl_araddr(1) => '0',
      s_axi_ctrl_araddr(0) => '0',
      s_axi_ctrl_arready => NLW_U0_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(31) => '0',
      s_axi_ctrl_awaddr(30) => '0',
      s_axi_ctrl_awaddr(29) => '0',
      s_axi_ctrl_awaddr(28) => '0',
      s_axi_ctrl_awaddr(27) => '0',
      s_axi_ctrl_awaddr(26) => '0',
      s_axi_ctrl_awaddr(25) => '0',
      s_axi_ctrl_awaddr(24) => '0',
      s_axi_ctrl_awaddr(23) => '0',
      s_axi_ctrl_awaddr(22) => '0',
      s_axi_ctrl_awaddr(21) => '0',
      s_axi_ctrl_awaddr(20) => '0',
      s_axi_ctrl_awaddr(19) => '0',
      s_axi_ctrl_awaddr(18) => '0',
      s_axi_ctrl_awaddr(17) => '0',
      s_axi_ctrl_awaddr(16) => '0',
      s_axi_ctrl_awaddr(15) => '0',
      s_axi_ctrl_awaddr(14) => '0',
      s_axi_ctrl_awaddr(13) => '0',
      s_axi_ctrl_awaddr(12) => '0',
      s_axi_ctrl_awaddr(11) => '0',
      s_axi_ctrl_awaddr(10) => '0',
      s_axi_ctrl_awaddr(9) => '0',
      s_axi_ctrl_awaddr(8) => '0',
      s_axi_ctrl_awaddr(7) => '0',
      s_axi_ctrl_awaddr(6) => '0',
      s_axi_ctrl_awaddr(5) => '0',
      s_axi_ctrl_awaddr(4) => '0',
      s_axi_ctrl_awaddr(3) => '0',
      s_axi_ctrl_awaddr(2) => '0',
      s_axi_ctrl_awaddr(1) => '0',
      s_axi_ctrl_awaddr(0) => '0',
      s_axi_ctrl_awready => NLW_U0_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_U0_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_U0_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_U0_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31) => '0',
      s_axi_ctrl_wdata(30) => '0',
      s_axi_ctrl_wdata(29) => '0',
      s_axi_ctrl_wdata(28) => '0',
      s_axi_ctrl_wdata(27) => '0',
      s_axi_ctrl_wdata(26) => '0',
      s_axi_ctrl_wdata(25) => '0',
      s_axi_ctrl_wdata(24) => '0',
      s_axi_ctrl_wdata(23) => '0',
      s_axi_ctrl_wdata(22) => '0',
      s_axi_ctrl_wdata(21) => '0',
      s_axi_ctrl_wdata(20) => '0',
      s_axi_ctrl_wdata(19) => '0',
      s_axi_ctrl_wdata(18) => '0',
      s_axi_ctrl_wdata(17) => '0',
      s_axi_ctrl_wdata(16) => '0',
      s_axi_ctrl_wdata(15) => '0',
      s_axi_ctrl_wdata(14) => '0',
      s_axi_ctrl_wdata(13) => '0',
      s_axi_ctrl_wdata(12) => '0',
      s_axi_ctrl_wdata(11) => '0',
      s_axi_ctrl_wdata(10) => '0',
      s_axi_ctrl_wdata(9) => '0',
      s_axi_ctrl_wdata(8) => '0',
      s_axi_ctrl_wdata(7) => '0',
      s_axi_ctrl_wdata(6) => '0',
      s_axi_ctrl_wdata(5) => '0',
      s_axi_ctrl_wdata(4) => '0',
      s_axi_ctrl_wdata(3) => '0',
      s_axi_ctrl_wdata(2) => '0',
      s_axi_ctrl_wdata(1) => '0',
      s_axi_ctrl_wdata(0) => '0',
      s_axi_ctrl_wready => NLW_U0_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => '0',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
