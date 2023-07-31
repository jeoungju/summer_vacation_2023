-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "07/31/2023 10:22:49"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	n_rst : IN std_logic;
	rxd : IN std_logic;
	txd : BUFFER std_logic
	);
END top;

-- Design Ports Information
-- txd	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rxd	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_n_rst : std_logic;
SIGNAL ww_rxd : std_logic;
SIGNAL ww_txd : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \n_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dut_uart|dut_gen_en|cnt[0]~3_combout\ : std_logic;
SIGNAL \n_rst~input_o\ : std_logic;
SIGNAL \n_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \dut_uart|dut_gen_en|cnt[1]~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_gen_en|cnt[2]~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_gen_en|cnt[3]~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_gen_en|Equal0~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|cnt_4~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Add0~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[3]~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[3]~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Equal6~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[1]~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[1]~3_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Add0~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[2]~4_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector2~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector2~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector2~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector2~3_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_state.DATA~q\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_next_state.STOP~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_next_state.STOP~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_state.STOP~q\ : std_logic;
SIGNAL \dut_uart|dut_tx|cnt_4[2]~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|cnt_4~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|cnt_4~3_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_next_state~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_next_state~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[0]~5_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[1]~8\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[2]~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[2]~10\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[3]~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[3]~12\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[4]~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Equal0~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_gen_en|Equal1~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[1]~5_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[0]~6_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Add0~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[3]~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[3]~7_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Equal2~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[1]~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector2~0_combout\ : std_logic;
SIGNAL \rxd~input_o\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector0~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[0]~3_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector2~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_state.STOP~q\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector0~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_state.IDLE~q\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[2]~4_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[2]~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector1~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector1~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector1~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_state.DATA~q\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~8_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd[4]~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~3_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~4_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~6_combout\ : std_logic;
SIGNAL \dut_decorder|n_state~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~7_combout\ : std_logic;
SIGNAL \dut_decorder|Equal8~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~5_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~2_combout\ : std_logic;
SIGNAL \dut_decorder|op_d~4_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|valid_sig~q\ : std_logic;
SIGNAL \dut_uart|dut_rx|valid_sig_d~q\ : std_logic;
SIGNAL \dut_uart|dut_rx|valid~combout\ : std_logic;
SIGNAL \dut_decorder|Equal5~4_combout\ : std_logic;
SIGNAL \dut_decorder|n_state~1_combout\ : std_logic;
SIGNAL \dut_decorder|n_state~4_combout\ : std_logic;
SIGNAL \dut_decorder|n_state~5_combout\ : std_logic;
SIGNAL \dut_decorder|n_state~6_combout\ : std_logic;
SIGNAL \dut_decorder|cnt_2~3_combout\ : std_logic;
SIGNAL \dut_decorder|cnt_2[2]~1_combout\ : std_logic;
SIGNAL \dut_decorder|cnt_2~2_combout\ : std_logic;
SIGNAL \dut_decorder|cnt_2~0_combout\ : std_logic;
SIGNAL \dut_decorder|Selector6~0_combout\ : std_logic;
SIGNAL \dut_decorder|Selector5~0_combout\ : std_logic;
SIGNAL \dut_decorder|state.DATA_2~q\ : std_logic;
SIGNAL \dut_decorder|Selector6~1_combout\ : std_logic;
SIGNAL \dut_decorder|state.EQUAL~q\ : std_logic;
SIGNAL \dut_decorder|n_state.END_DATA~0_combout\ : std_logic;
SIGNAL \dut_decorder|state.END_DATA~q\ : std_logic;
SIGNAL \dut_decorder|Selector0~0_combout\ : std_logic;
SIGNAL \dut_decorder|state.IDLE~q\ : std_logic;
SIGNAL \dut_decorder|n_state~2_combout\ : std_logic;
SIGNAL \dut_decorder|n_state~3_combout\ : std_logic;
SIGNAL \dut_decorder|Selector1~0_combout\ : std_logic;
SIGNAL \dut_decorder|state.FORMAT~q\ : std_logic;
SIGNAL \dut_decorder|Selector2~0_combout\ : std_logic;
SIGNAL \dut_decorder|state.TYPE~q\ : std_logic;
SIGNAL \dut_decorder|cnt_1~3_combout\ : std_logic;
SIGNAL \dut_decorder|cnt_1[1]~1_combout\ : std_logic;
SIGNAL \dut_decorder|cnt_1~2_combout\ : std_logic;
SIGNAL \dut_decorder|cnt_1~0_combout\ : std_logic;
SIGNAL \dut_decorder|Selector4~0_combout\ : std_logic;
SIGNAL \dut_decorder|Selector3~0_combout\ : std_logic;
SIGNAL \dut_decorder|state.DATA_1~q\ : std_logic;
SIGNAL \dut_decorder|Selector4~1_combout\ : std_logic;
SIGNAL \dut_decorder|state.OPERATION~q\ : std_logic;
SIGNAL \dut_decorder|op_d[2]~5_combout\ : std_logic;
SIGNAL \dut_decorder|op_d[2]~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|n_state~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|state~q\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[0]~6\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[1]~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Equal1~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|count[0]~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|n_state~1_combout\ : std_logic;
SIGNAL \dut_decorder|Equal5~5_combout\ : std_logic;
SIGNAL \dut_decorder|Equal5~6_combout\ : std_logic;
SIGNAL \dut_decorder|Equal8~3_combout\ : std_logic;
SIGNAL \dut_decorder|dtype_d[1]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|n_state~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|n_state~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|state~q\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|count[0]~6\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|count[1]~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|count[1]~8\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|count[2]~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|count[2]~10\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|count[3]~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|count[3]~12\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|count[4]~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Equal4~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|count[0]~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|n_state~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|n_state~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|n_state~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|state~q\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|count[0]~6\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|count[1]~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|count[1]~8\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|count[2]~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|count[2]~10\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|count[3]~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|count[3]~12\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|count[4]~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|Equal2~0_combout\ : std_logic;
SIGNAL \dut_alu|alu_done~0_combout\ : std_logic;
SIGNAL \dut_alu|alu_done~combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector0~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_state.IDLE~q\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[0]~5_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector1~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector1~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector1~3_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector1~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector1~4_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_state.START~q\ : std_logic;
SIGNAL \dut_decorder|src2_d[0]~0_combout\ : std_logic;
SIGNAL \dut_decorder|src1_d[15]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|Add0~1_cout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[1]~1\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[2]~3\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[3]~5\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[4]~7\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[5]~9\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[6]~11\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[7]~13\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[8]~15\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[9]~17\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[10]~19\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[11]~21\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[12]~23\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[13]~25\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[14]~27\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[15]~29\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|Add0~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[15]~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[14]~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[13]~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[12]~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[11]~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[10]~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[9]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[8]~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[7]~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[6]~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[5]~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[4]~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[3]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[2]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[1]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[0]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[0]~1\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[0]~18\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[1]~19_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[1]~3\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[1]~20\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[2]~21_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[2]~5\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[3]~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[2]~22\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[3]~23_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[3]~7\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[4]~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[3]~24\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[4]~25_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[4]~9\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[5]~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[4]~26\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[5]~27_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[5]~11\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[6]~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[5]~28\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[6]~29_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[6]~13\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[7]~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[6]~30\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[7]~31_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[7]~15\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[8]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[7]~32\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[8]~33_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[8]~17\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[9]~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[8]~34\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[9]~35_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[9]~19\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[10]~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[9]~36\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[10]~37_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[10]~21\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[11]~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[10]~38\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[11]~39_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[11]~23\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[12]~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[11]~40\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[12]~41_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[12]~25\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[13]~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[12]~42\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[13]~43_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[13]~27\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[14]~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[13]~44\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[14]~45_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[14]~29\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[15]~30_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[14]~46\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[15]~47_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[15]~31\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[16]~32_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[15]~48\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[16]~49_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[0]~17_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[0]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q0~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q0~q\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[0]~1\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[1]~3\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[2]~5\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[3]~7\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[4]~9\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[5]~11\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[6]~13\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[7]~15\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[8]~17\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[9]~19\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[10]~21\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[11]~23\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[12]~25\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[13]~27\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[14]~29\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[15]~30_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[0]~1\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[1]~3\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[2]~5\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[3]~7\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[4]~9\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[5]~11\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[6]~13\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[7]~15\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[8]~17\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[9]~19\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[10]~21\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[11]~23\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[12]~25\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[13]~27\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[14]~29\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[15]~30_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~30_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~31_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[14]~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[14]~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~29_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[13]~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[13]~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~25_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[12]~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[12]~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~23_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[11]~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[11]~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~21_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[10]~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[10]~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[9]~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[9]~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[8]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[8]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[7]~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[7]~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[6]~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[6]~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[5]~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[5]~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~17_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[4]~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[4]~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~19_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[3]~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[3]~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~27_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q[15]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[0]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[0]~17\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[1]~20\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[2]~22\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[3]~24\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[4]~26\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[5]~28\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[6]~30\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[7]~32\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[8]~33_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[8]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[8]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[16]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[16]~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[24]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[24]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[24]~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[1]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[1]~19_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[1]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[1]~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[8]~34\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[9]~35_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[9]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[9]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[17]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[17]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[17]~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[25]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[25]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[25]~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[3]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[3]~23_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[3]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[3]~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[11]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[9]~36\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[10]~38\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[11]~39_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[11]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[11]~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[19]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[19]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[27]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[27]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[27]~21_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[6]~29_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[6]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[6]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[6]~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[11]~40\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[12]~42\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[13]~44\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[14]~45_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[14]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[14]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[14]~23_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[22]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[22]~27_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[30]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[31]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[30]~30_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[7]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[7]~31_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[7]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[7]~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[14]~46\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[15]~47_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[15]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[15]~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[23]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[23]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[23]~29_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[31]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[31]~31_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~8_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~9_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~7_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data[3]~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[5]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[5]~27_combout\ : std_logic;
SIGNAL \dut_alu|result[5]~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[13]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[13]~43_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[13]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[13]~19_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[21]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[21]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[21]~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[29]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[29]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[29]~28_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[4]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[4]~25_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[4]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[4]~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[12]~41_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[12]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[12]~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[20]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[20]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[20]~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[28]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[28]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[28]~25_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~5_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[2]~21_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[2]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[2]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[2]~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[10]~37_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[10]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[10]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[10]~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[18]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[18]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[18]~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[26]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|result[26]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result[26]~17_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~3_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|txd~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|txd~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|txd~q\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_s|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_s|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_s|A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_u|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_u|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_u|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_u|A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_alu|dut_divider_u|A\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \dut_decorder|op_d\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dut_decorder|src2_d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_alu|dut_divider_u|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_decorder|src1_d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_uart|dut_tx|cnt_4\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dut_decorder|cnt_1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dut_uart|dut_gen_en|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut_uart|dut_tx|shift_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut_decorder|dtype_d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut_uart|dut_rx|rx_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut_decorder|cnt_2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dut_alu|dut_divider_u|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dut_uart|dut_rx|fnd_rxd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut_uart|dut_tx|data_32\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dut_uart|dut_tx|tx_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut_alu|dut_divider_u|result\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_alu|dut_divider_u|ALT_INV_state~q\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|ALT_INV_state~q\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|ALT_INV_state~q\ : std_logic;
SIGNAL \dut_uart|dut_tx|ALT_INV_txd~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_n_rst <= n_rst;
ww_rxd <= rxd;
txd <= ww_txd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\n_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \n_rst~input_o\);
\dut_alu|dut_divider_u|ALT_INV_state~q\ <= NOT \dut_alu|dut_divider_u|state~q\;
\dut_alu|dut_mul_s|ALT_INV_state~q\ <= NOT \dut_alu|dut_mul_s|state~q\;
\dut_alu|dut_mul_u|ALT_INV_state~q\ <= NOT \dut_alu|dut_mul_u|state~q\;
\dut_uart|dut_tx|ALT_INV_txd~q\ <= NOT \dut_uart|dut_tx|txd~q\;

-- Location: IOOBUF_X19_Y29_N30
\txd~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut_uart|dut_tx|ALT_INV_txd~q\,
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y20_N2
\dut_uart|dut_gen_en|cnt[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_gen_en|cnt[0]~3_combout\ = !\dut_uart|dut_gen_en|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_uart|dut_gen_en|cnt\(0),
	combout => \dut_uart|dut_gen_en|cnt[0]~3_combout\);

-- Location: IOIBUF_X0_Y14_N8
\n_rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_rst,
	o => \n_rst~input_o\);

-- Location: CLKCTRL_G2
\n_rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \n_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \n_rst~inputclkctrl_outclk\);

-- Location: FF_X23_Y20_N3
\dut_uart|dut_gen_en|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_gen_en|cnt[0]~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_gen_en|cnt\(0));

-- Location: LCCOMB_X23_Y20_N24
\dut_uart|dut_gen_en|cnt[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_gen_en|cnt[1]~2_combout\ = \dut_uart|dut_gen_en|cnt\(1) $ (\dut_uart|dut_gen_en|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_uart|dut_gen_en|cnt\(1),
	datad => \dut_uart|dut_gen_en|cnt\(0),
	combout => \dut_uart|dut_gen_en|cnt[1]~2_combout\);

-- Location: FF_X23_Y20_N25
\dut_uart|dut_gen_en|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_gen_en|cnt[1]~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_gen_en|cnt\(1));

-- Location: LCCOMB_X23_Y20_N6
\dut_uart|dut_gen_en|cnt[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_gen_en|cnt[2]~1_combout\ = \dut_uart|dut_gen_en|cnt\(2) $ (((\dut_uart|dut_gen_en|cnt\(0) & \dut_uart|dut_gen_en|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_gen_en|cnt\(0),
	datac => \dut_uart|dut_gen_en|cnt\(2),
	datad => \dut_uart|dut_gen_en|cnt\(1),
	combout => \dut_uart|dut_gen_en|cnt[2]~1_combout\);

-- Location: FF_X23_Y20_N7
\dut_uart|dut_gen_en|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_gen_en|cnt[2]~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_gen_en|cnt\(2));

-- Location: LCCOMB_X23_Y20_N12
\dut_uart|dut_gen_en|cnt[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_gen_en|cnt[3]~0_combout\ = \dut_uart|dut_gen_en|cnt\(3) $ (((\dut_uart|dut_gen_en|cnt\(2) & (\dut_uart|dut_gen_en|cnt\(0) & \dut_uart|dut_gen_en|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|cnt\(2),
	datab => \dut_uart|dut_gen_en|cnt\(0),
	datac => \dut_uart|dut_gen_en|cnt\(3),
	datad => \dut_uart|dut_gen_en|cnt\(1),
	combout => \dut_uart|dut_gen_en|cnt[3]~0_combout\);

-- Location: FF_X23_Y20_N13
\dut_uart|dut_gen_en|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_gen_en|cnt[3]~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_gen_en|cnt\(3));

-- Location: LCCOMB_X23_Y20_N20
\dut_uart|dut_gen_en|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_gen_en|Equal0~0_combout\ = (\dut_uart|dut_gen_en|cnt\(2) & (\dut_uart|dut_gen_en|cnt\(1) & (\dut_uart|dut_gen_en|cnt\(3) & \dut_uart|dut_gen_en|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|cnt\(2),
	datab => \dut_uart|dut_gen_en|cnt\(1),
	datac => \dut_uart|dut_gen_en|cnt\(3),
	datad => \dut_uart|dut_gen_en|cnt\(0),
	combout => \dut_uart|dut_gen_en|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y21_N12
\dut_uart|dut_tx|cnt_4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|cnt_4~0_combout\ = (\dut_uart|dut_tx|tx_state.IDLE~q\ & !\dut_uart|dut_tx|cnt_4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_state.IDLE~q\,
	datac => \dut_uart|dut_tx|cnt_4\(0),
	combout => \dut_uart|dut_tx|cnt_4~0_combout\);

-- Location: LCCOMB_X20_Y22_N12
\dut_uart|dut_tx|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Add0~0_combout\ = \dut_uart|dut_tx|tx_cnt\(3) $ (((\dut_uart|dut_tx|tx_cnt\(1) & (\dut_uart|dut_tx|tx_cnt\(2) & \dut_uart|dut_tx|tx_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_cnt\(1),
	datab => \dut_uart|dut_tx|tx_cnt\(3),
	datac => \dut_uart|dut_tx|tx_cnt\(2),
	datad => \dut_uart|dut_tx|tx_cnt\(0),
	combout => \dut_uart|dut_tx|Add0~0_combout\);

-- Location: LCCOMB_X20_Y22_N16
\dut_uart|dut_tx|tx_n_cnt[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[3]~0_combout\ = (\dut_uart|dut_gen_en|Equal0~0_combout\ & (\dut_uart|dut_tx|Add0~0_combout\)) # (!\dut_uart|dut_gen_en|Equal0~0_combout\ & (((\dut_uart|dut_tx|tx_cnt\(3) & !\dut_uart|dut_tx|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|Add0~0_combout\,
	datab => \dut_uart|dut_tx|tx_cnt\(3),
	datac => \dut_uart|dut_tx|Equal6~0_combout\,
	datad => \dut_uart|dut_gen_en|Equal0~0_combout\,
	combout => \dut_uart|dut_tx|tx_n_cnt[3]~0_combout\);

-- Location: LCCOMB_X20_Y22_N28
\dut_uart|dut_tx|tx_n_cnt[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[3]~1_combout\ = (\dut_uart|dut_tx|tx_state.IDLE~q\ & \dut_uart|dut_tx|tx_n_cnt[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_tx|tx_state.IDLE~q\,
	datac => \dut_uart|dut_tx|tx_n_cnt[3]~0_combout\,
	combout => \dut_uart|dut_tx|tx_n_cnt[3]~1_combout\);

-- Location: FF_X20_Y22_N29
\dut_uart|dut_tx|tx_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|tx_n_cnt[3]~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_cnt\(3));

-- Location: LCCOMB_X20_Y22_N6
\dut_uart|dut_tx|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Equal6~0_combout\ = (\dut_uart|dut_tx|tx_cnt\(1) & (\dut_uart|dut_tx|tx_cnt\(3) & (!\dut_uart|dut_tx|tx_cnt\(2) & \dut_uart|dut_tx|tx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_cnt\(1),
	datab => \dut_uart|dut_tx|tx_cnt\(3),
	datac => \dut_uart|dut_tx|tx_cnt\(2),
	datad => \dut_uart|dut_tx|tx_cnt\(0),
	combout => \dut_uart|dut_tx|Equal6~0_combout\);

-- Location: LCCOMB_X20_Y22_N2
\dut_uart|dut_tx|tx_n_cnt[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[1]~2_combout\ = (\dut_uart|dut_gen_en|Equal0~0_combout\ & (\dut_uart|dut_tx|tx_cnt\(1) $ ((\dut_uart|dut_tx|tx_cnt\(0))))) # (!\dut_uart|dut_gen_en|Equal0~0_combout\ & (\dut_uart|dut_tx|tx_cnt\(1) & 
-- ((!\dut_uart|dut_tx|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_cnt\(1),
	datab => \dut_uart|dut_tx|tx_cnt\(0),
	datac => \dut_uart|dut_tx|Equal6~0_combout\,
	datad => \dut_uart|dut_gen_en|Equal0~0_combout\,
	combout => \dut_uart|dut_tx|tx_n_cnt[1]~2_combout\);

-- Location: LCCOMB_X20_Y22_N8
\dut_uart|dut_tx|tx_n_cnt[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[1]~3_combout\ = (\dut_uart|dut_tx|tx_state.IDLE~q\ & \dut_uart|dut_tx|tx_n_cnt[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_tx|tx_state.IDLE~q\,
	datac => \dut_uart|dut_tx|tx_n_cnt[1]~2_combout\,
	combout => \dut_uart|dut_tx|tx_n_cnt[1]~3_combout\);

-- Location: FF_X20_Y22_N9
\dut_uart|dut_tx|tx_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|tx_n_cnt[1]~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_cnt\(1));

-- Location: LCCOMB_X20_Y22_N14
\dut_uart|dut_tx|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Add0~1_combout\ = \dut_uart|dut_tx|tx_cnt\(2) $ (((\dut_uart|dut_tx|tx_cnt\(1) & \dut_uart|dut_tx|tx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_cnt\(1),
	datac => \dut_uart|dut_tx|tx_cnt\(2),
	datad => \dut_uart|dut_tx|tx_cnt\(0),
	combout => \dut_uart|dut_tx|Add0~1_combout\);

-- Location: LCCOMB_X20_Y22_N22
\dut_uart|dut_tx|tx_n_cnt[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[2]~4_combout\ = (\dut_uart|dut_tx|tx_state.IDLE~q\ & ((\dut_uart|dut_gen_en|Equal0~0_combout\ & (\dut_uart|dut_tx|Add0~1_combout\)) # (!\dut_uart|dut_gen_en|Equal0~0_combout\ & ((\dut_uart|dut_tx|tx_cnt\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datab => \dut_uart|dut_tx|Add0~1_combout\,
	datac => \dut_uart|dut_tx|tx_cnt\(2),
	datad => \dut_uart|dut_tx|tx_state.IDLE~q\,
	combout => \dut_uart|dut_tx|tx_n_cnt[2]~4_combout\);

-- Location: FF_X20_Y22_N23
\dut_uart|dut_tx|tx_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|tx_n_cnt[2]~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_cnt\(2));

-- Location: LCCOMB_X20_Y22_N10
\dut_uart|dut_tx|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector2~1_combout\ = (!\dut_uart|dut_tx|tx_cnt\(2) & (\dut_uart|dut_tx|tx_cnt\(0) $ (\dut_uart|dut_gen_en|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_tx|tx_cnt\(0),
	datac => \dut_uart|dut_tx|tx_cnt\(2),
	datad => \dut_uart|dut_gen_en|Equal0~0_combout\,
	combout => \dut_uart|dut_tx|Selector2~1_combout\);

-- Location: LCCOMB_X20_Y22_N4
\dut_uart|dut_tx|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector2~2_combout\ = \dut_uart|dut_tx|tx_cnt\(2) $ (((\dut_uart|dut_gen_en|Equal0~0_combout\ & (\dut_uart|dut_tx|tx_cnt\(0) & \dut_uart|dut_tx|tx_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datab => \dut_uart|dut_tx|tx_cnt\(0),
	datac => \dut_uart|dut_tx|tx_cnt\(2),
	datad => \dut_uart|dut_tx|tx_cnt\(1),
	combout => \dut_uart|dut_tx|Selector2~2_combout\);

-- Location: LCCOMB_X20_Y22_N0
\dut_uart|dut_tx|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector2~0_combout\ = (\dut_uart|dut_tx|tx_n_cnt[3]~0_combout\ & (((\dut_uart|dut_tx|tx_state.DATA~q\ & \dut_uart|dut_tx|tx_n_cnt[1]~2_combout\)))) # (!\dut_uart|dut_tx|tx_n_cnt[3]~0_combout\ & (\dut_uart|dut_tx|tx_state.START~q\ & 
-- (!\dut_uart|dut_tx|tx_state.DATA~q\ & !\dut_uart|dut_tx|tx_n_cnt[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_n_cnt[3]~0_combout\,
	datab => \dut_uart|dut_tx|tx_state.START~q\,
	datac => \dut_uart|dut_tx|tx_state.DATA~q\,
	datad => \dut_uart|dut_tx|tx_n_cnt[1]~2_combout\,
	combout => \dut_uart|dut_tx|Selector2~0_combout\);

-- Location: LCCOMB_X20_Y22_N26
\dut_uart|dut_tx|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector2~3_combout\ = (\dut_uart|dut_tx|Selector2~0_combout\ & ((\dut_uart|dut_tx|Selector2~1_combout\ & (!\dut_uart|dut_tx|Selector2~2_combout\)) # (!\dut_uart|dut_tx|Selector2~1_combout\ & (\dut_uart|dut_tx|Selector2~2_combout\ & 
-- \dut_uart|dut_tx|tx_state.DATA~q\)))) # (!\dut_uart|dut_tx|Selector2~0_combout\ & (((\dut_uart|dut_tx|tx_state.DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|Selector2~1_combout\,
	datab => \dut_uart|dut_tx|Selector2~2_combout\,
	datac => \dut_uart|dut_tx|tx_state.DATA~q\,
	datad => \dut_uart|dut_tx|Selector2~0_combout\,
	combout => \dut_uart|dut_tx|Selector2~3_combout\);

-- Location: FF_X20_Y22_N27
\dut_uart|dut_tx|tx_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|Selector2~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_state.DATA~q\);

-- Location: LCCOMB_X20_Y22_N20
\dut_uart|dut_tx|tx_next_state.STOP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_next_state.STOP~0_combout\ = (\dut_uart|dut_tx|tx_state.DATA~q\ & ((\dut_uart|dut_gen_en|Equal0~0_combout\ $ (!\dut_uart|dut_tx|tx_cnt\(0))) # (!\dut_uart|dut_tx|tx_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datab => \dut_uart|dut_tx|tx_cnt\(0),
	datac => \dut_uart|dut_tx|tx_state.DATA~q\,
	datad => \dut_uart|dut_tx|tx_state.IDLE~q\,
	combout => \dut_uart|dut_tx|tx_next_state.STOP~0_combout\);

-- Location: LCCOMB_X20_Y22_N24
\dut_uart|dut_tx|tx_next_state.STOP~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_next_state.STOP~1_combout\ = (\dut_uart|dut_tx|tx_next_state.STOP~0_combout\ & (\dut_uart|dut_tx|tx_n_cnt[3]~1_combout\ & (\dut_uart|dut_tx|tx_n_cnt[1]~3_combout\ & !\dut_uart|dut_tx|tx_n_cnt[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_next_state.STOP~0_combout\,
	datab => \dut_uart|dut_tx|tx_n_cnt[3]~1_combout\,
	datac => \dut_uart|dut_tx|tx_n_cnt[1]~3_combout\,
	datad => \dut_uart|dut_tx|tx_n_cnt[2]~4_combout\,
	combout => \dut_uart|dut_tx|tx_next_state.STOP~1_combout\);

-- Location: FF_X20_Y22_N25
\dut_uart|dut_tx|tx_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|tx_next_state.STOP~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_state.STOP~q\);

-- Location: LCCOMB_X23_Y21_N16
\dut_uart|dut_tx|cnt_4[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|cnt_4[2]~1_combout\ = (\dut_uart|dut_tx|tx_state.STOP~q\) # (!\dut_uart|dut_tx|tx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_state.STOP~q\,
	datac => \dut_uart|dut_tx|tx_state.IDLE~q\,
	combout => \dut_uart|dut_tx|cnt_4[2]~1_combout\);

-- Location: FF_X23_Y21_N13
\dut_uart|dut_tx|cnt_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|cnt_4~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|cnt_4\(0));

-- Location: LCCOMB_X23_Y21_N18
\dut_uart|dut_tx|cnt_4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|cnt_4~2_combout\ = (\dut_uart|dut_tx|tx_state.IDLE~q\ & (\dut_uart|dut_tx|cnt_4\(1) $ (\dut_uart|dut_tx|cnt_4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_state.IDLE~q\,
	datac => \dut_uart|dut_tx|cnt_4\(1),
	datad => \dut_uart|dut_tx|cnt_4\(0),
	combout => \dut_uart|dut_tx|cnt_4~2_combout\);

-- Location: FF_X23_Y21_N19
\dut_uart|dut_tx|cnt_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|cnt_4~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|cnt_4\(1));

-- Location: LCCOMB_X23_Y21_N6
\dut_uart|dut_tx|cnt_4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|cnt_4~3_combout\ = (\dut_uart|dut_tx|tx_state.IDLE~q\ & (\dut_uart|dut_tx|cnt_4\(2) $ (((\dut_uart|dut_tx|cnt_4\(1) & \dut_uart|dut_tx|cnt_4\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_state.IDLE~q\,
	datab => \dut_uart|dut_tx|cnt_4\(1),
	datac => \dut_uart|dut_tx|cnt_4\(2),
	datad => \dut_uart|dut_tx|cnt_4\(0),
	combout => \dut_uart|dut_tx|cnt_4~3_combout\);

-- Location: FF_X23_Y21_N7
\dut_uart|dut_tx|cnt_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|cnt_4~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|cnt_4\(2));

-- Location: LCCOMB_X20_Y22_N30
\dut_uart|dut_tx|tx_next_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_next_state~2_combout\ = (\dut_uart|dut_tx|tx_cnt\(1) & (\dut_uart|dut_tx|tx_cnt\(3) & (!\dut_uart|dut_tx|tx_cnt\(2) & !\dut_uart|dut_tx|tx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_cnt\(1),
	datab => \dut_uart|dut_tx|tx_cnt\(3),
	datac => \dut_uart|dut_tx|tx_cnt\(2),
	datad => \dut_uart|dut_tx|tx_cnt\(0),
	combout => \dut_uart|dut_tx|tx_next_state~2_combout\);

-- Location: LCCOMB_X23_Y21_N30
\dut_uart|dut_tx|tx_next_state~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_next_state~3_combout\ = (!\dut_uart|dut_tx|cnt_4\(2) & (\dut_uart|dut_tx|tx_next_state~2_combout\ & ((!\dut_uart|dut_tx|cnt_4\(0)) # (!\dut_uart|dut_tx|cnt_4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|cnt_4\(2),
	datab => \dut_uart|dut_tx|cnt_4\(1),
	datac => \dut_uart|dut_tx|tx_next_state~2_combout\,
	datad => \dut_uart|dut_tx|cnt_4\(0),
	combout => \dut_uart|dut_tx|tx_next_state~3_combout\);

-- Location: LCCOMB_X19_Y20_N10
\dut_alu|dut_divider_u|count[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|count[0]~5_combout\ = \dut_alu|dut_divider_u|count\(0) $ (VCC)
-- \dut_alu|dut_divider_u|count[0]~6\ = CARRY(\dut_alu|dut_divider_u|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|count\(0),
	datad => VCC,
	combout => \dut_alu|dut_divider_u|count[0]~5_combout\,
	cout => \dut_alu|dut_divider_u|count[0]~6\);

-- Location: LCCOMB_X24_Y19_N12
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X19_Y20_N12
\dut_alu|dut_divider_u|count[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|count[1]~7_combout\ = (\dut_alu|dut_divider_u|count\(1) & (\dut_alu|dut_divider_u|count[0]~6\ & VCC)) # (!\dut_alu|dut_divider_u|count\(1) & (!\dut_alu|dut_divider_u|count[0]~6\))
-- \dut_alu|dut_divider_u|count[1]~8\ = CARRY((!\dut_alu|dut_divider_u|count\(1) & !\dut_alu|dut_divider_u|count[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|count\(1),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|count[0]~6\,
	combout => \dut_alu|dut_divider_u|count[1]~7_combout\,
	cout => \dut_alu|dut_divider_u|count[1]~8\);

-- Location: LCCOMB_X19_Y20_N14
\dut_alu|dut_divider_u|count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|count[2]~9_combout\ = (\dut_alu|dut_divider_u|count\(2) & ((GND) # (!\dut_alu|dut_divider_u|count[1]~8\))) # (!\dut_alu|dut_divider_u|count\(2) & (\dut_alu|dut_divider_u|count[1]~8\ $ (GND)))
-- \dut_alu|dut_divider_u|count[2]~10\ = CARRY((\dut_alu|dut_divider_u|count\(2)) # (!\dut_alu|dut_divider_u|count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|count\(2),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|count[1]~8\,
	combout => \dut_alu|dut_divider_u|count[2]~9_combout\,
	cout => \dut_alu|dut_divider_u|count[2]~10\);

-- Location: FF_X19_Y20_N15
\dut_alu|dut_divider_u|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|count[2]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|count\(2));

-- Location: LCCOMB_X19_Y20_N16
\dut_alu|dut_divider_u|count[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|count[3]~11_combout\ = (\dut_alu|dut_divider_u|count\(3) & (\dut_alu|dut_divider_u|count[2]~10\ & VCC)) # (!\dut_alu|dut_divider_u|count\(3) & (!\dut_alu|dut_divider_u|count[2]~10\))
-- \dut_alu|dut_divider_u|count[3]~12\ = CARRY((!\dut_alu|dut_divider_u|count\(3) & !\dut_alu|dut_divider_u|count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|count\(3),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|count[2]~10\,
	combout => \dut_alu|dut_divider_u|count[3]~11_combout\,
	cout => \dut_alu|dut_divider_u|count[3]~12\);

-- Location: FF_X19_Y20_N17
\dut_alu|dut_divider_u|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|count[3]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|count\(3));

-- Location: LCCOMB_X19_Y20_N18
\dut_alu|dut_divider_u|count[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|count[4]~13_combout\ = \dut_alu|dut_divider_u|count[3]~12\ $ (\dut_alu|dut_divider_u|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_divider_u|count\(4),
	cin => \dut_alu|dut_divider_u|count[3]~12\,
	combout => \dut_alu|dut_divider_u|count[4]~13_combout\);

-- Location: FF_X19_Y20_N19
\dut_alu|dut_divider_u|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|count[4]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|count\(4));

-- Location: LCCOMB_X19_Y20_N4
\dut_alu|dut_divider_u|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Equal0~0_combout\ = (\dut_alu|dut_divider_u|count\(1)) # ((\dut_alu|dut_divider_u|count\(3)) # ((\dut_alu|dut_divider_u|count\(2)) # (\dut_alu|dut_divider_u|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|count\(1),
	datab => \dut_alu|dut_divider_u|count\(3),
	datac => \dut_alu|dut_divider_u|count\(2),
	datad => \dut_alu|dut_divider_u|count\(0),
	combout => \dut_alu|dut_divider_u|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y20_N22
\dut_uart|dut_gen_en|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_gen_en|Equal1~0_combout\ = (\dut_uart|dut_gen_en|cnt\(2) & (\dut_uart|dut_gen_en|cnt\(1) & (!\dut_uart|dut_gen_en|cnt\(3) & \dut_uart|dut_gen_en|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|cnt\(2),
	datab => \dut_uart|dut_gen_en|cnt\(1),
	datac => \dut_uart|dut_gen_en|cnt\(3),
	datad => \dut_uart|dut_gen_en|cnt\(0),
	combout => \dut_uart|dut_gen_en|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y21_N14
\dut_uart|dut_rx|rx_n_cnt[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[1]~5_combout\ = (\dut_uart|dut_rx|rx_n_cnt[1]~1_combout\ & \dut_uart|dut_rx|rx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_uart|dut_rx|rx_n_cnt[1]~1_combout\,
	datad => \dut_uart|dut_rx|rx_state.IDLE~q\,
	combout => \dut_uart|dut_rx|rx_n_cnt[1]~5_combout\);

-- Location: FF_X28_Y21_N15
\dut_uart|dut_rx|rx_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|rx_n_cnt[1]~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_cnt\(1));

-- Location: LCCOMB_X28_Y21_N16
\dut_uart|dut_rx|rx_n_cnt[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[0]~6_combout\ = (\dut_uart|dut_rx|rx_state.IDLE~q\ & (\dut_uart|dut_gen_en|Equal1~0_combout\ $ (\dut_uart|dut_rx|rx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datac => \dut_uart|dut_rx|rx_cnt\(0),
	datad => \dut_uart|dut_rx|rx_state.IDLE~q\,
	combout => \dut_uart|dut_rx|rx_n_cnt[0]~6_combout\);

-- Location: FF_X28_Y21_N17
\dut_uart|dut_rx|rx_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|rx_n_cnt[0]~6_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_cnt\(0));

-- Location: LCCOMB_X28_Y21_N26
\dut_uart|dut_rx|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Add0~0_combout\ = \dut_uart|dut_rx|rx_cnt\(3) $ (((\dut_uart|dut_rx|rx_cnt\(2) & (\dut_uart|dut_rx|rx_cnt\(1) & \dut_uart|dut_rx|rx_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_cnt\(2),
	datab => \dut_uart|dut_rx|rx_cnt\(1),
	datac => \dut_uart|dut_rx|rx_cnt\(3),
	datad => \dut_uart|dut_rx|rx_cnt\(0),
	combout => \dut_uart|dut_rx|Add0~0_combout\);

-- Location: LCCOMB_X28_Y21_N20
\dut_uart|dut_rx|rx_n_cnt[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[3]~2_combout\ = (\dut_uart|dut_gen_en|Equal1~0_combout\ & (((\dut_uart|dut_rx|Add0~0_combout\)))) # (!\dut_uart|dut_gen_en|Equal1~0_combout\ & (!\dut_uart|dut_rx|Equal2~0_combout\ & (\dut_uart|dut_rx|rx_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|Equal2~0_combout\,
	datab => \dut_uart|dut_rx|rx_cnt\(3),
	datac => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datad => \dut_uart|dut_rx|Add0~0_combout\,
	combout => \dut_uart|dut_rx|rx_n_cnt[3]~2_combout\);

-- Location: LCCOMB_X28_Y21_N4
\dut_uart|dut_rx|rx_n_cnt[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[3]~7_combout\ = (\dut_uart|dut_rx|rx_n_cnt[3]~2_combout\ & \dut_uart|dut_rx|rx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_rx|rx_n_cnt[3]~2_combout\,
	datad => \dut_uart|dut_rx|rx_state.IDLE~q\,
	combout => \dut_uart|dut_rx|rx_n_cnt[3]~7_combout\);

-- Location: FF_X28_Y21_N5
\dut_uart|dut_rx|rx_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|rx_n_cnt[3]~7_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_cnt\(3));

-- Location: LCCOMB_X28_Y21_N22
\dut_uart|dut_rx|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Equal2~0_combout\ = (!\dut_uart|dut_rx|rx_cnt\(2) & (\dut_uart|dut_rx|rx_cnt\(1) & (\dut_uart|dut_rx|rx_cnt\(3) & !\dut_uart|dut_rx|rx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_cnt\(2),
	datab => \dut_uart|dut_rx|rx_cnt\(1),
	datac => \dut_uart|dut_rx|rx_cnt\(3),
	datad => \dut_uart|dut_rx|rx_cnt\(0),
	combout => \dut_uart|dut_rx|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y21_N8
\dut_uart|dut_rx|rx_n_cnt[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[1]~1_combout\ = (\dut_uart|dut_gen_en|Equal1~0_combout\ & ((\dut_uart|dut_rx|rx_cnt\(1) $ (\dut_uart|dut_rx|rx_cnt\(0))))) # (!\dut_uart|dut_gen_en|Equal1~0_combout\ & (!\dut_uart|dut_rx|Equal2~0_combout\ & 
-- (\dut_uart|dut_rx|rx_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|Equal2~0_combout\,
	datab => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datac => \dut_uart|dut_rx|rx_cnt\(1),
	datad => \dut_uart|dut_rx|rx_cnt\(0),
	combout => \dut_uart|dut_rx|rx_n_cnt[1]~1_combout\);

-- Location: LCCOMB_X28_Y21_N28
\dut_uart|dut_rx|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector2~0_combout\ = (!\dut_uart|dut_rx|rx_n_cnt[2]~0_combout\ & (!\dut_uart|dut_rx|rx_n_cnt[1]~1_combout\ & \dut_uart|dut_rx|rx_n_cnt[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_n_cnt[2]~0_combout\,
	datac => \dut_uart|dut_rx|rx_n_cnt[1]~1_combout\,
	datad => \dut_uart|dut_rx|rx_n_cnt[3]~2_combout\,
	combout => \dut_uart|dut_rx|Selector2~0_combout\);

-- Location: IOIBUF_X28_Y29_N29
\rxd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rxd,
	o => \rxd~input_o\);

-- Location: LCCOMB_X28_Y21_N2
\dut_uart|dut_rx|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector0~0_combout\ = (!\dut_uart|dut_rx|rx_state.IDLE~q\ & ((\rxd~input_o\) # (!\dut_uart|dut_gen_en|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datac => \rxd~input_o\,
	datad => \dut_uart|dut_rx|rx_state.IDLE~q\,
	combout => \dut_uart|dut_rx|Selector0~0_combout\);

-- Location: LCCOMB_X28_Y21_N0
\dut_uart|dut_rx|rx_n_cnt[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[0]~3_combout\ = \dut_uart|dut_gen_en|Equal1~0_combout\ $ (\dut_uart|dut_rx|rx_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datad => \dut_uart|dut_rx|rx_cnt\(0),
	combout => \dut_uart|dut_rx|rx_n_cnt[0]~3_combout\);

-- Location: LCCOMB_X28_Y21_N18
\dut_uart|dut_rx|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector2~1_combout\ = (\dut_uart|dut_rx|Selector2~0_combout\ & (!\dut_uart|dut_rx|rx_n_cnt[0]~3_combout\ & ((\dut_uart|dut_rx|rx_state.DATA~q\) # (\dut_uart|dut_rx|rx_state.STOP~q\)))) # (!\dut_uart|dut_rx|Selector2~0_combout\ & 
-- (((\dut_uart|dut_rx|rx_state.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_n_cnt[0]~3_combout\,
	datab => \dut_uart|dut_rx|rx_state.DATA~q\,
	datac => \dut_uart|dut_rx|rx_state.STOP~q\,
	datad => \dut_uart|dut_rx|Selector2~0_combout\,
	combout => \dut_uart|dut_rx|Selector2~1_combout\);

-- Location: FF_X28_Y21_N19
\dut_uart|dut_rx|rx_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|Selector2~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_state.STOP~q\);

-- Location: LCCOMB_X28_Y21_N24
\dut_uart|dut_rx|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector0~1_combout\ = (!\dut_uart|dut_rx|Selector0~0_combout\ & (((!\dut_uart|dut_rx|rx_state.STOP~q\) # (!\dut_uart|dut_rx|rx_n_cnt[0]~3_combout\)) # (!\dut_uart|dut_rx|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|Selector2~0_combout\,
	datab => \dut_uart|dut_rx|Selector0~0_combout\,
	datac => \dut_uart|dut_rx|rx_n_cnt[0]~3_combout\,
	datad => \dut_uart|dut_rx|rx_state.STOP~q\,
	combout => \dut_uart|dut_rx|Selector0~1_combout\);

-- Location: FF_X28_Y21_N25
\dut_uart|dut_rx|rx_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|Selector0~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_state.IDLE~q\);

-- Location: LCCOMB_X28_Y21_N12
\dut_uart|dut_rx|rx_n_cnt[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[2]~4_combout\ = (\dut_uart|dut_rx|rx_n_cnt[2]~0_combout\ & \dut_uart|dut_rx|rx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_n_cnt[2]~0_combout\,
	datad => \dut_uart|dut_rx|rx_state.IDLE~q\,
	combout => \dut_uart|dut_rx|rx_n_cnt[2]~4_combout\);

-- Location: FF_X28_Y21_N13
\dut_uart|dut_rx|rx_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|rx_n_cnt[2]~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_cnt\(2));

-- Location: LCCOMB_X28_Y21_N10
\dut_uart|dut_rx|rx_n_cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[2]~0_combout\ = \dut_uart|dut_rx|rx_cnt\(2) $ (((\dut_uart|dut_gen_en|Equal1~0_combout\ & (\dut_uart|dut_rx|rx_cnt\(1) & \dut_uart|dut_rx|rx_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_cnt\(2),
	datab => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datac => \dut_uart|dut_rx|rx_cnt\(1),
	datad => \dut_uart|dut_rx|rx_cnt\(0),
	combout => \dut_uart|dut_rx|rx_n_cnt[2]~0_combout\);

-- Location: LCCOMB_X28_Y21_N30
\dut_uart|dut_rx|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector1~0_combout\ = (\dut_uart|dut_rx|rx_state.DATA~q\ & ((\dut_uart|dut_rx|rx_n_cnt[2]~0_combout\) # ((\dut_uart|dut_rx|rx_n_cnt[1]~1_combout\) # (!\dut_uart|dut_rx|rx_n_cnt[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_n_cnt[2]~0_combout\,
	datab => \dut_uart|dut_rx|rx_state.DATA~q\,
	datac => \dut_uart|dut_rx|rx_n_cnt[1]~1_combout\,
	datad => \dut_uart|dut_rx|rx_n_cnt[3]~2_combout\,
	combout => \dut_uart|dut_rx|Selector1~0_combout\);

-- Location: LCCOMB_X27_Y21_N24
\dut_uart|dut_rx|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector1~1_combout\ = (\dut_uart|dut_gen_en|Equal1~0_combout\ & (!\dut_uart|dut_rx|rx_state.IDLE~q\ & !\rxd~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datab => \dut_uart|dut_rx|rx_state.IDLE~q\,
	datad => \rxd~input_o\,
	combout => \dut_uart|dut_rx|Selector1~1_combout\);

-- Location: LCCOMB_X27_Y21_N20
\dut_uart|dut_rx|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector1~2_combout\ = (\dut_uart|dut_rx|Selector1~0_combout\) # ((\dut_uart|dut_rx|Selector1~1_combout\) # ((\dut_uart|dut_rx|rx_n_cnt[0]~3_combout\ & \dut_uart|dut_rx|rx_state.DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|Selector1~0_combout\,
	datab => \dut_uart|dut_rx|rx_n_cnt[0]~3_combout\,
	datac => \dut_uart|dut_rx|rx_state.DATA~q\,
	datad => \dut_uart|dut_rx|Selector1~1_combout\,
	combout => \dut_uart|dut_rx|Selector1~2_combout\);

-- Location: FF_X27_Y21_N21
\dut_uart|dut_rx|rx_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|Selector1~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_state.DATA~q\);

-- Location: LCCOMB_X27_Y21_N0
\dut_uart|dut_rx|fnd_rxd~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~8_combout\ = (\dut_uart|dut_gen_en|Equal1~0_combout\ & (\dut_uart|dut_rx|rx_state.DATA~q\ & \rxd~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datab => \dut_uart|dut_rx|rx_state.DATA~q\,
	datad => \rxd~input_o\,
	combout => \dut_uart|dut_rx|fnd_rxd~8_combout\);

-- Location: LCCOMB_X27_Y21_N14
\dut_uart|dut_rx|fnd_rxd[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd[4]~1_combout\ = ((\dut_uart|dut_gen_en|Equal1~0_combout\ & \dut_uart|dut_rx|rx_state.DATA~q\)) # (!\dut_uart|dut_rx|rx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datab => \dut_uart|dut_rx|rx_state.DATA~q\,
	datad => \dut_uart|dut_rx|rx_state.IDLE~q\,
	combout => \dut_uart|dut_rx|fnd_rxd[4]~1_combout\);

-- Location: FF_X27_Y21_N1
\dut_uart|dut_rx|fnd_rxd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~8_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_uart|dut_rx|fnd_rxd[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(7));

-- Location: LCCOMB_X27_Y21_N28
\dut_uart|dut_rx|fnd_rxd~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~3_combout\ = (\dut_uart|dut_gen_en|Equal1~0_combout\ & (\dut_uart|dut_rx|rx_state.DATA~q\ & \dut_uart|dut_rx|fnd_rxd\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datab => \dut_uart|dut_rx|rx_state.DATA~q\,
	datad => \dut_uart|dut_rx|fnd_rxd\(7),
	combout => \dut_uart|dut_rx|fnd_rxd~3_combout\);

-- Location: FF_X27_Y21_N29
\dut_uart|dut_rx|fnd_rxd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_uart|dut_rx|fnd_rxd[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(6));

-- Location: LCCOMB_X27_Y21_N30
\dut_uart|dut_rx|fnd_rxd~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~4_combout\ = (\dut_uart|dut_gen_en|Equal1~0_combout\ & (\dut_uart|dut_rx|fnd_rxd\(6) & \dut_uart|dut_rx|rx_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datab => \dut_uart|dut_rx|fnd_rxd\(6),
	datad => \dut_uart|dut_rx|rx_state.DATA~q\,
	combout => \dut_uart|dut_rx|fnd_rxd~4_combout\);

-- Location: FF_X27_Y21_N31
\dut_uart|dut_rx|fnd_rxd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_uart|dut_rx|fnd_rxd[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(5));

-- Location: LCCOMB_X27_Y21_N4
\dut_uart|dut_rx|fnd_rxd~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~6_combout\ = (\dut_uart|dut_gen_en|Equal1~0_combout\ & (\dut_uart|dut_rx|fnd_rxd\(5) & \dut_uart|dut_rx|rx_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datac => \dut_uart|dut_rx|fnd_rxd\(5),
	datad => \dut_uart|dut_rx|rx_state.DATA~q\,
	combout => \dut_uart|dut_rx|fnd_rxd~6_combout\);

-- Location: FF_X27_Y21_N5
\dut_uart|dut_rx|fnd_rxd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~6_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_uart|dut_rx|fnd_rxd[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(4));

-- Location: LCCOMB_X27_Y21_N26
\dut_decorder|n_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|n_state~0_combout\ = (\dut_uart|dut_rx|fnd_rxd\(5) & !\dut_uart|dut_rx|fnd_rxd\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_uart|dut_rx|fnd_rxd\(5),
	datad => \dut_uart|dut_rx|fnd_rxd\(6),
	combout => \dut_decorder|n_state~0_combout\);

-- Location: LCCOMB_X27_Y21_N6
\dut_uart|dut_rx|fnd_rxd~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~7_combout\ = (\dut_uart|dut_gen_en|Equal1~0_combout\ & (\dut_uart|dut_rx|rx_state.DATA~q\ & \dut_uart|dut_rx|fnd_rxd\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datab => \dut_uart|dut_rx|rx_state.DATA~q\,
	datac => \dut_uart|dut_rx|fnd_rxd\(4),
	combout => \dut_uart|dut_rx|fnd_rxd~7_combout\);

-- Location: FF_X27_Y21_N7
\dut_uart|dut_rx|fnd_rxd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~7_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_uart|dut_rx|fnd_rxd[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(3));

-- Location: LCCOMB_X27_Y20_N10
\dut_decorder|Equal8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Equal8~2_combout\ = (!\dut_uart|dut_rx|fnd_rxd\(4) & (!\dut_uart|dut_rx|fnd_rxd\(7) & (\dut_decorder|n_state~0_combout\ & \dut_uart|dut_rx|fnd_rxd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(4),
	datab => \dut_uart|dut_rx|fnd_rxd\(7),
	datac => \dut_decorder|n_state~0_combout\,
	datad => \dut_uart|dut_rx|fnd_rxd\(3),
	combout => \dut_decorder|Equal8~2_combout\);

-- Location: LCCOMB_X27_Y21_N16
\dut_uart|dut_rx|fnd_rxd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~0_combout\ = (\dut_uart|dut_gen_en|Equal1~0_combout\ & (\dut_uart|dut_rx|rx_state.DATA~q\ & \dut_uart|dut_rx|fnd_rxd\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datab => \dut_uart|dut_rx|rx_state.DATA~q\,
	datad => \dut_uart|dut_rx|fnd_rxd\(3),
	combout => \dut_uart|dut_rx|fnd_rxd~0_combout\);

-- Location: FF_X27_Y21_N17
\dut_uart|dut_rx|fnd_rxd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_uart|dut_rx|fnd_rxd[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(2));

-- Location: LCCOMB_X27_Y21_N18
\dut_uart|dut_rx|fnd_rxd~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~5_combout\ = (\dut_uart|dut_gen_en|Equal1~0_combout\ & (\dut_uart|dut_rx|rx_state.DATA~q\ & \dut_uart|dut_rx|fnd_rxd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datab => \dut_uart|dut_rx|rx_state.DATA~q\,
	datad => \dut_uart|dut_rx|fnd_rxd\(2),
	combout => \dut_uart|dut_rx|fnd_rxd~5_combout\);

-- Location: FF_X27_Y21_N19
\dut_uart|dut_rx|fnd_rxd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_uart|dut_rx|fnd_rxd[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(1));

-- Location: LCCOMB_X27_Y21_N10
\dut_uart|dut_rx|fnd_rxd~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~2_combout\ = (\dut_uart|dut_gen_en|Equal1~0_combout\ & (\dut_uart|dut_rx|rx_state.DATA~q\ & \dut_uart|dut_rx|fnd_rxd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datab => \dut_uart|dut_rx|rx_state.DATA~q\,
	datad => \dut_uart|dut_rx|fnd_rxd\(1),
	combout => \dut_uart|dut_rx|fnd_rxd~2_combout\);

-- Location: FF_X27_Y21_N11
\dut_uart|dut_rx|fnd_rxd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_uart|dut_rx|fnd_rxd[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(0));

-- Location: LCCOMB_X27_Y20_N30
\dut_decorder|op_d~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|op_d~4_combout\ = ((\dut_uart|dut_rx|fnd_rxd\(2) & ((\dut_uart|dut_rx|fnd_rxd\(1)) # (!\dut_uart|dut_rx|fnd_rxd\(0)))) # (!\dut_uart|dut_rx|fnd_rxd\(2) & ((!\dut_uart|dut_rx|fnd_rxd\(1))))) # (!\dut_decorder|Equal8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|Equal8~2_combout\,
	datab => \dut_uart|dut_rx|fnd_rxd\(0),
	datac => \dut_uart|dut_rx|fnd_rxd\(2),
	datad => \dut_uart|dut_rx|fnd_rxd\(1),
	combout => \dut_decorder|op_d~4_combout\);

-- Location: FF_X28_Y20_N21
\dut_uart|dut_rx|valid_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_uart|dut_rx|rx_state.STOP~q\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|valid_sig~q\);

-- Location: FF_X28_Y20_N17
\dut_uart|dut_rx|valid_sig_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_uart|dut_rx|valid_sig~q\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|valid_sig_d~q\);

-- Location: LCCOMB_X28_Y20_N20
\dut_uart|dut_rx|valid\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|valid~combout\ = (\dut_uart|dut_rx|valid_sig_d~q\) # (!\dut_uart|dut_rx|valid_sig~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|valid_sig_d~q\,
	datac => \dut_uart|dut_rx|valid_sig~q\,
	combout => \dut_uart|dut_rx|valid~combout\);

-- Location: LCCOMB_X27_Y21_N8
\dut_decorder|Equal5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Equal5~4_combout\ = (!\dut_uart|dut_rx|fnd_rxd\(5) & \dut_uart|dut_rx|fnd_rxd\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_uart|dut_rx|fnd_rxd\(5),
	datad => \dut_uart|dut_rx|fnd_rxd\(6),
	combout => \dut_decorder|Equal5~4_combout\);

-- Location: LCCOMB_X28_Y20_N16
\dut_decorder|n_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|n_state~1_combout\ = (\dut_uart|dut_rx|valid_sig~q\ & (!\dut_uart|dut_rx|valid_sig_d~q\ & !\dut_uart|dut_rx|fnd_rxd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|valid_sig~q\,
	datac => \dut_uart|dut_rx|valid_sig_d~q\,
	datad => \dut_uart|dut_rx|fnd_rxd\(1),
	combout => \dut_decorder|n_state~1_combout\);

-- Location: LCCOMB_X27_Y20_N18
\dut_decorder|n_state~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|n_state~4_combout\ = (!\dut_uart|dut_rx|fnd_rxd\(7) & (\dut_uart|dut_rx|fnd_rxd\(3) & (\dut_uart|dut_rx|fnd_rxd\(0) & \dut_decorder|n_state~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(7),
	datab => \dut_uart|dut_rx|fnd_rxd\(3),
	datac => \dut_uart|dut_rx|fnd_rxd\(0),
	datad => \dut_decorder|n_state~1_combout\,
	combout => \dut_decorder|n_state~4_combout\);

-- Location: LCCOMB_X27_Y20_N12
\dut_decorder|n_state~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|n_state~5_combout\ = (!\dut_uart|dut_rx|fnd_rxd\(4) & (\dut_decorder|Equal5~4_combout\ & (!\dut_uart|dut_rx|fnd_rxd\(2) & \dut_decorder|n_state~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(4),
	datab => \dut_decorder|Equal5~4_combout\,
	datac => \dut_uart|dut_rx|fnd_rxd\(2),
	datad => \dut_decorder|n_state~4_combout\,
	combout => \dut_decorder|n_state~5_combout\);

-- Location: LCCOMB_X27_Y20_N14
\dut_decorder|n_state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|n_state~6_combout\ = (\dut_uart|dut_rx|fnd_rxd\(4) & (\dut_uart|dut_rx|fnd_rxd\(2) & (\dut_decorder|n_state~0_combout\ & \dut_decorder|n_state~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(4),
	datab => \dut_uart|dut_rx|fnd_rxd\(2),
	datac => \dut_decorder|n_state~0_combout\,
	datad => \dut_decorder|n_state~4_combout\,
	combout => \dut_decorder|n_state~6_combout\);

-- Location: LCCOMB_X29_Y20_N12
\dut_decorder|cnt_2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|cnt_2~3_combout\ = (!\dut_decorder|cnt_2\(0) & \dut_decorder|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_decorder|cnt_2\(0),
	datad => \dut_decorder|state.IDLE~q\,
	combout => \dut_decorder|cnt_2~3_combout\);

-- Location: LCCOMB_X28_Y20_N6
\dut_decorder|cnt_2[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|cnt_2[2]~1_combout\ = ((\dut_decorder|state.DATA_2~q\ & (\dut_uart|dut_rx|valid_sig~q\ & !\dut_uart|dut_rx|valid_sig_d~q\))) # (!\dut_decorder|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|state.DATA_2~q\,
	datab => \dut_uart|dut_rx|valid_sig~q\,
	datac => \dut_uart|dut_rx|valid_sig_d~q\,
	datad => \dut_decorder|state.IDLE~q\,
	combout => \dut_decorder|cnt_2[2]~1_combout\);

-- Location: FF_X29_Y20_N13
\dut_decorder|cnt_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|cnt_2~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_decorder|cnt_2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|cnt_2\(0));

-- Location: LCCOMB_X29_Y20_N10
\dut_decorder|cnt_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|cnt_2~2_combout\ = (\dut_decorder|state.IDLE~q\ & (\dut_decorder|cnt_2\(1) $ (!\dut_decorder|cnt_2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_decorder|state.IDLE~q\,
	datac => \dut_decorder|cnt_2\(1),
	datad => \dut_decorder|cnt_2\(0),
	combout => \dut_decorder|cnt_2~2_combout\);

-- Location: FF_X29_Y20_N11
\dut_decorder|cnt_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|cnt_2~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_decorder|cnt_2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|cnt_2\(1));

-- Location: LCCOMB_X29_Y20_N0
\dut_decorder|cnt_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|cnt_2~0_combout\ = (\dut_decorder|cnt_2\(2) $ (((!\dut_decorder|cnt_2\(0) & !\dut_decorder|cnt_2\(1))))) # (!\dut_decorder|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|cnt_2\(0),
	datab => \dut_decorder|cnt_2\(1),
	datac => \dut_decorder|cnt_2\(2),
	datad => \dut_decorder|state.IDLE~q\,
	combout => \dut_decorder|cnt_2~0_combout\);

-- Location: FF_X29_Y20_N1
\dut_decorder|cnt_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|cnt_2~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_decorder|cnt_2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|cnt_2\(2));

-- Location: LCCOMB_X29_Y20_N6
\dut_decorder|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Selector6~0_combout\ = (!\dut_decorder|cnt_2\(0) & (!\dut_decorder|cnt_2\(2) & !\dut_decorder|cnt_2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|cnt_2\(0),
	datab => \dut_decorder|cnt_2\(2),
	datad => \dut_decorder|cnt_2\(1),
	combout => \dut_decorder|Selector6~0_combout\);

-- Location: LCCOMB_X28_Y20_N22
\dut_decorder|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Selector5~0_combout\ = (\dut_decorder|Selector6~0_combout\ & (!\dut_uart|dut_rx|valid~combout\ & ((\dut_decorder|state.OPERATION~q\)))) # (!\dut_decorder|Selector6~0_combout\ & ((\dut_decorder|state.DATA_2~q\) # 
-- ((!\dut_uart|dut_rx|valid~combout\ & \dut_decorder|state.OPERATION~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|Selector6~0_combout\,
	datab => \dut_uart|dut_rx|valid~combout\,
	datac => \dut_decorder|state.DATA_2~q\,
	datad => \dut_decorder|state.OPERATION~q\,
	combout => \dut_decorder|Selector5~0_combout\);

-- Location: FF_X28_Y20_N23
\dut_decorder|state.DATA_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|Selector5~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|state.DATA_2~q\);

-- Location: LCCOMB_X28_Y20_N18
\dut_decorder|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Selector6~1_combout\ = (\dut_decorder|state.DATA_2~q\ & ((\dut_decorder|Selector6~0_combout\) # ((!\dut_decorder|n_state~6_combout\ & \dut_decorder|state.EQUAL~q\)))) # (!\dut_decorder|state.DATA_2~q\ & (!\dut_decorder|n_state~6_combout\ & 
-- (\dut_decorder|state.EQUAL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|state.DATA_2~q\,
	datab => \dut_decorder|n_state~6_combout\,
	datac => \dut_decorder|state.EQUAL~q\,
	datad => \dut_decorder|Selector6~0_combout\,
	combout => \dut_decorder|Selector6~1_combout\);

-- Location: FF_X28_Y20_N19
\dut_decorder|state.EQUAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|Selector6~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|state.EQUAL~q\);

-- Location: LCCOMB_X28_Y20_N0
\dut_decorder|n_state.END_DATA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|n_state.END_DATA~0_combout\ = (\dut_decorder|n_state~6_combout\ & \dut_decorder|state.EQUAL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|n_state~6_combout\,
	datad => \dut_decorder|state.EQUAL~q\,
	combout => \dut_decorder|n_state.END_DATA~0_combout\);

-- Location: FF_X28_Y20_N1
\dut_decorder|state.END_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|n_state.END_DATA~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|state.END_DATA~q\);

-- Location: LCCOMB_X28_Y20_N24
\dut_decorder|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Selector0~0_combout\ = (!\dut_decorder|state.END_DATA~q\ & ((\dut_decorder|n_state~5_combout\) # (\dut_decorder|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|n_state~5_combout\,
	datac => \dut_decorder|state.IDLE~q\,
	datad => \dut_decorder|state.END_DATA~q\,
	combout => \dut_decorder|Selector0~0_combout\);

-- Location: FF_X28_Y20_N25
\dut_decorder|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|Selector0~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|state.IDLE~q\);

-- Location: LCCOMB_X27_Y20_N28
\dut_decorder|n_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|n_state~2_combout\ = (!\dut_uart|dut_rx|fnd_rxd\(0) & (!\dut_uart|dut_rx|fnd_rxd\(3) & (!\dut_uart|dut_rx|fnd_rxd\(2) & \dut_decorder|n_state~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(0),
	datab => \dut_uart|dut_rx|fnd_rxd\(3),
	datac => \dut_uart|dut_rx|fnd_rxd\(2),
	datad => \dut_decorder|n_state~1_combout\,
	combout => \dut_decorder|n_state~2_combout\);

-- Location: LCCOMB_X27_Y20_N22
\dut_decorder|n_state~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|n_state~3_combout\ = (!\dut_uart|dut_rx|fnd_rxd\(4) & (!\dut_uart|dut_rx|fnd_rxd\(7) & (\dut_decorder|n_state~0_combout\ & \dut_decorder|n_state~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(4),
	datab => \dut_uart|dut_rx|fnd_rxd\(7),
	datac => \dut_decorder|n_state~0_combout\,
	datad => \dut_decorder|n_state~2_combout\,
	combout => \dut_decorder|n_state~3_combout\);

-- Location: LCCOMB_X28_Y20_N28
\dut_decorder|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Selector1~0_combout\ = (\dut_decorder|n_state~5_combout\ & (((\dut_decorder|state.FORMAT~q\ & !\dut_decorder|n_state~3_combout\)) # (!\dut_decorder|state.IDLE~q\))) # (!\dut_decorder|n_state~5_combout\ & (((\dut_decorder|state.FORMAT~q\ & 
-- !\dut_decorder|n_state~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|n_state~5_combout\,
	datab => \dut_decorder|state.IDLE~q\,
	datac => \dut_decorder|state.FORMAT~q\,
	datad => \dut_decorder|n_state~3_combout\,
	combout => \dut_decorder|Selector1~0_combout\);

-- Location: FF_X28_Y20_N29
\dut_decorder|state.FORMAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|Selector1~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|state.FORMAT~q\);

-- Location: LCCOMB_X28_Y20_N8
\dut_decorder|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Selector2~0_combout\ = (\dut_uart|dut_rx|valid~combout\ & ((\dut_decorder|state.TYPE~q\) # ((\dut_decorder|state.FORMAT~q\ & \dut_decorder|n_state~3_combout\)))) # (!\dut_uart|dut_rx|valid~combout\ & (\dut_decorder|state.FORMAT~q\ & 
-- ((\dut_decorder|n_state~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|valid~combout\,
	datab => \dut_decorder|state.FORMAT~q\,
	datac => \dut_decorder|state.TYPE~q\,
	datad => \dut_decorder|n_state~3_combout\,
	combout => \dut_decorder|Selector2~0_combout\);

-- Location: FF_X28_Y20_N9
\dut_decorder|state.TYPE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|Selector2~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|state.TYPE~q\);

-- Location: LCCOMB_X29_Y20_N28
\dut_decorder|cnt_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|cnt_1~3_combout\ = (!\dut_decorder|state.IDLE~q\) # (!\dut_decorder|cnt_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_decorder|cnt_1\(0),
	datad => \dut_decorder|state.IDLE~q\,
	combout => \dut_decorder|cnt_1~3_combout\);

-- Location: LCCOMB_X28_Y20_N26
\dut_decorder|cnt_1[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|cnt_1[1]~1_combout\ = ((\dut_decorder|state.DATA_1~q\ & (\dut_uart|dut_rx|valid_sig~q\ & !\dut_uart|dut_rx|valid_sig_d~q\))) # (!\dut_decorder|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|state.DATA_1~q\,
	datab => \dut_uart|dut_rx|valid_sig~q\,
	datac => \dut_uart|dut_rx|valid_sig_d~q\,
	datad => \dut_decorder|state.IDLE~q\,
	combout => \dut_decorder|cnt_1[1]~1_combout\);

-- Location: FF_X29_Y20_N29
\dut_decorder|cnt_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|cnt_1~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_decorder|cnt_1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|cnt_1\(0));

-- Location: LCCOMB_X29_Y20_N2
\dut_decorder|cnt_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|cnt_1~2_combout\ = (\dut_decorder|state.IDLE~q\ & (\dut_decorder|cnt_1\(1) $ (!\dut_decorder|cnt_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_decorder|state.IDLE~q\,
	datac => \dut_decorder|cnt_1\(1),
	datad => \dut_decorder|cnt_1\(0),
	combout => \dut_decorder|cnt_1~2_combout\);

-- Location: FF_X29_Y20_N3
\dut_decorder|cnt_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|cnt_1~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_decorder|cnt_1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|cnt_1\(1));

-- Location: LCCOMB_X29_Y20_N24
\dut_decorder|cnt_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|cnt_1~0_combout\ = (\dut_decorder|cnt_1\(2) $ (((!\dut_decorder|cnt_1\(0) & !\dut_decorder|cnt_1\(1))))) # (!\dut_decorder|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|state.IDLE~q\,
	datab => \dut_decorder|cnt_1\(0),
	datac => \dut_decorder|cnt_1\(2),
	datad => \dut_decorder|cnt_1\(1),
	combout => \dut_decorder|cnt_1~0_combout\);

-- Location: FF_X29_Y20_N25
\dut_decorder|cnt_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|cnt_1~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_decorder|cnt_1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|cnt_1\(2));

-- Location: LCCOMB_X29_Y20_N22
\dut_decorder|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Selector4~0_combout\ = (!\dut_decorder|cnt_1\(2) & (!\dut_decorder|cnt_1\(0) & !\dut_decorder|cnt_1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_decorder|cnt_1\(2),
	datac => \dut_decorder|cnt_1\(0),
	datad => \dut_decorder|cnt_1\(1),
	combout => \dut_decorder|Selector4~0_combout\);

-- Location: LCCOMB_X28_Y20_N30
\dut_decorder|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Selector3~0_combout\ = (\dut_decorder|state.TYPE~q\ & (((\dut_decorder|state.DATA_1~q\ & !\dut_decorder|Selector4~0_combout\)) # (!\dut_uart|dut_rx|valid~combout\))) # (!\dut_decorder|state.TYPE~q\ & (((\dut_decorder|state.DATA_1~q\ & 
-- !\dut_decorder|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|state.TYPE~q\,
	datab => \dut_uart|dut_rx|valid~combout\,
	datac => \dut_decorder|state.DATA_1~q\,
	datad => \dut_decorder|Selector4~0_combout\,
	combout => \dut_decorder|Selector3~0_combout\);

-- Location: FF_X28_Y20_N31
\dut_decorder|state.DATA_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|Selector3~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|state.DATA_1~q\);

-- Location: LCCOMB_X28_Y20_N10
\dut_decorder|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Selector4~1_combout\ = (\dut_decorder|state.DATA_1~q\ & ((\dut_decorder|Selector4~0_combout\) # ((\dut_uart|dut_rx|valid~combout\ & \dut_decorder|state.OPERATION~q\)))) # (!\dut_decorder|state.DATA_1~q\ & (\dut_uart|dut_rx|valid~combout\ & 
-- (\dut_decorder|state.OPERATION~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|state.DATA_1~q\,
	datab => \dut_uart|dut_rx|valid~combout\,
	datac => \dut_decorder|state.OPERATION~q\,
	datad => \dut_decorder|Selector4~0_combout\,
	combout => \dut_decorder|Selector4~1_combout\);

-- Location: FF_X28_Y20_N11
\dut_decorder|state.OPERATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|Selector4~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|state.OPERATION~q\);

-- Location: LCCOMB_X27_Y20_N0
\dut_decorder|op_d[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|op_d[2]~5_combout\ = (\dut_decorder|state.OPERATION~q\ & (\dut_decorder|Equal8~2_combout\ & ((\dut_uart|dut_rx|fnd_rxd\(1)) # (\dut_uart|dut_rx|fnd_rxd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(1),
	datab => \dut_uart|dut_rx|fnd_rxd\(0),
	datac => \dut_decorder|state.OPERATION~q\,
	datad => \dut_decorder|Equal8~2_combout\,
	combout => \dut_decorder|op_d[2]~5_combout\);

-- Location: LCCOMB_X27_Y20_N2
\dut_decorder|op_d[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|op_d[2]~6_combout\ = (\dut_decorder|op_d[2]~5_combout\ & ((\dut_uart|dut_rx|fnd_rxd\(2) & ((\dut_uart|dut_rx|fnd_rxd\(0)))) # (!\dut_uart|dut_rx|fnd_rxd\(2) & (\dut_uart|dut_rx|fnd_rxd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(1),
	datab => \dut_decorder|op_d[2]~5_combout\,
	datac => \dut_uart|dut_rx|fnd_rxd\(2),
	datad => \dut_uart|dut_rx|fnd_rxd\(0),
	combout => \dut_decorder|op_d[2]~6_combout\);

-- Location: FF_X27_Y20_N31
\dut_decorder|op_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|op_d~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_decorder|op_d[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|op_d\(3));

-- Location: LCCOMB_X19_Y20_N26
\dut_alu|dut_divider_u|n_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|n_state~0_combout\ = (\dut_alu|dut_divider_u|state~q\ & (((\dut_alu|dut_divider_u|Equal0~0_combout\)) # (!\dut_alu|dut_divider_u|count\(4)))) # (!\dut_alu|dut_divider_u|state~q\ & (((\dut_decorder|op_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|count\(4),
	datab => \dut_alu|dut_divider_u|Equal0~0_combout\,
	datac => \dut_alu|dut_divider_u|state~q\,
	datad => \dut_decorder|op_d\(3),
	combout => \dut_alu|dut_divider_u|n_state~0_combout\);

-- Location: FF_X19_Y20_N27
\dut_alu|dut_divider_u|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|n_state~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|state~q\);

-- Location: FF_X19_Y20_N11
\dut_alu|dut_divider_u|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|count[0]~5_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|count\(0));

-- Location: FF_X19_Y20_N13
\dut_alu|dut_divider_u|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|count[1]~7_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|count\(1));

-- Location: LCCOMB_X19_Y20_N22
\dut_alu|dut_divider_u|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Equal1~0_combout\ = (\dut_alu|dut_divider_u|count\(1) & (\dut_alu|dut_divider_u|count\(3) & (\dut_alu|dut_divider_u|count\(2) & \dut_alu|dut_divider_u|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|count\(1),
	datab => \dut_alu|dut_divider_u|count\(3),
	datac => \dut_alu|dut_divider_u|count\(2),
	datad => \dut_alu|dut_divider_u|count\(0),
	combout => \dut_alu|dut_divider_u|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y19_N18
\dut_alu|dut_mul_s|count[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|count[0]~5_combout\ = \dut_alu|dut_mul_s|count\(0) $ (VCC)
-- \dut_alu|dut_mul_s|count[0]~6\ = CARRY(\dut_alu|dut_mul_s|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|count\(0),
	datad => VCC,
	combout => \dut_alu|dut_mul_s|count[0]~5_combout\,
	cout => \dut_alu|dut_mul_s|count[0]~6\);

-- Location: LCCOMB_X24_Y19_N4
\dut_alu|dut_mul_s|n_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|n_state~1_combout\ = (\dut_alu|dut_mul_s|count\(0)) # ((\dut_alu|dut_mul_s|count\(1)) # ((\dut_alu|dut_mul_s|count\(2)) # (\dut_alu|dut_mul_s|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|count\(0),
	datab => \dut_alu|dut_mul_s|count\(1),
	datac => \dut_alu|dut_mul_s|count\(2),
	datad => \dut_alu|dut_mul_s|count\(3),
	combout => \dut_alu|dut_mul_s|n_state~1_combout\);

-- Location: LCCOMB_X27_Y20_N16
\dut_decorder|Equal5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Equal5~5_combout\ = (\dut_uart|dut_rx|fnd_rxd\(1) & (!\dut_uart|dut_rx|fnd_rxd\(3) & (\dut_uart|dut_rx|fnd_rxd\(4) & !\dut_uart|dut_rx|fnd_rxd\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(1),
	datab => \dut_uart|dut_rx|fnd_rxd\(3),
	datac => \dut_uart|dut_rx|fnd_rxd\(4),
	datad => \dut_uart|dut_rx|fnd_rxd\(7),
	combout => \dut_decorder|Equal5~5_combout\);

-- Location: LCCOMB_X27_Y20_N20
\dut_decorder|Equal5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Equal5~6_combout\ = (\dut_uart|dut_rx|fnd_rxd\(0) & (\dut_decorder|Equal5~4_combout\ & (\dut_uart|dut_rx|fnd_rxd\(2) & \dut_decorder|Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(0),
	datab => \dut_decorder|Equal5~4_combout\,
	datac => \dut_uart|dut_rx|fnd_rxd\(2),
	datad => \dut_decorder|Equal5~5_combout\,
	combout => \dut_decorder|Equal5~6_combout\);

-- Location: FF_X27_Y20_N21
\dut_decorder|dtype_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|Equal5~6_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_decorder|state.TYPE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|dtype_d\(0));

-- Location: LCCOMB_X27_Y20_N26
\dut_decorder|Equal8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|Equal8~3_combout\ = (\dut_decorder|Equal8~2_combout\ & (!\dut_uart|dut_rx|fnd_rxd\(0) & (!\dut_uart|dut_rx|fnd_rxd\(2) & \dut_uart|dut_rx|fnd_rxd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|Equal8~2_combout\,
	datab => \dut_uart|dut_rx|fnd_rxd\(0),
	datac => \dut_uart|dut_rx|fnd_rxd\(2),
	datad => \dut_uart|dut_rx|fnd_rxd\(1),
	combout => \dut_decorder|Equal8~3_combout\);

-- Location: FF_X27_Y20_N27
\dut_decorder|op_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|Equal8~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_decorder|op_d[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|op_d\(2));

-- Location: LCCOMB_X27_Y20_N24
\dut_decorder|dtype_d[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|dtype_d[1]~0_combout\ = !\dut_decorder|Equal5~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_decorder|Equal5~6_combout\,
	combout => \dut_decorder|dtype_d[1]~0_combout\);

-- Location: FF_X27_Y20_N25
\dut_decorder|dtype_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_decorder|dtype_d[1]~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_decorder|state.TYPE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|dtype_d\(1));

-- Location: LCCOMB_X24_Y20_N12
\dut_alu|dut_mul_s|n_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|n_state~0_combout\ = (\dut_decorder|dtype_d\(0) & (\dut_decorder|op_d\(2) & (!\dut_alu|dut_mul_s|state~q\ & !\dut_decorder|dtype_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|dtype_d\(0),
	datab => \dut_decorder|op_d\(2),
	datac => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_decorder|dtype_d\(1),
	combout => \dut_alu|dut_mul_s|n_state~0_combout\);

-- Location: LCCOMB_X24_Y20_N30
\dut_alu|dut_mul_s|n_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|n_state~2_combout\ = (\dut_alu|dut_mul_s|n_state~0_combout\) # ((\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|n_state~1_combout\) # (!\dut_alu|dut_mul_s|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|count\(4),
	datab => \dut_alu|dut_mul_s|n_state~1_combout\,
	datac => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|n_state~0_combout\,
	combout => \dut_alu|dut_mul_s|n_state~2_combout\);

-- Location: FF_X24_Y20_N31
\dut_alu|dut_mul_s|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|n_state~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|state~q\);

-- Location: FF_X24_Y19_N19
\dut_alu|dut_mul_s|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|count[0]~5_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|count\(0));

-- Location: LCCOMB_X24_Y19_N20
\dut_alu|dut_mul_s|count[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|count[1]~7_combout\ = (\dut_alu|dut_mul_s|count\(1) & (\dut_alu|dut_mul_s|count[0]~6\ & VCC)) # (!\dut_alu|dut_mul_s|count\(1) & (!\dut_alu|dut_mul_s|count[0]~6\))
-- \dut_alu|dut_mul_s|count[1]~8\ = CARRY((!\dut_alu|dut_mul_s|count\(1) & !\dut_alu|dut_mul_s|count[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|count\(1),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|count[0]~6\,
	combout => \dut_alu|dut_mul_s|count[1]~7_combout\,
	cout => \dut_alu|dut_mul_s|count[1]~8\);

-- Location: FF_X24_Y19_N21
\dut_alu|dut_mul_s|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|count[1]~7_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|count\(1));

-- Location: LCCOMB_X24_Y19_N22
\dut_alu|dut_mul_s|count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|count[2]~9_combout\ = (\dut_alu|dut_mul_s|count\(2) & ((GND) # (!\dut_alu|dut_mul_s|count[1]~8\))) # (!\dut_alu|dut_mul_s|count\(2) & (\dut_alu|dut_mul_s|count[1]~8\ $ (GND)))
-- \dut_alu|dut_mul_s|count[2]~10\ = CARRY((\dut_alu|dut_mul_s|count\(2)) # (!\dut_alu|dut_mul_s|count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|count\(2),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|count[1]~8\,
	combout => \dut_alu|dut_mul_s|count[2]~9_combout\,
	cout => \dut_alu|dut_mul_s|count[2]~10\);

-- Location: FF_X24_Y19_N23
\dut_alu|dut_mul_s|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|count[2]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|count\(2));

-- Location: LCCOMB_X24_Y19_N24
\dut_alu|dut_mul_s|count[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|count[3]~11_combout\ = (\dut_alu|dut_mul_s|count\(3) & (\dut_alu|dut_mul_s|count[2]~10\ & VCC)) # (!\dut_alu|dut_mul_s|count\(3) & (!\dut_alu|dut_mul_s|count[2]~10\))
-- \dut_alu|dut_mul_s|count[3]~12\ = CARRY((!\dut_alu|dut_mul_s|count\(3) & !\dut_alu|dut_mul_s|count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|count\(3),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|count[2]~10\,
	combout => \dut_alu|dut_mul_s|count[3]~11_combout\,
	cout => \dut_alu|dut_mul_s|count[3]~12\);

-- Location: FF_X24_Y19_N25
\dut_alu|dut_mul_s|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|count[3]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|count\(3));

-- Location: LCCOMB_X24_Y19_N26
\dut_alu|dut_mul_s|count[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|count[4]~13_combout\ = \dut_alu|dut_mul_s|count\(4) $ (\dut_alu|dut_mul_s|count[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|count\(4),
	cin => \dut_alu|dut_mul_s|count[3]~12\,
	combout => \dut_alu|dut_mul_s|count[4]~13_combout\);

-- Location: FF_X24_Y19_N27
\dut_alu|dut_mul_s|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|count[4]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|count\(4));

-- Location: LCCOMB_X24_Y19_N2
\dut_alu|dut_mul_s|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Equal4~0_combout\ = (\dut_alu|dut_mul_s|count\(0) & (\dut_alu|dut_mul_s|count\(1) & (\dut_alu|dut_mul_s|count\(2) & \dut_alu|dut_mul_s|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|count\(0),
	datab => \dut_alu|dut_mul_s|count\(1),
	datac => \dut_alu|dut_mul_s|count\(2),
	datad => \dut_alu|dut_mul_s|count\(3),
	combout => \dut_alu|dut_mul_s|Equal4~0_combout\);

-- Location: LCCOMB_X24_Y20_N14
\dut_alu|dut_mul_u|count[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|count[0]~5_combout\ = \dut_alu|dut_mul_u|count\(0) $ (VCC)
-- \dut_alu|dut_mul_u|count[0]~6\ = CARRY(\dut_alu|dut_mul_u|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|count\(0),
	datad => VCC,
	combout => \dut_alu|dut_mul_u|count[0]~5_combout\,
	cout => \dut_alu|dut_mul_u|count[0]~6\);

-- Location: LCCOMB_X24_Y20_N2
\dut_alu|dut_mul_u|n_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|n_state~1_combout\ = (\dut_alu|dut_mul_u|count\(1)) # ((\dut_alu|dut_mul_u|count\(2)) # ((\dut_alu|dut_mul_u|count\(0)) # (\dut_alu|dut_mul_u|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|count\(1),
	datab => \dut_alu|dut_mul_u|count\(2),
	datac => \dut_alu|dut_mul_u|count\(0),
	datad => \dut_alu|dut_mul_u|count\(3),
	combout => \dut_alu|dut_mul_u|n_state~1_combout\);

-- Location: LCCOMB_X24_Y20_N8
\dut_alu|dut_mul_u|n_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|n_state~0_combout\ = (!\dut_decorder|dtype_d\(0) & (\dut_decorder|op_d\(2) & (!\dut_alu|dut_mul_u|state~q\ & \dut_decorder|dtype_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|dtype_d\(0),
	datab => \dut_decorder|op_d\(2),
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \dut_decorder|dtype_d\(1),
	combout => \dut_alu|dut_mul_u|n_state~0_combout\);

-- Location: LCCOMB_X24_Y20_N4
\dut_alu|dut_mul_u|n_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|n_state~2_combout\ = (\dut_alu|dut_mul_u|n_state~0_combout\) # ((\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|n_state~1_combout\) # (!\dut_alu|dut_mul_u|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|count\(4),
	datab => \dut_alu|dut_mul_u|n_state~1_combout\,
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \dut_alu|dut_mul_u|n_state~0_combout\,
	combout => \dut_alu|dut_mul_u|n_state~2_combout\);

-- Location: FF_X24_Y20_N5
\dut_alu|dut_mul_u|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|n_state~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|state~q\);

-- Location: FF_X24_Y20_N15
\dut_alu|dut_mul_u|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|count[0]~5_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|count\(0));

-- Location: LCCOMB_X24_Y20_N16
\dut_alu|dut_mul_u|count[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|count[1]~7_combout\ = (\dut_alu|dut_mul_u|count\(1) & (\dut_alu|dut_mul_u|count[0]~6\ & VCC)) # (!\dut_alu|dut_mul_u|count\(1) & (!\dut_alu|dut_mul_u|count[0]~6\))
-- \dut_alu|dut_mul_u|count[1]~8\ = CARRY((!\dut_alu|dut_mul_u|count\(1) & !\dut_alu|dut_mul_u|count[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|count\(1),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|count[0]~6\,
	combout => \dut_alu|dut_mul_u|count[1]~7_combout\,
	cout => \dut_alu|dut_mul_u|count[1]~8\);

-- Location: FF_X24_Y20_N17
\dut_alu|dut_mul_u|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|count[1]~7_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|count\(1));

-- Location: LCCOMB_X24_Y20_N18
\dut_alu|dut_mul_u|count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|count[2]~9_combout\ = (\dut_alu|dut_mul_u|count\(2) & ((GND) # (!\dut_alu|dut_mul_u|count[1]~8\))) # (!\dut_alu|dut_mul_u|count\(2) & (\dut_alu|dut_mul_u|count[1]~8\ $ (GND)))
-- \dut_alu|dut_mul_u|count[2]~10\ = CARRY((\dut_alu|dut_mul_u|count\(2)) # (!\dut_alu|dut_mul_u|count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|count\(2),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|count[1]~8\,
	combout => \dut_alu|dut_mul_u|count[2]~9_combout\,
	cout => \dut_alu|dut_mul_u|count[2]~10\);

-- Location: FF_X24_Y20_N19
\dut_alu|dut_mul_u|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|count[2]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|count\(2));

-- Location: LCCOMB_X24_Y20_N20
\dut_alu|dut_mul_u|count[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|count[3]~11_combout\ = (\dut_alu|dut_mul_u|count\(3) & (\dut_alu|dut_mul_u|count[2]~10\ & VCC)) # (!\dut_alu|dut_mul_u|count\(3) & (!\dut_alu|dut_mul_u|count[2]~10\))
-- \dut_alu|dut_mul_u|count[3]~12\ = CARRY((!\dut_alu|dut_mul_u|count\(3) & !\dut_alu|dut_mul_u|count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|count\(3),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|count[2]~10\,
	combout => \dut_alu|dut_mul_u|count[3]~11_combout\,
	cout => \dut_alu|dut_mul_u|count[3]~12\);

-- Location: FF_X24_Y20_N21
\dut_alu|dut_mul_u|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|count[3]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|count\(3));

-- Location: LCCOMB_X24_Y20_N22
\dut_alu|dut_mul_u|count[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|count[4]~13_combout\ = \dut_alu|dut_mul_u|count\(4) $ (\dut_alu|dut_mul_u|count[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|count\(4),
	cin => \dut_alu|dut_mul_u|count[3]~12\,
	combout => \dut_alu|dut_mul_u|count[4]~13_combout\);

-- Location: FF_X24_Y20_N23
\dut_alu|dut_mul_u|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|count[4]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|count\(4));

-- Location: LCCOMB_X24_Y20_N24
\dut_alu|dut_mul_u|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|Equal2~0_combout\ = (\dut_alu|dut_mul_u|count\(1) & (\dut_alu|dut_mul_u|count\(2) & (\dut_alu|dut_mul_u|count\(0) & \dut_alu|dut_mul_u|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|count\(1),
	datab => \dut_alu|dut_mul_u|count\(2),
	datac => \dut_alu|dut_mul_u|count\(0),
	datad => \dut_alu|dut_mul_u|count\(3),
	combout => \dut_alu|dut_mul_u|Equal2~0_combout\);

-- Location: LCCOMB_X24_Y20_N10
\dut_alu|alu_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|alu_done~0_combout\ = (\dut_alu|dut_mul_s|count\(4) & (((!\dut_alu|dut_mul_u|count\(4) & \dut_alu|dut_mul_u|Equal2~0_combout\)))) # (!\dut_alu|dut_mul_s|count\(4) & ((\dut_alu|dut_mul_s|Equal4~0_combout\) # ((!\dut_alu|dut_mul_u|count\(4) & 
-- \dut_alu|dut_mul_u|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|count\(4),
	datab => \dut_alu|dut_mul_s|Equal4~0_combout\,
	datac => \dut_alu|dut_mul_u|count\(4),
	datad => \dut_alu|dut_mul_u|Equal2~0_combout\,
	combout => \dut_alu|alu_done~0_combout\);

-- Location: LCCOMB_X19_Y20_N8
\dut_alu|alu_done\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|alu_done~combout\ = (\dut_alu|alu_done~0_combout\) # ((\dut_alu|dut_divider_u|Equal1~0_combout\ & !\dut_alu|dut_divider_u|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Equal1~0_combout\,
	datab => \dut_alu|dut_divider_u|count\(4),
	datac => \dut_alu|alu_done~0_combout\,
	combout => \dut_alu|alu_done~combout\);

-- Location: LCCOMB_X19_Y20_N2
\dut_uart|dut_tx|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector0~0_combout\ = (\dut_uart|dut_tx|tx_next_state~3_combout\ & (((\dut_uart|dut_tx|tx_state.IDLE~q\) # (\dut_alu|alu_done~combout\)))) # (!\dut_uart|dut_tx|tx_next_state~3_combout\ & (!\dut_uart|dut_tx|tx_state.STOP~q\ & 
-- ((\dut_uart|dut_tx|tx_state.IDLE~q\) # (\dut_alu|alu_done~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_next_state~3_combout\,
	datab => \dut_uart|dut_tx|tx_state.STOP~q\,
	datac => \dut_uart|dut_tx|tx_state.IDLE~q\,
	datad => \dut_alu|alu_done~combout\,
	combout => \dut_uart|dut_tx|Selector0~0_combout\);

-- Location: FF_X19_Y20_N3
\dut_uart|dut_tx|tx_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|Selector0~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_state.IDLE~q\);

-- Location: LCCOMB_X20_Y22_N18
\dut_uart|dut_tx|tx_n_cnt[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[0]~5_combout\ = (\dut_uart|dut_tx|tx_state.IDLE~q\ & (\dut_uart|dut_tx|tx_cnt\(0) $ (\dut_uart|dut_gen_en|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_tx|tx_state.IDLE~q\,
	datac => \dut_uart|dut_tx|tx_cnt\(0),
	datad => \dut_uart|dut_gen_en|Equal0~0_combout\,
	combout => \dut_uart|dut_tx|tx_n_cnt[0]~5_combout\);

-- Location: FF_X20_Y22_N19
\dut_uart|dut_tx|tx_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|tx_n_cnt[0]~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_cnt\(0));

-- Location: LCCOMB_X19_Y20_N28
\dut_uart|dut_tx|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector1~2_combout\ = (\dut_uart|dut_tx|tx_state.START~q\ & ((\dut_uart|dut_gen_en|Equal0~0_combout\ $ (!\dut_uart|dut_tx|tx_cnt\(0))) # (!\dut_uart|dut_tx|tx_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datab => \dut_uart|dut_tx|tx_state.START~q\,
	datac => \dut_uart|dut_tx|tx_cnt\(0),
	datad => \dut_uart|dut_tx|tx_state.IDLE~q\,
	combout => \dut_uart|dut_tx|Selector1~2_combout\);

-- Location: LCCOMB_X19_Y20_N24
\dut_uart|dut_tx|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector1~1_combout\ = (!\dut_uart|dut_tx|tx_state.IDLE~q\ & ((\dut_alu|alu_done~0_combout\) # ((\dut_alu|dut_divider_u|Equal1~0_combout\ & !\dut_alu|dut_divider_u|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Equal1~0_combout\,
	datab => \dut_alu|dut_divider_u|count\(4),
	datac => \dut_alu|alu_done~0_combout\,
	datad => \dut_uart|dut_tx|tx_state.IDLE~q\,
	combout => \dut_uart|dut_tx|Selector1~1_combout\);

-- Location: LCCOMB_X19_Y20_N30
\dut_uart|dut_tx|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector1~3_combout\ = (\dut_uart|dut_tx|tx_next_state~3_combout\ & ((\dut_uart|dut_tx|tx_state.STOP~q\) # ((\dut_uart|dut_tx|tx_state.START~q\ & \dut_uart|dut_tx|tx_n_cnt[2]~4_combout\)))) # (!\dut_uart|dut_tx|tx_next_state~3_combout\ & 
-- (\dut_uart|dut_tx|tx_state.START~q\ & ((\dut_uart|dut_tx|tx_n_cnt[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_next_state~3_combout\,
	datab => \dut_uart|dut_tx|tx_state.START~q\,
	datac => \dut_uart|dut_tx|tx_state.STOP~q\,
	datad => \dut_uart|dut_tx|tx_n_cnt[2]~4_combout\,
	combout => \dut_uart|dut_tx|Selector1~3_combout\);

-- Location: LCCOMB_X19_Y20_N20
\dut_uart|dut_tx|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector1~0_combout\ = (\dut_uart|dut_tx|tx_state.START~q\ & (\dut_uart|dut_tx|tx_state.IDLE~q\ & ((\dut_uart|dut_tx|tx_n_cnt[3]~0_combout\) # (\dut_uart|dut_tx|tx_n_cnt[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_n_cnt[3]~0_combout\,
	datab => \dut_uart|dut_tx|tx_state.START~q\,
	datac => \dut_uart|dut_tx|tx_n_cnt[1]~2_combout\,
	datad => \dut_uart|dut_tx|tx_state.IDLE~q\,
	combout => \dut_uart|dut_tx|Selector1~0_combout\);

-- Location: LCCOMB_X19_Y20_N0
\dut_uart|dut_tx|Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector1~4_combout\ = (\dut_uart|dut_tx|Selector1~2_combout\) # ((\dut_uart|dut_tx|Selector1~1_combout\) # ((\dut_uart|dut_tx|Selector1~3_combout\) # (\dut_uart|dut_tx|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|Selector1~2_combout\,
	datab => \dut_uart|dut_tx|Selector1~1_combout\,
	datac => \dut_uart|dut_tx|Selector1~3_combout\,
	datad => \dut_uart|dut_tx|Selector1~0_combout\,
	combout => \dut_uart|dut_tx|Selector1~4_combout\);

-- Location: FF_X19_Y20_N1
\dut_uart|dut_tx|tx_state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|Selector1~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_state.START~q\);

-- Location: LCCOMB_X28_Y20_N2
\dut_decorder|src2_d[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|src2_d[0]~0_combout\ = (!\dut_uart|dut_rx|valid_sig_d~q\ & (\dut_decorder|state.DATA_2~q\ & \dut_uart|dut_rx|valid_sig~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|valid_sig_d~q\,
	datac => \dut_decorder|state.DATA_2~q\,
	datad => \dut_uart|dut_rx|valid_sig~q\,
	combout => \dut_decorder|src2_d[0]~0_combout\);

-- Location: FF_X22_Y20_N17
\dut_decorder|src2_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(0),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(0));

-- Location: FF_X22_Y20_N19
\dut_decorder|src2_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(1),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(1));

-- Location: FF_X22_Y20_N23
\dut_decorder|src2_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(3),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(3));

-- Location: FF_X22_Y20_N31
\dut_decorder|src2_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src2_d\(3),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(7));

-- Location: FF_X22_Y20_N25
\dut_decorder|src2_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src2_d\(0),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(4));

-- Location: FF_X22_Y19_N1
\dut_decorder|src2_d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src2_d\(4),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(8));

-- Location: FF_X22_Y19_N9
\dut_decorder|src2_d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src2_d\(8),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(12));

-- Location: FF_X22_Y20_N27
\dut_decorder|src2_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src2_d\(1),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(5));

-- Location: FF_X22_Y19_N3
\dut_decorder|src2_d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src2_d\(5),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(9));

-- Location: FF_X22_Y19_N11
\dut_decorder|src2_d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src2_d\(9),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(13));

-- Location: FF_X22_Y19_N7
\dut_decorder|src2_d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src2_d\(7),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(11));

-- Location: FF_X22_Y19_N15
\dut_decorder|src2_d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src2_d\(11),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(15));

-- Location: LCCOMB_X28_Y20_N12
\dut_decorder|src1_d[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_decorder|src1_d[15]~0_combout\ = (!\dut_uart|dut_rx|valid_sig_d~q\ & (\dut_decorder|state.DATA_1~q\ & \dut_uart|dut_rx|valid_sig~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|valid_sig_d~q\,
	datac => \dut_decorder|state.DATA_1~q\,
	datad => \dut_uart|dut_rx|valid_sig~q\,
	combout => \dut_decorder|src1_d[15]~0_combout\);

-- Location: FF_X26_Y22_N1
\dut_decorder|src1_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(0),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(0));

-- Location: FF_X26_Y22_N9
\dut_decorder|src1_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src1_d\(0),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(4));

-- Location: FF_X26_Y22_N17
\dut_decorder|src1_d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src1_d\(4),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(8));

-- Location: FF_X24_Y22_N3
\dut_decorder|src1_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(1),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(1));

-- Location: FF_X24_Y22_N11
\dut_decorder|src1_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src1_d\(1),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(5));

-- Location: FF_X24_Y22_N19
\dut_decorder|src1_d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src1_d\(5),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(9));

-- Location: FF_X24_Y22_N27
\dut_decorder|src1_d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src1_d\(9),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(13));

-- Location: FF_X24_Y22_N7
\dut_decorder|src1_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(3),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(3));

-- Location: FF_X24_Y22_N15
\dut_decorder|src1_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src1_d\(3),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(7));

-- Location: FF_X24_Y22_N23
\dut_decorder|src1_d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src1_d\(7),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(11));

-- Location: FF_X21_Y22_N15
\dut_decorder|src1_d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src1_d\(11),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(15));

-- Location: FF_X26_Y22_N5
\dut_decorder|src1_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(2),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(2));

-- Location: FF_X26_Y22_N13
\dut_decorder|src1_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src1_d\(2),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(6));

-- Location: FF_X26_Y22_N21
\dut_decorder|src1_d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src1_d\(6),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(10));

-- Location: FF_X26_Y22_N29
\dut_decorder|src1_d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src1_d\(10),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(14));

-- Location: FF_X26_Y22_N25
\dut_decorder|src1_d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src1_d\(8),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src1_d[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src1_d\(12));

-- Location: LCCOMB_X21_Y23_N16
\dut_alu|dut_mul_u|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|Add0~1_cout\ = CARRY((\dut_decorder|src1_d\(0) & \dut_alu|dut_mul_u|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(0),
	datab => \dut_alu|dut_mul_u|A\(0),
	datad => VCC,
	cout => \dut_alu|dut_mul_u|Add0~1_cout\);

-- Location: LCCOMB_X21_Y23_N18
\dut_alu|dut_mul_u|A_m[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[1]~0_combout\ = (\dut_decorder|src1_d\(1) & ((\dut_alu|dut_mul_u|A\(1) & (\dut_alu|dut_mul_u|Add0~1_cout\ & VCC)) # (!\dut_alu|dut_mul_u|A\(1) & (!\dut_alu|dut_mul_u|Add0~1_cout\)))) # (!\dut_decorder|src1_d\(1) & 
-- ((\dut_alu|dut_mul_u|A\(1) & (!\dut_alu|dut_mul_u|Add0~1_cout\)) # (!\dut_alu|dut_mul_u|A\(1) & ((\dut_alu|dut_mul_u|Add0~1_cout\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[1]~1\ = CARRY((\dut_decorder|src1_d\(1) & (!\dut_alu|dut_mul_u|A\(1) & !\dut_alu|dut_mul_u|Add0~1_cout\)) # (!\dut_decorder|src1_d\(1) & ((!\dut_alu|dut_mul_u|Add0~1_cout\) # (!\dut_alu|dut_mul_u|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(1),
	datab => \dut_alu|dut_mul_u|A\(1),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|Add0~1_cout\,
	combout => \dut_alu|dut_mul_u|A_m[1]~0_combout\,
	cout => \dut_alu|dut_mul_u|A_m[1]~1\);

-- Location: LCCOMB_X21_Y23_N20
\dut_alu|dut_mul_u|A_m[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[2]~2_combout\ = ((\dut_alu|dut_mul_u|A\(2) $ (\dut_decorder|src1_d\(2) $ (!\dut_alu|dut_mul_u|A_m[1]~1\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[2]~3\ = CARRY((\dut_alu|dut_mul_u|A\(2) & ((\dut_decorder|src1_d\(2)) # (!\dut_alu|dut_mul_u|A_m[1]~1\))) # (!\dut_alu|dut_mul_u|A\(2) & (\dut_decorder|src1_d\(2) & !\dut_alu|dut_mul_u|A_m[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(2),
	datab => \dut_decorder|src1_d\(2),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[1]~1\,
	combout => \dut_alu|dut_mul_u|A_m[2]~2_combout\,
	cout => \dut_alu|dut_mul_u|A_m[2]~3\);

-- Location: LCCOMB_X21_Y23_N22
\dut_alu|dut_mul_u|A_m[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[3]~4_combout\ = (\dut_decorder|src1_d\(3) & ((\dut_alu|dut_mul_u|A\(3) & (\dut_alu|dut_mul_u|A_m[2]~3\ & VCC)) # (!\dut_alu|dut_mul_u|A\(3) & (!\dut_alu|dut_mul_u|A_m[2]~3\)))) # (!\dut_decorder|src1_d\(3) & 
-- ((\dut_alu|dut_mul_u|A\(3) & (!\dut_alu|dut_mul_u|A_m[2]~3\)) # (!\dut_alu|dut_mul_u|A\(3) & ((\dut_alu|dut_mul_u|A_m[2]~3\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[3]~5\ = CARRY((\dut_decorder|src1_d\(3) & (!\dut_alu|dut_mul_u|A\(3) & !\dut_alu|dut_mul_u|A_m[2]~3\)) # (!\dut_decorder|src1_d\(3) & ((!\dut_alu|dut_mul_u|A_m[2]~3\) # (!\dut_alu|dut_mul_u|A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(3),
	datab => \dut_alu|dut_mul_u|A\(3),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[2]~3\,
	combout => \dut_alu|dut_mul_u|A_m[3]~4_combout\,
	cout => \dut_alu|dut_mul_u|A_m[3]~5\);

-- Location: LCCOMB_X21_Y23_N24
\dut_alu|dut_mul_u|A_m[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[4]~6_combout\ = ((\dut_alu|dut_mul_u|A\(4) $ (\dut_decorder|src1_d\(4) $ (!\dut_alu|dut_mul_u|A_m[3]~5\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[4]~7\ = CARRY((\dut_alu|dut_mul_u|A\(4) & ((\dut_decorder|src1_d\(4)) # (!\dut_alu|dut_mul_u|A_m[3]~5\))) # (!\dut_alu|dut_mul_u|A\(4) & (\dut_decorder|src1_d\(4) & !\dut_alu|dut_mul_u|A_m[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(4),
	datab => \dut_decorder|src1_d\(4),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[3]~5\,
	combout => \dut_alu|dut_mul_u|A_m[4]~6_combout\,
	cout => \dut_alu|dut_mul_u|A_m[4]~7\);

-- Location: LCCOMB_X21_Y23_N26
\dut_alu|dut_mul_u|A_m[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[5]~8_combout\ = (\dut_decorder|src1_d\(5) & ((\dut_alu|dut_mul_u|A\(5) & (\dut_alu|dut_mul_u|A_m[4]~7\ & VCC)) # (!\dut_alu|dut_mul_u|A\(5) & (!\dut_alu|dut_mul_u|A_m[4]~7\)))) # (!\dut_decorder|src1_d\(5) & 
-- ((\dut_alu|dut_mul_u|A\(5) & (!\dut_alu|dut_mul_u|A_m[4]~7\)) # (!\dut_alu|dut_mul_u|A\(5) & ((\dut_alu|dut_mul_u|A_m[4]~7\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[5]~9\ = CARRY((\dut_decorder|src1_d\(5) & (!\dut_alu|dut_mul_u|A\(5) & !\dut_alu|dut_mul_u|A_m[4]~7\)) # (!\dut_decorder|src1_d\(5) & ((!\dut_alu|dut_mul_u|A_m[4]~7\) # (!\dut_alu|dut_mul_u|A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(5),
	datab => \dut_alu|dut_mul_u|A\(5),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[4]~7\,
	combout => \dut_alu|dut_mul_u|A_m[5]~8_combout\,
	cout => \dut_alu|dut_mul_u|A_m[5]~9\);

-- Location: LCCOMB_X21_Y23_N28
\dut_alu|dut_mul_u|A_m[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[6]~10_combout\ = ((\dut_alu|dut_mul_u|A\(6) $ (\dut_decorder|src1_d\(6) $ (!\dut_alu|dut_mul_u|A_m[5]~9\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[6]~11\ = CARRY((\dut_alu|dut_mul_u|A\(6) & ((\dut_decorder|src1_d\(6)) # (!\dut_alu|dut_mul_u|A_m[5]~9\))) # (!\dut_alu|dut_mul_u|A\(6) & (\dut_decorder|src1_d\(6) & !\dut_alu|dut_mul_u|A_m[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(6),
	datab => \dut_decorder|src1_d\(6),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[5]~9\,
	combout => \dut_alu|dut_mul_u|A_m[6]~10_combout\,
	cout => \dut_alu|dut_mul_u|A_m[6]~11\);

-- Location: LCCOMB_X21_Y23_N30
\dut_alu|dut_mul_u|A_m[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[7]~12_combout\ = (\dut_alu|dut_mul_u|A\(7) & ((\dut_decorder|src1_d\(7) & (\dut_alu|dut_mul_u|A_m[6]~11\ & VCC)) # (!\dut_decorder|src1_d\(7) & (!\dut_alu|dut_mul_u|A_m[6]~11\)))) # (!\dut_alu|dut_mul_u|A\(7) & 
-- ((\dut_decorder|src1_d\(7) & (!\dut_alu|dut_mul_u|A_m[6]~11\)) # (!\dut_decorder|src1_d\(7) & ((\dut_alu|dut_mul_u|A_m[6]~11\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[7]~13\ = CARRY((\dut_alu|dut_mul_u|A\(7) & (!\dut_decorder|src1_d\(7) & !\dut_alu|dut_mul_u|A_m[6]~11\)) # (!\dut_alu|dut_mul_u|A\(7) & ((!\dut_alu|dut_mul_u|A_m[6]~11\) # (!\dut_decorder|src1_d\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(7),
	datab => \dut_decorder|src1_d\(7),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[6]~11\,
	combout => \dut_alu|dut_mul_u|A_m[7]~12_combout\,
	cout => \dut_alu|dut_mul_u|A_m[7]~13\);

-- Location: LCCOMB_X21_Y22_N0
\dut_alu|dut_mul_u|A_m[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[8]~14_combout\ = ((\dut_decorder|src1_d\(8) $ (\dut_alu|dut_mul_u|A\(8) $ (!\dut_alu|dut_mul_u|A_m[7]~13\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[8]~15\ = CARRY((\dut_decorder|src1_d\(8) & ((\dut_alu|dut_mul_u|A\(8)) # (!\dut_alu|dut_mul_u|A_m[7]~13\))) # (!\dut_decorder|src1_d\(8) & (\dut_alu|dut_mul_u|A\(8) & !\dut_alu|dut_mul_u|A_m[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(8),
	datab => \dut_alu|dut_mul_u|A\(8),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[7]~13\,
	combout => \dut_alu|dut_mul_u|A_m[8]~14_combout\,
	cout => \dut_alu|dut_mul_u|A_m[8]~15\);

-- Location: LCCOMB_X21_Y22_N2
\dut_alu|dut_mul_u|A_m[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[9]~16_combout\ = (\dut_decorder|src1_d\(9) & ((\dut_alu|dut_mul_u|A\(9) & (\dut_alu|dut_mul_u|A_m[8]~15\ & VCC)) # (!\dut_alu|dut_mul_u|A\(9) & (!\dut_alu|dut_mul_u|A_m[8]~15\)))) # (!\dut_decorder|src1_d\(9) & 
-- ((\dut_alu|dut_mul_u|A\(9) & (!\dut_alu|dut_mul_u|A_m[8]~15\)) # (!\dut_alu|dut_mul_u|A\(9) & ((\dut_alu|dut_mul_u|A_m[8]~15\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[9]~17\ = CARRY((\dut_decorder|src1_d\(9) & (!\dut_alu|dut_mul_u|A\(9) & !\dut_alu|dut_mul_u|A_m[8]~15\)) # (!\dut_decorder|src1_d\(9) & ((!\dut_alu|dut_mul_u|A_m[8]~15\) # (!\dut_alu|dut_mul_u|A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(9),
	datab => \dut_alu|dut_mul_u|A\(9),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[8]~15\,
	combout => \dut_alu|dut_mul_u|A_m[9]~16_combout\,
	cout => \dut_alu|dut_mul_u|A_m[9]~17\);

-- Location: LCCOMB_X21_Y22_N4
\dut_alu|dut_mul_u|A_m[10]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[10]~18_combout\ = ((\dut_decorder|src1_d\(10) $ (\dut_alu|dut_mul_u|A\(10) $ (!\dut_alu|dut_mul_u|A_m[9]~17\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[10]~19\ = CARRY((\dut_decorder|src1_d\(10) & ((\dut_alu|dut_mul_u|A\(10)) # (!\dut_alu|dut_mul_u|A_m[9]~17\))) # (!\dut_decorder|src1_d\(10) & (\dut_alu|dut_mul_u|A\(10) & !\dut_alu|dut_mul_u|A_m[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(10),
	datab => \dut_alu|dut_mul_u|A\(10),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[9]~17\,
	combout => \dut_alu|dut_mul_u|A_m[10]~18_combout\,
	cout => \dut_alu|dut_mul_u|A_m[10]~19\);

-- Location: LCCOMB_X21_Y22_N6
\dut_alu|dut_mul_u|A_m[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[11]~20_combout\ = (\dut_decorder|src1_d\(11) & ((\dut_alu|dut_mul_u|A\(11) & (\dut_alu|dut_mul_u|A_m[10]~19\ & VCC)) # (!\dut_alu|dut_mul_u|A\(11) & (!\dut_alu|dut_mul_u|A_m[10]~19\)))) # (!\dut_decorder|src1_d\(11) & 
-- ((\dut_alu|dut_mul_u|A\(11) & (!\dut_alu|dut_mul_u|A_m[10]~19\)) # (!\dut_alu|dut_mul_u|A\(11) & ((\dut_alu|dut_mul_u|A_m[10]~19\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[11]~21\ = CARRY((\dut_decorder|src1_d\(11) & (!\dut_alu|dut_mul_u|A\(11) & !\dut_alu|dut_mul_u|A_m[10]~19\)) # (!\dut_decorder|src1_d\(11) & ((!\dut_alu|dut_mul_u|A_m[10]~19\) # (!\dut_alu|dut_mul_u|A\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(11),
	datab => \dut_alu|dut_mul_u|A\(11),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[10]~19\,
	combout => \dut_alu|dut_mul_u|A_m[11]~20_combout\,
	cout => \dut_alu|dut_mul_u|A_m[11]~21\);

-- Location: LCCOMB_X21_Y22_N8
\dut_alu|dut_mul_u|A_m[12]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[12]~22_combout\ = ((\dut_decorder|src1_d\(12) $ (\dut_alu|dut_mul_u|A\(12) $ (!\dut_alu|dut_mul_u|A_m[11]~21\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[12]~23\ = CARRY((\dut_decorder|src1_d\(12) & ((\dut_alu|dut_mul_u|A\(12)) # (!\dut_alu|dut_mul_u|A_m[11]~21\))) # (!\dut_decorder|src1_d\(12) & (\dut_alu|dut_mul_u|A\(12) & !\dut_alu|dut_mul_u|A_m[11]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(12),
	datab => \dut_alu|dut_mul_u|A\(12),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[11]~21\,
	combout => \dut_alu|dut_mul_u|A_m[12]~22_combout\,
	cout => \dut_alu|dut_mul_u|A_m[12]~23\);

-- Location: LCCOMB_X21_Y22_N10
\dut_alu|dut_mul_u|A_m[13]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[13]~24_combout\ = (\dut_decorder|src1_d\(13) & ((\dut_alu|dut_mul_u|A\(13) & (\dut_alu|dut_mul_u|A_m[12]~23\ & VCC)) # (!\dut_alu|dut_mul_u|A\(13) & (!\dut_alu|dut_mul_u|A_m[12]~23\)))) # (!\dut_decorder|src1_d\(13) & 
-- ((\dut_alu|dut_mul_u|A\(13) & (!\dut_alu|dut_mul_u|A_m[12]~23\)) # (!\dut_alu|dut_mul_u|A\(13) & ((\dut_alu|dut_mul_u|A_m[12]~23\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[13]~25\ = CARRY((\dut_decorder|src1_d\(13) & (!\dut_alu|dut_mul_u|A\(13) & !\dut_alu|dut_mul_u|A_m[12]~23\)) # (!\dut_decorder|src1_d\(13) & ((!\dut_alu|dut_mul_u|A_m[12]~23\) # (!\dut_alu|dut_mul_u|A\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(13),
	datab => \dut_alu|dut_mul_u|A\(13),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[12]~23\,
	combout => \dut_alu|dut_mul_u|A_m[13]~24_combout\,
	cout => \dut_alu|dut_mul_u|A_m[13]~25\);

-- Location: LCCOMB_X21_Y22_N12
\dut_alu|dut_mul_u|A_m[14]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[14]~26_combout\ = ((\dut_alu|dut_mul_u|A\(14) $ (\dut_decorder|src1_d\(14) $ (!\dut_alu|dut_mul_u|A_m[13]~25\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[14]~27\ = CARRY((\dut_alu|dut_mul_u|A\(14) & ((\dut_decorder|src1_d\(14)) # (!\dut_alu|dut_mul_u|A_m[13]~25\))) # (!\dut_alu|dut_mul_u|A\(14) & (\dut_decorder|src1_d\(14) & !\dut_alu|dut_mul_u|A_m[13]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(14),
	datab => \dut_decorder|src1_d\(14),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[13]~25\,
	combout => \dut_alu|dut_mul_u|A_m[14]~26_combout\,
	cout => \dut_alu|dut_mul_u|A_m[14]~27\);

-- Location: LCCOMB_X21_Y22_N14
\dut_alu|dut_mul_u|A_m[15]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[15]~28_combout\ = (\dut_alu|dut_mul_u|A\(15) & ((\dut_decorder|src1_d\(15) & (\dut_alu|dut_mul_u|A_m[14]~27\ & VCC)) # (!\dut_decorder|src1_d\(15) & (!\dut_alu|dut_mul_u|A_m[14]~27\)))) # (!\dut_alu|dut_mul_u|A\(15) & 
-- ((\dut_decorder|src1_d\(15) & (!\dut_alu|dut_mul_u|A_m[14]~27\)) # (!\dut_decorder|src1_d\(15) & ((\dut_alu|dut_mul_u|A_m[14]~27\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[15]~29\ = CARRY((\dut_alu|dut_mul_u|A\(15) & (!\dut_decorder|src1_d\(15) & !\dut_alu|dut_mul_u|A_m[14]~27\)) # (!\dut_alu|dut_mul_u|A\(15) & ((!\dut_alu|dut_mul_u|A_m[14]~27\) # (!\dut_decorder|src1_d\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(15),
	datab => \dut_decorder|src1_d\(15),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[14]~27\,
	combout => \dut_alu|dut_mul_u|A_m[15]~28_combout\,
	cout => \dut_alu|dut_mul_u|A_m[15]~29\);

-- Location: LCCOMB_X21_Y22_N16
\dut_alu|dut_mul_u|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|Add0~2_combout\ = !\dut_alu|dut_mul_u|A_m[15]~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dut_alu|dut_mul_u|A_m[15]~29\,
	combout => \dut_alu|dut_mul_u|Add0~2_combout\);

-- Location: LCCOMB_X21_Y22_N26
\dut_alu|dut_mul_u|A~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~15_combout\ = (\dut_alu|dut_mul_u|Add0~2_combout\ & \dut_alu|dut_mul_u|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|Add0~2_combout\,
	datad => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|A~15_combout\);

-- Location: FF_X21_Y22_N27
\dut_alu|dut_mul_u|A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~15_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(15));

-- Location: LCCOMB_X22_Y22_N6
\dut_alu|dut_mul_u|A~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~14_combout\ = (\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A_m[15]~28_combout\))) # (!\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(0),
	datac => \dut_alu|dut_mul_u|A\(15),
	datad => \dut_alu|dut_mul_u|A_m[15]~28_combout\,
	combout => \dut_alu|dut_mul_u|A~14_combout\);

-- Location: FF_X22_Y22_N7
\dut_alu|dut_mul_u|A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~14_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(14));

-- Location: LCCOMB_X22_Y22_N28
\dut_alu|dut_mul_u|A~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~13_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[14]~26_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A_m[14]~26_combout\,
	datac => \dut_alu|dut_mul_u|q\(0),
	datad => \dut_alu|dut_mul_u|A\(14),
	combout => \dut_alu|dut_mul_u|A~13_combout\);

-- Location: FF_X22_Y22_N29
\dut_alu|dut_mul_u|A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~13_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(13));

-- Location: LCCOMB_X22_Y22_N10
\dut_alu|dut_mul_u|A~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~12_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[13]~24_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(0),
	datac => \dut_alu|dut_mul_u|A_m[13]~24_combout\,
	datad => \dut_alu|dut_mul_u|A\(13),
	combout => \dut_alu|dut_mul_u|A~12_combout\);

-- Location: FF_X22_Y22_N11
\dut_alu|dut_mul_u|A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~12_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(12));

-- Location: LCCOMB_X22_Y22_N8
\dut_alu|dut_mul_u|A~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~11_combout\ = (\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A_m[12]~22_combout\))) # (!\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(0),
	datac => \dut_alu|dut_mul_u|A\(12),
	datad => \dut_alu|dut_mul_u|A_m[12]~22_combout\,
	combout => \dut_alu|dut_mul_u|A~11_combout\);

-- Location: FF_X22_Y22_N9
\dut_alu|dut_mul_u|A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~11_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(11));

-- Location: LCCOMB_X22_Y22_N14
\dut_alu|dut_mul_u|A~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~10_combout\ = (\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A_m[11]~20_combout\))) # (!\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(0),
	datab => \dut_alu|dut_mul_u|A\(11),
	datac => \dut_alu|dut_mul_u|A_m[11]~20_combout\,
	combout => \dut_alu|dut_mul_u|A~10_combout\);

-- Location: FF_X22_Y22_N15
\dut_alu|dut_mul_u|A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~10_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(10));

-- Location: LCCOMB_X22_Y22_N18
\dut_alu|dut_mul_u|A~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~4_combout\ = (\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A_m[10]~18_combout\))) # (!\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(0),
	datab => \dut_alu|dut_mul_u|A\(10),
	datac => \dut_alu|dut_mul_u|A_m[10]~18_combout\,
	combout => \dut_alu|dut_mul_u|A~4_combout\);

-- Location: FF_X22_Y22_N19
\dut_alu|dut_mul_u|A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(9));

-- Location: LCCOMB_X22_Y22_N16
\dut_alu|dut_mul_u|A~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~2_combout\ = (\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A_m[9]~16_combout\))) # (!\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(0),
	datab => \dut_alu|dut_mul_u|A\(9),
	datad => \dut_alu|dut_mul_u|A_m[9]~16_combout\,
	combout => \dut_alu|dut_mul_u|A~2_combout\);

-- Location: FF_X22_Y22_N17
\dut_alu|dut_mul_u|A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(8));

-- Location: LCCOMB_X22_Y22_N12
\dut_alu|dut_mul_u|A~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~5_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[8]~14_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(0),
	datac => \dut_alu|dut_mul_u|A_m[8]~14_combout\,
	datad => \dut_alu|dut_mul_u|A\(8),
	combout => \dut_alu|dut_mul_u|A~5_combout\);

-- Location: FF_X22_Y22_N13
\dut_alu|dut_mul_u|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(7));

-- Location: LCCOMB_X21_Y23_N6
\dut_alu|dut_mul_u|A~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~6_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[7]~12_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(0),
	datac => \dut_alu|dut_mul_u|A_m[7]~12_combout\,
	datad => \dut_alu|dut_mul_u|A\(7),
	combout => \dut_alu|dut_mul_u|A~6_combout\);

-- Location: FF_X21_Y23_N7
\dut_alu|dut_mul_u|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~6_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(6));

-- Location: LCCOMB_X21_Y23_N8
\dut_alu|dut_mul_u|A~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~7_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[6]~10_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|A_m[6]~10_combout\,
	datac => \dut_alu|dut_mul_u|q\(0),
	datad => \dut_alu|dut_mul_u|A\(6),
	combout => \dut_alu|dut_mul_u|A~7_combout\);

-- Location: FF_X21_Y23_N9
\dut_alu|dut_mul_u|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~7_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(5));

-- Location: LCCOMB_X21_Y23_N10
\dut_alu|dut_mul_u|A~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~8_combout\ = (\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A_m[5]~8_combout\))) # (!\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(0),
	datab => \dut_alu|dut_mul_u|A\(5),
	datac => \dut_alu|dut_mul_u|A_m[5]~8_combout\,
	combout => \dut_alu|dut_mul_u|A~8_combout\);

-- Location: FF_X21_Y23_N11
\dut_alu|dut_mul_u|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~8_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(4));

-- Location: LCCOMB_X21_Y23_N4
\dut_alu|dut_mul_u|A~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~9_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[4]~6_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|A_m[4]~6_combout\,
	datac => \dut_alu|dut_mul_u|q\(0),
	datad => \dut_alu|dut_mul_u|A\(4),
	combout => \dut_alu|dut_mul_u|A~9_combout\);

-- Location: FF_X21_Y23_N5
\dut_alu|dut_mul_u|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~9_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(3));

-- Location: LCCOMB_X21_Y23_N12
\dut_alu|dut_mul_u|A~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~3_combout\ = (\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A_m[3]~4_combout\))) # (!\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(0),
	datab => \dut_alu|dut_mul_u|A\(3),
	datac => \dut_alu|dut_mul_u|A_m[3]~4_combout\,
	combout => \dut_alu|dut_mul_u|A~3_combout\);

-- Location: FF_X21_Y23_N13
\dut_alu|dut_mul_u|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(2));

-- Location: LCCOMB_X21_Y23_N2
\dut_alu|dut_mul_u|A~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~1_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[2]~2_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A_m[2]~2_combout\,
	datac => \dut_alu|dut_mul_u|q\(0),
	datad => \dut_alu|dut_mul_u|A\(2),
	combout => \dut_alu|dut_mul_u|A~1_combout\);

-- Location: FF_X21_Y23_N3
\dut_alu|dut_mul_u|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(1));

-- Location: LCCOMB_X21_Y23_N0
\dut_alu|dut_mul_u|A~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~0_combout\ = (\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A_m[1]~0_combout\))) # (!\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|A\(1),
	datac => \dut_alu|dut_mul_u|q\(0),
	datad => \dut_alu|dut_mul_u|A_m[1]~0_combout\,
	combout => \dut_alu|dut_mul_u|A~0_combout\);

-- Location: FF_X21_Y23_N1
\dut_alu|dut_mul_u|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(0));

-- Location: LCCOMB_X22_Y21_N22
\dut_alu|dut_mul_u|q~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~15_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|A\(0)))) # (!\dut_alu|dut_mul_u|state~q\ & (\dut_decorder|src2_d\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(15),
	datac => \dut_alu|dut_mul_u|A\(0),
	datad => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|q~15_combout\);

-- Location: FF_X22_Y21_N23
\dut_alu|dut_mul_u|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~15_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(15));

-- Location: FF_X22_Y20_N21
\dut_decorder|src2_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(2),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(2));

-- Location: FF_X22_Y20_N29
\dut_decorder|src2_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src2_d\(2),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(6));

-- Location: FF_X22_Y19_N5
\dut_decorder|src2_d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src2_d\(6),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(10));

-- Location: FF_X22_Y19_N13
\dut_decorder|src2_d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_decorder|src2_d\(10),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_decorder|src2_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_decorder|src2_d\(14));

-- Location: LCCOMB_X22_Y21_N28
\dut_alu|dut_mul_u|q~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~14_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(15))) # (!\dut_alu|dut_mul_u|state~q\ & ((\dut_decorder|src2_d\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(15),
	datac => \dut_decorder|src2_d\(14),
	datad => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|q~14_combout\);

-- Location: FF_X22_Y21_N29
\dut_alu|dut_mul_u|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~14_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(14));

-- Location: LCCOMB_X22_Y21_N0
\dut_alu|dut_mul_u|q~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~12_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|q\(14)))) # (!\dut_alu|dut_mul_u|state~q\ & (\dut_decorder|src2_d\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|state~q\,
	datab => \dut_decorder|src2_d\(13),
	datad => \dut_alu|dut_mul_u|q\(14),
	combout => \dut_alu|dut_mul_u|q~12_combout\);

-- Location: FF_X22_Y21_N1
\dut_alu|dut_mul_u|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~12_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(13));

-- Location: LCCOMB_X22_Y21_N6
\dut_alu|dut_mul_u|q~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~10_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|q\(13)))) # (!\dut_alu|dut_mul_u|state~q\ & (\dut_decorder|src2_d\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(12),
	datab => \dut_alu|dut_mul_u|q\(13),
	datad => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|q~10_combout\);

-- Location: FF_X22_Y21_N7
\dut_alu|dut_mul_u|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~10_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(12));

-- Location: LCCOMB_X22_Y21_N12
\dut_alu|dut_mul_u|q~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~8_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(12))) # (!\dut_alu|dut_mul_u|state~q\ & ((\dut_decorder|src2_d\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(12),
	datab => \dut_decorder|src2_d\(11),
	datad => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|q~8_combout\);

-- Location: FF_X22_Y21_N13
\dut_alu|dut_mul_u|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~8_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(11));

-- Location: LCCOMB_X22_Y21_N10
\dut_alu|dut_mul_u|q~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~6_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(11))) # (!\dut_alu|dut_mul_u|state~q\ & ((\dut_decorder|src2_d\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(11),
	datac => \dut_decorder|src2_d\(10),
	datad => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|q~6_combout\);

-- Location: FF_X22_Y21_N11
\dut_alu|dut_mul_u|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~6_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(10));

-- Location: LCCOMB_X22_Y21_N14
\dut_alu|dut_mul_u|q~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~4_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(10))) # (!\dut_alu|dut_mul_u|state~q\ & ((\dut_decorder|src2_d\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(10),
	datab => \dut_decorder|src2_d\(9),
	datad => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|q~4_combout\);

-- Location: FF_X22_Y21_N15
\dut_alu|dut_mul_u|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(9));

-- Location: LCCOMB_X22_Y21_N24
\dut_alu|dut_mul_u|q~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~2_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|q\(9)))) # (!\dut_alu|dut_mul_u|state~q\ & (\dut_decorder|src2_d\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_decorder|src2_d\(8),
	datac => \dut_alu|dut_mul_u|q\(9),
	datad => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|q~2_combout\);

-- Location: FF_X22_Y21_N25
\dut_alu|dut_mul_u|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(8));

-- Location: LCCOMB_X21_Y21_N12
\dut_alu|dut_mul_u|q~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~13_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|q\(8)))) # (!\dut_alu|dut_mul_u|state~q\ & (\dut_decorder|src2_d\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_decorder|src2_d\(7),
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \dut_alu|dut_mul_u|q\(8),
	combout => \dut_alu|dut_mul_u|q~13_combout\);

-- Location: FF_X21_Y21_N13
\dut_alu|dut_mul_u|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~13_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(7));

-- Location: LCCOMB_X21_Y21_N18
\dut_alu|dut_mul_u|q~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~11_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(7))) # (!\dut_alu|dut_mul_u|state~q\ & ((\dut_decorder|src2_d\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(7),
	datab => \dut_decorder|src2_d\(6),
	datac => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|q~11_combout\);

-- Location: FF_X21_Y21_N19
\dut_alu|dut_mul_u|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~11_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(6));

-- Location: LCCOMB_X21_Y21_N22
\dut_alu|dut_mul_u|q~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~9_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(6))) # (!\dut_alu|dut_mul_u|state~q\ & ((\dut_decorder|src2_d\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|q\(6),
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \dut_decorder|src2_d\(5),
	combout => \dut_alu|dut_mul_u|q~9_combout\);

-- Location: FF_X21_Y21_N23
\dut_alu|dut_mul_u|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~9_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(5));

-- Location: LCCOMB_X21_Y21_N10
\dut_alu|dut_mul_u|q~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~7_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(5))) # (!\dut_alu|dut_mul_u|state~q\ & ((\dut_decorder|src2_d\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(5),
	datab => \dut_alu|dut_mul_u|state~q\,
	datac => \dut_decorder|src2_d\(4),
	combout => \dut_alu|dut_mul_u|q~7_combout\);

-- Location: FF_X21_Y21_N11
\dut_alu|dut_mul_u|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~7_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(4));

-- Location: LCCOMB_X21_Y21_N16
\dut_alu|dut_mul_u|q~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~5_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(4))) # (!\dut_alu|dut_mul_u|state~q\ & ((\dut_decorder|src2_d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(4),
	datab => \dut_alu|dut_mul_u|state~q\,
	datac => \dut_decorder|src2_d\(3),
	combout => \dut_alu|dut_mul_u|q~5_combout\);

-- Location: FF_X21_Y21_N17
\dut_alu|dut_mul_u|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(3));

-- Location: LCCOMB_X21_Y21_N20
\dut_alu|dut_mul_u|q~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~3_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(3))) # (!\dut_alu|dut_mul_u|state~q\ & ((\dut_decorder|src2_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|q\(3),
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \dut_decorder|src2_d\(2),
	combout => \dut_alu|dut_mul_u|q~3_combout\);

-- Location: FF_X21_Y21_N21
\dut_alu|dut_mul_u|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(2));

-- Location: LCCOMB_X21_Y21_N0
\dut_alu|dut_mul_u|q~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~1_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|q\(2)))) # (!\dut_alu|dut_mul_u|state~q\ & (\dut_decorder|src2_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(1),
	datab => \dut_alu|dut_mul_u|q\(2),
	datac => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|q~1_combout\);

-- Location: FF_X21_Y21_N1
\dut_alu|dut_mul_u|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(1));

-- Location: LCCOMB_X21_Y21_N26
\dut_alu|dut_mul_u|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~0_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|q\(1)))) # (!\dut_alu|dut_mul_u|state~q\ & (\dut_decorder|src2_d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(0),
	datab => \dut_alu|dut_mul_u|q\(1),
	datac => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|q~0_combout\);

-- Location: FF_X21_Y21_N27
\dut_alu|dut_mul_u|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(0));

-- Location: LCCOMB_X22_Y22_N24
\dut_alu|dut_mul_u|result[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[0]~feeder_combout\ = \dut_alu|dut_mul_u|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(0),
	combout => \dut_alu|dut_mul_u|result[0]~feeder_combout\);

-- Location: FF_X22_Y22_N25
\dut_alu|dut_mul_u|result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[0]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(0));

-- Location: LCCOMB_X21_Y19_N22
\dut_alu|dut_divider_u|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~3_combout\ = (\dut_decorder|src2_d\(13) & \dut_alu|dut_divider_u|A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_decorder|src2_d\(13),
	datad => \dut_alu|dut_divider_u|A\(16),
	combout => \dut_alu|dut_divider_u|Add2~3_combout\);

-- Location: LCCOMB_X22_Y19_N26
\dut_alu|dut_divider_u|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~4_combout\ = (\dut_alu|dut_divider_u|A\(16) & \dut_decorder|src2_d\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_decorder|src2_d\(12),
	combout => \dut_alu|dut_divider_u|Add2~4_combout\);

-- Location: LCCOMB_X22_Y19_N28
\dut_alu|dut_divider_u|Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~5_combout\ = (\dut_alu|dut_divider_u|A\(16) & \dut_decorder|src2_d\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_decorder|src2_d\(11),
	combout => \dut_alu|dut_divider_u|Add2~5_combout\);

-- Location: LCCOMB_X22_Y21_N30
\dut_alu|dut_divider_u|Add2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~7_combout\ = (\dut_alu|dut_divider_u|A\(16) & \dut_decorder|src2_d\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_decorder|src2_d\(9),
	combout => \dut_alu|dut_divider_u|Add2~7_combout\);

-- Location: LCCOMB_X21_Y19_N30
\dut_alu|dut_divider_u|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~8_combout\ = (\dut_decorder|src2_d\(8) & \dut_alu|dut_divider_u|A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_decorder|src2_d\(8),
	datad => \dut_alu|dut_divider_u|A\(16),
	combout => \dut_alu|dut_divider_u|Add2~8_combout\);

-- Location: LCCOMB_X21_Y20_N10
\dut_alu|dut_divider_u|Add2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~9_combout\ = (\dut_alu|dut_divider_u|A\(16) & \dut_decorder|src2_d\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_decorder|src2_d\(7),
	combout => \dut_alu|dut_divider_u|Add2~9_combout\);

-- Location: LCCOMB_X21_Y20_N6
\dut_alu|dut_divider_u|Add2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~11_combout\ = (\dut_alu|dut_divider_u|A\(16) & \dut_decorder|src2_d\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_decorder|src2_d\(5),
	combout => \dut_alu|dut_divider_u|Add2~11_combout\);

-- Location: LCCOMB_X21_Y20_N12
\dut_alu|dut_divider_u|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~14_combout\ = (\dut_alu|dut_divider_u|A\(16) & \dut_decorder|src2_d\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_decorder|src2_d\(2),
	combout => \dut_alu|dut_divider_u|Add2~14_combout\);

-- Location: LCCOMB_X21_Y20_N14
\dut_alu|dut_divider_u|Add2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~15_combout\ = (\dut_alu|dut_divider_u|A\(16) & \dut_decorder|src2_d\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_decorder|src2_d\(1),
	combout => \dut_alu|dut_divider_u|Add2~15_combout\);

-- Location: LCCOMB_X23_Y22_N26
\dut_alu|dut_divider_u|q~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~2_combout\ = (\dut_decorder|op_d\(3) & ((\dut_alu|dut_divider_u|state~q\ & ((!\dut_alu|dut_divider_u|A\(16)))) # (!\dut_alu|dut_divider_u|state~q\ & (\dut_decorder|src1_d\(0))))) # (!\dut_decorder|op_d\(3) & 
-- (((!\dut_alu|dut_divider_u|A\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|op_d\(3),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|src1_d\(0),
	datad => \dut_alu|dut_divider_u|A\(16),
	combout => \dut_alu|dut_divider_u|q~2_combout\);

-- Location: LCCOMB_X27_Y20_N8
\dut_alu|dut_divider_u|q~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~1_combout\ = (\dut_alu|dut_divider_u|state~q\) # (\dut_decorder|op_d\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|op_d\(3),
	combout => \dut_alu|dut_divider_u|q~1_combout\);

-- Location: FF_X23_Y22_N27
\dut_alu|dut_divider_u|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(0));

-- Location: LCCOMB_X23_Y22_N28
\dut_alu|dut_divider_u|q~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~3_combout\ = (\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(0))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_decorder|op_d\(3) & ((\dut_decorder|src1_d\(1)))) # (!\dut_decorder|op_d\(3) & 
-- (\dut_alu|dut_divider_u|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(0),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|op_d\(3),
	datad => \dut_decorder|src1_d\(1),
	combout => \dut_alu|dut_divider_u|q~3_combout\);

-- Location: FF_X23_Y22_N29
\dut_alu|dut_divider_u|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(1));

-- Location: LCCOMB_X23_Y22_N10
\dut_alu|dut_divider_u|q~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~6_combout\ = (\dut_decorder|op_d\(3) & ((\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|dut_divider_u|q\(1)))) # (!\dut_alu|dut_divider_u|state~q\ & (\dut_decorder|src1_d\(2))))) # (!\dut_decorder|op_d\(3) & 
-- (((\dut_alu|dut_divider_u|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|op_d\(3),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|src1_d\(2),
	datad => \dut_alu|dut_divider_u|q\(1),
	combout => \dut_alu|dut_divider_u|q~6_combout\);

-- Location: FF_X23_Y22_N11
\dut_alu|dut_divider_u|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~6_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(2));

-- Location: LCCOMB_X23_Y22_N18
\dut_alu|dut_divider_u|q~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~10_combout\ = (\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(2))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_decorder|op_d\(3) & ((\dut_decorder|src1_d\(3)))) # (!\dut_decorder|op_d\(3) & 
-- (\dut_alu|dut_divider_u|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(2),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|op_d\(3),
	datad => \dut_decorder|src1_d\(3),
	combout => \dut_alu|dut_divider_u|q~10_combout\);

-- Location: FF_X23_Y22_N19
\dut_alu|dut_divider_u|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~10_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(3));

-- Location: LCCOMB_X23_Y22_N2
\dut_alu|dut_divider_u|q~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~14_combout\ = (\dut_alu|dut_divider_u|state~q\ & (((\dut_alu|dut_divider_u|q\(3))))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_decorder|op_d\(3) & (\dut_decorder|src1_d\(4))) # (!\dut_decorder|op_d\(3) & 
-- ((\dut_alu|dut_divider_u|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(4),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|op_d\(3),
	datad => \dut_alu|dut_divider_u|q\(3),
	combout => \dut_alu|dut_divider_u|q~14_combout\);

-- Location: FF_X23_Y22_N3
\dut_alu|dut_divider_u|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~14_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(4));

-- Location: LCCOMB_X23_Y22_N22
\dut_alu|dut_divider_u|q~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~16_combout\ = (\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(4))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_decorder|op_d\(3) & ((\dut_decorder|src1_d\(5)))) # (!\dut_decorder|op_d\(3) & 
-- (\dut_alu|dut_divider_u|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(4),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|op_d\(3),
	datad => \dut_decorder|src1_d\(5),
	combout => \dut_alu|dut_divider_u|q~16_combout\);

-- Location: FF_X23_Y22_N23
\dut_alu|dut_divider_u|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~16_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(5));

-- Location: LCCOMB_X23_Y22_N24
\dut_alu|dut_divider_u|q~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~13_combout\ = (\dut_decorder|op_d\(3) & ((\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|dut_divider_u|q\(5)))) # (!\dut_alu|dut_divider_u|state~q\ & (\dut_decorder|src1_d\(6))))) # (!\dut_decorder|op_d\(3) & 
-- (((\dut_alu|dut_divider_u|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|op_d\(3),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|src1_d\(6),
	datad => \dut_alu|dut_divider_u|q\(5),
	combout => \dut_alu|dut_divider_u|q~13_combout\);

-- Location: FF_X23_Y22_N25
\dut_alu|dut_divider_u|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~13_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(6));

-- Location: LCCOMB_X23_Y22_N8
\dut_alu|dut_divider_u|q~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~9_combout\ = (\dut_decorder|op_d\(3) & ((\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|dut_divider_u|q\(6)))) # (!\dut_alu|dut_divider_u|state~q\ & (\dut_decorder|src1_d\(7))))) # (!\dut_decorder|op_d\(3) & 
-- (((\dut_alu|dut_divider_u|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|op_d\(3),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|src1_d\(7),
	datad => \dut_alu|dut_divider_u|q\(6),
	combout => \dut_alu|dut_divider_u|q~9_combout\);

-- Location: FF_X23_Y22_N9
\dut_alu|dut_divider_u|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~9_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(7));

-- Location: LCCOMB_X23_Y22_N16
\dut_alu|dut_divider_u|q~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~5_combout\ = (\dut_alu|dut_divider_u|state~q\ & (((\dut_alu|dut_divider_u|q\(7))))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_decorder|op_d\(3) & (\dut_decorder|src1_d\(8))) # (!\dut_decorder|op_d\(3) & 
-- ((\dut_alu|dut_divider_u|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(8),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|op_d\(3),
	datad => \dut_alu|dut_divider_u|q\(7),
	combout => \dut_alu|dut_divider_u|q~5_combout\);

-- Location: FF_X23_Y22_N17
\dut_alu|dut_divider_u|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(8));

-- Location: LCCOMB_X23_Y22_N20
\dut_alu|dut_divider_u|q~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~7_combout\ = (\dut_alu|dut_divider_u|state~q\ & (((\dut_alu|dut_divider_u|q\(8))))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_decorder|op_d\(3) & (\dut_decorder|src1_d\(9))) # (!\dut_decorder|op_d\(3) & 
-- ((\dut_alu|dut_divider_u|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(9),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|op_d\(3),
	datad => \dut_alu|dut_divider_u|q\(8),
	combout => \dut_alu|dut_divider_u|q~7_combout\);

-- Location: FF_X23_Y22_N21
\dut_alu|dut_divider_u|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~7_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(9));

-- Location: LCCOMB_X23_Y22_N4
\dut_alu|dut_divider_u|q~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~11_combout\ = (\dut_alu|dut_divider_u|state~q\ & (((\dut_alu|dut_divider_u|q\(9))))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_decorder|op_d\(3) & (\dut_decorder|src1_d\(10))) # (!\dut_decorder|op_d\(3) & 
-- ((\dut_alu|dut_divider_u|q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(10),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|op_d\(3),
	datad => \dut_alu|dut_divider_u|q\(9),
	combout => \dut_alu|dut_divider_u|q~11_combout\);

-- Location: FF_X23_Y22_N5
\dut_alu|dut_divider_u|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~11_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(10));

-- Location: LCCOMB_X23_Y22_N12
\dut_alu|dut_divider_u|q~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~15_combout\ = (\dut_decorder|op_d\(3) & ((\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(10))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_decorder|src1_d\(11)))))) # (!\dut_decorder|op_d\(3) & 
-- (\dut_alu|dut_divider_u|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|op_d\(3),
	datab => \dut_alu|dut_divider_u|q\(10),
	datac => \dut_alu|dut_divider_u|state~q\,
	datad => \dut_decorder|src1_d\(11),
	combout => \dut_alu|dut_divider_u|q~15_combout\);

-- Location: FF_X23_Y22_N13
\dut_alu|dut_divider_u|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~15_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(11));

-- Location: LCCOMB_X23_Y22_N6
\dut_alu|dut_divider_u|q~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~12_combout\ = (\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(11))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_decorder|op_d\(3) & ((\dut_decorder|src1_d\(12)))) # (!\dut_decorder|op_d\(3) & 
-- (\dut_alu|dut_divider_u|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(11),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|op_d\(3),
	datad => \dut_decorder|src1_d\(12),
	combout => \dut_alu|dut_divider_u|q~12_combout\);

-- Location: FF_X23_Y22_N7
\dut_alu|dut_divider_u|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~12_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(12));

-- Location: LCCOMB_X23_Y22_N14
\dut_alu|dut_divider_u|q~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~8_combout\ = (\dut_decorder|op_d\(3) & ((\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|dut_divider_u|q\(12)))) # (!\dut_alu|dut_divider_u|state~q\ & (\dut_decorder|src1_d\(13))))) # (!\dut_decorder|op_d\(3) & 
-- (((\dut_alu|dut_divider_u|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|op_d\(3),
	datab => \dut_alu|dut_divider_u|state~q\,
	datac => \dut_decorder|src1_d\(13),
	datad => \dut_alu|dut_divider_u|q\(12),
	combout => \dut_alu|dut_divider_u|q~8_combout\);

-- Location: FF_X23_Y22_N15
\dut_alu|dut_divider_u|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~8_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(13));

-- Location: LCCOMB_X23_Y22_N30
\dut_alu|dut_divider_u|q~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~4_combout\ = (\dut_decorder|op_d\(3) & ((\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(13))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_decorder|src1_d\(14)))))) # (!\dut_decorder|op_d\(3) & 
-- (\dut_alu|dut_divider_u|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|op_d\(3),
	datab => \dut_alu|dut_divider_u|q\(13),
	datac => \dut_alu|dut_divider_u|state~q\,
	datad => \dut_decorder|src1_d\(14),
	combout => \dut_alu|dut_divider_u|q~4_combout\);

-- Location: FF_X23_Y22_N31
\dut_alu|dut_divider_u|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(14));

-- Location: LCCOMB_X23_Y22_N0
\dut_alu|dut_divider_u|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~0_combout\ = (\dut_decorder|op_d\(3) & ((\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|dut_divider_u|q\(14)))) # (!\dut_alu|dut_divider_u|state~q\ & (\dut_decorder|src1_d\(15))))) # (!\dut_decorder|op_d\(3) & 
-- (((\dut_alu|dut_divider_u|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|op_d\(3),
	datab => \dut_decorder|src1_d\(15),
	datac => \dut_alu|dut_divider_u|state~q\,
	datad => \dut_alu|dut_divider_u|q\(14),
	combout => \dut_alu|dut_divider_u|q~0_combout\);

-- Location: FF_X23_Y22_N1
\dut_alu|dut_divider_u|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(15));

-- Location: LCCOMB_X22_Y20_N16
\dut_alu|dut_divider_u|M_sign_not[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[0]~0_combout\ = (\dut_decorder|src2_d\(0) & (\dut_alu|dut_divider_u|q\(15) & VCC)) # (!\dut_decorder|src2_d\(0) & (\dut_alu|dut_divider_u|q\(15) $ (VCC)))
-- \dut_alu|dut_divider_u|M_sign_not[0]~1\ = CARRY((!\dut_decorder|src2_d\(0) & \dut_alu|dut_divider_u|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(0),
	datab => \dut_alu|dut_divider_u|q\(15),
	datad => VCC,
	combout => \dut_alu|dut_divider_u|M_sign_not[0]~0_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[0]~1\);

-- Location: LCCOMB_X22_Y20_N18
\dut_alu|dut_divider_u|M_sign_not[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[1]~2_combout\ = (\dut_decorder|src2_d\(1) & ((\dut_alu|dut_divider_u|A\(0) & (!\dut_alu|dut_divider_u|M_sign_not[0]~1\)) # (!\dut_alu|dut_divider_u|A\(0) & ((\dut_alu|dut_divider_u|M_sign_not[0]~1\) # (GND))))) # 
-- (!\dut_decorder|src2_d\(1) & ((\dut_alu|dut_divider_u|A\(0) & (\dut_alu|dut_divider_u|M_sign_not[0]~1\ & VCC)) # (!\dut_alu|dut_divider_u|A\(0) & (!\dut_alu|dut_divider_u|M_sign_not[0]~1\))))
-- \dut_alu|dut_divider_u|M_sign_not[1]~3\ = CARRY((\dut_decorder|src2_d\(1) & ((!\dut_alu|dut_divider_u|M_sign_not[0]~1\) # (!\dut_alu|dut_divider_u|A\(0)))) # (!\dut_decorder|src2_d\(1) & (!\dut_alu|dut_divider_u|A\(0) & 
-- !\dut_alu|dut_divider_u|M_sign_not[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(1),
	datab => \dut_alu|dut_divider_u|A\(0),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[0]~1\,
	combout => \dut_alu|dut_divider_u|M_sign_not[1]~2_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[1]~3\);

-- Location: LCCOMB_X22_Y20_N0
\dut_alu|dut_divider_u|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~16_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(0))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|A\(0),
	datad => \dut_alu|dut_divider_u|M_sign_not[1]~2_combout\,
	combout => \dut_alu|dut_divider_u|Add0~16_combout\);

-- Location: LCCOMB_X21_Y20_N0
\dut_alu|dut_divider_u|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~0_combout\ = (\dut_decorder|src2_d\(0)) # (!\dut_alu|dut_divider_u|A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_decorder|src2_d\(0),
	combout => \dut_alu|dut_divider_u|Add2~0_combout\);

-- Location: LCCOMB_X21_Y20_N16
\dut_alu|dut_divider_u|A[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[0]~17_combout\ = (\dut_alu|dut_divider_u|Add0~0_combout\ & (\dut_alu|dut_divider_u|Add2~0_combout\ $ (VCC))) # (!\dut_alu|dut_divider_u|Add0~0_combout\ & (\dut_alu|dut_divider_u|Add2~0_combout\ & VCC))
-- \dut_alu|dut_divider_u|A[0]~18\ = CARRY((\dut_alu|dut_divider_u|Add0~0_combout\ & \dut_alu|dut_divider_u|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~0_combout\,
	datab => \dut_alu|dut_divider_u|Add2~0_combout\,
	datad => VCC,
	combout => \dut_alu|dut_divider_u|A[0]~17_combout\,
	cout => \dut_alu|dut_divider_u|A[0]~18\);

-- Location: LCCOMB_X21_Y20_N18
\dut_alu|dut_divider_u|A[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[1]~19_combout\ = (\dut_alu|dut_divider_u|Add2~15_combout\ & ((\dut_alu|dut_divider_u|Add0~16_combout\ & (\dut_alu|dut_divider_u|A[0]~18\ & VCC)) # (!\dut_alu|dut_divider_u|Add0~16_combout\ & (!\dut_alu|dut_divider_u|A[0]~18\)))) # 
-- (!\dut_alu|dut_divider_u|Add2~15_combout\ & ((\dut_alu|dut_divider_u|Add0~16_combout\ & (!\dut_alu|dut_divider_u|A[0]~18\)) # (!\dut_alu|dut_divider_u|Add0~16_combout\ & ((\dut_alu|dut_divider_u|A[0]~18\) # (GND)))))
-- \dut_alu|dut_divider_u|A[1]~20\ = CARRY((\dut_alu|dut_divider_u|Add2~15_combout\ & (!\dut_alu|dut_divider_u|Add0~16_combout\ & !\dut_alu|dut_divider_u|A[0]~18\)) # (!\dut_alu|dut_divider_u|Add2~15_combout\ & ((!\dut_alu|dut_divider_u|A[0]~18\) # 
-- (!\dut_alu|dut_divider_u|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~15_combout\,
	datab => \dut_alu|dut_divider_u|Add0~16_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[0]~18\,
	combout => \dut_alu|dut_divider_u|A[1]~19_combout\,
	cout => \dut_alu|dut_divider_u|A[1]~20\);

-- Location: FF_X21_Y20_N19
\dut_alu|dut_divider_u|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[1]~19_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(1));

-- Location: LCCOMB_X22_Y20_N20
\dut_alu|dut_divider_u|M_sign_not[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[2]~4_combout\ = ((\dut_decorder|src2_d\(2) $ (\dut_alu|dut_divider_u|A\(1) $ (\dut_alu|dut_divider_u|M_sign_not[1]~3\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[2]~5\ = CARRY((\dut_decorder|src2_d\(2) & (\dut_alu|dut_divider_u|A\(1) & !\dut_alu|dut_divider_u|M_sign_not[1]~3\)) # (!\dut_decorder|src2_d\(2) & ((\dut_alu|dut_divider_u|A\(1)) # 
-- (!\dut_alu|dut_divider_u|M_sign_not[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(2),
	datab => \dut_alu|dut_divider_u|A\(1),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[1]~3\,
	combout => \dut_alu|dut_divider_u|M_sign_not[2]~4_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[2]~5\);

-- Location: LCCOMB_X22_Y20_N10
\dut_alu|dut_divider_u|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~15_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(1))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datab => \dut_alu|dut_divider_u|A\(1),
	datad => \dut_alu|dut_divider_u|M_sign_not[2]~4_combout\,
	combout => \dut_alu|dut_divider_u|Add0~15_combout\);

-- Location: LCCOMB_X21_Y20_N20
\dut_alu|dut_divider_u|A[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[2]~21_combout\ = ((\dut_alu|dut_divider_u|Add2~14_combout\ $ (\dut_alu|dut_divider_u|Add0~15_combout\ $ (!\dut_alu|dut_divider_u|A[1]~20\)))) # (GND)
-- \dut_alu|dut_divider_u|A[2]~22\ = CARRY((\dut_alu|dut_divider_u|Add2~14_combout\ & ((\dut_alu|dut_divider_u|Add0~15_combout\) # (!\dut_alu|dut_divider_u|A[1]~20\))) # (!\dut_alu|dut_divider_u|Add2~14_combout\ & (\dut_alu|dut_divider_u|Add0~15_combout\ & 
-- !\dut_alu|dut_divider_u|A[1]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~14_combout\,
	datab => \dut_alu|dut_divider_u|Add0~15_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[1]~20\,
	combout => \dut_alu|dut_divider_u|A[2]~21_combout\,
	cout => \dut_alu|dut_divider_u|A[2]~22\);

-- Location: FF_X21_Y20_N21
\dut_alu|dut_divider_u|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[2]~21_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(2));

-- Location: LCCOMB_X22_Y20_N22
\dut_alu|dut_divider_u|M_sign_not[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[3]~6_combout\ = (\dut_decorder|src2_d\(3) & ((\dut_alu|dut_divider_u|A\(2) & (!\dut_alu|dut_divider_u|M_sign_not[2]~5\)) # (!\dut_alu|dut_divider_u|A\(2) & ((\dut_alu|dut_divider_u|M_sign_not[2]~5\) # (GND))))) # 
-- (!\dut_decorder|src2_d\(3) & ((\dut_alu|dut_divider_u|A\(2) & (\dut_alu|dut_divider_u|M_sign_not[2]~5\ & VCC)) # (!\dut_alu|dut_divider_u|A\(2) & (!\dut_alu|dut_divider_u|M_sign_not[2]~5\))))
-- \dut_alu|dut_divider_u|M_sign_not[3]~7\ = CARRY((\dut_decorder|src2_d\(3) & ((!\dut_alu|dut_divider_u|M_sign_not[2]~5\) # (!\dut_alu|dut_divider_u|A\(2)))) # (!\dut_decorder|src2_d\(3) & (!\dut_alu|dut_divider_u|A\(2) & 
-- !\dut_alu|dut_divider_u|M_sign_not[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(3),
	datab => \dut_alu|dut_divider_u|A\(2),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[2]~5\,
	combout => \dut_alu|dut_divider_u|M_sign_not[3]~6_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[3]~7\);

-- Location: LCCOMB_X22_Y20_N6
\dut_alu|dut_divider_u|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~14_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(2)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|M_sign_not[3]~6_combout\,
	datad => \dut_alu|dut_divider_u|A\(2),
	combout => \dut_alu|dut_divider_u|Add0~14_combout\);

-- Location: LCCOMB_X21_Y20_N2
\dut_alu|dut_divider_u|Add2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~13_combout\ = (\dut_alu|dut_divider_u|A\(16) & \dut_decorder|src2_d\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_decorder|src2_d\(3),
	combout => \dut_alu|dut_divider_u|Add2~13_combout\);

-- Location: LCCOMB_X21_Y20_N22
\dut_alu|dut_divider_u|A[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[3]~23_combout\ = (\dut_alu|dut_divider_u|Add0~14_combout\ & ((\dut_alu|dut_divider_u|Add2~13_combout\ & (\dut_alu|dut_divider_u|A[2]~22\ & VCC)) # (!\dut_alu|dut_divider_u|Add2~13_combout\ & (!\dut_alu|dut_divider_u|A[2]~22\)))) # 
-- (!\dut_alu|dut_divider_u|Add0~14_combout\ & ((\dut_alu|dut_divider_u|Add2~13_combout\ & (!\dut_alu|dut_divider_u|A[2]~22\)) # (!\dut_alu|dut_divider_u|Add2~13_combout\ & ((\dut_alu|dut_divider_u|A[2]~22\) # (GND)))))
-- \dut_alu|dut_divider_u|A[3]~24\ = CARRY((\dut_alu|dut_divider_u|Add0~14_combout\ & (!\dut_alu|dut_divider_u|Add2~13_combout\ & !\dut_alu|dut_divider_u|A[2]~22\)) # (!\dut_alu|dut_divider_u|Add0~14_combout\ & ((!\dut_alu|dut_divider_u|A[2]~22\) # 
-- (!\dut_alu|dut_divider_u|Add2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~14_combout\,
	datab => \dut_alu|dut_divider_u|Add2~13_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[2]~22\,
	combout => \dut_alu|dut_divider_u|A[3]~23_combout\,
	cout => \dut_alu|dut_divider_u|A[3]~24\);

-- Location: FF_X21_Y20_N23
\dut_alu|dut_divider_u|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[3]~23_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(3));

-- Location: LCCOMB_X22_Y20_N24
\dut_alu|dut_divider_u|M_sign_not[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[4]~8_combout\ = ((\dut_decorder|src2_d\(4) $ (\dut_alu|dut_divider_u|A\(3) $ (\dut_alu|dut_divider_u|M_sign_not[3]~7\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[4]~9\ = CARRY((\dut_decorder|src2_d\(4) & (\dut_alu|dut_divider_u|A\(3) & !\dut_alu|dut_divider_u|M_sign_not[3]~7\)) # (!\dut_decorder|src2_d\(4) & ((\dut_alu|dut_divider_u|A\(3)) # 
-- (!\dut_alu|dut_divider_u|M_sign_not[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(4),
	datab => \dut_alu|dut_divider_u|A\(3),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[3]~7\,
	combout => \dut_alu|dut_divider_u|M_sign_not[4]~8_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[4]~9\);

-- Location: LCCOMB_X22_Y20_N2
\dut_alu|dut_divider_u|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~13_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(3))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datab => \dut_alu|dut_divider_u|A\(3),
	datad => \dut_alu|dut_divider_u|M_sign_not[4]~8_combout\,
	combout => \dut_alu|dut_divider_u|Add0~13_combout\);

-- Location: LCCOMB_X21_Y20_N8
\dut_alu|dut_divider_u|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~12_combout\ = (\dut_decorder|src2_d\(4) & \dut_alu|dut_divider_u|A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(4),
	datac => \dut_alu|dut_divider_u|A\(16),
	combout => \dut_alu|dut_divider_u|Add2~12_combout\);

-- Location: LCCOMB_X21_Y20_N24
\dut_alu|dut_divider_u|A[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[4]~25_combout\ = ((\dut_alu|dut_divider_u|Add0~13_combout\ $ (\dut_alu|dut_divider_u|Add2~12_combout\ $ (!\dut_alu|dut_divider_u|A[3]~24\)))) # (GND)
-- \dut_alu|dut_divider_u|A[4]~26\ = CARRY((\dut_alu|dut_divider_u|Add0~13_combout\ & ((\dut_alu|dut_divider_u|Add2~12_combout\) # (!\dut_alu|dut_divider_u|A[3]~24\))) # (!\dut_alu|dut_divider_u|Add0~13_combout\ & (\dut_alu|dut_divider_u|Add2~12_combout\ & 
-- !\dut_alu|dut_divider_u|A[3]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~13_combout\,
	datab => \dut_alu|dut_divider_u|Add2~12_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[3]~24\,
	combout => \dut_alu|dut_divider_u|A[4]~25_combout\,
	cout => \dut_alu|dut_divider_u|A[4]~26\);

-- Location: FF_X21_Y20_N25
\dut_alu|dut_divider_u|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[4]~25_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(4));

-- Location: LCCOMB_X22_Y20_N26
\dut_alu|dut_divider_u|M_sign_not[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[5]~10_combout\ = (\dut_alu|dut_divider_u|A\(4) & ((\dut_decorder|src2_d\(5) & (!\dut_alu|dut_divider_u|M_sign_not[4]~9\)) # (!\dut_decorder|src2_d\(5) & (\dut_alu|dut_divider_u|M_sign_not[4]~9\ & VCC)))) # 
-- (!\dut_alu|dut_divider_u|A\(4) & ((\dut_decorder|src2_d\(5) & ((\dut_alu|dut_divider_u|M_sign_not[4]~9\) # (GND))) # (!\dut_decorder|src2_d\(5) & (!\dut_alu|dut_divider_u|M_sign_not[4]~9\))))
-- \dut_alu|dut_divider_u|M_sign_not[5]~11\ = CARRY((\dut_alu|dut_divider_u|A\(4) & (\dut_decorder|src2_d\(5) & !\dut_alu|dut_divider_u|M_sign_not[4]~9\)) # (!\dut_alu|dut_divider_u|A\(4) & ((\dut_decorder|src2_d\(5)) # 
-- (!\dut_alu|dut_divider_u|M_sign_not[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(4),
	datab => \dut_decorder|src2_d\(5),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[4]~9\,
	combout => \dut_alu|dut_divider_u|M_sign_not[5]~10_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[5]~11\);

-- Location: LCCOMB_X22_Y20_N12
\dut_alu|dut_divider_u|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~12_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(4)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|M_sign_not[5]~10_combout\,
	datad => \dut_alu|dut_divider_u|A\(4),
	combout => \dut_alu|dut_divider_u|Add0~12_combout\);

-- Location: LCCOMB_X21_Y20_N26
\dut_alu|dut_divider_u|A[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[5]~27_combout\ = (\dut_alu|dut_divider_u|Add2~11_combout\ & ((\dut_alu|dut_divider_u|Add0~12_combout\ & (\dut_alu|dut_divider_u|A[4]~26\ & VCC)) # (!\dut_alu|dut_divider_u|Add0~12_combout\ & (!\dut_alu|dut_divider_u|A[4]~26\)))) # 
-- (!\dut_alu|dut_divider_u|Add2~11_combout\ & ((\dut_alu|dut_divider_u|Add0~12_combout\ & (!\dut_alu|dut_divider_u|A[4]~26\)) # (!\dut_alu|dut_divider_u|Add0~12_combout\ & ((\dut_alu|dut_divider_u|A[4]~26\) # (GND)))))
-- \dut_alu|dut_divider_u|A[5]~28\ = CARRY((\dut_alu|dut_divider_u|Add2~11_combout\ & (!\dut_alu|dut_divider_u|Add0~12_combout\ & !\dut_alu|dut_divider_u|A[4]~26\)) # (!\dut_alu|dut_divider_u|Add2~11_combout\ & ((!\dut_alu|dut_divider_u|A[4]~26\) # 
-- (!\dut_alu|dut_divider_u|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~11_combout\,
	datab => \dut_alu|dut_divider_u|Add0~12_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[4]~26\,
	combout => \dut_alu|dut_divider_u|A[5]~27_combout\,
	cout => \dut_alu|dut_divider_u|A[5]~28\);

-- Location: FF_X21_Y20_N27
\dut_alu|dut_divider_u|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[5]~27_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(5));

-- Location: LCCOMB_X22_Y20_N28
\dut_alu|dut_divider_u|M_sign_not[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[6]~12_combout\ = ((\dut_alu|dut_divider_u|A\(5) $ (\dut_decorder|src2_d\(6) $ (\dut_alu|dut_divider_u|M_sign_not[5]~11\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[6]~13\ = CARRY((\dut_alu|dut_divider_u|A\(5) & ((!\dut_alu|dut_divider_u|M_sign_not[5]~11\) # (!\dut_decorder|src2_d\(6)))) # (!\dut_alu|dut_divider_u|A\(5) & (!\dut_decorder|src2_d\(6) & 
-- !\dut_alu|dut_divider_u|M_sign_not[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(5),
	datab => \dut_decorder|src2_d\(6),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[5]~11\,
	combout => \dut_alu|dut_divider_u|M_sign_not[6]~12_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[6]~13\);

-- Location: LCCOMB_X22_Y20_N14
\dut_alu|dut_divider_u|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~11_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(5))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|A\(5),
	datad => \dut_alu|dut_divider_u|M_sign_not[6]~12_combout\,
	combout => \dut_alu|dut_divider_u|Add0~11_combout\);

-- Location: LCCOMB_X21_Y20_N4
\dut_alu|dut_divider_u|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~10_combout\ = (\dut_alu|dut_divider_u|A\(16) & \dut_decorder|src2_d\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_decorder|src2_d\(6),
	combout => \dut_alu|dut_divider_u|Add2~10_combout\);

-- Location: LCCOMB_X21_Y20_N28
\dut_alu|dut_divider_u|A[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[6]~29_combout\ = ((\dut_alu|dut_divider_u|Add0~11_combout\ $ (\dut_alu|dut_divider_u|Add2~10_combout\ $ (!\dut_alu|dut_divider_u|A[5]~28\)))) # (GND)
-- \dut_alu|dut_divider_u|A[6]~30\ = CARRY((\dut_alu|dut_divider_u|Add0~11_combout\ & ((\dut_alu|dut_divider_u|Add2~10_combout\) # (!\dut_alu|dut_divider_u|A[5]~28\))) # (!\dut_alu|dut_divider_u|Add0~11_combout\ & (\dut_alu|dut_divider_u|Add2~10_combout\ & 
-- !\dut_alu|dut_divider_u|A[5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~11_combout\,
	datab => \dut_alu|dut_divider_u|Add2~10_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[5]~28\,
	combout => \dut_alu|dut_divider_u|A[6]~29_combout\,
	cout => \dut_alu|dut_divider_u|A[6]~30\);

-- Location: FF_X21_Y20_N29
\dut_alu|dut_divider_u|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[6]~29_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(6));

-- Location: LCCOMB_X22_Y20_N30
\dut_alu|dut_divider_u|M_sign_not[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[7]~14_combout\ = (\dut_decorder|src2_d\(7) & ((\dut_alu|dut_divider_u|A\(6) & (!\dut_alu|dut_divider_u|M_sign_not[6]~13\)) # (!\dut_alu|dut_divider_u|A\(6) & ((\dut_alu|dut_divider_u|M_sign_not[6]~13\) # (GND))))) # 
-- (!\dut_decorder|src2_d\(7) & ((\dut_alu|dut_divider_u|A\(6) & (\dut_alu|dut_divider_u|M_sign_not[6]~13\ & VCC)) # (!\dut_alu|dut_divider_u|A\(6) & (!\dut_alu|dut_divider_u|M_sign_not[6]~13\))))
-- \dut_alu|dut_divider_u|M_sign_not[7]~15\ = CARRY((\dut_decorder|src2_d\(7) & ((!\dut_alu|dut_divider_u|M_sign_not[6]~13\) # (!\dut_alu|dut_divider_u|A\(6)))) # (!\dut_decorder|src2_d\(7) & (!\dut_alu|dut_divider_u|A\(6) & 
-- !\dut_alu|dut_divider_u|M_sign_not[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(7),
	datab => \dut_alu|dut_divider_u|A\(6),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[6]~13\,
	combout => \dut_alu|dut_divider_u|M_sign_not[7]~14_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[7]~15\);

-- Location: LCCOMB_X22_Y20_N8
\dut_alu|dut_divider_u|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~10_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(6)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|M_sign_not[7]~14_combout\,
	datad => \dut_alu|dut_divider_u|A\(6),
	combout => \dut_alu|dut_divider_u|Add0~10_combout\);

-- Location: LCCOMB_X21_Y20_N30
\dut_alu|dut_divider_u|A[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[7]~31_combout\ = (\dut_alu|dut_divider_u|Add2~9_combout\ & ((\dut_alu|dut_divider_u|Add0~10_combout\ & (\dut_alu|dut_divider_u|A[6]~30\ & VCC)) # (!\dut_alu|dut_divider_u|Add0~10_combout\ & (!\dut_alu|dut_divider_u|A[6]~30\)))) # 
-- (!\dut_alu|dut_divider_u|Add2~9_combout\ & ((\dut_alu|dut_divider_u|Add0~10_combout\ & (!\dut_alu|dut_divider_u|A[6]~30\)) # (!\dut_alu|dut_divider_u|Add0~10_combout\ & ((\dut_alu|dut_divider_u|A[6]~30\) # (GND)))))
-- \dut_alu|dut_divider_u|A[7]~32\ = CARRY((\dut_alu|dut_divider_u|Add2~9_combout\ & (!\dut_alu|dut_divider_u|Add0~10_combout\ & !\dut_alu|dut_divider_u|A[6]~30\)) # (!\dut_alu|dut_divider_u|Add2~9_combout\ & ((!\dut_alu|dut_divider_u|A[6]~30\) # 
-- (!\dut_alu|dut_divider_u|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~9_combout\,
	datab => \dut_alu|dut_divider_u|Add0~10_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[6]~30\,
	combout => \dut_alu|dut_divider_u|A[7]~31_combout\,
	cout => \dut_alu|dut_divider_u|A[7]~32\);

-- Location: FF_X21_Y20_N31
\dut_alu|dut_divider_u|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[7]~31_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(7));

-- Location: LCCOMB_X22_Y19_N0
\dut_alu|dut_divider_u|M_sign_not[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[8]~16_combout\ = ((\dut_decorder|src2_d\(8) $ (\dut_alu|dut_divider_u|A\(7) $ (\dut_alu|dut_divider_u|M_sign_not[7]~15\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[8]~17\ = CARRY((\dut_decorder|src2_d\(8) & (\dut_alu|dut_divider_u|A\(7) & !\dut_alu|dut_divider_u|M_sign_not[7]~15\)) # (!\dut_decorder|src2_d\(8) & ((\dut_alu|dut_divider_u|A\(7)) # 
-- (!\dut_alu|dut_divider_u|M_sign_not[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(8),
	datab => \dut_alu|dut_divider_u|A\(7),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[7]~15\,
	combout => \dut_alu|dut_divider_u|M_sign_not[8]~16_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[8]~17\);

-- Location: LCCOMB_X22_Y19_N30
\dut_alu|dut_divider_u|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~9_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(7))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(7),
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|M_sign_not[8]~16_combout\,
	combout => \dut_alu|dut_divider_u|Add0~9_combout\);

-- Location: LCCOMB_X21_Y19_N0
\dut_alu|dut_divider_u|A[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[8]~33_combout\ = ((\dut_alu|dut_divider_u|Add2~8_combout\ $ (\dut_alu|dut_divider_u|Add0~9_combout\ $ (!\dut_alu|dut_divider_u|A[7]~32\)))) # (GND)
-- \dut_alu|dut_divider_u|A[8]~34\ = CARRY((\dut_alu|dut_divider_u|Add2~8_combout\ & ((\dut_alu|dut_divider_u|Add0~9_combout\) # (!\dut_alu|dut_divider_u|A[7]~32\))) # (!\dut_alu|dut_divider_u|Add2~8_combout\ & (\dut_alu|dut_divider_u|Add0~9_combout\ & 
-- !\dut_alu|dut_divider_u|A[7]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~8_combout\,
	datab => \dut_alu|dut_divider_u|Add0~9_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[7]~32\,
	combout => \dut_alu|dut_divider_u|A[8]~33_combout\,
	cout => \dut_alu|dut_divider_u|A[8]~34\);

-- Location: FF_X21_Y19_N1
\dut_alu|dut_divider_u|A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[8]~33_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(8));

-- Location: LCCOMB_X22_Y19_N2
\dut_alu|dut_divider_u|M_sign_not[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[9]~18_combout\ = (\dut_alu|dut_divider_u|A\(8) & ((\dut_decorder|src2_d\(9) & (!\dut_alu|dut_divider_u|M_sign_not[8]~17\)) # (!\dut_decorder|src2_d\(9) & (\dut_alu|dut_divider_u|M_sign_not[8]~17\ & VCC)))) # 
-- (!\dut_alu|dut_divider_u|A\(8) & ((\dut_decorder|src2_d\(9) & ((\dut_alu|dut_divider_u|M_sign_not[8]~17\) # (GND))) # (!\dut_decorder|src2_d\(9) & (!\dut_alu|dut_divider_u|M_sign_not[8]~17\))))
-- \dut_alu|dut_divider_u|M_sign_not[9]~19\ = CARRY((\dut_alu|dut_divider_u|A\(8) & (\dut_decorder|src2_d\(9) & !\dut_alu|dut_divider_u|M_sign_not[8]~17\)) # (!\dut_alu|dut_divider_u|A\(8) & ((\dut_decorder|src2_d\(9)) # 
-- (!\dut_alu|dut_divider_u|M_sign_not[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(8),
	datab => \dut_decorder|src2_d\(9),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[8]~17\,
	combout => \dut_alu|dut_divider_u|M_sign_not[9]~18_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[9]~19\);

-- Location: LCCOMB_X21_Y19_N28
\dut_alu|dut_divider_u|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~8_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(8)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|M_sign_not[9]~18_combout\,
	datab => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|A\(8),
	combout => \dut_alu|dut_divider_u|Add0~8_combout\);

-- Location: LCCOMB_X21_Y19_N2
\dut_alu|dut_divider_u|A[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[9]~35_combout\ = (\dut_alu|dut_divider_u|Add2~7_combout\ & ((\dut_alu|dut_divider_u|Add0~8_combout\ & (\dut_alu|dut_divider_u|A[8]~34\ & VCC)) # (!\dut_alu|dut_divider_u|Add0~8_combout\ & (!\dut_alu|dut_divider_u|A[8]~34\)))) # 
-- (!\dut_alu|dut_divider_u|Add2~7_combout\ & ((\dut_alu|dut_divider_u|Add0~8_combout\ & (!\dut_alu|dut_divider_u|A[8]~34\)) # (!\dut_alu|dut_divider_u|Add0~8_combout\ & ((\dut_alu|dut_divider_u|A[8]~34\) # (GND)))))
-- \dut_alu|dut_divider_u|A[9]~36\ = CARRY((\dut_alu|dut_divider_u|Add2~7_combout\ & (!\dut_alu|dut_divider_u|Add0~8_combout\ & !\dut_alu|dut_divider_u|A[8]~34\)) # (!\dut_alu|dut_divider_u|Add2~7_combout\ & ((!\dut_alu|dut_divider_u|A[8]~34\) # 
-- (!\dut_alu|dut_divider_u|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~7_combout\,
	datab => \dut_alu|dut_divider_u|Add0~8_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[8]~34\,
	combout => \dut_alu|dut_divider_u|A[9]~35_combout\,
	cout => \dut_alu|dut_divider_u|A[9]~36\);

-- Location: FF_X21_Y19_N3
\dut_alu|dut_divider_u|A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[9]~35_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(9));

-- Location: LCCOMB_X22_Y19_N4
\dut_alu|dut_divider_u|M_sign_not[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[10]~20_combout\ = ((\dut_alu|dut_divider_u|A\(9) $ (\dut_decorder|src2_d\(10) $ (\dut_alu|dut_divider_u|M_sign_not[9]~19\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[10]~21\ = CARRY((\dut_alu|dut_divider_u|A\(9) & ((!\dut_alu|dut_divider_u|M_sign_not[9]~19\) # (!\dut_decorder|src2_d\(10)))) # (!\dut_alu|dut_divider_u|A\(9) & (!\dut_decorder|src2_d\(10) & 
-- !\dut_alu|dut_divider_u|M_sign_not[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(9),
	datab => \dut_decorder|src2_d\(10),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[9]~19\,
	combout => \dut_alu|dut_divider_u|M_sign_not[10]~20_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[10]~21\);

-- Location: LCCOMB_X21_Y19_N26
\dut_alu|dut_divider_u|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~7_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(9)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|M_sign_not[10]~20_combout\,
	datab => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|A\(9),
	combout => \dut_alu|dut_divider_u|Add0~7_combout\);

-- Location: LCCOMB_X22_Y21_N4
\dut_alu|dut_divider_u|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~6_combout\ = (\dut_decorder|src2_d\(10) & \dut_alu|dut_divider_u|A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_decorder|src2_d\(10),
	datac => \dut_alu|dut_divider_u|A\(16),
	combout => \dut_alu|dut_divider_u|Add2~6_combout\);

-- Location: LCCOMB_X21_Y19_N4
\dut_alu|dut_divider_u|A[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[10]~37_combout\ = ((\dut_alu|dut_divider_u|Add0~7_combout\ $ (\dut_alu|dut_divider_u|Add2~6_combout\ $ (!\dut_alu|dut_divider_u|A[9]~36\)))) # (GND)
-- \dut_alu|dut_divider_u|A[10]~38\ = CARRY((\dut_alu|dut_divider_u|Add0~7_combout\ & ((\dut_alu|dut_divider_u|Add2~6_combout\) # (!\dut_alu|dut_divider_u|A[9]~36\))) # (!\dut_alu|dut_divider_u|Add0~7_combout\ & (\dut_alu|dut_divider_u|Add2~6_combout\ & 
-- !\dut_alu|dut_divider_u|A[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~7_combout\,
	datab => \dut_alu|dut_divider_u|Add2~6_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[9]~36\,
	combout => \dut_alu|dut_divider_u|A[10]~37_combout\,
	cout => \dut_alu|dut_divider_u|A[10]~38\);

-- Location: FF_X21_Y19_N5
\dut_alu|dut_divider_u|A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[10]~37_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(10));

-- Location: LCCOMB_X22_Y19_N6
\dut_alu|dut_divider_u|M_sign_not[11]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[11]~22_combout\ = (\dut_decorder|src2_d\(11) & ((\dut_alu|dut_divider_u|A\(10) & (!\dut_alu|dut_divider_u|M_sign_not[10]~21\)) # (!\dut_alu|dut_divider_u|A\(10) & ((\dut_alu|dut_divider_u|M_sign_not[10]~21\) # (GND))))) # 
-- (!\dut_decorder|src2_d\(11) & ((\dut_alu|dut_divider_u|A\(10) & (\dut_alu|dut_divider_u|M_sign_not[10]~21\ & VCC)) # (!\dut_alu|dut_divider_u|A\(10) & (!\dut_alu|dut_divider_u|M_sign_not[10]~21\))))
-- \dut_alu|dut_divider_u|M_sign_not[11]~23\ = CARRY((\dut_decorder|src2_d\(11) & ((!\dut_alu|dut_divider_u|M_sign_not[10]~21\) # (!\dut_alu|dut_divider_u|A\(10)))) # (!\dut_decorder|src2_d\(11) & (!\dut_alu|dut_divider_u|A\(10) & 
-- !\dut_alu|dut_divider_u|M_sign_not[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(11),
	datab => \dut_alu|dut_divider_u|A\(10),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[10]~21\,
	combout => \dut_alu|dut_divider_u|M_sign_not[11]~22_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[11]~23\);

-- Location: LCCOMB_X21_Y19_N24
\dut_alu|dut_divider_u|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~6_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(10))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|A\(10),
	datad => \dut_alu|dut_divider_u|M_sign_not[11]~22_combout\,
	combout => \dut_alu|dut_divider_u|Add0~6_combout\);

-- Location: LCCOMB_X21_Y19_N6
\dut_alu|dut_divider_u|A[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[11]~39_combout\ = (\dut_alu|dut_divider_u|Add2~5_combout\ & ((\dut_alu|dut_divider_u|Add0~6_combout\ & (\dut_alu|dut_divider_u|A[10]~38\ & VCC)) # (!\dut_alu|dut_divider_u|Add0~6_combout\ & (!\dut_alu|dut_divider_u|A[10]~38\)))) # 
-- (!\dut_alu|dut_divider_u|Add2~5_combout\ & ((\dut_alu|dut_divider_u|Add0~6_combout\ & (!\dut_alu|dut_divider_u|A[10]~38\)) # (!\dut_alu|dut_divider_u|Add0~6_combout\ & ((\dut_alu|dut_divider_u|A[10]~38\) # (GND)))))
-- \dut_alu|dut_divider_u|A[11]~40\ = CARRY((\dut_alu|dut_divider_u|Add2~5_combout\ & (!\dut_alu|dut_divider_u|Add0~6_combout\ & !\dut_alu|dut_divider_u|A[10]~38\)) # (!\dut_alu|dut_divider_u|Add2~5_combout\ & ((!\dut_alu|dut_divider_u|A[10]~38\) # 
-- (!\dut_alu|dut_divider_u|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~5_combout\,
	datab => \dut_alu|dut_divider_u|Add0~6_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[10]~38\,
	combout => \dut_alu|dut_divider_u|A[11]~39_combout\,
	cout => \dut_alu|dut_divider_u|A[11]~40\);

-- Location: FF_X21_Y19_N7
\dut_alu|dut_divider_u|A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[11]~39_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(11));

-- Location: LCCOMB_X22_Y19_N8
\dut_alu|dut_divider_u|M_sign_not[12]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[12]~24_combout\ = ((\dut_alu|dut_divider_u|A\(11) $ (\dut_decorder|src2_d\(12) $ (\dut_alu|dut_divider_u|M_sign_not[11]~23\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[12]~25\ = CARRY((\dut_alu|dut_divider_u|A\(11) & ((!\dut_alu|dut_divider_u|M_sign_not[11]~23\) # (!\dut_decorder|src2_d\(12)))) # (!\dut_alu|dut_divider_u|A\(11) & (!\dut_decorder|src2_d\(12) & 
-- !\dut_alu|dut_divider_u|M_sign_not[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(11),
	datab => \dut_decorder|src2_d\(12),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[11]~23\,
	combout => \dut_alu|dut_divider_u|M_sign_not[12]~24_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[12]~25\);

-- Location: LCCOMB_X22_Y19_N24
\dut_alu|dut_divider_u|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~5_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(11)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[12]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|M_sign_not[12]~24_combout\,
	datad => \dut_alu|dut_divider_u|A\(11),
	combout => \dut_alu|dut_divider_u|Add0~5_combout\);

-- Location: LCCOMB_X21_Y19_N8
\dut_alu|dut_divider_u|A[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[12]~41_combout\ = ((\dut_alu|dut_divider_u|Add2~4_combout\ $ (\dut_alu|dut_divider_u|Add0~5_combout\ $ (!\dut_alu|dut_divider_u|A[11]~40\)))) # (GND)
-- \dut_alu|dut_divider_u|A[12]~42\ = CARRY((\dut_alu|dut_divider_u|Add2~4_combout\ & ((\dut_alu|dut_divider_u|Add0~5_combout\) # (!\dut_alu|dut_divider_u|A[11]~40\))) # (!\dut_alu|dut_divider_u|Add2~4_combout\ & (\dut_alu|dut_divider_u|Add0~5_combout\ & 
-- !\dut_alu|dut_divider_u|A[11]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~4_combout\,
	datab => \dut_alu|dut_divider_u|Add0~5_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[11]~40\,
	combout => \dut_alu|dut_divider_u|A[12]~41_combout\,
	cout => \dut_alu|dut_divider_u|A[12]~42\);

-- Location: FF_X21_Y19_N9
\dut_alu|dut_divider_u|A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[12]~41_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(12));

-- Location: LCCOMB_X22_Y19_N10
\dut_alu|dut_divider_u|M_sign_not[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[13]~26_combout\ = (\dut_alu|dut_divider_u|A\(12) & ((\dut_decorder|src2_d\(13) & (!\dut_alu|dut_divider_u|M_sign_not[12]~25\)) # (!\dut_decorder|src2_d\(13) & (\dut_alu|dut_divider_u|M_sign_not[12]~25\ & VCC)))) # 
-- (!\dut_alu|dut_divider_u|A\(12) & ((\dut_decorder|src2_d\(13) & ((\dut_alu|dut_divider_u|M_sign_not[12]~25\) # (GND))) # (!\dut_decorder|src2_d\(13) & (!\dut_alu|dut_divider_u|M_sign_not[12]~25\))))
-- \dut_alu|dut_divider_u|M_sign_not[13]~27\ = CARRY((\dut_alu|dut_divider_u|A\(12) & (\dut_decorder|src2_d\(13) & !\dut_alu|dut_divider_u|M_sign_not[12]~25\)) # (!\dut_alu|dut_divider_u|A\(12) & ((\dut_decorder|src2_d\(13)) # 
-- (!\dut_alu|dut_divider_u|M_sign_not[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(12),
	datab => \dut_decorder|src2_d\(13),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[12]~25\,
	combout => \dut_alu|dut_divider_u|M_sign_not[13]~26_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[13]~27\);

-- Location: LCCOMB_X22_Y19_N22
\dut_alu|dut_divider_u|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~4_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(12))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(12),
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|M_sign_not[13]~26_combout\,
	combout => \dut_alu|dut_divider_u|Add0~4_combout\);

-- Location: LCCOMB_X21_Y19_N10
\dut_alu|dut_divider_u|A[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[13]~43_combout\ = (\dut_alu|dut_divider_u|Add2~3_combout\ & ((\dut_alu|dut_divider_u|Add0~4_combout\ & (\dut_alu|dut_divider_u|A[12]~42\ & VCC)) # (!\dut_alu|dut_divider_u|Add0~4_combout\ & (!\dut_alu|dut_divider_u|A[12]~42\)))) # 
-- (!\dut_alu|dut_divider_u|Add2~3_combout\ & ((\dut_alu|dut_divider_u|Add0~4_combout\ & (!\dut_alu|dut_divider_u|A[12]~42\)) # (!\dut_alu|dut_divider_u|Add0~4_combout\ & ((\dut_alu|dut_divider_u|A[12]~42\) # (GND)))))
-- \dut_alu|dut_divider_u|A[13]~44\ = CARRY((\dut_alu|dut_divider_u|Add2~3_combout\ & (!\dut_alu|dut_divider_u|Add0~4_combout\ & !\dut_alu|dut_divider_u|A[12]~42\)) # (!\dut_alu|dut_divider_u|Add2~3_combout\ & ((!\dut_alu|dut_divider_u|A[12]~42\) # 
-- (!\dut_alu|dut_divider_u|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~3_combout\,
	datab => \dut_alu|dut_divider_u|Add0~4_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[12]~42\,
	combout => \dut_alu|dut_divider_u|A[13]~43_combout\,
	cout => \dut_alu|dut_divider_u|A[13]~44\);

-- Location: FF_X21_Y19_N11
\dut_alu|dut_divider_u|A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[13]~43_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(13));

-- Location: LCCOMB_X22_Y19_N12
\dut_alu|dut_divider_u|M_sign_not[14]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[14]~28_combout\ = ((\dut_decorder|src2_d\(14) $ (\dut_alu|dut_divider_u|A\(13) $ (\dut_alu|dut_divider_u|M_sign_not[13]~27\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[14]~29\ = CARRY((\dut_decorder|src2_d\(14) & (\dut_alu|dut_divider_u|A\(13) & !\dut_alu|dut_divider_u|M_sign_not[13]~27\)) # (!\dut_decorder|src2_d\(14) & ((\dut_alu|dut_divider_u|A\(13)) # 
-- (!\dut_alu|dut_divider_u|M_sign_not[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(14),
	datab => \dut_alu|dut_divider_u|A\(13),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[13]~27\,
	combout => \dut_alu|dut_divider_u|M_sign_not[14]~28_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[14]~29\);

-- Location: LCCOMB_X21_Y19_N20
\dut_alu|dut_divider_u|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~3_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(13)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|M_sign_not[14]~28_combout\,
	datad => \dut_alu|dut_divider_u|A\(13),
	combout => \dut_alu|dut_divider_u|Add0~3_combout\);

-- Location: LCCOMB_X21_Y19_N18
\dut_alu|dut_divider_u|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~2_combout\ = (\dut_decorder|src2_d\(14) & \dut_alu|dut_divider_u|A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(14),
	datad => \dut_alu|dut_divider_u|A\(16),
	combout => \dut_alu|dut_divider_u|Add2~2_combout\);

-- Location: LCCOMB_X21_Y19_N12
\dut_alu|dut_divider_u|A[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[14]~45_combout\ = ((\dut_alu|dut_divider_u|Add0~3_combout\ $ (\dut_alu|dut_divider_u|Add2~2_combout\ $ (!\dut_alu|dut_divider_u|A[13]~44\)))) # (GND)
-- \dut_alu|dut_divider_u|A[14]~46\ = CARRY((\dut_alu|dut_divider_u|Add0~3_combout\ & ((\dut_alu|dut_divider_u|Add2~2_combout\) # (!\dut_alu|dut_divider_u|A[13]~44\))) # (!\dut_alu|dut_divider_u|Add0~3_combout\ & (\dut_alu|dut_divider_u|Add2~2_combout\ & 
-- !\dut_alu|dut_divider_u|A[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~3_combout\,
	datab => \dut_alu|dut_divider_u|Add2~2_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[13]~44\,
	combout => \dut_alu|dut_divider_u|A[14]~45_combout\,
	cout => \dut_alu|dut_divider_u|A[14]~46\);

-- Location: FF_X21_Y19_N13
\dut_alu|dut_divider_u|A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[14]~45_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(14));

-- Location: LCCOMB_X22_Y19_N14
\dut_alu|dut_divider_u|M_sign_not[15]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[15]~30_combout\ = (\dut_alu|dut_divider_u|A\(14) & ((\dut_decorder|src2_d\(15) & (!\dut_alu|dut_divider_u|M_sign_not[14]~29\)) # (!\dut_decorder|src2_d\(15) & (\dut_alu|dut_divider_u|M_sign_not[14]~29\ & VCC)))) # 
-- (!\dut_alu|dut_divider_u|A\(14) & ((\dut_decorder|src2_d\(15) & ((\dut_alu|dut_divider_u|M_sign_not[14]~29\) # (GND))) # (!\dut_decorder|src2_d\(15) & (!\dut_alu|dut_divider_u|M_sign_not[14]~29\))))
-- \dut_alu|dut_divider_u|M_sign_not[15]~31\ = CARRY((\dut_alu|dut_divider_u|A\(14) & (\dut_decorder|src2_d\(15) & !\dut_alu|dut_divider_u|M_sign_not[14]~29\)) # (!\dut_alu|dut_divider_u|A\(14) & ((\dut_decorder|src2_d\(15)) # 
-- (!\dut_alu|dut_divider_u|M_sign_not[14]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(14),
	datab => \dut_decorder|src2_d\(15),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[14]~29\,
	combout => \dut_alu|dut_divider_u|M_sign_not[15]~30_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[15]~31\);

-- Location: LCCOMB_X22_Y19_N20
\dut_alu|dut_divider_u|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~2_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(14)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|M_sign_not[15]~30_combout\,
	datad => \dut_alu|dut_divider_u|A\(14),
	combout => \dut_alu|dut_divider_u|Add0~2_combout\);

-- Location: LCCOMB_X22_Y21_N26
\dut_alu|dut_divider_u|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~1_combout\ = (\dut_alu|dut_divider_u|A\(16) & \dut_decorder|src2_d\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_decorder|src2_d\(15),
	combout => \dut_alu|dut_divider_u|Add2~1_combout\);

-- Location: LCCOMB_X21_Y19_N14
\dut_alu|dut_divider_u|A[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[15]~47_combout\ = (\dut_alu|dut_divider_u|Add0~2_combout\ & ((\dut_alu|dut_divider_u|Add2~1_combout\ & (\dut_alu|dut_divider_u|A[14]~46\ & VCC)) # (!\dut_alu|dut_divider_u|Add2~1_combout\ & (!\dut_alu|dut_divider_u|A[14]~46\)))) # 
-- (!\dut_alu|dut_divider_u|Add0~2_combout\ & ((\dut_alu|dut_divider_u|Add2~1_combout\ & (!\dut_alu|dut_divider_u|A[14]~46\)) # (!\dut_alu|dut_divider_u|Add2~1_combout\ & ((\dut_alu|dut_divider_u|A[14]~46\) # (GND)))))
-- \dut_alu|dut_divider_u|A[15]~48\ = CARRY((\dut_alu|dut_divider_u|Add0~2_combout\ & (!\dut_alu|dut_divider_u|Add2~1_combout\ & !\dut_alu|dut_divider_u|A[14]~46\)) # (!\dut_alu|dut_divider_u|Add0~2_combout\ & ((!\dut_alu|dut_divider_u|A[14]~46\) # 
-- (!\dut_alu|dut_divider_u|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~2_combout\,
	datab => \dut_alu|dut_divider_u|Add2~1_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[14]~46\,
	combout => \dut_alu|dut_divider_u|A[15]~47_combout\,
	cout => \dut_alu|dut_divider_u|A[15]~48\);

-- Location: FF_X21_Y19_N15
\dut_alu|dut_divider_u|A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[15]~47_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(15));

-- Location: LCCOMB_X22_Y19_N16
\dut_alu|dut_divider_u|M_sign_not[16]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[16]~32_combout\ = \dut_alu|dut_divider_u|M_sign_not[15]~31\ $ (!\dut_alu|dut_divider_u|A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_divider_u|A\(15),
	cin => \dut_alu|dut_divider_u|M_sign_not[15]~31\,
	combout => \dut_alu|dut_divider_u|M_sign_not[16]~32_combout\);

-- Location: LCCOMB_X22_Y19_N18
\dut_alu|dut_divider_u|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~1_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(15))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[16]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(15),
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|M_sign_not[16]~32_combout\,
	combout => \dut_alu|dut_divider_u|Add0~1_combout\);

-- Location: LCCOMB_X21_Y19_N16
\dut_alu|dut_divider_u|A[16]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[16]~49_combout\ = \dut_alu|dut_divider_u|A\(16) $ (\dut_alu|dut_divider_u|A[15]~48\ $ (\dut_alu|dut_divider_u|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|Add0~1_combout\,
	cin => \dut_alu|dut_divider_u|A[15]~48\,
	combout => \dut_alu|dut_divider_u|A[16]~49_combout\);

-- Location: FF_X21_Y19_N17
\dut_alu|dut_divider_u|A[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[16]~49_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(16));

-- Location: LCCOMB_X22_Y20_N4
\dut_alu|dut_divider_u|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~0_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|q\(15)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datab => \dut_alu|dut_divider_u|M_sign_not[0]~0_combout\,
	datad => \dut_alu|dut_divider_u|q\(15),
	combout => \dut_alu|dut_divider_u|Add0~0_combout\);

-- Location: FF_X21_Y20_N17
\dut_alu|dut_divider_u|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[0]~17_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(0));

-- Location: LCCOMB_X20_Y20_N0
\dut_alu|dut_divider_u|result[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[0]~16_combout\ = (\dut_decorder|src2_d\(0) & (\dut_alu|dut_divider_u|A\(0) $ (VCC))) # (!\dut_decorder|src2_d\(0) & (\dut_alu|dut_divider_u|A\(0) & VCC))
-- \dut_alu|dut_divider_u|result[0]~17\ = CARRY((\dut_decorder|src2_d\(0) & \dut_alu|dut_divider_u|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(0),
	datab => \dut_alu|dut_divider_u|A\(0),
	datad => VCC,
	combout => \dut_alu|dut_divider_u|result[0]~16_combout\,
	cout => \dut_alu|dut_divider_u|result[0]~17\);

-- Location: LCCOMB_X19_Y20_N6
\dut_alu|dut_divider_u|result~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result~18_combout\ = (\dut_alu|dut_divider_u|count\(4) & (!\dut_alu|dut_divider_u|Equal0~0_combout\ & !\dut_alu|dut_divider_u|A\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|count\(4),
	datac => \dut_alu|dut_divider_u|Equal0~0_combout\,
	datad => \dut_alu|dut_divider_u|A\(16),
	combout => \dut_alu|dut_divider_u|result~18_combout\);

-- Location: FF_X20_Y20_N1
\dut_alu|dut_divider_u|result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[0]~16_combout\,
	asdata => \dut_alu|dut_divider_u|A\(0),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(0));

-- Location: LCCOMB_X26_Y21_N8
\dut_alu|dut_mul_s|q0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q0~0_combout\ = (\dut_alu|dut_mul_s|state~q\ & \dut_alu|dut_mul_s|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|state~q\,
	datac => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|q0~0_combout\);

-- Location: FF_X26_Y21_N9
\dut_alu|dut_mul_s|q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q0~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q0~q\);

-- Location: LCCOMB_X26_Y22_N0
\dut_alu|dut_mul_s|m_not[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[0]~0_combout\ = (\dut_alu|dut_mul_s|A\(0) & ((GND) # (!\dut_decorder|src1_d\(0)))) # (!\dut_alu|dut_mul_s|A\(0) & (\dut_decorder|src1_d\(0) $ (GND)))
-- \dut_alu|dut_mul_s|m_not[0]~1\ = CARRY((\dut_alu|dut_mul_s|A\(0)) # (!\dut_decorder|src1_d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(0),
	datab => \dut_decorder|src1_d\(0),
	datad => VCC,
	combout => \dut_alu|dut_mul_s|m_not[0]~0_combout\,
	cout => \dut_alu|dut_mul_s|m_not[0]~1\);

-- Location: LCCOMB_X26_Y22_N2
\dut_alu|dut_mul_s|m_not[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[1]~2_combout\ = (\dut_decorder|src1_d\(1) & ((\dut_alu|dut_mul_s|A\(1) & (!\dut_alu|dut_mul_s|m_not[0]~1\)) # (!\dut_alu|dut_mul_s|A\(1) & ((\dut_alu|dut_mul_s|m_not[0]~1\) # (GND))))) # (!\dut_decorder|src1_d\(1) & 
-- ((\dut_alu|dut_mul_s|A\(1) & (\dut_alu|dut_mul_s|m_not[0]~1\ & VCC)) # (!\dut_alu|dut_mul_s|A\(1) & (!\dut_alu|dut_mul_s|m_not[0]~1\))))
-- \dut_alu|dut_mul_s|m_not[1]~3\ = CARRY((\dut_decorder|src1_d\(1) & ((!\dut_alu|dut_mul_s|m_not[0]~1\) # (!\dut_alu|dut_mul_s|A\(1)))) # (!\dut_decorder|src1_d\(1) & (!\dut_alu|dut_mul_s|A\(1) & !\dut_alu|dut_mul_s|m_not[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(1),
	datab => \dut_alu|dut_mul_s|A\(1),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[0]~1\,
	combout => \dut_alu|dut_mul_s|m_not[1]~2_combout\,
	cout => \dut_alu|dut_mul_s|m_not[1]~3\);

-- Location: LCCOMB_X26_Y22_N4
\dut_alu|dut_mul_s|m_not[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[2]~4_combout\ = ((\dut_alu|dut_mul_s|A\(2) $ (\dut_decorder|src1_d\(2) $ (\dut_alu|dut_mul_s|m_not[1]~3\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[2]~5\ = CARRY((\dut_alu|dut_mul_s|A\(2) & ((!\dut_alu|dut_mul_s|m_not[1]~3\) # (!\dut_decorder|src1_d\(2)))) # (!\dut_alu|dut_mul_s|A\(2) & (!\dut_decorder|src1_d\(2) & !\dut_alu|dut_mul_s|m_not[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(2),
	datab => \dut_decorder|src1_d\(2),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[1]~3\,
	combout => \dut_alu|dut_mul_s|m_not[2]~4_combout\,
	cout => \dut_alu|dut_mul_s|m_not[2]~5\);

-- Location: LCCOMB_X26_Y22_N6
\dut_alu|dut_mul_s|m_not[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[3]~6_combout\ = (\dut_alu|dut_mul_s|A\(3) & ((\dut_decorder|src1_d\(3) & (!\dut_alu|dut_mul_s|m_not[2]~5\)) # (!\dut_decorder|src1_d\(3) & (\dut_alu|dut_mul_s|m_not[2]~5\ & VCC)))) # (!\dut_alu|dut_mul_s|A\(3) & 
-- ((\dut_decorder|src1_d\(3) & ((\dut_alu|dut_mul_s|m_not[2]~5\) # (GND))) # (!\dut_decorder|src1_d\(3) & (!\dut_alu|dut_mul_s|m_not[2]~5\))))
-- \dut_alu|dut_mul_s|m_not[3]~7\ = CARRY((\dut_alu|dut_mul_s|A\(3) & (\dut_decorder|src1_d\(3) & !\dut_alu|dut_mul_s|m_not[2]~5\)) # (!\dut_alu|dut_mul_s|A\(3) & ((\dut_decorder|src1_d\(3)) # (!\dut_alu|dut_mul_s|m_not[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(3),
	datab => \dut_decorder|src1_d\(3),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[2]~5\,
	combout => \dut_alu|dut_mul_s|m_not[3]~6_combout\,
	cout => \dut_alu|dut_mul_s|m_not[3]~7\);

-- Location: LCCOMB_X26_Y22_N8
\dut_alu|dut_mul_s|m_not[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[4]~8_combout\ = ((\dut_alu|dut_mul_s|A\(4) $ (\dut_decorder|src1_d\(4) $ (\dut_alu|dut_mul_s|m_not[3]~7\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[4]~9\ = CARRY((\dut_alu|dut_mul_s|A\(4) & ((!\dut_alu|dut_mul_s|m_not[3]~7\) # (!\dut_decorder|src1_d\(4)))) # (!\dut_alu|dut_mul_s|A\(4) & (!\dut_decorder|src1_d\(4) & !\dut_alu|dut_mul_s|m_not[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(4),
	datab => \dut_decorder|src1_d\(4),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[3]~7\,
	combout => \dut_alu|dut_mul_s|m_not[4]~8_combout\,
	cout => \dut_alu|dut_mul_s|m_not[4]~9\);

-- Location: LCCOMB_X26_Y22_N10
\dut_alu|dut_mul_s|m_not[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[5]~10_combout\ = (\dut_decorder|src1_d\(5) & ((\dut_alu|dut_mul_s|A\(5) & (!\dut_alu|dut_mul_s|m_not[4]~9\)) # (!\dut_alu|dut_mul_s|A\(5) & ((\dut_alu|dut_mul_s|m_not[4]~9\) # (GND))))) # (!\dut_decorder|src1_d\(5) & 
-- ((\dut_alu|dut_mul_s|A\(5) & (\dut_alu|dut_mul_s|m_not[4]~9\ & VCC)) # (!\dut_alu|dut_mul_s|A\(5) & (!\dut_alu|dut_mul_s|m_not[4]~9\))))
-- \dut_alu|dut_mul_s|m_not[5]~11\ = CARRY((\dut_decorder|src1_d\(5) & ((!\dut_alu|dut_mul_s|m_not[4]~9\) # (!\dut_alu|dut_mul_s|A\(5)))) # (!\dut_decorder|src1_d\(5) & (!\dut_alu|dut_mul_s|A\(5) & !\dut_alu|dut_mul_s|m_not[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(5),
	datab => \dut_alu|dut_mul_s|A\(5),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[4]~9\,
	combout => \dut_alu|dut_mul_s|m_not[5]~10_combout\,
	cout => \dut_alu|dut_mul_s|m_not[5]~11\);

-- Location: LCCOMB_X26_Y22_N12
\dut_alu|dut_mul_s|m_not[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[6]~12_combout\ = ((\dut_decorder|src1_d\(6) $ (\dut_alu|dut_mul_s|A\(6) $ (\dut_alu|dut_mul_s|m_not[5]~11\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[6]~13\ = CARRY((\dut_decorder|src1_d\(6) & (\dut_alu|dut_mul_s|A\(6) & !\dut_alu|dut_mul_s|m_not[5]~11\)) # (!\dut_decorder|src1_d\(6) & ((\dut_alu|dut_mul_s|A\(6)) # (!\dut_alu|dut_mul_s|m_not[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(6),
	datab => \dut_alu|dut_mul_s|A\(6),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[5]~11\,
	combout => \dut_alu|dut_mul_s|m_not[6]~12_combout\,
	cout => \dut_alu|dut_mul_s|m_not[6]~13\);

-- Location: LCCOMB_X26_Y22_N14
\dut_alu|dut_mul_s|m_not[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[7]~14_combout\ = (\dut_decorder|src1_d\(7) & ((\dut_alu|dut_mul_s|A\(7) & (!\dut_alu|dut_mul_s|m_not[6]~13\)) # (!\dut_alu|dut_mul_s|A\(7) & ((\dut_alu|dut_mul_s|m_not[6]~13\) # (GND))))) # (!\dut_decorder|src1_d\(7) & 
-- ((\dut_alu|dut_mul_s|A\(7) & (\dut_alu|dut_mul_s|m_not[6]~13\ & VCC)) # (!\dut_alu|dut_mul_s|A\(7) & (!\dut_alu|dut_mul_s|m_not[6]~13\))))
-- \dut_alu|dut_mul_s|m_not[7]~15\ = CARRY((\dut_decorder|src1_d\(7) & ((!\dut_alu|dut_mul_s|m_not[6]~13\) # (!\dut_alu|dut_mul_s|A\(7)))) # (!\dut_decorder|src1_d\(7) & (!\dut_alu|dut_mul_s|A\(7) & !\dut_alu|dut_mul_s|m_not[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(7),
	datab => \dut_alu|dut_mul_s|A\(7),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[6]~13\,
	combout => \dut_alu|dut_mul_s|m_not[7]~14_combout\,
	cout => \dut_alu|dut_mul_s|m_not[7]~15\);

-- Location: LCCOMB_X26_Y22_N16
\dut_alu|dut_mul_s|m_not[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[8]~16_combout\ = ((\dut_decorder|src1_d\(8) $ (\dut_alu|dut_mul_s|A\(8) $ (\dut_alu|dut_mul_s|m_not[7]~15\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[8]~17\ = CARRY((\dut_decorder|src1_d\(8) & (\dut_alu|dut_mul_s|A\(8) & !\dut_alu|dut_mul_s|m_not[7]~15\)) # (!\dut_decorder|src1_d\(8) & ((\dut_alu|dut_mul_s|A\(8)) # (!\dut_alu|dut_mul_s|m_not[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(8),
	datab => \dut_alu|dut_mul_s|A\(8),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[7]~15\,
	combout => \dut_alu|dut_mul_s|m_not[8]~16_combout\,
	cout => \dut_alu|dut_mul_s|m_not[8]~17\);

-- Location: LCCOMB_X26_Y22_N18
\dut_alu|dut_mul_s|m_not[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[9]~18_combout\ = (\dut_alu|dut_mul_s|A\(9) & ((\dut_decorder|src1_d\(9) & (!\dut_alu|dut_mul_s|m_not[8]~17\)) # (!\dut_decorder|src1_d\(9) & (\dut_alu|dut_mul_s|m_not[8]~17\ & VCC)))) # (!\dut_alu|dut_mul_s|A\(9) & 
-- ((\dut_decorder|src1_d\(9) & ((\dut_alu|dut_mul_s|m_not[8]~17\) # (GND))) # (!\dut_decorder|src1_d\(9) & (!\dut_alu|dut_mul_s|m_not[8]~17\))))
-- \dut_alu|dut_mul_s|m_not[9]~19\ = CARRY((\dut_alu|dut_mul_s|A\(9) & (\dut_decorder|src1_d\(9) & !\dut_alu|dut_mul_s|m_not[8]~17\)) # (!\dut_alu|dut_mul_s|A\(9) & ((\dut_decorder|src1_d\(9)) # (!\dut_alu|dut_mul_s|m_not[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(9),
	datab => \dut_decorder|src1_d\(9),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[8]~17\,
	combout => \dut_alu|dut_mul_s|m_not[9]~18_combout\,
	cout => \dut_alu|dut_mul_s|m_not[9]~19\);

-- Location: LCCOMB_X26_Y22_N20
\dut_alu|dut_mul_s|m_not[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[10]~20_combout\ = ((\dut_alu|dut_mul_s|A\(10) $ (\dut_decorder|src1_d\(10) $ (\dut_alu|dut_mul_s|m_not[9]~19\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[10]~21\ = CARRY((\dut_alu|dut_mul_s|A\(10) & ((!\dut_alu|dut_mul_s|m_not[9]~19\) # (!\dut_decorder|src1_d\(10)))) # (!\dut_alu|dut_mul_s|A\(10) & (!\dut_decorder|src1_d\(10) & !\dut_alu|dut_mul_s|m_not[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(10),
	datab => \dut_decorder|src1_d\(10),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[9]~19\,
	combout => \dut_alu|dut_mul_s|m_not[10]~20_combout\,
	cout => \dut_alu|dut_mul_s|m_not[10]~21\);

-- Location: LCCOMB_X26_Y22_N22
\dut_alu|dut_mul_s|m_not[11]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[11]~22_combout\ = (\dut_alu|dut_mul_s|A\(11) & ((\dut_decorder|src1_d\(11) & (!\dut_alu|dut_mul_s|m_not[10]~21\)) # (!\dut_decorder|src1_d\(11) & (\dut_alu|dut_mul_s|m_not[10]~21\ & VCC)))) # (!\dut_alu|dut_mul_s|A\(11) & 
-- ((\dut_decorder|src1_d\(11) & ((\dut_alu|dut_mul_s|m_not[10]~21\) # (GND))) # (!\dut_decorder|src1_d\(11) & (!\dut_alu|dut_mul_s|m_not[10]~21\))))
-- \dut_alu|dut_mul_s|m_not[11]~23\ = CARRY((\dut_alu|dut_mul_s|A\(11) & (\dut_decorder|src1_d\(11) & !\dut_alu|dut_mul_s|m_not[10]~21\)) # (!\dut_alu|dut_mul_s|A\(11) & ((\dut_decorder|src1_d\(11)) # (!\dut_alu|dut_mul_s|m_not[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(11),
	datab => \dut_decorder|src1_d\(11),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[10]~21\,
	combout => \dut_alu|dut_mul_s|m_not[11]~22_combout\,
	cout => \dut_alu|dut_mul_s|m_not[11]~23\);

-- Location: LCCOMB_X26_Y22_N24
\dut_alu|dut_mul_s|m_not[12]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[12]~24_combout\ = ((\dut_decorder|src1_d\(12) $ (\dut_alu|dut_mul_s|A\(12) $ (\dut_alu|dut_mul_s|m_not[11]~23\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[12]~25\ = CARRY((\dut_decorder|src1_d\(12) & (\dut_alu|dut_mul_s|A\(12) & !\dut_alu|dut_mul_s|m_not[11]~23\)) # (!\dut_decorder|src1_d\(12) & ((\dut_alu|dut_mul_s|A\(12)) # (!\dut_alu|dut_mul_s|m_not[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(12),
	datab => \dut_alu|dut_mul_s|A\(12),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[11]~23\,
	combout => \dut_alu|dut_mul_s|m_not[12]~24_combout\,
	cout => \dut_alu|dut_mul_s|m_not[12]~25\);

-- Location: LCCOMB_X26_Y22_N26
\dut_alu|dut_mul_s|m_not[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[13]~26_combout\ = (\dut_decorder|src1_d\(13) & ((\dut_alu|dut_mul_s|A\(13) & (!\dut_alu|dut_mul_s|m_not[12]~25\)) # (!\dut_alu|dut_mul_s|A\(13) & ((\dut_alu|dut_mul_s|m_not[12]~25\) # (GND))))) # (!\dut_decorder|src1_d\(13) & 
-- ((\dut_alu|dut_mul_s|A\(13) & (\dut_alu|dut_mul_s|m_not[12]~25\ & VCC)) # (!\dut_alu|dut_mul_s|A\(13) & (!\dut_alu|dut_mul_s|m_not[12]~25\))))
-- \dut_alu|dut_mul_s|m_not[13]~27\ = CARRY((\dut_decorder|src1_d\(13) & ((!\dut_alu|dut_mul_s|m_not[12]~25\) # (!\dut_alu|dut_mul_s|A\(13)))) # (!\dut_decorder|src1_d\(13) & (!\dut_alu|dut_mul_s|A\(13) & !\dut_alu|dut_mul_s|m_not[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(13),
	datab => \dut_alu|dut_mul_s|A\(13),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[12]~25\,
	combout => \dut_alu|dut_mul_s|m_not[13]~26_combout\,
	cout => \dut_alu|dut_mul_s|m_not[13]~27\);

-- Location: LCCOMB_X26_Y22_N28
\dut_alu|dut_mul_s|m_not[14]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[14]~28_combout\ = ((\dut_decorder|src1_d\(14) $ (\dut_alu|dut_mul_s|A\(15) $ (\dut_alu|dut_mul_s|m_not[13]~27\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[14]~29\ = CARRY((\dut_decorder|src1_d\(14) & (\dut_alu|dut_mul_s|A\(15) & !\dut_alu|dut_mul_s|m_not[13]~27\)) # (!\dut_decorder|src1_d\(14) & ((\dut_alu|dut_mul_s|A\(15)) # (!\dut_alu|dut_mul_s|m_not[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(14),
	datab => \dut_alu|dut_mul_s|A\(15),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[13]~27\,
	combout => \dut_alu|dut_mul_s|m_not[14]~28_combout\,
	cout => \dut_alu|dut_mul_s|m_not[14]~29\);

-- Location: LCCOMB_X26_Y22_N30
\dut_alu|dut_mul_s|m_not[15]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[15]~30_combout\ = \dut_decorder|src1_d\(15) $ (\dut_alu|dut_mul_s|A\(15) $ (!\dut_alu|dut_mul_s|m_not[14]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(15),
	datab => \dut_alu|dut_mul_s|A\(15),
	cin => \dut_alu|dut_mul_s|m_not[14]~29\,
	combout => \dut_alu|dut_mul_s|m_not[15]~30_combout\);

-- Location: LCCOMB_X24_Y22_N0
\dut_alu|dut_mul_s|A_m[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[0]~0_combout\ = (\dut_decorder|src1_d\(0) & (\dut_alu|dut_mul_s|A\(0) $ (VCC))) # (!\dut_decorder|src1_d\(0) & (\dut_alu|dut_mul_s|A\(0) & VCC))
-- \dut_alu|dut_mul_s|A_m[0]~1\ = CARRY((\dut_decorder|src1_d\(0) & \dut_alu|dut_mul_s|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(0),
	datab => \dut_alu|dut_mul_s|A\(0),
	datad => VCC,
	combout => \dut_alu|dut_mul_s|A_m[0]~0_combout\,
	cout => \dut_alu|dut_mul_s|A_m[0]~1\);

-- Location: LCCOMB_X24_Y22_N2
\dut_alu|dut_mul_s|A_m[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[1]~2_combout\ = (\dut_decorder|src1_d\(1) & ((\dut_alu|dut_mul_s|A\(1) & (\dut_alu|dut_mul_s|A_m[0]~1\ & VCC)) # (!\dut_alu|dut_mul_s|A\(1) & (!\dut_alu|dut_mul_s|A_m[0]~1\)))) # (!\dut_decorder|src1_d\(1) & 
-- ((\dut_alu|dut_mul_s|A\(1) & (!\dut_alu|dut_mul_s|A_m[0]~1\)) # (!\dut_alu|dut_mul_s|A\(1) & ((\dut_alu|dut_mul_s|A_m[0]~1\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[1]~3\ = CARRY((\dut_decorder|src1_d\(1) & (!\dut_alu|dut_mul_s|A\(1) & !\dut_alu|dut_mul_s|A_m[0]~1\)) # (!\dut_decorder|src1_d\(1) & ((!\dut_alu|dut_mul_s|A_m[0]~1\) # (!\dut_alu|dut_mul_s|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(1),
	datab => \dut_alu|dut_mul_s|A\(1),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[0]~1\,
	combout => \dut_alu|dut_mul_s|A_m[1]~2_combout\,
	cout => \dut_alu|dut_mul_s|A_m[1]~3\);

-- Location: LCCOMB_X24_Y22_N4
\dut_alu|dut_mul_s|A_m[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[2]~4_combout\ = ((\dut_alu|dut_mul_s|A\(2) $ (\dut_decorder|src1_d\(2) $ (!\dut_alu|dut_mul_s|A_m[1]~3\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[2]~5\ = CARRY((\dut_alu|dut_mul_s|A\(2) & ((\dut_decorder|src1_d\(2)) # (!\dut_alu|dut_mul_s|A_m[1]~3\))) # (!\dut_alu|dut_mul_s|A\(2) & (\dut_decorder|src1_d\(2) & !\dut_alu|dut_mul_s|A_m[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(2),
	datab => \dut_decorder|src1_d\(2),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[1]~3\,
	combout => \dut_alu|dut_mul_s|A_m[2]~4_combout\,
	cout => \dut_alu|dut_mul_s|A_m[2]~5\);

-- Location: LCCOMB_X24_Y22_N6
\dut_alu|dut_mul_s|A_m[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[3]~6_combout\ = (\dut_decorder|src1_d\(3) & ((\dut_alu|dut_mul_s|A\(3) & (\dut_alu|dut_mul_s|A_m[2]~5\ & VCC)) # (!\dut_alu|dut_mul_s|A\(3) & (!\dut_alu|dut_mul_s|A_m[2]~5\)))) # (!\dut_decorder|src1_d\(3) & 
-- ((\dut_alu|dut_mul_s|A\(3) & (!\dut_alu|dut_mul_s|A_m[2]~5\)) # (!\dut_alu|dut_mul_s|A\(3) & ((\dut_alu|dut_mul_s|A_m[2]~5\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[3]~7\ = CARRY((\dut_decorder|src1_d\(3) & (!\dut_alu|dut_mul_s|A\(3) & !\dut_alu|dut_mul_s|A_m[2]~5\)) # (!\dut_decorder|src1_d\(3) & ((!\dut_alu|dut_mul_s|A_m[2]~5\) # (!\dut_alu|dut_mul_s|A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(3),
	datab => \dut_alu|dut_mul_s|A\(3),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[2]~5\,
	combout => \dut_alu|dut_mul_s|A_m[3]~6_combout\,
	cout => \dut_alu|dut_mul_s|A_m[3]~7\);

-- Location: LCCOMB_X24_Y22_N8
\dut_alu|dut_mul_s|A_m[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[4]~8_combout\ = ((\dut_decorder|src1_d\(4) $ (\dut_alu|dut_mul_s|A\(4) $ (!\dut_alu|dut_mul_s|A_m[3]~7\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[4]~9\ = CARRY((\dut_decorder|src1_d\(4) & ((\dut_alu|dut_mul_s|A\(4)) # (!\dut_alu|dut_mul_s|A_m[3]~7\))) # (!\dut_decorder|src1_d\(4) & (\dut_alu|dut_mul_s|A\(4) & !\dut_alu|dut_mul_s|A_m[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(4),
	datab => \dut_alu|dut_mul_s|A\(4),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[3]~7\,
	combout => \dut_alu|dut_mul_s|A_m[4]~8_combout\,
	cout => \dut_alu|dut_mul_s|A_m[4]~9\);

-- Location: LCCOMB_X24_Y22_N10
\dut_alu|dut_mul_s|A_m[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[5]~10_combout\ = (\dut_decorder|src1_d\(5) & ((\dut_alu|dut_mul_s|A\(5) & (\dut_alu|dut_mul_s|A_m[4]~9\ & VCC)) # (!\dut_alu|dut_mul_s|A\(5) & (!\dut_alu|dut_mul_s|A_m[4]~9\)))) # (!\dut_decorder|src1_d\(5) & 
-- ((\dut_alu|dut_mul_s|A\(5) & (!\dut_alu|dut_mul_s|A_m[4]~9\)) # (!\dut_alu|dut_mul_s|A\(5) & ((\dut_alu|dut_mul_s|A_m[4]~9\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[5]~11\ = CARRY((\dut_decorder|src1_d\(5) & (!\dut_alu|dut_mul_s|A\(5) & !\dut_alu|dut_mul_s|A_m[4]~9\)) # (!\dut_decorder|src1_d\(5) & ((!\dut_alu|dut_mul_s|A_m[4]~9\) # (!\dut_alu|dut_mul_s|A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(5),
	datab => \dut_alu|dut_mul_s|A\(5),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[4]~9\,
	combout => \dut_alu|dut_mul_s|A_m[5]~10_combout\,
	cout => \dut_alu|dut_mul_s|A_m[5]~11\);

-- Location: LCCOMB_X24_Y22_N12
\dut_alu|dut_mul_s|A_m[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[6]~12_combout\ = ((\dut_decorder|src1_d\(6) $ (\dut_alu|dut_mul_s|A\(6) $ (!\dut_alu|dut_mul_s|A_m[5]~11\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[6]~13\ = CARRY((\dut_decorder|src1_d\(6) & ((\dut_alu|dut_mul_s|A\(6)) # (!\dut_alu|dut_mul_s|A_m[5]~11\))) # (!\dut_decorder|src1_d\(6) & (\dut_alu|dut_mul_s|A\(6) & !\dut_alu|dut_mul_s|A_m[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(6),
	datab => \dut_alu|dut_mul_s|A\(6),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[5]~11\,
	combout => \dut_alu|dut_mul_s|A_m[6]~12_combout\,
	cout => \dut_alu|dut_mul_s|A_m[6]~13\);

-- Location: LCCOMB_X24_Y22_N14
\dut_alu|dut_mul_s|A_m[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[7]~14_combout\ = (\dut_alu|dut_mul_s|A\(7) & ((\dut_decorder|src1_d\(7) & (\dut_alu|dut_mul_s|A_m[6]~13\ & VCC)) # (!\dut_decorder|src1_d\(7) & (!\dut_alu|dut_mul_s|A_m[6]~13\)))) # (!\dut_alu|dut_mul_s|A\(7) & 
-- ((\dut_decorder|src1_d\(7) & (!\dut_alu|dut_mul_s|A_m[6]~13\)) # (!\dut_decorder|src1_d\(7) & ((\dut_alu|dut_mul_s|A_m[6]~13\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[7]~15\ = CARRY((\dut_alu|dut_mul_s|A\(7) & (!\dut_decorder|src1_d\(7) & !\dut_alu|dut_mul_s|A_m[6]~13\)) # (!\dut_alu|dut_mul_s|A\(7) & ((!\dut_alu|dut_mul_s|A_m[6]~13\) # (!\dut_decorder|src1_d\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(7),
	datab => \dut_decorder|src1_d\(7),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[6]~13\,
	combout => \dut_alu|dut_mul_s|A_m[7]~14_combout\,
	cout => \dut_alu|dut_mul_s|A_m[7]~15\);

-- Location: LCCOMB_X24_Y22_N16
\dut_alu|dut_mul_s|A_m[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[8]~16_combout\ = ((\dut_alu|dut_mul_s|A\(8) $ (\dut_decorder|src1_d\(8) $ (!\dut_alu|dut_mul_s|A_m[7]~15\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[8]~17\ = CARRY((\dut_alu|dut_mul_s|A\(8) & ((\dut_decorder|src1_d\(8)) # (!\dut_alu|dut_mul_s|A_m[7]~15\))) # (!\dut_alu|dut_mul_s|A\(8) & (\dut_decorder|src1_d\(8) & !\dut_alu|dut_mul_s|A_m[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(8),
	datab => \dut_decorder|src1_d\(8),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[7]~15\,
	combout => \dut_alu|dut_mul_s|A_m[8]~16_combout\,
	cout => \dut_alu|dut_mul_s|A_m[8]~17\);

-- Location: LCCOMB_X24_Y22_N18
\dut_alu|dut_mul_s|A_m[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[9]~18_combout\ = (\dut_alu|dut_mul_s|A\(9) & ((\dut_decorder|src1_d\(9) & (\dut_alu|dut_mul_s|A_m[8]~17\ & VCC)) # (!\dut_decorder|src1_d\(9) & (!\dut_alu|dut_mul_s|A_m[8]~17\)))) # (!\dut_alu|dut_mul_s|A\(9) & 
-- ((\dut_decorder|src1_d\(9) & (!\dut_alu|dut_mul_s|A_m[8]~17\)) # (!\dut_decorder|src1_d\(9) & ((\dut_alu|dut_mul_s|A_m[8]~17\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[9]~19\ = CARRY((\dut_alu|dut_mul_s|A\(9) & (!\dut_decorder|src1_d\(9) & !\dut_alu|dut_mul_s|A_m[8]~17\)) # (!\dut_alu|dut_mul_s|A\(9) & ((!\dut_alu|dut_mul_s|A_m[8]~17\) # (!\dut_decorder|src1_d\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(9),
	datab => \dut_decorder|src1_d\(9),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[8]~17\,
	combout => \dut_alu|dut_mul_s|A_m[9]~18_combout\,
	cout => \dut_alu|dut_mul_s|A_m[9]~19\);

-- Location: LCCOMB_X24_Y22_N20
\dut_alu|dut_mul_s|A_m[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[10]~20_combout\ = ((\dut_decorder|src1_d\(10) $ (\dut_alu|dut_mul_s|A\(10) $ (!\dut_alu|dut_mul_s|A_m[9]~19\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[10]~21\ = CARRY((\dut_decorder|src1_d\(10) & ((\dut_alu|dut_mul_s|A\(10)) # (!\dut_alu|dut_mul_s|A_m[9]~19\))) # (!\dut_decorder|src1_d\(10) & (\dut_alu|dut_mul_s|A\(10) & !\dut_alu|dut_mul_s|A_m[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(10),
	datab => \dut_alu|dut_mul_s|A\(10),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[9]~19\,
	combout => \dut_alu|dut_mul_s|A_m[10]~20_combout\,
	cout => \dut_alu|dut_mul_s|A_m[10]~21\);

-- Location: LCCOMB_X24_Y22_N22
\dut_alu|dut_mul_s|A_m[11]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[11]~22_combout\ = (\dut_decorder|src1_d\(11) & ((\dut_alu|dut_mul_s|A\(11) & (\dut_alu|dut_mul_s|A_m[10]~21\ & VCC)) # (!\dut_alu|dut_mul_s|A\(11) & (!\dut_alu|dut_mul_s|A_m[10]~21\)))) # (!\dut_decorder|src1_d\(11) & 
-- ((\dut_alu|dut_mul_s|A\(11) & (!\dut_alu|dut_mul_s|A_m[10]~21\)) # (!\dut_alu|dut_mul_s|A\(11) & ((\dut_alu|dut_mul_s|A_m[10]~21\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[11]~23\ = CARRY((\dut_decorder|src1_d\(11) & (!\dut_alu|dut_mul_s|A\(11) & !\dut_alu|dut_mul_s|A_m[10]~21\)) # (!\dut_decorder|src1_d\(11) & ((!\dut_alu|dut_mul_s|A_m[10]~21\) # (!\dut_alu|dut_mul_s|A\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(11),
	datab => \dut_alu|dut_mul_s|A\(11),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[10]~21\,
	combout => \dut_alu|dut_mul_s|A_m[11]~22_combout\,
	cout => \dut_alu|dut_mul_s|A_m[11]~23\);

-- Location: LCCOMB_X24_Y22_N24
\dut_alu|dut_mul_s|A_m[12]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[12]~24_combout\ = ((\dut_decorder|src1_d\(12) $ (\dut_alu|dut_mul_s|A\(12) $ (!\dut_alu|dut_mul_s|A_m[11]~23\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[12]~25\ = CARRY((\dut_decorder|src1_d\(12) & ((\dut_alu|dut_mul_s|A\(12)) # (!\dut_alu|dut_mul_s|A_m[11]~23\))) # (!\dut_decorder|src1_d\(12) & (\dut_alu|dut_mul_s|A\(12) & !\dut_alu|dut_mul_s|A_m[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src1_d\(12),
	datab => \dut_alu|dut_mul_s|A\(12),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[11]~23\,
	combout => \dut_alu|dut_mul_s|A_m[12]~24_combout\,
	cout => \dut_alu|dut_mul_s|A_m[12]~25\);

-- Location: LCCOMB_X24_Y22_N26
\dut_alu|dut_mul_s|A_m[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[13]~26_combout\ = (\dut_alu|dut_mul_s|A\(13) & ((\dut_decorder|src1_d\(13) & (\dut_alu|dut_mul_s|A_m[12]~25\ & VCC)) # (!\dut_decorder|src1_d\(13) & (!\dut_alu|dut_mul_s|A_m[12]~25\)))) # (!\dut_alu|dut_mul_s|A\(13) & 
-- ((\dut_decorder|src1_d\(13) & (!\dut_alu|dut_mul_s|A_m[12]~25\)) # (!\dut_decorder|src1_d\(13) & ((\dut_alu|dut_mul_s|A_m[12]~25\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[13]~27\ = CARRY((\dut_alu|dut_mul_s|A\(13) & (!\dut_decorder|src1_d\(13) & !\dut_alu|dut_mul_s|A_m[12]~25\)) # (!\dut_alu|dut_mul_s|A\(13) & ((!\dut_alu|dut_mul_s|A_m[12]~25\) # (!\dut_decorder|src1_d\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(13),
	datab => \dut_decorder|src1_d\(13),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[12]~25\,
	combout => \dut_alu|dut_mul_s|A_m[13]~26_combout\,
	cout => \dut_alu|dut_mul_s|A_m[13]~27\);

-- Location: LCCOMB_X24_Y22_N28
\dut_alu|dut_mul_s|A_m[14]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[14]~28_combout\ = ((\dut_alu|dut_mul_s|A\(15) $ (\dut_decorder|src1_d\(14) $ (!\dut_alu|dut_mul_s|A_m[13]~27\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[14]~29\ = CARRY((\dut_alu|dut_mul_s|A\(15) & ((\dut_decorder|src1_d\(14)) # (!\dut_alu|dut_mul_s|A_m[13]~27\))) # (!\dut_alu|dut_mul_s|A\(15) & (\dut_decorder|src1_d\(14) & !\dut_alu|dut_mul_s|A_m[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(15),
	datab => \dut_decorder|src1_d\(14),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[13]~27\,
	combout => \dut_alu|dut_mul_s|A_m[14]~28_combout\,
	cout => \dut_alu|dut_mul_s|A_m[14]~29\);

-- Location: LCCOMB_X24_Y22_N30
\dut_alu|dut_mul_s|A_m[15]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[15]~30_combout\ = \dut_decorder|src1_d\(15) $ (\dut_alu|dut_mul_s|A_m[14]~29\ $ (\dut_alu|dut_mul_s|A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_decorder|src1_d\(15),
	datad => \dut_alu|dut_mul_s|A\(15),
	cin => \dut_alu|dut_mul_s|A_m[14]~29\,
	combout => \dut_alu|dut_mul_s|A_m[15]~30_combout\);

-- Location: LCCOMB_X27_Y22_N14
\dut_alu|dut_mul_s|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~30_combout\ = (\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|m_not[15]~30_combout\ & ((!\dut_alu|dut_mul_s|q0~q\)))) # (!\dut_alu|dut_mul_s|q\(0) & (((\dut_alu|dut_mul_s|A_m[15]~30_combout\ & \dut_alu|dut_mul_s|q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|m_not[15]~30_combout\,
	datac => \dut_alu|dut_mul_s|A_m[15]~30_combout\,
	datad => \dut_alu|dut_mul_s|q0~q\,
	combout => \dut_alu|dut_mul_s|Add2~30_combout\);

-- Location: LCCOMB_X27_Y22_N12
\dut_alu|dut_mul_s|Add2~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~31_combout\ = (\dut_alu|dut_mul_s|Add2~30_combout\) # ((\dut_alu|dut_mul_s|A\(15) & (\dut_alu|dut_mul_s|q\(0) $ (!\dut_alu|dut_mul_s|q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|Add2~30_combout\,
	datac => \dut_alu|dut_mul_s|A\(15),
	datad => \dut_alu|dut_mul_s|q0~q\,
	combout => \dut_alu|dut_mul_s|Add2~31_combout\);

-- Location: FF_X27_Y22_N13
\dut_alu|dut_mul_s|A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~31_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(15));

-- Location: LCCOMB_X27_Y22_N4
\dut_alu|dut_mul_s|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~28_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|A_m[14]~28_combout\ & !\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|m_not[14]~28_combout\ & ((\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q0~q\,
	datab => \dut_alu|dut_mul_s|m_not[14]~28_combout\,
	datac => \dut_alu|dut_mul_s|A_m[14]~28_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~28_combout\);

-- Location: LCCOMB_X27_Y22_N2
\dut_alu|dut_mul_s|Add2~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~29_combout\ = (\dut_alu|dut_mul_s|Add2~28_combout\) # ((\dut_alu|dut_mul_s|A\(15) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q0~q\,
	datab => \dut_alu|dut_mul_s|A\(15),
	datac => \dut_alu|dut_mul_s|Add2~28_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~29_combout\);

-- Location: FF_X27_Y22_N3
\dut_alu|dut_mul_s|A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~29_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(13));

-- Location: LCCOMB_X27_Y22_N26
\dut_alu|dut_mul_s|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~24_combout\ = (\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|A\(13) & ((\dut_alu|dut_mul_s|q0~q\)))) # (!\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|q0~q\ & ((\dut_alu|dut_mul_s|A_m[13]~26_combout\))) # 
-- (!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|A\(13),
	datac => \dut_alu|dut_mul_s|A_m[13]~26_combout\,
	datad => \dut_alu|dut_mul_s|q0~q\,
	combout => \dut_alu|dut_mul_s|Add2~24_combout\);

-- Location: LCCOMB_X27_Y22_N24
\dut_alu|dut_mul_s|Add2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~25_combout\ = (\dut_alu|dut_mul_s|Add2~24_combout\) # ((\dut_alu|dut_mul_s|m_not[13]~26_combout\ & (!\dut_alu|dut_mul_s|q0~q\ & \dut_alu|dut_mul_s|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|m_not[13]~26_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|Add2~24_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~25_combout\);

-- Location: FF_X27_Y22_N25
\dut_alu|dut_mul_s|A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~25_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(12));

-- Location: LCCOMB_X27_Y22_N22
\dut_alu|dut_mul_s|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~22_combout\ = (\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|A\(12) & ((\dut_alu|dut_mul_s|q0~q\)))) # (!\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|q0~q\ & ((\dut_alu|dut_mul_s|A_m[12]~24_combout\))) # 
-- (!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|A\(12),
	datac => \dut_alu|dut_mul_s|A_m[12]~24_combout\,
	datad => \dut_alu|dut_mul_s|q0~q\,
	combout => \dut_alu|dut_mul_s|Add2~22_combout\);

-- Location: LCCOMB_X27_Y22_N6
\dut_alu|dut_mul_s|Add2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~23_combout\ = (\dut_alu|dut_mul_s|Add2~22_combout\) # ((!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|m_not[12]~24_combout\ & \dut_alu|dut_mul_s|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q0~q\,
	datab => \dut_alu|dut_mul_s|m_not[12]~24_combout\,
	datac => \dut_alu|dut_mul_s|Add2~22_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~23_combout\);

-- Location: FF_X27_Y22_N7
\dut_alu|dut_mul_s|A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~23_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(11));

-- Location: LCCOMB_X27_Y22_N20
\dut_alu|dut_mul_s|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~20_combout\ = (\dut_alu|dut_mul_s|q\(0) & (((\dut_alu|dut_mul_s|A\(11) & \dut_alu|dut_mul_s|q0~q\)))) # (!\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A_m[11]~22_combout\)) # 
-- (!\dut_alu|dut_mul_s|q0~q\ & ((\dut_alu|dut_mul_s|A\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|A_m[11]~22_combout\,
	datac => \dut_alu|dut_mul_s|A\(11),
	datad => \dut_alu|dut_mul_s|q0~q\,
	combout => \dut_alu|dut_mul_s|Add2~20_combout\);

-- Location: LCCOMB_X27_Y22_N28
\dut_alu|dut_mul_s|Add2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~21_combout\ = (\dut_alu|dut_mul_s|Add2~20_combout\) # ((!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|q\(0) & \dut_alu|dut_mul_s|m_not[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q0~q\,
	datab => \dut_alu|dut_mul_s|Add2~20_combout\,
	datac => \dut_alu|dut_mul_s|q\(0),
	datad => \dut_alu|dut_mul_s|m_not[11]~22_combout\,
	combout => \dut_alu|dut_mul_s|Add2~21_combout\);

-- Location: FF_X27_Y22_N29
\dut_alu|dut_mul_s|A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~21_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(10));

-- Location: LCCOMB_X27_Y22_N16
\dut_alu|dut_mul_s|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~8_combout\ = (\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|A\(10) & ((\dut_alu|dut_mul_s|q0~q\)))) # (!\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|q0~q\ & ((\dut_alu|dut_mul_s|A_m[10]~20_combout\))) # 
-- (!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|A\(10),
	datac => \dut_alu|dut_mul_s|A_m[10]~20_combout\,
	datad => \dut_alu|dut_mul_s|q0~q\,
	combout => \dut_alu|dut_mul_s|Add2~8_combout\);

-- Location: LCCOMB_X27_Y22_N10
\dut_alu|dut_mul_s|Add2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~9_combout\ = (\dut_alu|dut_mul_s|Add2~8_combout\) # ((!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|m_not[10]~20_combout\ & \dut_alu|dut_mul_s|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q0~q\,
	datab => \dut_alu|dut_mul_s|Add2~8_combout\,
	datac => \dut_alu|dut_mul_s|m_not[10]~20_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~9_combout\);

-- Location: FF_X27_Y22_N11
\dut_alu|dut_mul_s|A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~9_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(9));

-- Location: LCCOMB_X27_Y22_N30
\dut_alu|dut_mul_s|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~4_combout\ = (\dut_alu|dut_mul_s|q0~q\ & ((\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|A\(9))) # (!\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|A_m[9]~18_combout\))))) # (!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A\(9) 
-- & ((!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q0~q\,
	datab => \dut_alu|dut_mul_s|A\(9),
	datac => \dut_alu|dut_mul_s|A_m[9]~18_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~4_combout\);

-- Location: LCCOMB_X27_Y22_N8
\dut_alu|dut_mul_s|Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~5_combout\ = (\dut_alu|dut_mul_s|Add2~4_combout\) # ((!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|m_not[9]~18_combout\ & \dut_alu|dut_mul_s|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q0~q\,
	datab => \dut_alu|dut_mul_s|m_not[9]~18_combout\,
	datac => \dut_alu|dut_mul_s|Add2~4_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~5_combout\);

-- Location: FF_X27_Y22_N9
\dut_alu|dut_mul_s|A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(8));

-- Location: LCCOMB_X26_Y20_N2
\dut_alu|dut_mul_s|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~10_combout\ = (\dut_alu|dut_mul_s|q0~q\ & ((\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|A\(8)))) # (!\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|A_m[8]~16_combout\)))) # (!\dut_alu|dut_mul_s|q0~q\ & 
-- (((!\dut_alu|dut_mul_s|q\(0) & \dut_alu|dut_mul_s|A\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q0~q\,
	datab => \dut_alu|dut_mul_s|A_m[8]~16_combout\,
	datac => \dut_alu|dut_mul_s|q\(0),
	datad => \dut_alu|dut_mul_s|A\(8),
	combout => \dut_alu|dut_mul_s|Add2~10_combout\);

-- Location: LCCOMB_X26_Y20_N4
\dut_alu|dut_mul_s|Add2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~11_combout\ = (\dut_alu|dut_mul_s|Add2~10_combout\) # ((!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|q\(0) & \dut_alu|dut_mul_s|m_not[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q0~q\,
	datab => \dut_alu|dut_mul_s|Add2~10_combout\,
	datac => \dut_alu|dut_mul_s|q\(0),
	datad => \dut_alu|dut_mul_s|m_not[8]~16_combout\,
	combout => \dut_alu|dut_mul_s|Add2~11_combout\);

-- Location: FF_X26_Y20_N5
\dut_alu|dut_mul_s|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~11_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(7));

-- Location: LCCOMB_X26_Y20_N28
\dut_alu|dut_mul_s|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~12_combout\ = (\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|A\(7) & (\dut_alu|dut_mul_s|q0~q\))) # (!\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|q0~q\ & ((\dut_alu|dut_mul_s|A_m[7]~14_combout\))) # (!\dut_alu|dut_mul_s|q0~q\ 
-- & (\dut_alu|dut_mul_s|A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|A\(7),
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|A_m[7]~14_combout\,
	combout => \dut_alu|dut_mul_s|Add2~12_combout\);

-- Location: LCCOMB_X26_Y20_N6
\dut_alu|dut_mul_s|Add2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~13_combout\ = (\dut_alu|dut_mul_s|Add2~12_combout\) # ((!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|q\(0) & \dut_alu|dut_mul_s|m_not[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q0~q\,
	datab => \dut_alu|dut_mul_s|Add2~12_combout\,
	datac => \dut_alu|dut_mul_s|q\(0),
	datad => \dut_alu|dut_mul_s|m_not[7]~14_combout\,
	combout => \dut_alu|dut_mul_s|Add2~13_combout\);

-- Location: FF_X26_Y20_N7
\dut_alu|dut_mul_s|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~13_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(6));

-- Location: LCCOMB_X26_Y20_N14
\dut_alu|dut_mul_s|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~14_combout\ = (\dut_alu|dut_mul_s|q\(0) & (((\dut_alu|dut_mul_s|q0~q\ & \dut_alu|dut_mul_s|A\(6))))) # (!\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A_m[6]~12_combout\)) # (!\dut_alu|dut_mul_s|q0~q\ 
-- & ((\dut_alu|dut_mul_s|A\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|A_m[6]~12_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|A\(6),
	combout => \dut_alu|dut_mul_s|Add2~14_combout\);

-- Location: LCCOMB_X26_Y20_N24
\dut_alu|dut_mul_s|Add2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~15_combout\ = (\dut_alu|dut_mul_s|Add2~14_combout\) # ((\dut_alu|dut_mul_s|q\(0) & (!\dut_alu|dut_mul_s|q0~q\ & \dut_alu|dut_mul_s|m_not[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|Add2~14_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|m_not[6]~12_combout\,
	combout => \dut_alu|dut_mul_s|Add2~15_combout\);

-- Location: FF_X26_Y20_N25
\dut_alu|dut_mul_s|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~15_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(5));

-- Location: LCCOMB_X26_Y20_N16
\dut_alu|dut_mul_s|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~16_combout\ = (\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|A\(5) & (\dut_alu|dut_mul_s|q0~q\))) # (!\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|q0~q\ & ((\dut_alu|dut_mul_s|A_m[5]~10_combout\))) # (!\dut_alu|dut_mul_s|q0~q\ 
-- & (\dut_alu|dut_mul_s|A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|A\(5),
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|A_m[5]~10_combout\,
	combout => \dut_alu|dut_mul_s|Add2~16_combout\);

-- Location: LCCOMB_X26_Y20_N18
\dut_alu|dut_mul_s|Add2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~17_combout\ = (\dut_alu|dut_mul_s|Add2~16_combout\) # ((\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|m_not[5]~10_combout\ & !\dut_alu|dut_mul_s|q0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|Add2~16_combout\,
	datac => \dut_alu|dut_mul_s|m_not[5]~10_combout\,
	datad => \dut_alu|dut_mul_s|q0~q\,
	combout => \dut_alu|dut_mul_s|Add2~17_combout\);

-- Location: FF_X26_Y20_N19
\dut_alu|dut_mul_s|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~17_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(4));

-- Location: LCCOMB_X26_Y20_N10
\dut_alu|dut_mul_s|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~18_combout\ = (\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|A\(4) & (\dut_alu|dut_mul_s|q0~q\))) # (!\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|q0~q\ & ((\dut_alu|dut_mul_s|A_m[4]~8_combout\))) # (!\dut_alu|dut_mul_s|q0~q\ & 
-- (\dut_alu|dut_mul_s|A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|A\(4),
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|A_m[4]~8_combout\,
	combout => \dut_alu|dut_mul_s|Add2~18_combout\);

-- Location: LCCOMB_X26_Y20_N12
\dut_alu|dut_mul_s|Add2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~19_combout\ = (\dut_alu|dut_mul_s|Add2~18_combout\) # ((\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|m_not[4]~8_combout\ & !\dut_alu|dut_mul_s|q0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|m_not[4]~8_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|Add2~18_combout\,
	combout => \dut_alu|dut_mul_s|Add2~19_combout\);

-- Location: FF_X26_Y20_N13
\dut_alu|dut_mul_s|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~19_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(3));

-- Location: LCCOMB_X26_Y20_N0
\dut_alu|dut_mul_s|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~6_combout\ = (\dut_alu|dut_mul_s|q\(0) & (((\dut_alu|dut_mul_s|q0~q\ & \dut_alu|dut_mul_s|A\(3))))) # (!\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A_m[3]~6_combout\)) # (!\dut_alu|dut_mul_s|q0~q\ & 
-- ((\dut_alu|dut_mul_s|A\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|A_m[3]~6_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|A\(3),
	combout => \dut_alu|dut_mul_s|Add2~6_combout\);

-- Location: LCCOMB_X26_Y20_N26
\dut_alu|dut_mul_s|Add2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~7_combout\ = (\dut_alu|dut_mul_s|Add2~6_combout\) # ((\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|m_not[3]~6_combout\ & !\dut_alu|dut_mul_s|q0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|Add2~6_combout\,
	datac => \dut_alu|dut_mul_s|m_not[3]~6_combout\,
	datad => \dut_alu|dut_mul_s|q0~q\,
	combout => \dut_alu|dut_mul_s|Add2~7_combout\);

-- Location: FF_X26_Y20_N27
\dut_alu|dut_mul_s|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~7_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(2));

-- Location: LCCOMB_X26_Y20_N22
\dut_alu|dut_mul_s|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~2_combout\ = (\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|A\(2) & (\dut_alu|dut_mul_s|q0~q\))) # (!\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|q0~q\ & ((\dut_alu|dut_mul_s|A_m[2]~4_combout\))) # (!\dut_alu|dut_mul_s|q0~q\ & 
-- (\dut_alu|dut_mul_s|A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|A\(2),
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|A_m[2]~4_combout\,
	combout => \dut_alu|dut_mul_s|Add2~2_combout\);

-- Location: LCCOMB_X26_Y20_N8
\dut_alu|dut_mul_s|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~3_combout\ = (\dut_alu|dut_mul_s|Add2~2_combout\) # ((\dut_alu|dut_mul_s|q\(0) & (!\dut_alu|dut_mul_s|q0~q\ & \dut_alu|dut_mul_s|m_not[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|Add2~2_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|m_not[2]~4_combout\,
	combout => \dut_alu|dut_mul_s|Add2~3_combout\);

-- Location: FF_X26_Y20_N9
\dut_alu|dut_mul_s|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(1));

-- Location: LCCOMB_X26_Y21_N2
\dut_alu|dut_mul_s|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~0_combout\ = (\dut_alu|dut_mul_s|q0~q\ & ((\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|A\(1)))) # (!\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|A_m[1]~2_combout\)))) # (!\dut_alu|dut_mul_s|q0~q\ & 
-- (((!\dut_alu|dut_mul_s|q\(0) & \dut_alu|dut_mul_s|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A_m[1]~2_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|q\(0),
	datad => \dut_alu|dut_mul_s|A\(1),
	combout => \dut_alu|dut_mul_s|Add2~0_combout\);

-- Location: LCCOMB_X26_Y21_N0
\dut_alu|dut_mul_s|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~1_combout\ = (\dut_alu|dut_mul_s|Add2~0_combout\) # ((\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|m_not[1]~2_combout\ & !\dut_alu|dut_mul_s|q0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|Add2~0_combout\,
	datac => \dut_alu|dut_mul_s|m_not[1]~2_combout\,
	datad => \dut_alu|dut_mul_s|q0~q\,
	combout => \dut_alu|dut_mul_s|Add2~1_combout\);

-- Location: FF_X26_Y21_N1
\dut_alu|dut_mul_s|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(0));

-- Location: LCCOMB_X26_Y21_N28
\dut_alu|dut_mul_s|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~26_combout\ = (\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|A\(0) & ((\dut_alu|dut_mul_s|q0~q\)))) # (!\dut_alu|dut_mul_s|q\(0) & ((\dut_alu|dut_mul_s|q0~q\ & ((\dut_alu|dut_mul_s|A_m[0]~0_combout\))) # (!\dut_alu|dut_mul_s|q0~q\ 
-- & (\dut_alu|dut_mul_s|A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|A\(0),
	datac => \dut_alu|dut_mul_s|A_m[0]~0_combout\,
	datad => \dut_alu|dut_mul_s|q0~q\,
	combout => \dut_alu|dut_mul_s|Add2~26_combout\);

-- Location: LCCOMB_X26_Y21_N14
\dut_alu|dut_mul_s|Add2~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~27_combout\ = (\dut_alu|dut_mul_s|Add2~26_combout\) # ((!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|q\(0) & \dut_alu|dut_mul_s|m_not[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q0~q\,
	datab => \dut_alu|dut_mul_s|Add2~26_combout\,
	datac => \dut_alu|dut_mul_s|q\(0),
	datad => \dut_alu|dut_mul_s|m_not[0]~0_combout\,
	combout => \dut_alu|dut_mul_s|Add2~27_combout\);

-- Location: LCCOMB_X24_Y19_N0
\dut_alu|dut_mul_s|q[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q[15]~feeder_combout\ = \dut_alu|dut_mul_s|Add2~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|Add2~27_combout\,
	combout => \dut_alu|dut_mul_s|q[15]~feeder_combout\);

-- Location: FF_X24_Y19_N1
\dut_alu|dut_mul_s|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q[15]~feeder_combout\,
	asdata => \dut_decorder|src2_d\(15),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(15));

-- Location: LCCOMB_X24_Y19_N16
\dut_alu|dut_mul_s|q~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~14_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(15)))) # (!\dut_alu|dut_mul_s|state~q\ & (\dut_decorder|src2_d\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_decorder|src2_d\(14),
	datac => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|q\(15),
	combout => \dut_alu|dut_mul_s|q~14_combout\);

-- Location: FF_X24_Y19_N17
\dut_alu|dut_mul_s|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~14_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(14));

-- Location: LCCOMB_X24_Y19_N28
\dut_alu|dut_mul_s|q~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~12_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(14)))) # (!\dut_alu|dut_mul_s|state~q\ & (\dut_decorder|src2_d\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_decorder|src2_d\(13),
	datac => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|q\(14),
	combout => \dut_alu|dut_mul_s|q~12_combout\);

-- Location: FF_X24_Y19_N29
\dut_alu|dut_mul_s|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~12_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(13));

-- Location: LCCOMB_X24_Y19_N8
\dut_alu|dut_mul_s|q~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~10_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(13)))) # (!\dut_alu|dut_mul_s|state~q\ & (\dut_decorder|src2_d\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(12),
	datac => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|q\(13),
	combout => \dut_alu|dut_mul_s|q~10_combout\);

-- Location: FF_X24_Y19_N9
\dut_alu|dut_mul_s|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~10_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(12));

-- Location: LCCOMB_X24_Y21_N0
\dut_alu|dut_mul_s|q~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~8_combout\ = (\dut_alu|dut_mul_s|state~q\ & (\dut_alu|dut_mul_s|q\(12))) # (!\dut_alu|dut_mul_s|state~q\ & ((\dut_decorder|src2_d\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|q\(12),
	datac => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_decorder|src2_d\(11),
	combout => \dut_alu|dut_mul_s|q~8_combout\);

-- Location: FF_X24_Y21_N1
\dut_alu|dut_mul_s|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~8_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(11));

-- Location: LCCOMB_X24_Y21_N24
\dut_alu|dut_mul_s|q~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~6_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(11)))) # (!\dut_alu|dut_mul_s|state~q\ & (\dut_decorder|src2_d\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|state~q\,
	datab => \dut_decorder|src2_d\(10),
	datad => \dut_alu|dut_mul_s|q\(11),
	combout => \dut_alu|dut_mul_s|q~6_combout\);

-- Location: FF_X24_Y21_N25
\dut_alu|dut_mul_s|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~6_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(10));

-- Location: LCCOMB_X24_Y21_N12
\dut_alu|dut_mul_s|q~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~4_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(10)))) # (!\dut_alu|dut_mul_s|state~q\ & (\dut_decorder|src2_d\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|state~q\,
	datac => \dut_decorder|src2_d\(9),
	datad => \dut_alu|dut_mul_s|q\(10),
	combout => \dut_alu|dut_mul_s|q~4_combout\);

-- Location: FF_X24_Y21_N13
\dut_alu|dut_mul_s|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(9));

-- Location: LCCOMB_X24_Y21_N26
\dut_alu|dut_mul_s|q~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~2_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(9)))) # (!\dut_alu|dut_mul_s|state~q\ & (\dut_decorder|src2_d\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|state~q\,
	datac => \dut_decorder|src2_d\(8),
	datad => \dut_alu|dut_mul_s|q\(9),
	combout => \dut_alu|dut_mul_s|q~2_combout\);

-- Location: FF_X24_Y21_N27
\dut_alu|dut_mul_s|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(8));

-- Location: LCCOMB_X24_Y21_N28
\dut_alu|dut_mul_s|q~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~13_combout\ = (\dut_alu|dut_mul_s|state~q\ & (\dut_alu|dut_mul_s|q\(8))) # (!\dut_alu|dut_mul_s|state~q\ & ((\dut_decorder|src2_d\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(8),
	datab => \dut_decorder|src2_d\(7),
	datac => \dut_alu|dut_mul_s|state~q\,
	combout => \dut_alu|dut_mul_s|q~13_combout\);

-- Location: FF_X24_Y21_N29
\dut_alu|dut_mul_s|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~13_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(7));

-- Location: LCCOMB_X24_Y21_N10
\dut_alu|dut_mul_s|q~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~11_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(7)))) # (!\dut_alu|dut_mul_s|state~q\ & (\dut_decorder|src2_d\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_decorder|src2_d\(6),
	datac => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|q\(7),
	combout => \dut_alu|dut_mul_s|q~11_combout\);

-- Location: FF_X24_Y21_N11
\dut_alu|dut_mul_s|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~11_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(6));

-- Location: LCCOMB_X24_Y21_N30
\dut_alu|dut_mul_s|q~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~9_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(6)))) # (!\dut_alu|dut_mul_s|state~q\ & (\dut_decorder|src2_d\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|state~q\,
	datac => \dut_decorder|src2_d\(5),
	datad => \dut_alu|dut_mul_s|q\(6),
	combout => \dut_alu|dut_mul_s|q~9_combout\);

-- Location: FF_X24_Y21_N31
\dut_alu|dut_mul_s|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~9_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(5));

-- Location: LCCOMB_X24_Y21_N20
\dut_alu|dut_mul_s|q~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~7_combout\ = (\dut_alu|dut_mul_s|state~q\ & (\dut_alu|dut_mul_s|q\(5))) # (!\dut_alu|dut_mul_s|state~q\ & ((\dut_decorder|src2_d\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|state~q\,
	datac => \dut_alu|dut_mul_s|q\(5),
	datad => \dut_decorder|src2_d\(4),
	combout => \dut_alu|dut_mul_s|q~7_combout\);

-- Location: FF_X24_Y21_N21
\dut_alu|dut_mul_s|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~7_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(4));

-- Location: LCCOMB_X26_Y21_N6
\dut_alu|dut_mul_s|q~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~5_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(4)))) # (!\dut_alu|dut_mul_s|state~q\ & (\dut_decorder|src2_d\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(3),
	datab => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|q\(4),
	combout => \dut_alu|dut_mul_s|q~5_combout\);

-- Location: FF_X26_Y21_N7
\dut_alu|dut_mul_s|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(3));

-- Location: LCCOMB_X26_Y21_N16
\dut_alu|dut_mul_s|q~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~3_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(3)))) # (!\dut_alu|dut_mul_s|state~q\ & (\dut_decorder|src2_d\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(2),
	datab => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|q\(3),
	combout => \dut_alu|dut_mul_s|q~3_combout\);

-- Location: FF_X26_Y21_N17
\dut_alu|dut_mul_s|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(2));

-- Location: LCCOMB_X26_Y21_N26
\dut_alu|dut_mul_s|q~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~1_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(2)))) # (!\dut_alu|dut_mul_s|state~q\ & (\dut_decorder|src2_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(1),
	datab => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|q\(2),
	combout => \dut_alu|dut_mul_s|q~1_combout\);

-- Location: FF_X26_Y21_N27
\dut_alu|dut_mul_s|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(1));

-- Location: LCCOMB_X26_Y21_N30
\dut_alu|dut_mul_s|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~0_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(1)))) # (!\dut_alu|dut_mul_s|state~q\ & (\dut_decorder|src2_d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_decorder|src2_d\(0),
	datac => \dut_alu|dut_mul_s|q\(1),
	datad => \dut_alu|dut_mul_s|state~q\,
	combout => \dut_alu|dut_mul_s|q~0_combout\);

-- Location: FF_X26_Y21_N31
\dut_alu|dut_mul_s|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(0));

-- Location: LCCOMB_X26_Y21_N18
\dut_alu|dut_mul_s|result[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[0]~feeder_combout\ = \dut_alu|dut_mul_s|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|result[0]~feeder_combout\);

-- Location: FF_X26_Y21_N19
\dut_alu|dut_mul_s|result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[0]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(0));

-- Location: LCCOMB_X23_Y20_N0
\dut_alu|result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[0]~0_combout\ = (\dut_alu|dut_mul_u|result\(0)) # ((\dut_alu|dut_divider_u|result\(0)) # (\dut_alu|dut_mul_s|result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(0),
	datab => \dut_alu|dut_divider_u|result\(0),
	datad => \dut_alu|dut_mul_s|result\(0),
	combout => \dut_alu|result[0]~0_combout\);

-- Location: LCCOMB_X20_Y20_N2
\dut_alu|dut_divider_u|result[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[1]~19_combout\ = (\dut_alu|dut_divider_u|A\(1) & ((\dut_decorder|src2_d\(1) & (\dut_alu|dut_divider_u|result[0]~17\ & VCC)) # (!\dut_decorder|src2_d\(1) & (!\dut_alu|dut_divider_u|result[0]~17\)))) # 
-- (!\dut_alu|dut_divider_u|A\(1) & ((\dut_decorder|src2_d\(1) & (!\dut_alu|dut_divider_u|result[0]~17\)) # (!\dut_decorder|src2_d\(1) & ((\dut_alu|dut_divider_u|result[0]~17\) # (GND)))))
-- \dut_alu|dut_divider_u|result[1]~20\ = CARRY((\dut_alu|dut_divider_u|A\(1) & (!\dut_decorder|src2_d\(1) & !\dut_alu|dut_divider_u|result[0]~17\)) # (!\dut_alu|dut_divider_u|A\(1) & ((!\dut_alu|dut_divider_u|result[0]~17\) # (!\dut_decorder|src2_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(1),
	datab => \dut_decorder|src2_d\(1),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[0]~17\,
	combout => \dut_alu|dut_divider_u|result[1]~19_combout\,
	cout => \dut_alu|dut_divider_u|result[1]~20\);

-- Location: LCCOMB_X20_Y20_N4
\dut_alu|dut_divider_u|result[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[2]~21_combout\ = ((\dut_alu|dut_divider_u|A\(2) $ (\dut_decorder|src2_d\(2) $ (!\dut_alu|dut_divider_u|result[1]~20\)))) # (GND)
-- \dut_alu|dut_divider_u|result[2]~22\ = CARRY((\dut_alu|dut_divider_u|A\(2) & ((\dut_decorder|src2_d\(2)) # (!\dut_alu|dut_divider_u|result[1]~20\))) # (!\dut_alu|dut_divider_u|A\(2) & (\dut_decorder|src2_d\(2) & !\dut_alu|dut_divider_u|result[1]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(2),
	datab => \dut_decorder|src2_d\(2),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[1]~20\,
	combout => \dut_alu|dut_divider_u|result[2]~21_combout\,
	cout => \dut_alu|dut_divider_u|result[2]~22\);

-- Location: LCCOMB_X20_Y20_N6
\dut_alu|dut_divider_u|result[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[3]~23_combout\ = (\dut_alu|dut_divider_u|A\(3) & ((\dut_decorder|src2_d\(3) & (\dut_alu|dut_divider_u|result[2]~22\ & VCC)) # (!\dut_decorder|src2_d\(3) & (!\dut_alu|dut_divider_u|result[2]~22\)))) # 
-- (!\dut_alu|dut_divider_u|A\(3) & ((\dut_decorder|src2_d\(3) & (!\dut_alu|dut_divider_u|result[2]~22\)) # (!\dut_decorder|src2_d\(3) & ((\dut_alu|dut_divider_u|result[2]~22\) # (GND)))))
-- \dut_alu|dut_divider_u|result[3]~24\ = CARRY((\dut_alu|dut_divider_u|A\(3) & (!\dut_decorder|src2_d\(3) & !\dut_alu|dut_divider_u|result[2]~22\)) # (!\dut_alu|dut_divider_u|A\(3) & ((!\dut_alu|dut_divider_u|result[2]~22\) # (!\dut_decorder|src2_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(3),
	datab => \dut_decorder|src2_d\(3),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[2]~22\,
	combout => \dut_alu|dut_divider_u|result[3]~23_combout\,
	cout => \dut_alu|dut_divider_u|result[3]~24\);

-- Location: LCCOMB_X20_Y20_N8
\dut_alu|dut_divider_u|result[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[4]~25_combout\ = ((\dut_alu|dut_divider_u|A\(4) $ (\dut_decorder|src2_d\(4) $ (!\dut_alu|dut_divider_u|result[3]~24\)))) # (GND)
-- \dut_alu|dut_divider_u|result[4]~26\ = CARRY((\dut_alu|dut_divider_u|A\(4) & ((\dut_decorder|src2_d\(4)) # (!\dut_alu|dut_divider_u|result[3]~24\))) # (!\dut_alu|dut_divider_u|A\(4) & (\dut_decorder|src2_d\(4) & !\dut_alu|dut_divider_u|result[3]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(4),
	datab => \dut_decorder|src2_d\(4),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[3]~24\,
	combout => \dut_alu|dut_divider_u|result[4]~25_combout\,
	cout => \dut_alu|dut_divider_u|result[4]~26\);

-- Location: LCCOMB_X20_Y20_N10
\dut_alu|dut_divider_u|result[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[5]~27_combout\ = (\dut_alu|dut_divider_u|A\(5) & ((\dut_decorder|src2_d\(5) & (\dut_alu|dut_divider_u|result[4]~26\ & VCC)) # (!\dut_decorder|src2_d\(5) & (!\dut_alu|dut_divider_u|result[4]~26\)))) # 
-- (!\dut_alu|dut_divider_u|A\(5) & ((\dut_decorder|src2_d\(5) & (!\dut_alu|dut_divider_u|result[4]~26\)) # (!\dut_decorder|src2_d\(5) & ((\dut_alu|dut_divider_u|result[4]~26\) # (GND)))))
-- \dut_alu|dut_divider_u|result[5]~28\ = CARRY((\dut_alu|dut_divider_u|A\(5) & (!\dut_decorder|src2_d\(5) & !\dut_alu|dut_divider_u|result[4]~26\)) # (!\dut_alu|dut_divider_u|A\(5) & ((!\dut_alu|dut_divider_u|result[4]~26\) # (!\dut_decorder|src2_d\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(5),
	datab => \dut_decorder|src2_d\(5),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[4]~26\,
	combout => \dut_alu|dut_divider_u|result[5]~27_combout\,
	cout => \dut_alu|dut_divider_u|result[5]~28\);

-- Location: LCCOMB_X20_Y20_N12
\dut_alu|dut_divider_u|result[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[6]~29_combout\ = ((\dut_decorder|src2_d\(6) $ (\dut_alu|dut_divider_u|A\(6) $ (!\dut_alu|dut_divider_u|result[5]~28\)))) # (GND)
-- \dut_alu|dut_divider_u|result[6]~30\ = CARRY((\dut_decorder|src2_d\(6) & ((\dut_alu|dut_divider_u|A\(6)) # (!\dut_alu|dut_divider_u|result[5]~28\))) # (!\dut_decorder|src2_d\(6) & (\dut_alu|dut_divider_u|A\(6) & !\dut_alu|dut_divider_u|result[5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(6),
	datab => \dut_alu|dut_divider_u|A\(6),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[5]~28\,
	combout => \dut_alu|dut_divider_u|result[6]~29_combout\,
	cout => \dut_alu|dut_divider_u|result[6]~30\);

-- Location: LCCOMB_X20_Y20_N14
\dut_alu|dut_divider_u|result[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[7]~31_combout\ = (\dut_alu|dut_divider_u|A\(7) & ((\dut_decorder|src2_d\(7) & (\dut_alu|dut_divider_u|result[6]~30\ & VCC)) # (!\dut_decorder|src2_d\(7) & (!\dut_alu|dut_divider_u|result[6]~30\)))) # 
-- (!\dut_alu|dut_divider_u|A\(7) & ((\dut_decorder|src2_d\(7) & (!\dut_alu|dut_divider_u|result[6]~30\)) # (!\dut_decorder|src2_d\(7) & ((\dut_alu|dut_divider_u|result[6]~30\) # (GND)))))
-- \dut_alu|dut_divider_u|result[7]~32\ = CARRY((\dut_alu|dut_divider_u|A\(7) & (!\dut_decorder|src2_d\(7) & !\dut_alu|dut_divider_u|result[6]~30\)) # (!\dut_alu|dut_divider_u|A\(7) & ((!\dut_alu|dut_divider_u|result[6]~30\) # (!\dut_decorder|src2_d\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(7),
	datab => \dut_decorder|src2_d\(7),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[6]~30\,
	combout => \dut_alu|dut_divider_u|result[7]~31_combout\,
	cout => \dut_alu|dut_divider_u|result[7]~32\);

-- Location: LCCOMB_X20_Y20_N16
\dut_alu|dut_divider_u|result[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[8]~33_combout\ = ((\dut_decorder|src2_d\(8) $ (\dut_alu|dut_divider_u|A\(8) $ (!\dut_alu|dut_divider_u|result[7]~32\)))) # (GND)
-- \dut_alu|dut_divider_u|result[8]~34\ = CARRY((\dut_decorder|src2_d\(8) & ((\dut_alu|dut_divider_u|A\(8)) # (!\dut_alu|dut_divider_u|result[7]~32\))) # (!\dut_decorder|src2_d\(8) & (\dut_alu|dut_divider_u|A\(8) & !\dut_alu|dut_divider_u|result[7]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(8),
	datab => \dut_alu|dut_divider_u|A\(8),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[7]~32\,
	combout => \dut_alu|dut_divider_u|result[8]~33_combout\,
	cout => \dut_alu|dut_divider_u|result[8]~34\);

-- Location: FF_X20_Y20_N17
\dut_alu|dut_divider_u|result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[8]~33_combout\,
	asdata => \dut_alu|dut_divider_u|A\(8),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(8));

-- Location: LCCOMB_X21_Y21_N4
\dut_alu|dut_mul_u|result[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[8]~feeder_combout\ = \dut_alu|dut_mul_u|q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(8),
	combout => \dut_alu|dut_mul_u|result[8]~feeder_combout\);

-- Location: FF_X21_Y21_N5
\dut_alu|dut_mul_u|result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[8]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(8));

-- Location: FF_X24_Y21_N17
\dut_alu|dut_mul_s|result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|q\(8),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(8));

-- Location: LCCOMB_X23_Y20_N26
\dut_alu|result[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[8]~2_combout\ = (\dut_alu|dut_divider_u|result\(8)) # ((\dut_alu|dut_mul_u|result\(8)) # (\dut_alu|dut_mul_s|result\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(8),
	datab => \dut_alu|dut_mul_u|result\(8),
	datad => \dut_alu|dut_mul_s|result\(8),
	combout => \dut_alu|result[8]~2_combout\);

-- Location: FF_X22_Y21_N3
\dut_alu|dut_mul_u|result[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(0),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(16));

-- Location: LCCOMB_X26_Y21_N4
\dut_alu|dut_mul_s|result[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[16]~feeder_combout\ = \dut_alu|dut_mul_s|A\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|A\(0),
	combout => \dut_alu|dut_mul_s|result[16]~feeder_combout\);

-- Location: FF_X26_Y21_N5
\dut_alu|dut_mul_s|result[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[16]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(16));

-- Location: LCCOMB_X23_Y20_N4
\dut_alu|result[16]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[16]~5_combout\ = (\dut_alu|dut_mul_u|result\(16)) # ((\dut_alu|dut_divider_u|q\(0)) # (\dut_alu|dut_mul_s|result\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(16),
	datab => \dut_alu|dut_divider_u|q\(0),
	datad => \dut_alu|dut_mul_s|result\(16),
	combout => \dut_alu|result[16]~5_combout\);

-- Location: LCCOMB_X22_Y22_N2
\dut_alu|dut_mul_u|result[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[24]~feeder_combout\ = \dut_alu|dut_mul_u|A\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|A\(8),
	combout => \dut_alu|dut_mul_u|result[24]~feeder_combout\);

-- Location: FF_X22_Y22_N3
\dut_alu|dut_mul_u|result[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[24]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(24));

-- Location: LCCOMB_X23_Y23_N0
\dut_alu|dut_mul_s|result[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[24]~feeder_combout\ = \dut_alu|dut_mul_s|A\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_s|A\(8),
	combout => \dut_alu|dut_mul_s|result[24]~feeder_combout\);

-- Location: FF_X23_Y23_N1
\dut_alu|dut_mul_s|result[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[24]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(24));

-- Location: LCCOMB_X23_Y23_N8
\dut_alu|result[24]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[24]~9_combout\ = (\dut_alu|dut_divider_u|q\(8)) # ((\dut_alu|dut_mul_u|result\(24)) # (\dut_alu|dut_mul_s|result\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(8),
	datab => \dut_alu|dut_mul_u|result\(24),
	datad => \dut_alu|dut_mul_s|result\(24),
	combout => \dut_alu|result[24]~9_combout\);

-- Location: FF_X23_Y23_N9
\dut_uart|dut_tx|data_32[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[24]~9_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(24));

-- Location: FF_X23_Y20_N5
\dut_uart|dut_tx|data_32[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[16]~5_combout\,
	asdata => \dut_uart|dut_tx|data_32\(24),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(16));

-- Location: FF_X23_Y20_N27
\dut_uart|dut_tx|data_32[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[8]~2_combout\,
	asdata => \dut_uart|dut_tx|data_32\(16),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(8));

-- Location: FF_X23_Y20_N1
\dut_uart|dut_tx|data_32[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[0]~0_combout\,
	asdata => \dut_uart|dut_tx|data_32\(8),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(0));

-- Location: LCCOMB_X21_Y21_N24
\dut_alu|dut_mul_u|result[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[1]~feeder_combout\ = \dut_alu|dut_mul_u|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(1),
	combout => \dut_alu|dut_mul_u|result[1]~feeder_combout\);

-- Location: FF_X21_Y21_N25
\dut_alu|dut_mul_u|result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[1]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(1));

-- Location: FF_X20_Y20_N3
\dut_alu|dut_divider_u|result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[1]~19_combout\,
	asdata => \dut_alu|dut_divider_u|A\(1),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(1));

-- Location: LCCOMB_X26_Y21_N12
\dut_alu|dut_mul_s|result[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[1]~feeder_combout\ = \dut_alu|dut_mul_s|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_s|q\(1),
	combout => \dut_alu|dut_mul_s|result[1]~feeder_combout\);

-- Location: FF_X26_Y21_N13
\dut_alu|dut_mul_s|result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[1]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(1));

-- Location: LCCOMB_X23_Y21_N4
\dut_alu|result[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[1]~1_combout\ = (\dut_alu|dut_mul_u|result\(1)) # ((\dut_alu|dut_divider_u|result\(1)) # (\dut_alu|dut_mul_s|result\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(1),
	datab => \dut_alu|dut_divider_u|result\(1),
	datad => \dut_alu|dut_mul_s|result\(1),
	combout => \dut_alu|result[1]~1_combout\);

-- Location: LCCOMB_X20_Y20_N18
\dut_alu|dut_divider_u|result[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[9]~35_combout\ = (\dut_decorder|src2_d\(9) & ((\dut_alu|dut_divider_u|A\(9) & (\dut_alu|dut_divider_u|result[8]~34\ & VCC)) # (!\dut_alu|dut_divider_u|A\(9) & (!\dut_alu|dut_divider_u|result[8]~34\)))) # 
-- (!\dut_decorder|src2_d\(9) & ((\dut_alu|dut_divider_u|A\(9) & (!\dut_alu|dut_divider_u|result[8]~34\)) # (!\dut_alu|dut_divider_u|A\(9) & ((\dut_alu|dut_divider_u|result[8]~34\) # (GND)))))
-- \dut_alu|dut_divider_u|result[9]~36\ = CARRY((\dut_decorder|src2_d\(9) & (!\dut_alu|dut_divider_u|A\(9) & !\dut_alu|dut_divider_u|result[8]~34\)) # (!\dut_decorder|src2_d\(9) & ((!\dut_alu|dut_divider_u|result[8]~34\) # (!\dut_alu|dut_divider_u|A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(9),
	datab => \dut_alu|dut_divider_u|A\(9),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[8]~34\,
	combout => \dut_alu|dut_divider_u|result[9]~35_combout\,
	cout => \dut_alu|dut_divider_u|result[9]~36\);

-- Location: FF_X20_Y20_N19
\dut_alu|dut_divider_u|result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[9]~35_combout\,
	asdata => \dut_alu|dut_divider_u|A\(9),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(9));

-- Location: LCCOMB_X23_Y21_N2
\dut_alu|dut_mul_s|result[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[9]~feeder_combout\ = \dut_alu|dut_mul_s|q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_s|q\(9),
	combout => \dut_alu|dut_mul_s|result[9]~feeder_combout\);

-- Location: FF_X23_Y21_N3
\dut_alu|dut_mul_s|result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[9]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(9));

-- Location: FF_X22_Y21_N9
\dut_alu|dut_mul_u|result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(9),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(9));

-- Location: LCCOMB_X23_Y21_N8
\dut_alu|result[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[9]~4_combout\ = (\dut_alu|dut_divider_u|result\(9)) # ((\dut_alu|dut_mul_s|result\(9)) # (\dut_alu|dut_mul_u|result\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(9),
	datab => \dut_alu|dut_mul_s|result\(9),
	datad => \dut_alu|dut_mul_u|result\(9),
	combout => \dut_alu|result[9]~4_combout\);

-- Location: LCCOMB_X21_Y23_N14
\dut_alu|dut_mul_u|result[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[17]~feeder_combout\ = \dut_alu|dut_mul_u|A\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|A\(1),
	combout => \dut_alu|dut_mul_u|result[17]~feeder_combout\);

-- Location: FF_X21_Y23_N15
\dut_alu|dut_mul_u|result[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[17]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(17));

-- Location: LCCOMB_X26_Y21_N10
\dut_alu|dut_mul_s|result[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[17]~feeder_combout\ = \dut_alu|dut_mul_s|A\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|A\(1),
	combout => \dut_alu|dut_mul_s|result[17]~feeder_combout\);

-- Location: FF_X26_Y21_N11
\dut_alu|dut_mul_s|result[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[17]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(17));

-- Location: LCCOMB_X23_Y21_N26
\dut_alu|result[17]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[17]~8_combout\ = (\dut_alu|dut_mul_u|result\(17)) # ((\dut_alu|dut_divider_u|q\(1)) # (\dut_alu|dut_mul_s|result\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(17),
	datab => \dut_alu|dut_divider_u|q\(1),
	datad => \dut_alu|dut_mul_s|result\(17),
	combout => \dut_alu|result[17]~8_combout\);

-- Location: LCCOMB_X22_Y22_N4
\dut_alu|dut_mul_u|result[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[25]~feeder_combout\ = \dut_alu|dut_mul_u|A\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|A\(9),
	combout => \dut_alu|dut_mul_u|result[25]~feeder_combout\);

-- Location: FF_X22_Y22_N5
\dut_alu|dut_mul_u|result[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[25]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(25));

-- Location: LCCOMB_X23_Y23_N2
\dut_alu|dut_mul_s|result[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[25]~feeder_combout\ = \dut_alu|dut_mul_s|A\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_s|A\(9),
	combout => \dut_alu|dut_mul_s|result[25]~feeder_combout\);

-- Location: FF_X23_Y23_N3
\dut_alu|dut_mul_s|result[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[25]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(25));

-- Location: LCCOMB_X23_Y23_N18
\dut_alu|result[25]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[25]~13_combout\ = (\dut_alu|dut_mul_u|result\(25)) # ((\dut_alu|dut_divider_u|q\(9)) # (\dut_alu|dut_mul_s|result\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(25),
	datab => \dut_alu|dut_divider_u|q\(9),
	datad => \dut_alu|dut_mul_s|result\(25),
	combout => \dut_alu|result[25]~13_combout\);

-- Location: FF_X23_Y23_N19
\dut_uart|dut_tx|data_32[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[25]~13_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(25));

-- Location: FF_X23_Y21_N27
\dut_uart|dut_tx|data_32[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[17]~8_combout\,
	asdata => \dut_uart|dut_tx|data_32\(25),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(17));

-- Location: FF_X23_Y21_N9
\dut_uart|dut_tx|data_32[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[9]~4_combout\,
	asdata => \dut_uart|dut_tx|data_32\(17),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(9));

-- Location: FF_X23_Y21_N5
\dut_uart|dut_tx|data_32[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[1]~1_combout\,
	asdata => \dut_uart|dut_tx|data_32\(9),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(1));

-- Location: LCCOMB_X21_Y21_N2
\dut_alu|dut_mul_u|result[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[3]~feeder_combout\ = \dut_alu|dut_mul_u|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(3),
	combout => \dut_alu|dut_mul_u|result[3]~feeder_combout\);

-- Location: FF_X21_Y21_N3
\dut_alu|dut_mul_u|result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[3]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(3));

-- Location: FF_X20_Y20_N7
\dut_alu|dut_divider_u|result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[3]~23_combout\,
	asdata => \dut_alu|dut_divider_u|A\(3),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(3));

-- Location: LCCOMB_X26_Y21_N22
\dut_alu|dut_mul_s|result[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[3]~feeder_combout\ = \dut_alu|dut_mul_s|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(3),
	combout => \dut_alu|dut_mul_s|result[3]~feeder_combout\);

-- Location: FF_X26_Y21_N23
\dut_alu|dut_mul_s|result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[3]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(3));

-- Location: LCCOMB_X20_Y21_N4
\dut_alu|result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[3]~6_combout\ = (\dut_alu|dut_mul_u|result\(3)) # ((\dut_alu|dut_divider_u|result\(3)) # (\dut_alu|dut_mul_s|result\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(3),
	datab => \dut_alu|dut_divider_u|result\(3),
	datad => \dut_alu|dut_mul_s|result\(3),
	combout => \dut_alu|result[3]~6_combout\);

-- Location: LCCOMB_X22_Y21_N16
\dut_alu|dut_mul_u|result[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[11]~feeder_combout\ = \dut_alu|dut_mul_u|q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(11),
	combout => \dut_alu|dut_mul_u|result[11]~feeder_combout\);

-- Location: FF_X22_Y21_N17
\dut_alu|dut_mul_u|result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[11]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(11));

-- Location: LCCOMB_X20_Y20_N20
\dut_alu|dut_divider_u|result[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[10]~37_combout\ = ((\dut_decorder|src2_d\(10) $ (\dut_alu|dut_divider_u|A\(10) $ (!\dut_alu|dut_divider_u|result[9]~36\)))) # (GND)
-- \dut_alu|dut_divider_u|result[10]~38\ = CARRY((\dut_decorder|src2_d\(10) & ((\dut_alu|dut_divider_u|A\(10)) # (!\dut_alu|dut_divider_u|result[9]~36\))) # (!\dut_decorder|src2_d\(10) & (\dut_alu|dut_divider_u|A\(10) & 
-- !\dut_alu|dut_divider_u|result[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(10),
	datab => \dut_alu|dut_divider_u|A\(10),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[9]~36\,
	combout => \dut_alu|dut_divider_u|result[10]~37_combout\,
	cout => \dut_alu|dut_divider_u|result[10]~38\);

-- Location: LCCOMB_X20_Y20_N22
\dut_alu|dut_divider_u|result[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[11]~39_combout\ = (\dut_alu|dut_divider_u|A\(11) & ((\dut_decorder|src2_d\(11) & (\dut_alu|dut_divider_u|result[10]~38\ & VCC)) # (!\dut_decorder|src2_d\(11) & (!\dut_alu|dut_divider_u|result[10]~38\)))) # 
-- (!\dut_alu|dut_divider_u|A\(11) & ((\dut_decorder|src2_d\(11) & (!\dut_alu|dut_divider_u|result[10]~38\)) # (!\dut_decorder|src2_d\(11) & ((\dut_alu|dut_divider_u|result[10]~38\) # (GND)))))
-- \dut_alu|dut_divider_u|result[11]~40\ = CARRY((\dut_alu|dut_divider_u|A\(11) & (!\dut_decorder|src2_d\(11) & !\dut_alu|dut_divider_u|result[10]~38\)) # (!\dut_alu|dut_divider_u|A\(11) & ((!\dut_alu|dut_divider_u|result[10]~38\) # 
-- (!\dut_decorder|src2_d\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(11),
	datab => \dut_decorder|src2_d\(11),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[10]~38\,
	combout => \dut_alu|dut_divider_u|result[11]~39_combout\,
	cout => \dut_alu|dut_divider_u|result[11]~40\);

-- Location: FF_X20_Y20_N23
\dut_alu|dut_divider_u|result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[11]~39_combout\,
	asdata => \dut_alu|dut_divider_u|A\(11),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(11));

-- Location: LCCOMB_X24_Y21_N6
\dut_alu|dut_mul_s|result[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[11]~feeder_combout\ = \dut_alu|dut_mul_s|q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(11),
	combout => \dut_alu|dut_mul_s|result[11]~feeder_combout\);

-- Location: FF_X24_Y21_N7
\dut_alu|dut_mul_s|result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[11]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(11));

-- Location: LCCOMB_X23_Y21_N20
\dut_alu|result[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[11]~11_combout\ = (\dut_alu|dut_mul_u|result\(11)) # ((\dut_alu|dut_divider_u|result\(11)) # (\dut_alu|dut_mul_s|result\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(11),
	datab => \dut_alu|dut_divider_u|result\(11),
	datad => \dut_alu|dut_mul_s|result\(11),
	combout => \dut_alu|result[11]~11_combout\);

-- Location: LCCOMB_X22_Y23_N6
\dut_alu|dut_mul_u|result[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[19]~feeder_combout\ = \dut_alu|dut_mul_u|A\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_u|A\(3),
	combout => \dut_alu|dut_mul_u|result[19]~feeder_combout\);

-- Location: FF_X22_Y23_N7
\dut_alu|dut_mul_u|result[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[19]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(19));

-- Location: FF_X24_Y21_N3
\dut_alu|dut_mul_s|result[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(3),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(19));

-- Location: LCCOMB_X23_Y21_N22
\dut_alu|result[19]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[19]~16_combout\ = (\dut_alu|dut_divider_u|q\(3)) # ((\dut_alu|dut_mul_u|result\(19)) # (\dut_alu|dut_mul_s|result\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(3),
	datab => \dut_alu|dut_mul_u|result\(19),
	datad => \dut_alu|dut_mul_s|result\(19),
	combout => \dut_alu|result[19]~16_combout\);

-- Location: LCCOMB_X22_Y22_N0
\dut_alu|dut_mul_u|result[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[27]~feeder_combout\ = \dut_alu|dut_mul_u|A\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_u|A\(11),
	combout => \dut_alu|dut_mul_u|result[27]~feeder_combout\);

-- Location: FF_X22_Y22_N1
\dut_alu|dut_mul_u|result[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[27]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(27));

-- Location: LCCOMB_X23_Y23_N12
\dut_alu|dut_mul_s|result[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[27]~feeder_combout\ = \dut_alu|dut_mul_s|A\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_s|A\(11),
	combout => \dut_alu|dut_mul_s|result[27]~feeder_combout\);

-- Location: FF_X23_Y23_N13
\dut_alu|dut_mul_s|result[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[27]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(27));

-- Location: LCCOMB_X23_Y23_N6
\dut_alu|result[27]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[27]~21_combout\ = (\dut_alu|dut_mul_u|result\(27)) # ((\dut_alu|dut_divider_u|q\(11)) # (\dut_alu|dut_mul_s|result\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|result\(27),
	datac => \dut_alu|dut_divider_u|q\(11),
	datad => \dut_alu|dut_mul_s|result\(27),
	combout => \dut_alu|result[27]~21_combout\);

-- Location: FF_X23_Y23_N7
\dut_uart|dut_tx|data_32[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[27]~21_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(27));

-- Location: FF_X23_Y21_N23
\dut_uart|dut_tx|data_32[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[19]~16_combout\,
	asdata => \dut_uart|dut_tx|data_32\(27),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(19));

-- Location: FF_X23_Y21_N21
\dut_uart|dut_tx|data_32[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[11]~11_combout\,
	asdata => \dut_uart|dut_tx|data_32\(19),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(11));

-- Location: FF_X20_Y21_N5
\dut_uart|dut_tx|data_32[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[3]~6_combout\,
	asdata => \dut_uart|dut_tx|data_32\(11),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(3));

-- Location: FF_X20_Y20_N13
\dut_alu|dut_divider_u|result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[6]~29_combout\,
	asdata => \dut_alu|dut_divider_u|A\(6),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(6));

-- Location: LCCOMB_X21_Y21_N28
\dut_alu|dut_mul_u|result[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[6]~feeder_combout\ = \dut_alu|dut_mul_u|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(6),
	combout => \dut_alu|dut_mul_u|result[6]~feeder_combout\);

-- Location: FF_X21_Y21_N29
\dut_alu|dut_mul_u|result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[6]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(6));

-- Location: LCCOMB_X24_Y21_N4
\dut_alu|dut_mul_s|result[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[6]~feeder_combout\ = \dut_alu|dut_mul_s|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(6),
	combout => \dut_alu|dut_mul_s|result[6]~feeder_combout\);

-- Location: FF_X24_Y21_N5
\dut_alu|dut_mul_s|result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[6]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(6));

-- Location: LCCOMB_X20_Y21_N6
\dut_alu|result[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[6]~18_combout\ = (\dut_alu|dut_divider_u|result\(6)) # ((\dut_alu|dut_mul_u|result\(6)) # (\dut_alu|dut_mul_s|result\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(6),
	datab => \dut_alu|dut_mul_u|result\(6),
	datad => \dut_alu|dut_mul_s|result\(6),
	combout => \dut_alu|result[6]~18_combout\);

-- Location: LCCOMB_X20_Y20_N24
\dut_alu|dut_divider_u|result[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[12]~41_combout\ = ((\dut_alu|dut_divider_u|A\(12) $ (\dut_decorder|src2_d\(12) $ (!\dut_alu|dut_divider_u|result[11]~40\)))) # (GND)
-- \dut_alu|dut_divider_u|result[12]~42\ = CARRY((\dut_alu|dut_divider_u|A\(12) & ((\dut_decorder|src2_d\(12)) # (!\dut_alu|dut_divider_u|result[11]~40\))) # (!\dut_alu|dut_divider_u|A\(12) & (\dut_decorder|src2_d\(12) & 
-- !\dut_alu|dut_divider_u|result[11]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(12),
	datab => \dut_decorder|src2_d\(12),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[11]~40\,
	combout => \dut_alu|dut_divider_u|result[12]~41_combout\,
	cout => \dut_alu|dut_divider_u|result[12]~42\);

-- Location: LCCOMB_X20_Y20_N26
\dut_alu|dut_divider_u|result[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[13]~43_combout\ = (\dut_decorder|src2_d\(13) & ((\dut_alu|dut_divider_u|A\(13) & (\dut_alu|dut_divider_u|result[12]~42\ & VCC)) # (!\dut_alu|dut_divider_u|A\(13) & (!\dut_alu|dut_divider_u|result[12]~42\)))) # 
-- (!\dut_decorder|src2_d\(13) & ((\dut_alu|dut_divider_u|A\(13) & (!\dut_alu|dut_divider_u|result[12]~42\)) # (!\dut_alu|dut_divider_u|A\(13) & ((\dut_alu|dut_divider_u|result[12]~42\) # (GND)))))
-- \dut_alu|dut_divider_u|result[13]~44\ = CARRY((\dut_decorder|src2_d\(13) & (!\dut_alu|dut_divider_u|A\(13) & !\dut_alu|dut_divider_u|result[12]~42\)) # (!\dut_decorder|src2_d\(13) & ((!\dut_alu|dut_divider_u|result[12]~42\) # 
-- (!\dut_alu|dut_divider_u|A\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(13),
	datab => \dut_alu|dut_divider_u|A\(13),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[12]~42\,
	combout => \dut_alu|dut_divider_u|result[13]~43_combout\,
	cout => \dut_alu|dut_divider_u|result[13]~44\);

-- Location: LCCOMB_X20_Y20_N28
\dut_alu|dut_divider_u|result[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[14]~45_combout\ = ((\dut_decorder|src2_d\(14) $ (\dut_alu|dut_divider_u|A\(14) $ (!\dut_alu|dut_divider_u|result[13]~44\)))) # (GND)
-- \dut_alu|dut_divider_u|result[14]~46\ = CARRY((\dut_decorder|src2_d\(14) & ((\dut_alu|dut_divider_u|A\(14)) # (!\dut_alu|dut_divider_u|result[13]~44\))) # (!\dut_decorder|src2_d\(14) & (\dut_alu|dut_divider_u|A\(14) & 
-- !\dut_alu|dut_divider_u|result[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_decorder|src2_d\(14),
	datab => \dut_alu|dut_divider_u|A\(14),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[13]~44\,
	combout => \dut_alu|dut_divider_u|result[14]~45_combout\,
	cout => \dut_alu|dut_divider_u|result[14]~46\);

-- Location: FF_X20_Y20_N29
\dut_alu|dut_divider_u|result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[14]~45_combout\,
	asdata => \dut_alu|dut_divider_u|A\(14),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(14));

-- Location: LCCOMB_X20_Y21_N20
\dut_alu|dut_mul_u|result[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[14]~feeder_combout\ = \dut_alu|dut_mul_u|q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(14),
	combout => \dut_alu|dut_mul_u|result[14]~feeder_combout\);

-- Location: FF_X20_Y21_N21
\dut_alu|dut_mul_u|result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[14]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(14));

-- Location: LCCOMB_X24_Y19_N10
\dut_alu|dut_mul_s|result[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[14]~feeder_combout\ = \dut_alu|dut_mul_s|q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(14),
	combout => \dut_alu|dut_mul_s|result[14]~feeder_combout\);

-- Location: FF_X24_Y19_N11
\dut_alu|dut_mul_s|result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[14]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(14));

-- Location: LCCOMB_X20_Y21_N30
\dut_alu|result[14]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[14]~23_combout\ = (\dut_alu|dut_divider_u|result\(14)) # ((\dut_alu|dut_mul_u|result\(14)) # (\dut_alu|dut_mul_s|result\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(14),
	datab => \dut_alu|dut_mul_u|result\(14),
	datad => \dut_alu|dut_mul_s|result\(14),
	combout => \dut_alu|result[14]~23_combout\);

-- Location: LCCOMB_X20_Y21_N24
\dut_alu|dut_mul_u|result[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[22]~feeder_combout\ = \dut_alu|dut_mul_u|A\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_u|A\(6),
	combout => \dut_alu|dut_mul_u|result[22]~feeder_combout\);

-- Location: FF_X20_Y21_N25
\dut_alu|dut_mul_u|result[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[22]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(22));

-- Location: FF_X24_Y21_N15
\dut_alu|dut_mul_s|result[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(6),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(22));

-- Location: LCCOMB_X20_Y21_N8
\dut_alu|result[22]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[22]~27_combout\ = (\dut_alu|dut_divider_u|q\(6)) # ((\dut_alu|dut_mul_u|result\(22)) # (\dut_alu|dut_mul_s|result\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(6),
	datab => \dut_alu|dut_mul_u|result\(22),
	datad => \dut_alu|dut_mul_s|result\(22),
	combout => \dut_alu|result[22]~27_combout\);

-- Location: LCCOMB_X22_Y22_N30
\dut_alu|dut_mul_u|result[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[30]~feeder_combout\ = \dut_alu|dut_mul_u|A\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|A\(14),
	combout => \dut_alu|dut_mul_u|result[30]~feeder_combout\);

-- Location: FF_X22_Y22_N31
\dut_alu|dut_mul_u|result[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[30]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(30));

-- Location: LCCOMB_X27_Y22_N0
\dut_alu|dut_mul_s|result[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[31]~feeder_combout\ = \dut_alu|dut_mul_s|A\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|A\(15),
	combout => \dut_alu|dut_mul_s|result[31]~feeder_combout\);

-- Location: FF_X27_Y22_N1
\dut_alu|dut_mul_s|result[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[31]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(31));

-- Location: LCCOMB_X23_Y23_N20
\dut_alu|result[30]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[30]~30_combout\ = (\dut_alu|dut_mul_u|result\(30)) # ((\dut_alu|dut_divider_u|q\(14)) # (\dut_alu|dut_mul_s|result\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(30),
	datab => \dut_alu|dut_divider_u|q\(14),
	datac => \dut_alu|dut_mul_s|result\(31),
	combout => \dut_alu|result[30]~30_combout\);

-- Location: FF_X23_Y23_N21
\dut_uart|dut_tx|data_32[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[30]~30_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(30));

-- Location: FF_X20_Y21_N9
\dut_uart|dut_tx|data_32[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[22]~27_combout\,
	asdata => \dut_uart|dut_tx|data_32\(30),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(22));

-- Location: FF_X20_Y21_N31
\dut_uart|dut_tx|data_32[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[14]~23_combout\,
	asdata => \dut_uart|dut_tx|data_32\(22),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(14));

-- Location: FF_X20_Y21_N7
\dut_uart|dut_tx|data_32[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[6]~18_combout\,
	asdata => \dut_uart|dut_tx|data_32\(14),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(6));

-- Location: LCCOMB_X21_Y21_N8
\dut_alu|dut_mul_u|result[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[7]~feeder_combout\ = \dut_alu|dut_mul_u|q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(7),
	combout => \dut_alu|dut_mul_u|result[7]~feeder_combout\);

-- Location: FF_X21_Y21_N9
\dut_alu|dut_mul_u|result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[7]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(7));

-- Location: FF_X20_Y20_N15
\dut_alu|dut_divider_u|result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[7]~31_combout\,
	asdata => \dut_alu|dut_divider_u|A\(7),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(7));

-- Location: LCCOMB_X24_Y21_N8
\dut_alu|dut_mul_s|result[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[7]~feeder_combout\ = \dut_alu|dut_mul_s|q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(7),
	combout => \dut_alu|dut_mul_s|result[7]~feeder_combout\);

-- Location: FF_X24_Y21_N9
\dut_alu|dut_mul_s|result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[7]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(7));

-- Location: LCCOMB_X23_Y20_N30
\dut_alu|result[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[7]~22_combout\ = (\dut_alu|dut_mul_u|result\(7)) # ((\dut_alu|dut_divider_u|result\(7)) # (\dut_alu|dut_mul_s|result\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(7),
	datab => \dut_alu|dut_divider_u|result\(7),
	datad => \dut_alu|dut_mul_s|result\(7),
	combout => \dut_alu|result[7]~22_combout\);

-- Location: FF_X22_Y21_N19
\dut_alu|dut_mul_u|result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(15),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(15));

-- Location: LCCOMB_X20_Y20_N30
\dut_alu|dut_divider_u|result[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[15]~47_combout\ = \dut_alu|dut_divider_u|A\(15) $ (\dut_alu|dut_divider_u|result[14]~46\ $ (\dut_decorder|src2_d\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(15),
	datad => \dut_decorder|src2_d\(15),
	cin => \dut_alu|dut_divider_u|result[14]~46\,
	combout => \dut_alu|dut_divider_u|result[15]~47_combout\);

-- Location: FF_X20_Y20_N31
\dut_alu|dut_divider_u|result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[15]~47_combout\,
	asdata => \dut_alu|dut_divider_u|A\(15),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(15));

-- Location: LCCOMB_X24_Y19_N6
\dut_alu|dut_mul_s|result[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[15]~feeder_combout\ = \dut_alu|dut_mul_s|q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(15),
	combout => \dut_alu|dut_mul_s|result[15]~feeder_combout\);

-- Location: FF_X24_Y19_N7
\dut_alu|dut_mul_s|result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[15]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(15));

-- Location: LCCOMB_X23_Y20_N8
\dut_alu|result[15]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[15]~26_combout\ = (\dut_alu|dut_mul_u|result\(15)) # ((\dut_alu|dut_divider_u|result\(15)) # (\dut_alu|dut_mul_s|result\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(15),
	datab => \dut_alu|dut_divider_u|result\(15),
	datad => \dut_alu|dut_mul_s|result\(15),
	combout => \dut_alu|result[15]~26_combout\);

-- Location: LCCOMB_X22_Y22_N20
\dut_alu|dut_mul_u|result[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[23]~feeder_combout\ = \dut_alu|dut_mul_u|A\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|A\(7),
	combout => \dut_alu|dut_mul_u|result[23]~feeder_combout\);

-- Location: FF_X22_Y22_N21
\dut_alu|dut_mul_u|result[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[23]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(23));

-- Location: LCCOMB_X26_Y20_N20
\dut_alu|dut_mul_s|result[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[23]~feeder_combout\ = \dut_alu|dut_mul_s|A\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_s|A\(7),
	combout => \dut_alu|dut_mul_s|result[23]~feeder_combout\);

-- Location: FF_X26_Y20_N21
\dut_alu|dut_mul_s|result[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[23]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(23));

-- Location: LCCOMB_X23_Y20_N10
\dut_alu|result[23]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[23]~29_combout\ = (\dut_alu|dut_divider_u|q\(7)) # ((\dut_alu|dut_mul_u|result\(23)) # (\dut_alu|dut_mul_s|result\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(7),
	datab => \dut_alu|dut_mul_u|result\(23),
	datad => \dut_alu|dut_mul_s|result\(23),
	combout => \dut_alu|result[23]~29_combout\);

-- Location: LCCOMB_X22_Y23_N22
\dut_alu|dut_mul_u|result[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[31]~feeder_combout\ = \dut_alu|dut_mul_u|A\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|A\(15),
	combout => \dut_alu|dut_mul_u|result[31]~feeder_combout\);

-- Location: FF_X22_Y23_N23
\dut_alu|dut_mul_u|result[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[31]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(31));

-- Location: LCCOMB_X23_Y23_N14
\dut_alu|result[31]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[31]~31_combout\ = (\dut_alu|dut_mul_u|result\(31)) # ((\dut_alu|dut_mul_s|result\(31)) # (\dut_alu|dut_divider_u|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|result\(31),
	datac => \dut_alu|dut_mul_s|result\(31),
	datad => \dut_alu|dut_divider_u|q\(15),
	combout => \dut_alu|result[31]~31_combout\);

-- Location: FF_X23_Y23_N15
\dut_uart|dut_tx|data_32[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[31]~31_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(31));

-- Location: FF_X23_Y20_N11
\dut_uart|dut_tx|data_32[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[23]~29_combout\,
	asdata => \dut_uart|dut_tx|data_32\(31),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(23));

-- Location: FF_X23_Y20_N9
\dut_uart|dut_tx|data_32[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[15]~26_combout\,
	asdata => \dut_uart|dut_tx|data_32\(23),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(15));

-- Location: FF_X23_Y20_N31
\dut_uart|dut_tx|data_32[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[7]~22_combout\,
	asdata => \dut_uart|dut_tx|data_32\(15),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(7));

-- Location: LCCOMB_X19_Y21_N22
\dut_uart|dut_tx|shift_data~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~8_combout\ = (\dut_uart|dut_tx|tx_state.START~q\ & ((\dut_uart|dut_gen_en|Equal0~0_combout\ & ((\dut_uart|dut_tx|data_32\(7)))) # (!\dut_uart|dut_gen_en|Equal0~0_combout\ & (\dut_uart|dut_tx|shift_data\(7))))) # 
-- (!\dut_uart|dut_tx|tx_state.START~q\ & (\dut_uart|dut_tx|shift_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_state.START~q\,
	datab => \dut_uart|dut_tx|shift_data\(7),
	datac => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datad => \dut_uart|dut_tx|data_32\(7),
	combout => \dut_uart|dut_tx|shift_data~8_combout\);

-- Location: LCCOMB_X19_Y21_N14
\dut_uart|dut_tx|shift_data~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~9_combout\ = (\dut_uart|dut_tx|shift_data~8_combout\) # ((\dut_uart|dut_tx|tx_state.DATA~q\ & \dut_uart|dut_gen_en|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|shift_data~8_combout\,
	datab => \dut_uart|dut_tx|tx_state.DATA~q\,
	datac => \dut_uart|dut_gen_en|Equal0~0_combout\,
	combout => \dut_uart|dut_tx|shift_data~9_combout\);

-- Location: FF_X19_Y21_N15
\dut_uart|dut_tx|shift_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~9_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(7));

-- Location: LCCOMB_X19_Y21_N12
\dut_uart|dut_tx|shift_data~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~7_combout\ = (\dut_uart|dut_gen_en|Equal0~0_combout\ & ((\dut_uart|dut_tx|tx_state.DATA~q\ & ((\dut_uart|dut_tx|shift_data\(7)))) # (!\dut_uart|dut_tx|tx_state.DATA~q\ & (\dut_uart|dut_tx|data_32\(6))))) # 
-- (!\dut_uart|dut_gen_en|Equal0~0_combout\ & (\dut_uart|dut_tx|data_32\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|data_32\(6),
	datab => \dut_uart|dut_tx|shift_data\(7),
	datac => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datad => \dut_uart|dut_tx|tx_state.DATA~q\,
	combout => \dut_uart|dut_tx|shift_data~7_combout\);

-- Location: LCCOMB_X19_Y21_N4
\dut_uart|dut_tx|shift_data[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data[3]~1_combout\ = (\dut_uart|dut_tx|tx_state.STOP~q\) # ((\dut_uart|dut_gen_en|Equal0~0_combout\ & ((\dut_uart|dut_tx|tx_state.START~q\) # (\dut_uart|dut_tx|tx_state.DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_state.START~q\,
	datab => \dut_uart|dut_tx|tx_state.STOP~q\,
	datac => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datad => \dut_uart|dut_tx|tx_state.DATA~q\,
	combout => \dut_uart|dut_tx|shift_data[3]~1_combout\);

-- Location: FF_X19_Y21_N13
\dut_uart|dut_tx|shift_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~7_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|shift_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(6));

-- Location: LCCOMB_X20_Y21_N12
\dut_alu|dut_mul_u|result[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[5]~feeder_combout\ = \dut_alu|dut_mul_u|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(5),
	combout => \dut_alu|dut_mul_u|result[5]~feeder_combout\);

-- Location: FF_X20_Y21_N13
\dut_alu|dut_mul_u|result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[5]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(5));

-- Location: FF_X20_Y20_N11
\dut_alu|dut_divider_u|result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[5]~27_combout\,
	asdata => \dut_alu|dut_divider_u|A\(5),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(5));

-- Location: FF_X24_Y21_N19
\dut_alu|dut_mul_s|result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|q\(5),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(5));

-- Location: LCCOMB_X20_Y21_N18
\dut_alu|result[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[5]~14_combout\ = (\dut_alu|dut_mul_u|result\(5)) # ((\dut_alu|dut_divider_u|result\(5)) # (\dut_alu|dut_mul_s|result\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(5),
	datab => \dut_alu|dut_divider_u|result\(5),
	datad => \dut_alu|dut_mul_s|result\(5),
	combout => \dut_alu|result[5]~14_combout\);

-- Location: LCCOMB_X24_Y19_N14
\dut_alu|dut_mul_s|result[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[13]~feeder_combout\ = \dut_alu|dut_mul_s|q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(13),
	combout => \dut_alu|dut_mul_s|result[13]~feeder_combout\);

-- Location: FF_X24_Y19_N15
\dut_alu|dut_mul_s|result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[13]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(13));

-- Location: FF_X20_Y20_N27
\dut_alu|dut_divider_u|result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[13]~43_combout\,
	asdata => \dut_alu|dut_divider_u|A\(13),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(13));

-- Location: LCCOMB_X22_Y23_N24
\dut_alu|dut_mul_u|result[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[13]~feeder_combout\ = \dut_alu|dut_mul_u|q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(13),
	combout => \dut_alu|dut_mul_u|result[13]~feeder_combout\);

-- Location: FF_X22_Y23_N25
\dut_alu|dut_mul_u|result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[13]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(13));

-- Location: LCCOMB_X22_Y23_N0
\dut_alu|result[13]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[13]~19_combout\ = (\dut_alu|dut_mul_s|result\(13)) # ((\dut_alu|dut_divider_u|result\(13)) # (\dut_alu|dut_mul_u|result\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|result\(13),
	datab => \dut_alu|dut_divider_u|result\(13),
	datad => \dut_alu|dut_mul_u|result\(13),
	combout => \dut_alu|result[13]~19_combout\);

-- Location: LCCOMB_X22_Y23_N2
\dut_alu|dut_mul_u|result[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[21]~feeder_combout\ = \dut_alu|dut_mul_u|A\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|A\(5),
	combout => \dut_alu|dut_mul_u|result[21]~feeder_combout\);

-- Location: FF_X22_Y23_N3
\dut_alu|dut_mul_u|result[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[21]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(21));

-- Location: LCCOMB_X24_Y20_N28
\dut_alu|dut_mul_s|result[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[21]~feeder_combout\ = \dut_alu|dut_mul_s|A\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_s|A\(5),
	combout => \dut_alu|dut_mul_s|result[21]~feeder_combout\);

-- Location: FF_X24_Y20_N29
\dut_alu|dut_mul_s|result[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[21]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(21));

-- Location: LCCOMB_X22_Y23_N26
\dut_alu|result[21]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[21]~24_combout\ = (\dut_alu|dut_divider_u|q\(5)) # ((\dut_alu|dut_mul_u|result\(21)) # (\dut_alu|dut_mul_s|result\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(5),
	datab => \dut_alu|dut_mul_u|result\(21),
	datad => \dut_alu|dut_mul_s|result\(21),
	combout => \dut_alu|result[21]~24_combout\);

-- Location: LCCOMB_X22_Y22_N26
\dut_alu|dut_mul_u|result[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[29]~feeder_combout\ = \dut_alu|dut_mul_u|A\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|A\(13),
	combout => \dut_alu|dut_mul_u|result[29]~feeder_combout\);

-- Location: FF_X22_Y22_N27
\dut_alu|dut_mul_u|result[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[29]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(29));

-- Location: LCCOMB_X23_Y23_N30
\dut_alu|dut_mul_s|result[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[29]~feeder_combout\ = \dut_alu|dut_mul_s|A\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_s|A\(13),
	combout => \dut_alu|dut_mul_s|result[29]~feeder_combout\);

-- Location: FF_X23_Y23_N31
\dut_alu|dut_mul_s|result[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[29]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(29));

-- Location: LCCOMB_X23_Y23_N10
\dut_alu|result[29]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[29]~28_combout\ = (\dut_alu|dut_divider_u|q\(13)) # ((\dut_alu|dut_mul_u|result\(29)) # (\dut_alu|dut_mul_s|result\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(13),
	datab => \dut_alu|dut_mul_u|result\(29),
	datac => \dut_alu|dut_mul_s|result\(29),
	combout => \dut_alu|result[29]~28_combout\);

-- Location: FF_X23_Y23_N11
\dut_uart|dut_tx|data_32[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[29]~28_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(29));

-- Location: FF_X22_Y23_N27
\dut_uart|dut_tx|data_32[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[21]~24_combout\,
	asdata => \dut_uart|dut_tx|data_32\(29),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(21));

-- Location: FF_X22_Y23_N1
\dut_uart|dut_tx|data_32[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[13]~19_combout\,
	asdata => \dut_uart|dut_tx|data_32\(21),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(13));

-- Location: FF_X20_Y21_N19
\dut_uart|dut_tx|data_32[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[5]~14_combout\,
	asdata => \dut_uart|dut_tx|data_32\(13),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(5));

-- Location: LCCOMB_X19_Y21_N18
\dut_uart|dut_tx|shift_data~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~6_combout\ = (\dut_uart|dut_gen_en|Equal0~0_combout\ & ((\dut_uart|dut_tx|tx_state.DATA~q\ & (\dut_uart|dut_tx|shift_data\(6))) # (!\dut_uart|dut_tx|tx_state.DATA~q\ & ((\dut_uart|dut_tx|data_32\(5)))))) # 
-- (!\dut_uart|dut_gen_en|Equal0~0_combout\ & (((\dut_uart|dut_tx|data_32\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|shift_data\(6),
	datab => \dut_uart|dut_tx|data_32\(5),
	datac => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datad => \dut_uart|dut_tx|tx_state.DATA~q\,
	combout => \dut_uart|dut_tx|shift_data~6_combout\);

-- Location: FF_X19_Y21_N19
\dut_uart|dut_tx|shift_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~6_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|shift_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(5));

-- Location: LCCOMB_X21_Y21_N30
\dut_alu|dut_mul_u|result[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[4]~feeder_combout\ = \dut_alu|dut_mul_u|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(4),
	combout => \dut_alu|dut_mul_u|result[4]~feeder_combout\);

-- Location: FF_X21_Y21_N31
\dut_alu|dut_mul_u|result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[4]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(4));

-- Location: FF_X20_Y20_N9
\dut_alu|dut_divider_u|result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[4]~25_combout\,
	asdata => \dut_alu|dut_divider_u|A\(4),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(4));

-- Location: LCCOMB_X26_Y21_N20
\dut_alu|dut_mul_s|result[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[4]~feeder_combout\ = \dut_alu|dut_mul_s|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(4),
	combout => \dut_alu|dut_mul_s|result[4]~feeder_combout\);

-- Location: FF_X26_Y21_N21
\dut_alu|dut_mul_s|result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[4]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(4));

-- Location: LCCOMB_X20_Y21_N16
\dut_alu|result[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[4]~10_combout\ = (\dut_alu|dut_mul_u|result\(4)) # ((\dut_alu|dut_divider_u|result\(4)) # (\dut_alu|dut_mul_s|result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(4),
	datab => \dut_alu|dut_divider_u|result\(4),
	datad => \dut_alu|dut_mul_s|result\(4),
	combout => \dut_alu|result[4]~10_combout\);

-- Location: FF_X20_Y20_N25
\dut_alu|dut_divider_u|result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[12]~41_combout\,
	asdata => \dut_alu|dut_divider_u|A\(12),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(12));

-- Location: LCCOMB_X20_Y21_N28
\dut_alu|dut_mul_u|result[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[12]~feeder_combout\ = \dut_alu|dut_mul_u|q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_u|q\(12),
	combout => \dut_alu|dut_mul_u|result[12]~feeder_combout\);

-- Location: FF_X20_Y21_N29
\dut_alu|dut_mul_u|result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[12]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(12));

-- Location: FF_X24_Y21_N23
\dut_alu|dut_mul_s|result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|q\(12),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(12));

-- Location: LCCOMB_X20_Y21_N22
\dut_alu|result[12]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[12]~15_combout\ = (\dut_alu|dut_divider_u|result\(12)) # ((\dut_alu|dut_mul_u|result\(12)) # (\dut_alu|dut_mul_s|result\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(12),
	datab => \dut_alu|dut_mul_u|result\(12),
	datad => \dut_alu|dut_mul_s|result\(12),
	combout => \dut_alu|result[12]~15_combout\);

-- Location: LCCOMB_X20_Y21_N10
\dut_alu|dut_mul_u|result[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[20]~feeder_combout\ = \dut_alu|dut_mul_u|A\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_u|A\(4),
	combout => \dut_alu|dut_mul_u|result[20]~feeder_combout\);

-- Location: FF_X20_Y21_N11
\dut_alu|dut_mul_u|result[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[20]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(20));

-- Location: LCCOMB_X24_Y20_N26
\dut_alu|dut_mul_s|result[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[20]~feeder_combout\ = \dut_alu|dut_mul_s|A\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_s|A\(4),
	combout => \dut_alu|dut_mul_s|result[20]~feeder_combout\);

-- Location: FF_X24_Y20_N27
\dut_alu|dut_mul_s|result[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[20]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(20));

-- Location: LCCOMB_X20_Y21_N26
\dut_alu|result[20]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[20]~20_combout\ = (\dut_alu|dut_mul_u|result\(20)) # ((\dut_alu|dut_divider_u|q\(4)) # (\dut_alu|dut_mul_s|result\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(20),
	datab => \dut_alu|dut_divider_u|q\(4),
	datad => \dut_alu|dut_mul_s|result\(20),
	combout => \dut_alu|result[20]~20_combout\);

-- Location: LCCOMB_X22_Y23_N12
\dut_alu|dut_mul_u|result[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[28]~feeder_combout\ = \dut_alu|dut_mul_u|A\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_u|A\(12),
	combout => \dut_alu|dut_mul_u|result[28]~feeder_combout\);

-- Location: FF_X22_Y23_N13
\dut_alu|dut_mul_u|result[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[28]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(28));

-- Location: LCCOMB_X27_Y22_N18
\dut_alu|dut_mul_s|result[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[28]~feeder_combout\ = \dut_alu|dut_mul_s|A\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|A\(12),
	combout => \dut_alu|dut_mul_s|result[28]~feeder_combout\);

-- Location: FF_X27_Y22_N19
\dut_alu|dut_mul_s|result[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[28]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(28));

-- Location: LCCOMB_X23_Y23_N16
\dut_alu|result[28]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[28]~25_combout\ = (\dut_alu|dut_mul_u|result\(28)) # ((\dut_alu|dut_divider_u|q\(12)) # (\dut_alu|dut_mul_s|result\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(28),
	datab => \dut_alu|dut_divider_u|q\(12),
	datad => \dut_alu|dut_mul_s|result\(28),
	combout => \dut_alu|result[28]~25_combout\);

-- Location: FF_X23_Y23_N17
\dut_uart|dut_tx|data_32[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[28]~25_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(28));

-- Location: FF_X20_Y21_N27
\dut_uart|dut_tx|data_32[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[20]~20_combout\,
	asdata => \dut_uart|dut_tx|data_32\(28),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(20));

-- Location: FF_X20_Y21_N23
\dut_uart|dut_tx|data_32[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[12]~15_combout\,
	asdata => \dut_uart|dut_tx|data_32\(20),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(12));

-- Location: FF_X20_Y21_N17
\dut_uart|dut_tx|data_32[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[4]~10_combout\,
	asdata => \dut_uart|dut_tx|data_32\(12),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(4));

-- Location: LCCOMB_X19_Y21_N16
\dut_uart|dut_tx|shift_data~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~5_combout\ = (\dut_uart|dut_gen_en|Equal0~0_combout\ & ((\dut_uart|dut_tx|tx_state.DATA~q\ & (\dut_uart|dut_tx|shift_data\(5))) # (!\dut_uart|dut_tx|tx_state.DATA~q\ & ((\dut_uart|dut_tx|data_32\(4)))))) # 
-- (!\dut_uart|dut_gen_en|Equal0~0_combout\ & (((\dut_uart|dut_tx|data_32\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|shift_data\(5),
	datab => \dut_uart|dut_tx|data_32\(4),
	datac => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datad => \dut_uart|dut_tx|tx_state.DATA~q\,
	combout => \dut_uart|dut_tx|shift_data~5_combout\);

-- Location: FF_X19_Y21_N17
\dut_uart|dut_tx|shift_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|shift_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(4));

-- Location: LCCOMB_X19_Y21_N6
\dut_uart|dut_tx|shift_data~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~4_combout\ = (\dut_uart|dut_gen_en|Equal0~0_combout\ & ((\dut_uart|dut_tx|tx_state.DATA~q\ & ((\dut_uart|dut_tx|shift_data\(4)))) # (!\dut_uart|dut_tx|tx_state.DATA~q\ & (\dut_uart|dut_tx|data_32\(3))))) # 
-- (!\dut_uart|dut_gen_en|Equal0~0_combout\ & (\dut_uart|dut_tx|data_32\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|data_32\(3),
	datab => \dut_uart|dut_tx|shift_data\(4),
	datac => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datad => \dut_uart|dut_tx|tx_state.DATA~q\,
	combout => \dut_uart|dut_tx|shift_data~4_combout\);

-- Location: FF_X19_Y21_N7
\dut_uart|dut_tx|shift_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|shift_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(3));

-- Location: FF_X20_Y20_N5
\dut_alu|dut_divider_u|result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[2]~21_combout\,
	asdata => \dut_alu|dut_divider_u|A\(2),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(2));

-- Location: LCCOMB_X21_Y21_N6
\dut_alu|dut_mul_u|result[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[2]~feeder_combout\ = \dut_alu|dut_mul_u|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(2),
	combout => \dut_alu|dut_mul_u|result[2]~feeder_combout\);

-- Location: FF_X21_Y21_N7
\dut_alu|dut_mul_u|result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[2]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(2));

-- Location: LCCOMB_X26_Y21_N24
\dut_alu|dut_mul_s|result[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[2]~feeder_combout\ = \dut_alu|dut_mul_s|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(2),
	combout => \dut_alu|dut_mul_s|result[2]~feeder_combout\);

-- Location: FF_X26_Y21_N25
\dut_alu|dut_mul_s|result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[2]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(2));

-- Location: LCCOMB_X23_Y21_N24
\dut_alu|result[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[2]~3_combout\ = (\dut_alu|dut_divider_u|result\(2)) # ((\dut_alu|dut_mul_u|result\(2)) # (\dut_alu|dut_mul_s|result\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(2),
	datab => \dut_alu|dut_mul_u|result\(2),
	datad => \dut_alu|dut_mul_s|result\(2),
	combout => \dut_alu|result[2]~3_combout\);

-- Location: FF_X20_Y20_N21
\dut_alu|dut_divider_u|result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[10]~37_combout\,
	asdata => \dut_alu|dut_divider_u|A\(10),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_alu|dut_divider_u|result~18_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(10));

-- Location: LCCOMB_X22_Y21_N20
\dut_alu|dut_mul_u|result[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[10]~feeder_combout\ = \dut_alu|dut_mul_u|q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|q\(10),
	combout => \dut_alu|dut_mul_u|result[10]~feeder_combout\);

-- Location: FF_X22_Y21_N21
\dut_alu|dut_mul_u|result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[10]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(10));

-- Location: LCCOMB_X23_Y21_N28
\dut_alu|dut_mul_s|result[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[10]~feeder_combout\ = \dut_alu|dut_mul_s|q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(10),
	combout => \dut_alu|dut_mul_s|result[10]~feeder_combout\);

-- Location: FF_X23_Y21_N29
\dut_alu|dut_mul_s|result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[10]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(10));

-- Location: LCCOMB_X23_Y21_N10
\dut_alu|result[10]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[10]~7_combout\ = (\dut_alu|dut_divider_u|result\(10)) # ((\dut_alu|dut_mul_u|result\(10)) # (\dut_alu|dut_mul_s|result\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(10),
	datab => \dut_alu|dut_mul_u|result\(10),
	datad => \dut_alu|dut_mul_s|result\(10),
	combout => \dut_alu|result[10]~7_combout\);

-- Location: LCCOMB_X22_Y23_N20
\dut_alu|dut_mul_u|result[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[18]~feeder_combout\ = \dut_alu|dut_mul_u|A\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|A\(2),
	combout => \dut_alu|dut_mul_u|result[18]~feeder_combout\);

-- Location: FF_X22_Y23_N21
\dut_alu|dut_mul_u|result[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[18]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(18));

-- Location: LCCOMB_X23_Y21_N0
\dut_alu|dut_mul_s|result[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[18]~feeder_combout\ = \dut_alu|dut_mul_s|A\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|A\(2),
	combout => \dut_alu|dut_mul_s|result[18]~feeder_combout\);

-- Location: FF_X23_Y21_N1
\dut_alu|dut_mul_s|result[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[18]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(18));

-- Location: LCCOMB_X23_Y21_N14
\dut_alu|result[18]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[18]~12_combout\ = (\dut_alu|dut_mul_u|result\(18)) # ((\dut_alu|dut_mul_s|result\(18)) # (\dut_alu|dut_divider_u|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|result\(18),
	datab => \dut_alu|dut_mul_s|result\(18),
	datad => \dut_alu|dut_divider_u|q\(2),
	combout => \dut_alu|result[18]~12_combout\);

-- Location: LCCOMB_X24_Y20_N0
\dut_alu|dut_mul_s|result[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[26]~feeder_combout\ = \dut_alu|dut_mul_s|A\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_s|A\(10),
	combout => \dut_alu|dut_mul_s|result[26]~feeder_combout\);

-- Location: FF_X24_Y20_N1
\dut_alu|dut_mul_s|result[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[26]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(26));

-- Location: LCCOMB_X22_Y22_N22
\dut_alu|dut_mul_u|result[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|result[26]~feeder_combout\ = \dut_alu|dut_mul_u|A\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_u|A\(10),
	combout => \dut_alu|dut_mul_u|result[26]~feeder_combout\);

-- Location: FF_X22_Y22_N23
\dut_alu|dut_mul_u|result[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|result[26]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(26));

-- Location: LCCOMB_X23_Y23_N28
\dut_alu|result[26]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_alu|result[26]~17_combout\ = (\dut_alu|dut_divider_u|q\(10)) # ((\dut_alu|dut_mul_s|result\(26)) # (\dut_alu|dut_mul_u|result\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(10),
	datab => \dut_alu|dut_mul_s|result\(26),
	datac => \dut_alu|dut_mul_u|result\(26),
	combout => \dut_alu|result[26]~17_combout\);

-- Location: FF_X23_Y23_N29
\dut_uart|dut_tx|data_32[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[26]~17_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(26));

-- Location: FF_X23_Y21_N15
\dut_uart|dut_tx|data_32[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[18]~12_combout\,
	asdata => \dut_uart|dut_tx|data_32\(26),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(18));

-- Location: FF_X23_Y21_N11
\dut_uart|dut_tx|data_32[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[10]~7_combout\,
	asdata => \dut_uart|dut_tx|data_32\(18),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(10));

-- Location: FF_X23_Y21_N25
\dut_uart|dut_tx|data_32[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result[2]~3_combout\,
	asdata => \dut_uart|dut_tx|data_32\(10),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|cnt_4[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|data_32\(2));

-- Location: LCCOMB_X19_Y21_N20
\dut_uart|dut_tx|shift_data~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~3_combout\ = (\dut_uart|dut_tx|tx_state.DATA~q\ & ((\dut_uart|dut_gen_en|Equal0~0_combout\ & (\dut_uart|dut_tx|shift_data\(3))) # (!\dut_uart|dut_gen_en|Equal0~0_combout\ & ((\dut_uart|dut_tx|data_32\(2)))))) # 
-- (!\dut_uart|dut_tx|tx_state.DATA~q\ & (((\dut_uart|dut_tx|data_32\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|shift_data\(3),
	datab => \dut_uart|dut_tx|tx_state.DATA~q\,
	datac => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datad => \dut_uart|dut_tx|data_32\(2),
	combout => \dut_uart|dut_tx|shift_data~3_combout\);

-- Location: FF_X19_Y21_N21
\dut_uart|dut_tx|shift_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|shift_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(2));

-- Location: LCCOMB_X19_Y21_N2
\dut_uart|dut_tx|shift_data~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~2_combout\ = (\dut_uart|dut_tx|tx_state.DATA~q\ & ((\dut_uart|dut_gen_en|Equal0~0_combout\ & ((\dut_uart|dut_tx|shift_data\(2)))) # (!\dut_uart|dut_gen_en|Equal0~0_combout\ & (\dut_uart|dut_tx|data_32\(1))))) # 
-- (!\dut_uart|dut_tx|tx_state.DATA~q\ & (\dut_uart|dut_tx|data_32\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|data_32\(1),
	datab => \dut_uart|dut_tx|tx_state.DATA~q\,
	datac => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datad => \dut_uart|dut_tx|shift_data\(2),
	combout => \dut_uart|dut_tx|shift_data~2_combout\);

-- Location: FF_X19_Y21_N3
\dut_uart|dut_tx|shift_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|shift_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(1));

-- Location: LCCOMB_X19_Y21_N24
\dut_uart|dut_tx|shift_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~0_combout\ = (\dut_uart|dut_tx|tx_state.DATA~q\ & ((\dut_uart|dut_gen_en|Equal0~0_combout\ & ((\dut_uart|dut_tx|shift_data\(1)))) # (!\dut_uart|dut_gen_en|Equal0~0_combout\ & (\dut_uart|dut_tx|data_32\(0))))) # 
-- (!\dut_uart|dut_tx|tx_state.DATA~q\ & (\dut_uart|dut_tx|data_32\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|data_32\(0),
	datab => \dut_uart|dut_tx|tx_state.DATA~q\,
	datac => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datad => \dut_uart|dut_tx|shift_data\(1),
	combout => \dut_uart|dut_tx|shift_data~0_combout\);

-- Location: FF_X19_Y21_N25
\dut_uart|dut_tx|shift_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \dut_uart|dut_tx|tx_state.STOP~q\,
	ena => \dut_uart|dut_tx|shift_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(0));

-- Location: LCCOMB_X19_Y21_N10
\dut_uart|dut_tx|txd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|txd~0_combout\ = (\dut_uart|dut_tx|tx_state.DATA~q\ & ((\dut_uart|dut_tx|shift_data\(0) $ (!\dut_uart|dut_tx|txd~q\)))) # (!\dut_uart|dut_tx|tx_state.DATA~q\ & (\dut_uart|dut_tx|tx_state.START~q\ & ((!\dut_uart|dut_tx|txd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_state.START~q\,
	datab => \dut_uart|dut_tx|shift_data\(0),
	datac => \dut_uart|dut_tx|txd~q\,
	datad => \dut_uart|dut_tx|tx_state.DATA~q\,
	combout => \dut_uart|dut_tx|txd~0_combout\);

-- Location: LCCOMB_X19_Y21_N0
\dut_uart|dut_tx|txd~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|txd~1_combout\ = (!\dut_uart|dut_tx|tx_state.STOP~q\ & (\dut_uart|dut_tx|txd~q\ $ (((\dut_uart|dut_tx|txd~0_combout\ & \dut_uart|dut_gen_en|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|txd~0_combout\,
	datab => \dut_uart|dut_gen_en|Equal0~0_combout\,
	datac => \dut_uart|dut_tx|txd~q\,
	datad => \dut_uart|dut_tx|tx_state.STOP~q\,
	combout => \dut_uart|dut_tx|txd~1_combout\);

-- Location: FF_X19_Y21_N1
\dut_uart|dut_tx|txd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|txd~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|txd~q\);

ww_txd <= \txd~output_o\;
END structure;


