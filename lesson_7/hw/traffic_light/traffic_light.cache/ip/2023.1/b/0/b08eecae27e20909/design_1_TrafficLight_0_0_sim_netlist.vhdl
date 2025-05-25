-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Mon May 19 14:09:56 2025
-- Host        : 2df93fe410a0 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_TrafficLight_0_0_sim_netlist.vhdl
-- Design      : design_1_TrafficLight_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TrafficLight is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    red : out STD_LOGIC_VECTOR ( 0 to 0 );
    yellow : out STD_LOGIC_VECTOR ( 0 to 0 );
    green : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TrafficLight : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TrafficLight : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TrafficLight;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TrafficLight is
  signal \^ap_start\ : STD_LOGIC;
  signal cnt : STD_LOGIC;
  signal \cnt[0]_i_10_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_11_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_12_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[44]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[44]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[44]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[44]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[44]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[44]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[48]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[48]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[52]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[52]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[52]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[52]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[52]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[52]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[52]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[52]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[56]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[56]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[56]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[56]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[56]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[56]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[56]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[56]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[60]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[60]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[60]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[60]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[60]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[60]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[60]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \counter_1[2]_i_3_n_0\ : STD_LOGIC;
  signal \counter_1[2]_i_5_n_0\ : STD_LOGIC;
  signal \counter_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_1_reg_n_0_[2]\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_5_n_0\ : STD_LOGIC;
  signal or_ln21_fu_266_p2 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pre_state : STD_LOGIC;
  signal \^red\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state[0]_i_10_n_0\ : STD_LOGIC;
  signal \state[0]_i_11_n_0\ : STD_LOGIC;
  signal \state[0]_i_12_n_0\ : STD_LOGIC;
  signal \state[0]_i_13_n_0\ : STD_LOGIC;
  signal \state[0]_i_14_n_0\ : STD_LOGIC;
  signal \state[0]_i_15_n_0\ : STD_LOGIC;
  signal \state[0]_i_16_n_0\ : STD_LOGIC;
  signal \state[0]_i_17_n_0\ : STD_LOGIC;
  signal \state[0]_i_18_n_0\ : STD_LOGIC;
  signal \state[0]_i_19_n_0\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_20_n_0\ : STD_LOGIC;
  signal \state[0]_i_21_n_0\ : STD_LOGIC;
  signal \state[0]_i_22_n_0\ : STD_LOGIC;
  signal \state[0]_i_23_n_0\ : STD_LOGIC;
  signal \state[0]_i_24_n_0\ : STD_LOGIC;
  signal \state[0]_i_25_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[0]_i_6_n_0\ : STD_LOGIC;
  signal \state[0]_i_7_n_0\ : STD_LOGIC;
  signal \state[0]_i_8_n_0\ : STD_LOGIC;
  signal \state[0]_i_9_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \NLW_cnt_reg[60]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[32]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[36]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[40]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[44]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[48]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[52]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[56]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[60]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_1[2]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_1[2]_i_4\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \green[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \red[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair1";
begin
  \^ap_start\ <= ap_start;
  ap_done <= \^ap_start\;
  ap_ready <= \^ap_start\;
  red(0) <= \^red\(0);
ap_idle_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ap_start\,
      O => ap_idle
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F020F000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \^ap_start\,
      I3 => \cnt[0]_i_4_n_0\,
      I4 => \cnt[0]_i_5_n_0\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFFFFFF"
    )
        port map (
      I0 => \cnt[0]_i_12_n_0\,
      I1 => \state[0]_i_17_n_0\,
      I2 => \state[0]_i_18_n_0\,
      I3 => cnt_reg(19),
      I4 => cnt_reg(18),
      I5 => cnt_reg(20),
      O => \cnt[0]_i_10_n_0\
    );
\cnt[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_reg(26),
      I1 => cnt_reg(31),
      I2 => cnt_reg(10),
      I3 => cnt_reg(63),
      O => \cnt[0]_i_11_n_0\
    );
\cnt[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => cnt_reg(17),
      I1 => cnt_reg(24),
      I2 => cnt_reg(6),
      I3 => cnt_reg(11),
      O => \cnt[0]_i_12_n_0\
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^ap_start\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      O => cnt
    );
\cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \cnt[0]_i_7_n_0\,
      I1 => \cnt[0]_i_8_n_0\,
      I2 => \state[0]_i_6_n_0\,
      I3 => \state[0]_i_5_n_0\,
      I4 => \state[0]_i_4_n_0\,
      I5 => \state[0]_i_3_n_0\,
      O => \cnt[0]_i_4_n_0\
    );
\cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \cnt[0]_i_7_n_0\,
      I1 => \cnt[0]_i_8_n_0\,
      I2 => \state[0]_i_6_n_0\,
      I3 => \cnt[0]_i_9_n_0\,
      I4 => \cnt[0]_i_10_n_0\,
      I5 => \state[0]_i_3_n_0\,
      O => \cnt[0]_i_5_n_0\
    );
\cnt[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => \cnt[0]_i_6_n_0\
    );
\cnt[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => cnt_reg(37),
      I1 => cnt_reg(36),
      I2 => cnt_reg(60),
      I3 => cnt_reg(61),
      I4 => cnt_reg(48),
      I5 => cnt_reg(49),
      O => \cnt[0]_i_7_n_0\
    );
\cnt[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state[0]_i_25_n_0\,
      I1 => \state[0]_i_24_n_0\,
      I2 => cnt_reg(27),
      I3 => cnt_reg(28),
      I4 => cnt_reg(29),
      I5 => \state[0]_i_22_n_0\,
      O => \cnt[0]_i_8_n_0\
    );
\cnt[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \cnt[0]_i_11_n_0\,
      I1 => cnt_reg(16),
      I2 => cnt_reg(25),
      I3 => cnt_reg(23),
      I4 => cnt_reg(15),
      O => \cnt[0]_i_9_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[0]_i_3_n_7\,
      Q => cnt_reg(0),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_3_n_0\,
      CO(2) => \cnt_reg[0]_i_3_n_1\,
      CO(1) => \cnt_reg[0]_i_3_n_2\,
      CO(0) => \cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_reg[0]_i_3_n_4\,
      O(2) => \cnt_reg[0]_i_3_n_5\,
      O(1) => \cnt_reg[0]_i_3_n_6\,
      O(0) => \cnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => cnt_reg(3 downto 1),
      S(0) => \cnt[0]_i_6_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[8]_i_1_n_5\,
      Q => cnt_reg(10),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[8]_i_1_n_4\,
      Q => cnt_reg(11),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[12]_i_1_n_7\,
      Q => cnt_reg(12),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CO(3) => \cnt_reg[12]_i_1_n_0\,
      CO(2) => \cnt_reg[12]_i_1_n_1\,
      CO(1) => \cnt_reg[12]_i_1_n_2\,
      CO(0) => \cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_1_n_4\,
      O(2) => \cnt_reg[12]_i_1_n_5\,
      O(1) => \cnt_reg[12]_i_1_n_6\,
      O(0) => \cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(15 downto 12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[12]_i_1_n_6\,
      Q => cnt_reg(13),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[12]_i_1_n_5\,
      Q => cnt_reg(14),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[12]_i_1_n_4\,
      Q => cnt_reg(15),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[16]_i_1_n_7\,
      Q => cnt_reg(16),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_1_n_0\,
      CO(3) => \cnt_reg[16]_i_1_n_0\,
      CO(2) => \cnt_reg[16]_i_1_n_1\,
      CO(1) => \cnt_reg[16]_i_1_n_2\,
      CO(0) => \cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[16]_i_1_n_4\,
      O(2) => \cnt_reg[16]_i_1_n_5\,
      O(1) => \cnt_reg[16]_i_1_n_6\,
      O(0) => \cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(19 downto 16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[16]_i_1_n_6\,
      Q => cnt_reg(17),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[16]_i_1_n_5\,
      Q => cnt_reg(18),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[16]_i_1_n_4\,
      Q => cnt_reg(19),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[0]_i_3_n_6\,
      Q => cnt_reg(1),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[20]_i_1_n_7\,
      Q => cnt_reg(20),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[16]_i_1_n_0\,
      CO(3) => \cnt_reg[20]_i_1_n_0\,
      CO(2) => \cnt_reg[20]_i_1_n_1\,
      CO(1) => \cnt_reg[20]_i_1_n_2\,
      CO(0) => \cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[20]_i_1_n_4\,
      O(2) => \cnt_reg[20]_i_1_n_5\,
      O(1) => \cnt_reg[20]_i_1_n_6\,
      O(0) => \cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(23 downto 20)
    );
\cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[20]_i_1_n_6\,
      Q => cnt_reg(21),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[20]_i_1_n_5\,
      Q => cnt_reg(22),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[20]_i_1_n_4\,
      Q => cnt_reg(23),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[24]_i_1_n_7\,
      Q => cnt_reg(24),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[20]_i_1_n_0\,
      CO(3) => \cnt_reg[24]_i_1_n_0\,
      CO(2) => \cnt_reg[24]_i_1_n_1\,
      CO(1) => \cnt_reg[24]_i_1_n_2\,
      CO(0) => \cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[24]_i_1_n_4\,
      O(2) => \cnt_reg[24]_i_1_n_5\,
      O(1) => \cnt_reg[24]_i_1_n_6\,
      O(0) => \cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(27 downto 24)
    );
\cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[24]_i_1_n_6\,
      Q => cnt_reg(25),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[24]_i_1_n_5\,
      Q => cnt_reg(26),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[24]_i_1_n_4\,
      Q => cnt_reg(27),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[28]_i_1_n_7\,
      Q => cnt_reg(28),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[24]_i_1_n_0\,
      CO(3) => \cnt_reg[28]_i_1_n_0\,
      CO(2) => \cnt_reg[28]_i_1_n_1\,
      CO(1) => \cnt_reg[28]_i_1_n_2\,
      CO(0) => \cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[28]_i_1_n_4\,
      O(2) => \cnt_reg[28]_i_1_n_5\,
      O(1) => \cnt_reg[28]_i_1_n_6\,
      O(0) => \cnt_reg[28]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(31 downto 28)
    );
\cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[28]_i_1_n_6\,
      Q => cnt_reg(29),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[0]_i_3_n_5\,
      Q => cnt_reg(2),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[28]_i_1_n_5\,
      Q => cnt_reg(30),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[28]_i_1_n_4\,
      Q => cnt_reg(31),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[32]_i_1_n_7\,
      Q => cnt_reg(32),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[28]_i_1_n_0\,
      CO(3) => \cnt_reg[32]_i_1_n_0\,
      CO(2) => \cnt_reg[32]_i_1_n_1\,
      CO(1) => \cnt_reg[32]_i_1_n_2\,
      CO(0) => \cnt_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[32]_i_1_n_4\,
      O(2) => \cnt_reg[32]_i_1_n_5\,
      O(1) => \cnt_reg[32]_i_1_n_6\,
      O(0) => \cnt_reg[32]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(35 downto 32)
    );
\cnt_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[32]_i_1_n_6\,
      Q => cnt_reg(33),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[32]_i_1_n_5\,
      Q => cnt_reg(34),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[32]_i_1_n_4\,
      Q => cnt_reg(35),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[36]_i_1_n_7\,
      Q => cnt_reg(36),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[32]_i_1_n_0\,
      CO(3) => \cnt_reg[36]_i_1_n_0\,
      CO(2) => \cnt_reg[36]_i_1_n_1\,
      CO(1) => \cnt_reg[36]_i_1_n_2\,
      CO(0) => \cnt_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[36]_i_1_n_4\,
      O(2) => \cnt_reg[36]_i_1_n_5\,
      O(1) => \cnt_reg[36]_i_1_n_6\,
      O(0) => \cnt_reg[36]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(39 downto 36)
    );
\cnt_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[36]_i_1_n_6\,
      Q => cnt_reg(37),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[36]_i_1_n_5\,
      Q => cnt_reg(38),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[36]_i_1_n_4\,
      Q => cnt_reg(39),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[0]_i_3_n_4\,
      Q => cnt_reg(3),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[40]_i_1_n_7\,
      Q => cnt_reg(40),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[36]_i_1_n_0\,
      CO(3) => \cnt_reg[40]_i_1_n_0\,
      CO(2) => \cnt_reg[40]_i_1_n_1\,
      CO(1) => \cnt_reg[40]_i_1_n_2\,
      CO(0) => \cnt_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[40]_i_1_n_4\,
      O(2) => \cnt_reg[40]_i_1_n_5\,
      O(1) => \cnt_reg[40]_i_1_n_6\,
      O(0) => \cnt_reg[40]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(43 downto 40)
    );
\cnt_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[40]_i_1_n_6\,
      Q => cnt_reg(41),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[40]_i_1_n_5\,
      Q => cnt_reg(42),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[40]_i_1_n_4\,
      Q => cnt_reg(43),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[44]_i_1_n_7\,
      Q => cnt_reg(44),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[40]_i_1_n_0\,
      CO(3) => \cnt_reg[44]_i_1_n_0\,
      CO(2) => \cnt_reg[44]_i_1_n_1\,
      CO(1) => \cnt_reg[44]_i_1_n_2\,
      CO(0) => \cnt_reg[44]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[44]_i_1_n_4\,
      O(2) => \cnt_reg[44]_i_1_n_5\,
      O(1) => \cnt_reg[44]_i_1_n_6\,
      O(0) => \cnt_reg[44]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(47 downto 44)
    );
\cnt_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[44]_i_1_n_6\,
      Q => cnt_reg(45),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[44]_i_1_n_5\,
      Q => cnt_reg(46),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[44]_i_1_n_4\,
      Q => cnt_reg(47),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[48]_i_1_n_7\,
      Q => cnt_reg(48),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[48]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[44]_i_1_n_0\,
      CO(3) => \cnt_reg[48]_i_1_n_0\,
      CO(2) => \cnt_reg[48]_i_1_n_1\,
      CO(1) => \cnt_reg[48]_i_1_n_2\,
      CO(0) => \cnt_reg[48]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[48]_i_1_n_4\,
      O(2) => \cnt_reg[48]_i_1_n_5\,
      O(1) => \cnt_reg[48]_i_1_n_6\,
      O(0) => \cnt_reg[48]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(51 downto 48)
    );
\cnt_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[48]_i_1_n_6\,
      Q => cnt_reg(49),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[4]_i_1_n_7\,
      Q => cnt_reg(4),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_3_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2) => \cnt_reg[4]_i_1_n_1\,
      CO(1) => \cnt_reg[4]_i_1_n_2\,
      CO(0) => \cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(7 downto 4)
    );
\cnt_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[48]_i_1_n_5\,
      Q => cnt_reg(50),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[48]_i_1_n_4\,
      Q => cnt_reg(51),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[52]_i_1_n_7\,
      Q => cnt_reg(52),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[52]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[48]_i_1_n_0\,
      CO(3) => \cnt_reg[52]_i_1_n_0\,
      CO(2) => \cnt_reg[52]_i_1_n_1\,
      CO(1) => \cnt_reg[52]_i_1_n_2\,
      CO(0) => \cnt_reg[52]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[52]_i_1_n_4\,
      O(2) => \cnt_reg[52]_i_1_n_5\,
      O(1) => \cnt_reg[52]_i_1_n_6\,
      O(0) => \cnt_reg[52]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(55 downto 52)
    );
\cnt_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[52]_i_1_n_6\,
      Q => cnt_reg(53),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[52]_i_1_n_5\,
      Q => cnt_reg(54),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[52]_i_1_n_4\,
      Q => cnt_reg(55),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[56]_i_1_n_7\,
      Q => cnt_reg(56),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[56]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[52]_i_1_n_0\,
      CO(3) => \cnt_reg[56]_i_1_n_0\,
      CO(2) => \cnt_reg[56]_i_1_n_1\,
      CO(1) => \cnt_reg[56]_i_1_n_2\,
      CO(0) => \cnt_reg[56]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[56]_i_1_n_4\,
      O(2) => \cnt_reg[56]_i_1_n_5\,
      O(1) => \cnt_reg[56]_i_1_n_6\,
      O(0) => \cnt_reg[56]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(59 downto 56)
    );
\cnt_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[56]_i_1_n_6\,
      Q => cnt_reg(57),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[56]_i_1_n_5\,
      Q => cnt_reg(58),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[56]_i_1_n_4\,
      Q => cnt_reg(59),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[4]_i_1_n_6\,
      Q => cnt_reg(5),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[60]_i_1_n_7\,
      Q => cnt_reg(60),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[60]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[56]_i_1_n_0\,
      CO(3) => \NLW_cnt_reg[60]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_reg[60]_i_1_n_1\,
      CO(1) => \cnt_reg[60]_i_1_n_2\,
      CO(0) => \cnt_reg[60]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[60]_i_1_n_4\,
      O(2) => \cnt_reg[60]_i_1_n_5\,
      O(1) => \cnt_reg[60]_i_1_n_6\,
      O(0) => \cnt_reg[60]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(63 downto 60)
    );
\cnt_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[60]_i_1_n_6\,
      Q => cnt_reg(61),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[60]_i_1_n_5\,
      Q => cnt_reg(62),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[60]_i_1_n_4\,
      Q => cnt_reg(63),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[4]_i_1_n_5\,
      Q => cnt_reg(6),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[4]_i_1_n_4\,
      Q => cnt_reg(7),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[8]_i_1_n_7\,
      Q => cnt_reg(8),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3) => \cnt_reg[8]_i_1_n_0\,
      CO(2) => \cnt_reg[8]_i_1_n_1\,
      CO(1) => \cnt_reg[8]_i_1_n_2\,
      CO(0) => \cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(11 downto 8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => cnt,
      D => \cnt_reg[8]_i_1_n_6\,
      Q => cnt_reg(9),
      R => \cnt[0]_i_1_n_0\
    );
\counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(0),
      I1 => \current_state[0]_i_2_n_0\,
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(3),
      I1 => \current_state[0]_i_2_n_0\,
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(2),
      I1 => \current_state[0]_i_2_n_0\,
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(1),
      I1 => \current_state[0]_i_2_n_0\,
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      I1 => \current_state[0]_i_2_n_0\,
      O => \counter[0]_i_6_n_0\
    );
\counter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(15),
      I1 => \current_state[0]_i_2_n_0\,
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(14),
      I1 => \current_state[0]_i_2_n_0\,
      O => \counter[12]_i_3_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(6),
      I1 => \current_state[0]_i_2_n_0\,
      O => \counter[4]_i_2_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(9),
      I1 => \current_state[0]_i_2_n_0\,
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(8),
      I1 => \current_state[0]_i_2_n_0\,
      O => \counter[8]_i_3_n_0\
    );
\counter_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000051A2AAAAAAAA"
    )
        port map (
      I0 => \counter_1_reg_n_0_[0]\,
      I1 => \current_state[0]_i_2_n_0\,
      I2 => btn(0),
      I3 => \counter_1[2]_i_3_n_0\,
      I4 => \counter_1[2]_i_5_n_0\,
      I5 => \^ap_start\,
      O => \counter_1[0]_i_1_n_0\
    );
\counter_1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001222AAAAAAAA"
    )
        port map (
      I0 => \counter_1_reg_n_0_[1]\,
      I1 => \counter_1[2]_i_2_n_0\,
      I2 => \counter_1[2]_i_3_n_0\,
      I3 => \counter_1_reg_n_0_[0]\,
      I4 => \counter_1[2]_i_5_n_0\,
      I5 => \^ap_start\,
      O => \counter_1[1]_i_1_n_0\
    );
\counter_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE02AAAAAAAA"
    )
        port map (
      I0 => \counter_1_reg_n_0_[2]\,
      I1 => \counter_1[2]_i_2_n_0\,
      I2 => \counter_1[2]_i_3_n_0\,
      I3 => p_1_in(2),
      I4 => \counter_1[2]_i_5_n_0\,
      I5 => \^ap_start\,
      O => \counter_1[2]_i_1_n_0\
    );
\counter_1[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => btn(0),
      O => \counter_1[2]_i_2_n_0\
    );
\counter_1[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02AA0000"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => \counter_1_reg_n_0_[1]\,
      I2 => \counter_1_reg_n_0_[0]\,
      I3 => \counter_1_reg_n_0_[2]\,
      I4 => btn(0),
      O => \counter_1[2]_i_3_n_0\
    );
\counter_1[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F800F0F0"
    )
        port map (
      I0 => \counter_1_reg_n_0_[1]\,
      I1 => \counter_1_reg_n_0_[0]\,
      I2 => \counter_1_reg_n_0_[2]\,
      I3 => btn(0),
      I4 => \current_state[0]_i_2_n_0\,
      O => p_1_in(2)
    );
\counter_1[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100000010001000"
    )
        port map (
      I0 => \counter_1_reg_n_0_[1]\,
      I1 => pre_state,
      I2 => \counter_1_reg_n_0_[0]\,
      I3 => \counter_1_reg_n_0_[2]\,
      I4 => btn(0),
      I5 => \current_state[0]_i_2_n_0\,
      O => \counter_1[2]_i_5_n_0\
    );
\counter_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \counter_1[0]_i_1_n_0\,
      Q => \counter_1_reg_n_0_[0]\,
      R => '0'
    );
\counter_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \counter_1[1]_i_1_n_0\,
      Q => \counter_1_reg_n_0_[1]\,
      R => '0'
    );
\counter_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \counter_1[2]_i_1_n_0\,
      Q => \counter_1_reg_n_0_[2]\,
      R => '0'
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[0]_i_1_n_7\,
      Q => counter_reg(0),
      R => '0'
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter[0]_i_2_n_0\,
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3) => \counter[0]_i_3_n_0\,
      S(2) => \counter[0]_i_4_n_0\,
      S(1) => \counter[0]_i_5_n_0\,
      S(0) => \counter[0]_i_6_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => '0'
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => '0'
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => '0'
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1 downto 0) => counter_reg(13 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => '0'
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => '0'
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => '0'
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => '0'
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counter_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => counter_reg(16)
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => '0'
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => counter_reg(7),
      S(2) => \counter[4]_i_2_n_0\,
      S(1 downto 0) => counter_reg(5 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => '0'
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 2) => counter_reg(11 downto 10),
      S(1) => \counter[8]_i_2_n_0\,
      S(0) => \counter[8]_i_3_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => '0'
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFFD080"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => btn(0),
      I2 => \counter_1_reg_n_0_[2]\,
      I3 => \counter_1_reg_n_0_[0]\,
      I4 => pre_state,
      I5 => \counter_1_reg_n_0_[1]\,
      O => or_ln21_fu_266_p2
    );
\current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \current_state[0]_i_3_n_0\,
      I1 => \current_state[0]_i_4_n_0\,
      I2 => counter_reg(15),
      I3 => counter_reg(16),
      I4 => counter_reg(1),
      I5 => \current_state[0]_i_5_n_0\,
      O => \current_state[0]_i_2_n_0\
    );
\current_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(4),
      I2 => counter_reg(3),
      I3 => counter_reg(2),
      O => \current_state[0]_i_3_n_0\
    );
\current_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(11),
      I2 => counter_reg(13),
      I3 => counter_reg(12),
      I4 => counter_reg(14),
      I5 => counter_reg(9),
      O => \current_state[0]_i_4_n_0\
    );
\current_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter_reg(5),
      I2 => counter_reg(6),
      I3 => counter_reg(8),
      O => \current_state[0]_i_5_n_0\
    );
\current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => or_ln21_fu_266_p2,
      Q => pre_state,
      R => '0'
    );
\green[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => green(0)
    );
\red[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \^red\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4544"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => \counter_1[2]_i_5_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => cnt_reg(5),
      I1 => cnt_reg(32),
      I2 => cnt_reg(3),
      I3 => cnt_reg(7),
      O => \state[0]_i_10_n_0\
    );
\state[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(50),
      I2 => cnt_reg(0),
      I3 => cnt_reg(39),
      O => \state[0]_i_11_n_0\
    );
\state[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => cnt_reg(59),
      I2 => cnt_reg(49),
      I3 => cnt_reg(41),
      O => \state[0]_i_12_n_0\
    );
\state[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => cnt_reg(35),
      I1 => cnt_reg(40),
      I2 => cnt_reg(2),
      I3 => cnt_reg(8),
      O => \state[0]_i_13_n_0\
    );
\state[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => cnt_reg(63),
      I3 => cnt_reg(10),
      I4 => cnt_reg(31),
      I5 => cnt_reg(26),
      O => \state[0]_i_14_n_0\
    );
\state[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FFF"
    )
        port map (
      I0 => cnt_reg(7),
      I1 => cnt_reg(6),
      I2 => cnt_reg(16),
      I3 => cnt_reg(24),
      O => \state[0]_i_15_n_0\
    );
\state[0]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => cnt_reg(19),
      I1 => cnt_reg(18),
      I2 => cnt_reg(20),
      O => \state[0]_i_16_n_0\
    );
\state[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => cnt_reg(22),
      I1 => cnt_reg(21),
      I2 => cnt_reg(38),
      I3 => cnt_reg(37),
      O => \state[0]_i_17_n_0\
    );
\state[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_reg(58),
      I1 => cnt_reg(62),
      I2 => cnt_reg(59),
      I3 => cnt_reg(61),
      O => \state[0]_i_18_n_0\
    );
\state[0]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_reg(46),
      I1 => cnt_reg(52),
      I2 => cnt_reg(53),
      I3 => cnt_reg(50),
      O => \state[0]_i_19_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => \^red\(0),
      I1 => \state[0]_i_3_n_0\,
      I2 => \state[0]_i_4_n_0\,
      I3 => \state[0]_i_5_n_0\,
      I4 => \state[0]_i_6_n_0\,
      I5 => \state[0]_i_7_n_0\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => cnt_reg(55),
      I1 => cnt_reg(20),
      I2 => cnt_reg(42),
      I3 => cnt_reg(35),
      O => \state[0]_i_20_n_0\
    );
\state[0]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_reg(44),
      I1 => cnt_reg(38),
      I2 => cnt_reg(43),
      I3 => cnt_reg(62),
      O => \state[0]_i_21_n_0\
    );
\state[0]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => cnt_reg(56),
      I1 => cnt_reg(34),
      I2 => cnt_reg(19),
      I3 => cnt_reg(47),
      O => \state[0]_i_22_n_0\
    );
\state[0]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt_reg(27),
      I1 => cnt_reg(28),
      I2 => cnt_reg(29),
      O => \state[0]_i_23_n_0\
    );
\state[0]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => cnt_reg(55),
      I1 => cnt_reg(54),
      I2 => cnt_reg(52),
      I3 => cnt_reg(51),
      O => \state[0]_i_24_n_0\
    );
\state[0]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => cnt_reg(46),
      I1 => cnt_reg(45),
      I2 => cnt_reg(10),
      I3 => cnt_reg(9),
      O => \state[0]_i_25_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state[0]_i_8_n_0\,
      I1 => \state[0]_i_9_n_0\,
      I2 => \state[0]_i_10_n_0\,
      I3 => \state[0]_i_11_n_0\,
      I4 => \state[0]_i_12_n_0\,
      I5 => \state[0]_i_13_n_0\,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state[0]_i_14_n_0\,
      I1 => \state[0]_i_15_n_0\,
      I2 => cnt_reg(15),
      I3 => cnt_reg(23),
      I4 => cnt_reg(25),
      I5 => cnt_reg(32),
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \state[0]_i_16_n_0\,
      I1 => \state[0]_i_17_n_0\,
      I2 => cnt_reg(17),
      I3 => cnt_reg(11),
      I4 => cnt_reg(8),
      I5 => \state[0]_i_18_n_0\,
      O => \state[0]_i_5_n_0\
    );
\state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404000400040004"
    )
        port map (
      I0 => \state[0]_i_19_n_0\,
      I1 => \state[0]_i_20_n_0\,
      I2 => \state[0]_i_21_n_0\,
      I3 => cnt_reg(14),
      I4 => cnt_reg(12),
      I5 => cnt_reg(13),
      O => \state[0]_i_6_n_0\
    );
\state[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cnt[0]_i_7_n_0\,
      I1 => \state[0]_i_22_n_0\,
      I2 => \state[0]_i_23_n_0\,
      I3 => \state[0]_i_24_n_0\,
      I4 => \state[0]_i_25_n_0\,
      O => \state[0]_i_7_n_0\
    );
\state[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => cnt_reg(58),
      I1 => cnt_reg(57),
      I2 => cnt_reg(31),
      I3 => cnt_reg(30),
      O => \state[0]_i_8_n_0\
    );
\state[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FFF"
    )
        port map (
      I0 => cnt_reg(34),
      I1 => cnt_reg(33),
      I2 => cnt_reg(13),
      I3 => cnt_reg(4),
      O => \state[0]_i_9_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F4F4000"
    )
        port map (
      I0 => \cnt[0]_i_5_n_0\,
      I1 => \state[0]_i_2_n_0\,
      I2 => \^ap_start\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
\yellow[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => yellow(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    btn : in STD_LOGIC;
    red : out STD_LOGIC;
    yellow : out STD_LOGIC;
    green : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_TrafficLight_0_0,TrafficLight,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "TrafficLight,Vivado 2023.1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of btn : signal is "xilinx.com:signal:data:1.0 btn DATA";
  attribute X_INTERFACE_PARAMETER of btn : signal is "XIL_INTERFACENAME btn, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of green : signal is "xilinx.com:signal:data:1.0 green DATA";
  attribute X_INTERFACE_PARAMETER of green : signal is "XIL_INTERFACENAME green, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of red : signal is "xilinx.com:signal:data:1.0 red DATA";
  attribute X_INTERFACE_PARAMETER of red : signal is "XIL_INTERFACENAME red, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of yellow : signal is "xilinx.com:signal:data:1.0 yellow DATA";
  attribute X_INTERFACE_PARAMETER of yellow : signal is "XIL_INTERFACENAME yellow, LAYERED_METADATA undef";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TrafficLight
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => '0',
      ap_start => ap_start,
      btn(0) => btn,
      green(0) => green,
      red(0) => red,
      yellow(0) => yellow
    );
end STRUCTURE;
