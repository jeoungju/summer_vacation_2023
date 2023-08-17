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

-- DATE "08/17/2023 10:37:48"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
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
-- txd	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rxd	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~0_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|cnt~0_combout\ : std_logic;
SIGNAL \n_rst~input_o\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~1\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~2_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|cnt~2_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~3\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~4_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~5\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~6_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~7\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~8_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|cnt~5_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~9\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~10_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|cnt~1_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~11\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~12_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Equal0~0_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~13\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~14_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|cnt~4_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Equal0~1_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~15\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Add0~16_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|cnt~3_combout\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|Equal0~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Add0~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[3]~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[3]~6_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Equal3~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[1]~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[1]~5_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[2]~3_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[2]~7_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector0~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|count[0]~5_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \dut_uart|dut_gen_en|Equal1~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_gen_en|Equal1~1_combout\ : std_logic;
SIGNAL \rxd~input_o\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[0]~3_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector2~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_state.STOP~q\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector0~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector0~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_state.IDLE~q\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[0]~5_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[2]~7_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Add0~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[3]~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[3]~4_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Equal2~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[1]~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[1]~6_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_n_cnt[2]~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector0~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector1~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|Selector1~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|rx_state.DATA~q\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~7_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd[7]~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~4_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~6_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~5_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~3_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|fnd_rxd~8_combout\ : std_logic;
SIGNAL \d1|src1_d~4_combout\ : std_logic;
SIGNAL \d1|Equal22~2_combout\ : std_logic;
SIGNAL \d1|Equal24~2_combout\ : std_logic;
SIGNAL \d1|Equal21~3_combout\ : std_logic;
SIGNAL \dut_uart|dut_rx|valid_sig~q\ : std_logic;
SIGNAL \dut_uart|dut_rx|valid_sig_d~q\ : std_logic;
SIGNAL \dut_uart|dut_rx|valid~combout\ : std_logic;
SIGNAL \d1|n_state~3_combout\ : std_logic;
SIGNAL \d1|n_state~4_combout\ : std_logic;
SIGNAL \d1|cnt_2~3_combout\ : std_logic;
SIGNAL \d1|cnt_2[0]~1_combout\ : std_logic;
SIGNAL \d1|cnt_2~2_combout\ : std_logic;
SIGNAL \d1|cnt_2~0_combout\ : std_logic;
SIGNAL \d1|Selector6~0_combout\ : std_logic;
SIGNAL \d1|Selector5~0_combout\ : std_logic;
SIGNAL \d1|state.DATA_2~q\ : std_logic;
SIGNAL \d1|Selector6~1_combout\ : std_logic;
SIGNAL \d1|state.EQUAL~q\ : std_logic;
SIGNAL \d1|n_state.END_DATA~0_combout\ : std_logic;
SIGNAL \d1|state.END_DATA~q\ : std_logic;
SIGNAL \d1|src2_d[3]~4_combout\ : std_logic;
SIGNAL \d1|n_state~0_combout\ : std_logic;
SIGNAL \d1|Equal21~1_combout\ : std_logic;
SIGNAL \d1|n_state~2_combout\ : std_logic;
SIGNAL \d1|Selector0~0_combout\ : std_logic;
SIGNAL \d1|state.IDLE~q\ : std_logic;
SIGNAL \d1|cnt_1~3_combout\ : std_logic;
SIGNAL \d1|src2_d[3]~8_combout\ : std_logic;
SIGNAL \d1|n_state~1_combout\ : std_logic;
SIGNAL \d1|Selector1~0_combout\ : std_logic;
SIGNAL \d1|state.FORMAT~q\ : std_logic;
SIGNAL \d1|Selector2~0_combout\ : std_logic;
SIGNAL \d1|state.TYPE~q\ : std_logic;
SIGNAL \d1|Selector3~0_combout\ : std_logic;
SIGNAL \d1|state.DATA_1~q\ : std_logic;
SIGNAL \d1|cnt_1[2]~1_combout\ : std_logic;
SIGNAL \d1|cnt_1~2_combout\ : std_logic;
SIGNAL \d1|cnt_1~0_combout\ : std_logic;
SIGNAL \d1|Selector4~0_combout\ : std_logic;
SIGNAL \d1|Selector4~1_combout\ : std_logic;
SIGNAL \d1|state.OPERATION~q\ : std_logic;
SIGNAL \d1|op_d[1]~0_combout\ : std_logic;
SIGNAL \d1|op_d[1]~1_combout\ : std_logic;
SIGNAL \d1|done_sig~feeder_combout\ : std_logic;
SIGNAL \d1|done_sig~q\ : std_logic;
SIGNAL \dut_alu|op_s~1_combout\ : std_logic;
SIGNAL \d1|Equal21~0_combout\ : std_logic;
SIGNAL \d1|Equal21~2_combout\ : std_logic;
SIGNAL \dut_alu|dtype_s~1_combout\ : std_logic;
SIGNAL \d1|dtype_d[1]~0_combout\ : std_logic;
SIGNAL \dut_alu|dtype_s~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|n_state~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|n_state~1_combout\ : std_logic;
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
SIGNAL \dut_alu|dut_mul_u|Equal2~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|done_edge~q\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|done~combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|count[0]~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|n_state~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|n_state~1_combout\ : std_logic;
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
SIGNAL \dut_alu|dut_mul_s|Equal4~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[0]~5_combout\ : std_logic;
SIGNAL \d1|op_d~2_combout\ : std_logic;
SIGNAL \dut_alu|op_s~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Equal0~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|n_state~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|state~q\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[0]~6\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[1]~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[1]~8\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[2]~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[2]~10\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[3]~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[3]~12\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|count[4]~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Equal1~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Equal1~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|done_edge~q\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|done~combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|done_edge~q\ : std_logic;
SIGNAL \dut_alu|result_d[17]~35_combout\ : std_logic;
SIGNAL \d1|Equal22~3_combout\ : std_logic;
SIGNAL \d1|Equal23~2_combout\ : std_logic;
SIGNAL \dut_alu|alu_done_d~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_delay|next_cnt[0]~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_delay|next_cnt[1]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_delay|next_state~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_delay|state~q\ : std_logic;
SIGNAL \dut_alu|start_d~feeder_combout\ : std_logic;
SIGNAL \dut_alu|start_d~q\ : std_logic;
SIGNAL \dut_alu|alu_done_d~1_combout\ : std_logic;
SIGNAL \dut_alu|alu_done_d~q\ : std_logic;
SIGNAL \dut_encorder|Selector0~0_combout\ : std_logic;
SIGNAL \dut_encorder|state.IDLE~q\ : std_logic;
SIGNAL \dut_encorder|Selector1~1_combout\ : std_logic;
SIGNAL \dut_encorder|state.UART_SHIFT~q\ : std_logic;
SIGNAL \dut_encorder|cnt_txen~2_combout\ : std_logic;
SIGNAL \dut_encorder|state.UART_DATA~feeder_combout\ : std_logic;
SIGNAL \dut_encorder|state.UART_DATA~q\ : std_logic;
SIGNAL \dut_encorder|Selector2~0_combout\ : std_logic;
SIGNAL \dut_encorder|state.UART_END~q\ : std_logic;
SIGNAL \dut_encorder|cnt_txen[0]~1_combout\ : std_logic;
SIGNAL \dut_encorder|cnt_txen~4_combout\ : std_logic;
SIGNAL \dut_encorder|cnt_txen~3_combout\ : std_logic;
SIGNAL \dut_encorder|Add1~0_combout\ : std_logic;
SIGNAL \dut_encorder|cnt_txen~0_combout\ : std_logic;
SIGNAL \dut_encorder|Selector3~0_combout\ : std_logic;
SIGNAL \dut_encorder|Selector3~1_combout\ : std_logic;
SIGNAL \dut_encorder|state.UART_VALID~q\ : std_logic;
SIGNAL \dut_encorder|Selector1~0_combout\ : std_logic;
SIGNAL \dut_encorder|cnt~2_combout\ : std_logic;
SIGNAL \dut_encorder|cnt[0]~1_combout\ : std_logic;
SIGNAL \dut_encorder|Add0~2_combout\ : std_logic;
SIGNAL \dut_encorder|Add0~1_combout\ : std_logic;
SIGNAL \dut_encorder|Add0~0_combout\ : std_logic;
SIGNAL \dut_encorder|cnt~0_combout\ : std_logic;
SIGNAL \dut_encorder|Equal1~0_combout\ : std_logic;
SIGNAL \dut_encorder|uart_valid_d~0_combout\ : std_logic;
SIGNAL \dut_encorder|uart_valid_d~q\ : std_logic;
SIGNAL \dut_encorder|uart_valid_dd~q\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector1~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector3~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_state.STOP~q\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector0~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_state.IDLE~q\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[0]~4_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_n_cnt[0]~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector3~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector2~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector1~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_state.START~q\ : std_logic;
SIGNAL \dut_uart|dut_tx|Selector2~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|tx_state.DATA~q\ : std_logic;
SIGNAL \d1|src2_d[3]~5_combout\ : std_logic;
SIGNAL \d1|src2_d[3]~6_combout\ : std_logic;
SIGNAL \d1|src1_d[3]~9_combout\ : std_logic;
SIGNAL \d1|src1_d[3]~11_combout\ : std_logic;
SIGNAL \d1|src1_d~5_combout\ : std_logic;
SIGNAL \d1|src1_d~6_combout\ : std_logic;
SIGNAL \d1|src1_d~7_combout\ : std_logic;
SIGNAL \d1|src1_d[15]~10_combout\ : std_logic;
SIGNAL \d1|src2_d~9_combout\ : std_logic;
SIGNAL \d1|src2_d[2]~feeder_combout\ : std_logic;
SIGNAL \d1|src2_d[3]~7_combout\ : std_logic;
SIGNAL \d1|src2_d[15]~11_combout\ : std_logic;
SIGNAL \d1|src2_d[3]~10_combout\ : std_logic;
SIGNAL \d1|src2_d[1]~feeder_combout\ : std_logic;
SIGNAL \d1|src1_d~8_combout\ : std_logic;
SIGNAL \d1|src2_d[3]~12_combout\ : std_logic;
SIGNAL \d1|src2_d[0]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[3]~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[3]~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|result_d[15]~34_combout\ : std_logic;
SIGNAL \dut_alu|always2~2_combout\ : std_logic;
SIGNAL \dut_alu|always2~0_combout\ : std_logic;
SIGNAL \dut_alu|always2~1_combout\ : std_logic;
SIGNAL \dut_alu|result_d[17]~31_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[0]~17_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[0]~1\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[0]~18\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[1]~19_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[1]~3\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[1]~20\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[2]~21_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[2]~5\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[3]~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[2]~22\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[3]~23_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[3]~7\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[4]~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[3]~24\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[4]~25_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[4]~9\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[5]~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[4]~26\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[5]~27_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[5]~11\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[6]~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[5]~28\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[6]~29_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[6]~13\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[7]~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[6]~30\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[7]~31_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[7]~15\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[8]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[7]~32\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[8]~33_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[8]~17\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[9]~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[8]~34\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[9]~35_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[9]~19\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[10]~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[9]~36\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[10]~37_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[10]~21\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[11]~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[10]~38\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[11]~39_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[11]~23\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[12]~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[11]~40\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[12]~41_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[12]~25\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[13]~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add2~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[12]~42\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[13]~43_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[13]~27\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[14]~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[13]~44\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[14]~45_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[14]~29\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[15]~30_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[14]~46\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[15]~47_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[15]~31\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|M_sign_not[16]~32_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|Add0~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[15]~48\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|A[16]~49_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|q~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[0]~1\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[1]~3\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[2]~5\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[3]~7\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[4]~9\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[5]~11\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[6]~13\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[7]~15\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[8]~17\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[9]~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q0~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q0~q\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[0]~1\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[1]~3\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[2]~5\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[3]~7\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[4]~9\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[5]~11\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[6]~13\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[7]~15\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[8]~17\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[9]~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[8]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[8]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[7]~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[7]~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~17_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[6]~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[6]~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~19_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[5]~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[5]~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~21_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[4]~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[4]~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~23_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[3]~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[3]~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~25_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~27_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~29_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~30_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~31_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q[15]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|q~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[9]~19\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[10]~21\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[11]~23\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[12]~25\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[13]~27\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[14]~29\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[15]~30_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[9]~19\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[10]~21\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[11]~23\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[12]~25\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[13]~27\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[14]~29\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[15]~30_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[14]~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[14]~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[13]~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[13]~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[12]~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[12]~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[11]~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[11]~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|m_not[10]~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|A_m[10]~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|Add2~13_combout\ : std_logic;
SIGNAL \dut_alu|result_d[17]~30_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[0]~1\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[1]~3\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[2]~5\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[3]~7\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[4]~9\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[5]~11\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[6]~13\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[7]~15\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[8]~17\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[9]~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[8]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[7]~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[6]~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[5]~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[4]~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[3]~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~10_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|q~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[9]~19\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[10]~21\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[11]~23\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[12]~25\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[13]~27\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[14]~29\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[15]~31\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|Add0~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[15]~30_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[14]~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[13]~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[12]~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[11]~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A_m[10]~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|A~7_combout\ : std_logic;
SIGNAL \dut_alu|Add1~1_cout\ : std_logic;
SIGNAL \dut_alu|Add1~3\ : std_logic;
SIGNAL \dut_alu|Add1~5\ : std_logic;
SIGNAL \dut_alu|Add1~7\ : std_logic;
SIGNAL \dut_alu|Add1~9\ : std_logic;
SIGNAL \dut_alu|Add1~11\ : std_logic;
SIGNAL \dut_alu|Add1~13\ : std_logic;
SIGNAL \dut_alu|Add1~15\ : std_logic;
SIGNAL \dut_alu|Add1~17\ : std_logic;
SIGNAL \dut_alu|Add1~19\ : std_logic;
SIGNAL \dut_alu|Add1~21\ : std_logic;
SIGNAL \dut_alu|Add1~23\ : std_logic;
SIGNAL \dut_alu|Add1~25\ : std_logic;
SIGNAL \dut_alu|Add1~27\ : std_logic;
SIGNAL \dut_alu|Add1~29\ : std_logic;
SIGNAL \dut_alu|Add1~30_combout\ : std_logic;
SIGNAL \dut_alu|Add1~31\ : std_logic;
SIGNAL \dut_alu|Add1~32_combout\ : std_logic;
SIGNAL \dut_alu|Add1~26_combout\ : std_logic;
SIGNAL \dut_alu|Add1~22_combout\ : std_logic;
SIGNAL \dut_alu|Add1~18_combout\ : std_logic;
SIGNAL \dut_alu|Add1~14_combout\ : std_logic;
SIGNAL \dut_alu|Add1~12_combout\ : std_logic;
SIGNAL \dut_alu|Add1~6_combout\ : std_logic;
SIGNAL \dut_alu|Add1~4_combout\ : std_logic;
SIGNAL \dut_alu|Add1~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~17_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~10_combout\ : std_logic;
SIGNAL \dut_alu|Add1~10_combout\ : std_logic;
SIGNAL \dut_alu|Add1~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~11_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[1]~13_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~2_combout\ : std_logic;
SIGNAL \dut_alu|Add1~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~14_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[1]~5_combout\ : std_logic;
SIGNAL \dut_alu|Add1~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~7_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[3]~8_combout\ : std_logic;
SIGNAL \dut_alu|Add1~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|Add1~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA00|f01|sum~combout\ : std_logic;
SIGNAL \dut_alu|result_d~46_combout\ : std_logic;
SIGNAL \dut_alu|result_d~47_combout\ : std_logic;
SIGNAL \dut_alu|result_d[25]~5_combout\ : std_logic;
SIGNAL \dut_alu|LessThan0~1_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~3_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~5_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~7_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~9_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~11_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~13_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~15_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~17_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~19_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~21_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~23_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~25_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~27_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~29_cout\ : std_logic;
SIGNAL \dut_alu|LessThan0~30_combout\ : std_logic;
SIGNAL \dut_alu|LessThan0~30_wirecell_combout\ : std_logic;
SIGNAL \dut_alu|always2~3_combout\ : std_logic;
SIGNAL \dut_alu|always2~4_combout\ : std_logic;
SIGNAL \dut_alu|result_d[17]~36_combout\ : std_logic;
SIGNAL \dut_alu|result_d[17]~37_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\ : std_logic;
SIGNAL \dut_alu|result_d~54_combout\ : std_logic;
SIGNAL \dut_alu|result_d~55_combout\ : std_logic;
SIGNAL \dut_alu|result_d[21]~9_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[0]~1_cout\ : std_logic;
SIGNAL \dut_alu|src2_not[1]~3\ : std_logic;
SIGNAL \dut_alu|src2_not[2]~5\ : std_logic;
SIGNAL \dut_alu|src2_not[3]~7\ : std_logic;
SIGNAL \dut_alu|src2_not[4]~9\ : std_logic;
SIGNAL \dut_alu|src2_not[5]~11\ : std_logic;
SIGNAL \dut_alu|src2_not[6]~13\ : std_logic;
SIGNAL \dut_alu|src2_not[7]~15\ : std_logic;
SIGNAL \dut_alu|src2_not[8]~17\ : std_logic;
SIGNAL \dut_alu|src2_not[9]~19\ : std_logic;
SIGNAL \dut_alu|src2_not[10]~21\ : std_logic;
SIGNAL \dut_alu|src2_not[11]~23\ : std_logic;
SIGNAL \dut_alu|src2_not[12]~25\ : std_logic;
SIGNAL \dut_alu|src2_not[13]~26_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[12]~24_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[10]~20_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[8]~16_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[7]~14_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[5]~10_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[1]~0_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~1_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[3]~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[3]~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[4]~8_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[6]~12_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~3_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[3]~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~1_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[9]~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~3_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[11]~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[3]~5_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~1_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f01|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[0]~17\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[1]~19\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[2]~21\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[3]~23\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[4]~25\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[5]~27\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[6]~29\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[7]~31\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[8]~33\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[9]~35\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[10]~37\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[11]~39\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[12]~41\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[13]~43_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result~42_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f01|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[13]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result_d~77_combout\ : std_logic;
SIGNAL \dut_alu|result_d~78_combout\ : std_logic;
SIGNAL \dut_alu|result_d[13]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f01|sum~combout\ : std_logic;
SIGNAL \dut_alu|result_d[15]~76_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f01|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[5]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result_d~93_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[5]~26_combout\ : std_logic;
SIGNAL \dut_alu|result_d~94_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f01|sum~combout\ : std_logic;
SIGNAL \dut_alu|result_d[5]~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f01|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f01|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[1]~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f01|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[1]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result_d~102_combout\ : std_logic;
SIGNAL \dut_alu|result_d~103_combout\ : std_logic;
SIGNAL \dut_alu|result_d[1]~27_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f01|sum~combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~30_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result[28]~1_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f01|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[9]~34_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[9]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result_d~85_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f01|sum~combout\ : std_logic;
SIGNAL \dut_alu|result_d~86_combout\ : std_logic;
SIGNAL \dut_alu|result_d[9]~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f01|sum~combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~22_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[17]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result_d~68_combout\ : std_logic;
SIGNAL \dut_alu|result_d~69_combout\ : std_logic;
SIGNAL \dut_alu|result_d[17]~12_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~14_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~10_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~6_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~4_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f01|sum~2_combout\ : std_logic;
SIGNAL \dut_alu|result_d~38_combout\ : std_logic;
SIGNAL \dut_alu|result_d~39_combout\ : std_logic;
SIGNAL \dut_alu|result_d[29]~1_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[22]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result_d~56_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\ : std_logic;
SIGNAL \dut_alu|result_d~57_combout\ : std_logic;
SIGNAL \dut_alu|result_d[22]~10_combout\ : std_logic;
SIGNAL \dut_alu|result_d~70_combout\ : std_logic;
SIGNAL \dut_alu|result_d~71_combout\ : std_logic;
SIGNAL \dut_alu|result_d[18]~13_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[13]~27\ : std_logic;
SIGNAL \dut_alu|src2_not[14]~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[1]~2_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f02|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[13]~44\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[14]~45_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f02|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|result_d~79_combout\ : std_logic;
SIGNAL \dut_alu|result_d~80_combout\ : std_logic;
SIGNAL \dut_alu|result_d[14]~17_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f02|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f02|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[10]~36_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f02|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|result_d~87_combout\ : std_logic;
SIGNAL \dut_alu|result_d~88_combout\ : std_logic;
SIGNAL \dut_alu|result_d[10]~21_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f02|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f02|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[2]~20_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f02|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|result_d~104_combout\ : std_logic;
SIGNAL \dut_alu|result_d~105_combout\ : std_logic;
SIGNAL \dut_alu|result_d[2]~28_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f02|sum~0_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~31_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f02|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f02|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|result_d~95_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[6]~28_combout\ : std_logic;
SIGNAL \dut_alu|result_d~96_combout\ : std_logic;
SIGNAL \dut_alu|result_d[6]~25_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f02|sum~0_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~27_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~23_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~19_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~15_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~11_combout\ : std_logic;
SIGNAL \dut_alu|result_d~48_combout\ : std_logic;
SIGNAL \dut_alu|result_d~49_combout\ : std_logic;
SIGNAL \dut_alu|result_d[26]~6_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~7_combout\ : std_logic;
SIGNAL \dut_alu|result_d~40_combout\ : std_logic;
SIGNAL \dut_alu|result_d~41_combout\ : std_logic;
SIGNAL \dut_alu|result_d[30]~2_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~3_combout\ : std_logic;
SIGNAL \dut_alu|result_d~42_combout\ : std_logic;
SIGNAL \dut_alu|result_d~43_combout\ : std_logic;
SIGNAL \dut_alu|result_d[31]~3_combout\ : std_logic;
SIGNAL \dut_alu|result_d~58_combout\ : std_logic;
SIGNAL \dut_alu|result_d~59_combout\ : std_logic;
SIGNAL \dut_alu|result_d[23]~11_combout\ : std_logic;
SIGNAL \dut_alu|result_d~72_combout\ : std_logic;
SIGNAL \dut_alu|result_d~73_combout\ : std_logic;
SIGNAL \dut_alu|result_d[19]~14_combout\ : std_logic;
SIGNAL \dut_alu|src2_not[14]~29\ : std_logic;
SIGNAL \dut_alu|src2_not[15]~30_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f03|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f03|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[15]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result_d~81_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[14]~46\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[15]~47_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f03|sum~combout\ : std_logic;
SIGNAL \dut_alu|result_d~82_combout\ : std_logic;
SIGNAL \dut_alu|result_d[15]~18_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f03|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f03|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[11]~38_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[11]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result_d~89_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f03|sum~combout\ : std_logic;
SIGNAL \dut_alu|result_d~90_combout\ : std_logic;
SIGNAL \dut_alu|result_d[11]~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f03|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f03|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[3]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result_d~106_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[3]~22_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f03|sum~combout\ : std_logic;
SIGNAL \dut_alu|result_d~107_combout\ : std_logic;
SIGNAL \dut_alu|result_d[3]~29_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f03|sum~combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~32_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f03|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f03|sum~combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[7]~30_combout\ : std_logic;
SIGNAL \dut_alu|result_d~97_combout\ : std_logic;
SIGNAL \dut_alu|result_d~98_combout\ : std_logic;
SIGNAL \dut_alu|result_d[7]~26_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f03|sum~combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~28_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~24_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~20_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~16_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~12_combout\ : std_logic;
SIGNAL \dut_alu|result_d~50_combout\ : std_logic;
SIGNAL \dut_alu|result_d~51_combout\ : std_logic;
SIGNAL \dut_alu|result_d[27]~7_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~8_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~4_combout\ : std_logic;
SIGNAL \dut_encorder|data[3]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5_combout\ : std_logic;
SIGNAL \dut_alu|result_d~60_combout\ : std_logic;
SIGNAL \dut_alu|result_d~64_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5_combout\ : std_logic;
SIGNAL \dut_alu|result_d~65_combout\ : std_logic;
SIGNAL \dut_alu|result_d~61_combout\ : std_logic;
SIGNAL \dut_alu|result_d~62_combout\ : std_logic;
SIGNAL \dut_alu|result_d~63_combout\ : std_logic;
SIGNAL \dut_alu|result_d~66_combout\ : std_logic;
SIGNAL \dut_alu|result_d~67_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[12]~40_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f00|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|result_d~74_combout\ : std_logic;
SIGNAL \dut_alu|result_d~75_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f00|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|result_d[12]~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f00|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f00|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[3]~15_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f00|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|result_d~83_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[8]~32_combout\ : std_logic;
SIGNAL \dut_alu|result_d~84_combout\ : std_logic;
SIGNAL \dut_alu|result_d[8]~19_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f00|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[0]~16_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f00|p~combout\ : std_logic;
SIGNAL \dut_alu|result_d~99_combout\ : std_logic;
SIGNAL \dut_alu|result_d~100_combout\ : std_logic;
SIGNAL \dut_alu|result_d~101_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~29_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f00|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|result[4]~24_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f00|sum~0_combout\ : std_logic;
SIGNAL \dut_alu|result_d~91_combout\ : std_logic;
SIGNAL \dut_alu|result_d~92_combout\ : std_logic;
SIGNAL \dut_alu|result_d[4]~23_combout\ : std_logic;
SIGNAL \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f00|sum~0_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~25_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~21_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~17_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~13_combout\ : std_logic;
SIGNAL \dut_alu|result_d~52_combout\ : std_logic;
SIGNAL \dut_alu|result_d~53_combout\ : std_logic;
SIGNAL \dut_alu|result_d[20]~8_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~9_combout\ : std_logic;
SIGNAL \dut_alu|dut_mul_s|result[24]~feeder_combout\ : std_logic;
SIGNAL \dut_alu|result_d~44_combout\ : std_logic;
SIGNAL \dut_alu|result_d~45_combout\ : std_logic;
SIGNAL \dut_alu|result_d[24]~4_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~5_combout\ : std_logic;
SIGNAL \dut_alu|result_d~32_combout\ : std_logic;
SIGNAL \dut_alu|result_d~33_combout\ : std_logic;
SIGNAL \dut_alu|result_d[28]~0_combout\ : std_logic;
SIGNAL \dut_encorder|shift_result~0_combout\ : std_logic;
SIGNAL \dut_encorder|data[0]~feeder_combout\ : std_logic;
SIGNAL \dut_encorder|uart_out_d~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|always3~0_combout\ : std_logic;
SIGNAL \dut_encorder|uart_out_d~1_combout\ : std_logic;
SIGNAL \dut_encorder|uart_out_d~4_combout\ : std_logic;
SIGNAL \dut_encorder|uart_out_d[6]~5_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|txd~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~6_combout\ : std_logic;
SIGNAL \dut_encorder|uart_out_d[5]~feeder_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~5_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~4_combout\ : std_logic;
SIGNAL \dut_encorder|uart_out_d~3_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~3_combout\ : std_logic;
SIGNAL \dut_encorder|uart_out_d~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~2_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~1_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|shift_data~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|txd~0_combout\ : std_logic;
SIGNAL \dut_uart|dut_tx|txd~q\ : std_logic;
SIGNAL \dut_encorder|dut_gen_en|cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dut_uart|dut_rx|rx_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut_uart|dut_rx|fnd_rxd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut_uart|dut_tx|tx_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut_uart|dut_tx|shift_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \d1|src2_d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \d1|src1_d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \d1|op_d\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \d1|dtype_d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d1|cnt_2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \d1|cnt_1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dut_alu|result_d\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dut_alu|op_s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dut_alu|dtype_s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut_alu|dut_divider_u|result\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_alu|dut_divider_u|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_alu|dut_divider_u|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dut_alu|dut_divider_u|A\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_s|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_s|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_s|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_s|A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_u|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_u|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_u|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_u|A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut_alu|dut_delay|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dut_encorder|uart_out_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut_encorder|shift_result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dut_encorder|data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut_encorder|cnt_txen\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut_encorder|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut_alu|dut_mul_s|ALT_INV_state~q\ : std_logic;
SIGNAL \dut_alu|dut_mul_u|ALT_INV_state~q\ : std_logic;
SIGNAL \dut_alu|dut_divider_u|ALT_INV_state~q\ : std_logic;
SIGNAL \dut_uart|dut_rx|ALT_INV_fnd_rxd\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \dut_encorder|ALT_INV_state.IDLE~q\ : std_logic;
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
\dut_alu|dut_mul_s|ALT_INV_state~q\ <= NOT \dut_alu|dut_mul_s|state~q\;
\dut_alu|dut_mul_u|ALT_INV_state~q\ <= NOT \dut_alu|dut_mul_u|state~q\;
\dut_alu|dut_divider_u|ALT_INV_state~q\ <= NOT \dut_alu|dut_divider_u|state~q\;
\dut_uart|dut_rx|ALT_INV_fnd_rxd\(6) <= NOT \dut_uart|dut_rx|fnd_rxd\(6);
\dut_encorder|ALT_INV_state.IDLE~q\ <= NOT \dut_encorder|state.IDLE~q\;
\dut_uart|dut_tx|ALT_INV_txd~q\ <= NOT \dut_uart|dut_tx|txd~q\;

-- Location: IOOBUF_X13_Y73_N23
\txd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut_uart|dut_tx|ALT_INV_txd~q\,
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X95_Y44_N4
\dut_encorder|dut_gen_en|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|Add0~0_combout\ = \dut_encorder|dut_gen_en|cnt\(0) $ (VCC)
-- \dut_encorder|dut_gen_en|Add0~1\ = CARRY(\dut_encorder|dut_gen_en|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|dut_gen_en|cnt\(0),
	datad => VCC,
	combout => \dut_encorder|dut_gen_en|Add0~0_combout\,
	cout => \dut_encorder|dut_gen_en|Add0~1\);

-- Location: LCCOMB_X96_Y44_N24
\dut_encorder|dut_gen_en|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|cnt~0_combout\ = (\dut_encorder|dut_gen_en|Add0~0_combout\ & \dut_encorder|dut_gen_en|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_encorder|dut_gen_en|Add0~0_combout\,
	datad => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	combout => \dut_encorder|dut_gen_en|cnt~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\n_rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_rst,
	o => \n_rst~input_o\);

-- Location: FF_X96_Y44_N25
\dut_encorder|dut_gen_en|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|dut_gen_en|cnt~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|dut_gen_en|cnt\(0));

-- Location: LCCOMB_X95_Y44_N6
\dut_encorder|dut_gen_en|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|Add0~2_combout\ = (\dut_encorder|dut_gen_en|cnt\(1) & (!\dut_encorder|dut_gen_en|Add0~1\)) # (!\dut_encorder|dut_gen_en|cnt\(1) & ((\dut_encorder|dut_gen_en|Add0~1\) # (GND)))
-- \dut_encorder|dut_gen_en|Add0~3\ = CARRY((!\dut_encorder|dut_gen_en|Add0~1\) # (!\dut_encorder|dut_gen_en|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|cnt\(1),
	datad => VCC,
	cin => \dut_encorder|dut_gen_en|Add0~1\,
	combout => \dut_encorder|dut_gen_en|Add0~2_combout\,
	cout => \dut_encorder|dut_gen_en|Add0~3\);

-- Location: LCCOMB_X96_Y44_N2
\dut_encorder|dut_gen_en|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|cnt~2_combout\ = (\dut_encorder|dut_gen_en|Add0~2_combout\ & \dut_encorder|dut_gen_en|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_encorder|dut_gen_en|Add0~2_combout\,
	datad => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	combout => \dut_encorder|dut_gen_en|cnt~2_combout\);

-- Location: FF_X96_Y44_N3
\dut_encorder|dut_gen_en|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|dut_gen_en|cnt~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|dut_gen_en|cnt\(1));

-- Location: LCCOMB_X95_Y44_N8
\dut_encorder|dut_gen_en|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|Add0~4_combout\ = (\dut_encorder|dut_gen_en|cnt\(2) & (\dut_encorder|dut_gen_en|Add0~3\ $ (GND))) # (!\dut_encorder|dut_gen_en|cnt\(2) & (!\dut_encorder|dut_gen_en|Add0~3\ & VCC))
-- \dut_encorder|dut_gen_en|Add0~5\ = CARRY((\dut_encorder|dut_gen_en|cnt\(2) & !\dut_encorder|dut_gen_en|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|dut_gen_en|cnt\(2),
	datad => VCC,
	cin => \dut_encorder|dut_gen_en|Add0~3\,
	combout => \dut_encorder|dut_gen_en|Add0~4_combout\,
	cout => \dut_encorder|dut_gen_en|Add0~5\);

-- Location: FF_X95_Y44_N9
\dut_encorder|dut_gen_en|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|dut_gen_en|Add0~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|dut_gen_en|cnt\(2));

-- Location: LCCOMB_X95_Y44_N10
\dut_encorder|dut_gen_en|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|Add0~6_combout\ = (\dut_encorder|dut_gen_en|cnt\(3) & (!\dut_encorder|dut_gen_en|Add0~5\)) # (!\dut_encorder|dut_gen_en|cnt\(3) & ((\dut_encorder|dut_gen_en|Add0~5\) # (GND)))
-- \dut_encorder|dut_gen_en|Add0~7\ = CARRY((!\dut_encorder|dut_gen_en|Add0~5\) # (!\dut_encorder|dut_gen_en|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|cnt\(3),
	datad => VCC,
	cin => \dut_encorder|dut_gen_en|Add0~5\,
	combout => \dut_encorder|dut_gen_en|Add0~6_combout\,
	cout => \dut_encorder|dut_gen_en|Add0~7\);

-- Location: FF_X95_Y44_N11
\dut_encorder|dut_gen_en|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|dut_gen_en|Add0~6_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|dut_gen_en|cnt\(3));

-- Location: LCCOMB_X95_Y44_N12
\dut_encorder|dut_gen_en|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|Add0~8_combout\ = (\dut_encorder|dut_gen_en|cnt\(4) & (\dut_encorder|dut_gen_en|Add0~7\ $ (GND))) # (!\dut_encorder|dut_gen_en|cnt\(4) & (!\dut_encorder|dut_gen_en|Add0~7\ & VCC))
-- \dut_encorder|dut_gen_en|Add0~9\ = CARRY((\dut_encorder|dut_gen_en|cnt\(4) & !\dut_encorder|dut_gen_en|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|cnt\(4),
	datad => VCC,
	cin => \dut_encorder|dut_gen_en|Add0~7\,
	combout => \dut_encorder|dut_gen_en|Add0~8_combout\,
	cout => \dut_encorder|dut_gen_en|Add0~9\);

-- Location: LCCOMB_X96_Y44_N6
\dut_encorder|dut_gen_en|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|cnt~5_combout\ = (\dut_encorder|dut_gen_en|Add0~8_combout\ & \dut_encorder|dut_gen_en|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|Add0~8_combout\,
	datad => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	combout => \dut_encorder|dut_gen_en|cnt~5_combout\);

-- Location: FF_X96_Y44_N7
\dut_encorder|dut_gen_en|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|dut_gen_en|cnt~5_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|dut_gen_en|cnt\(4));

-- Location: LCCOMB_X95_Y44_N14
\dut_encorder|dut_gen_en|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|Add0~10_combout\ = (\dut_encorder|dut_gen_en|cnt\(5) & (!\dut_encorder|dut_gen_en|Add0~9\)) # (!\dut_encorder|dut_gen_en|cnt\(5) & ((\dut_encorder|dut_gen_en|Add0~9\) # (GND)))
-- \dut_encorder|dut_gen_en|Add0~11\ = CARRY((!\dut_encorder|dut_gen_en|Add0~9\) # (!\dut_encorder|dut_gen_en|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|dut_gen_en|cnt\(5),
	datad => VCC,
	cin => \dut_encorder|dut_gen_en|Add0~9\,
	combout => \dut_encorder|dut_gen_en|Add0~10_combout\,
	cout => \dut_encorder|dut_gen_en|Add0~11\);

-- Location: LCCOMB_X95_Y44_N0
\dut_encorder|dut_gen_en|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|cnt~1_combout\ = (\dut_encorder|dut_gen_en|Add0~10_combout\ & \dut_encorder|dut_gen_en|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_encorder|dut_gen_en|Add0~10_combout\,
	datad => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	combout => \dut_encorder|dut_gen_en|cnt~1_combout\);

-- Location: FF_X95_Y44_N1
\dut_encorder|dut_gen_en|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|dut_gen_en|cnt~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|dut_gen_en|cnt\(5));

-- Location: LCCOMB_X95_Y44_N16
\dut_encorder|dut_gen_en|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|Add0~12_combout\ = (\dut_encorder|dut_gen_en|cnt\(6) & (\dut_encorder|dut_gen_en|Add0~11\ $ (GND))) # (!\dut_encorder|dut_gen_en|cnt\(6) & (!\dut_encorder|dut_gen_en|Add0~11\ & VCC))
-- \dut_encorder|dut_gen_en|Add0~13\ = CARRY((\dut_encorder|dut_gen_en|cnt\(6) & !\dut_encorder|dut_gen_en|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|dut_gen_en|cnt\(6),
	datad => VCC,
	cin => \dut_encorder|dut_gen_en|Add0~11\,
	combout => \dut_encorder|dut_gen_en|Add0~12_combout\,
	cout => \dut_encorder|dut_gen_en|Add0~13\);

-- Location: FF_X95_Y44_N17
\dut_encorder|dut_gen_en|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|dut_gen_en|Add0~12_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|dut_gen_en|cnt\(6));

-- Location: LCCOMB_X95_Y44_N26
\dut_encorder|dut_gen_en|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|Equal0~0_combout\ = (\dut_encorder|dut_gen_en|cnt\(3)) # ((\dut_encorder|dut_gen_en|cnt\(6)) # ((!\dut_encorder|dut_gen_en|cnt\(1)) # (!\dut_encorder|dut_gen_en|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|cnt\(3),
	datab => \dut_encorder|dut_gen_en|cnt\(6),
	datac => \dut_encorder|dut_gen_en|cnt\(5),
	datad => \dut_encorder|dut_gen_en|cnt\(1),
	combout => \dut_encorder|dut_gen_en|Equal0~0_combout\);

-- Location: LCCOMB_X95_Y44_N18
\dut_encorder|dut_gen_en|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|Add0~14_combout\ = (\dut_encorder|dut_gen_en|cnt\(7) & (!\dut_encorder|dut_gen_en|Add0~13\)) # (!\dut_encorder|dut_gen_en|cnt\(7) & ((\dut_encorder|dut_gen_en|Add0~13\) # (GND)))
-- \dut_encorder|dut_gen_en|Add0~15\ = CARRY((!\dut_encorder|dut_gen_en|Add0~13\) # (!\dut_encorder|dut_gen_en|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|cnt\(7),
	datad => VCC,
	cin => \dut_encorder|dut_gen_en|Add0~13\,
	combout => \dut_encorder|dut_gen_en|Add0~14_combout\,
	cout => \dut_encorder|dut_gen_en|Add0~15\);

-- Location: LCCOMB_X96_Y44_N4
\dut_encorder|dut_gen_en|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|cnt~4_combout\ = (\dut_encorder|dut_gen_en|Add0~14_combout\ & \dut_encorder|dut_gen_en|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|dut_gen_en|Add0~14_combout\,
	datad => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	combout => \dut_encorder|dut_gen_en|cnt~4_combout\);

-- Location: FF_X96_Y44_N5
\dut_encorder|dut_gen_en|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|dut_gen_en|cnt~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|dut_gen_en|cnt\(7));

-- Location: LCCOMB_X95_Y44_N24
\dut_encorder|dut_gen_en|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|Equal0~1_combout\ = (\dut_encorder|dut_gen_en|cnt\(7) & (!\dut_encorder|dut_gen_en|cnt\(2) & \dut_encorder|dut_gen_en|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|cnt\(7),
	datac => \dut_encorder|dut_gen_en|cnt\(2),
	datad => \dut_encorder|dut_gen_en|cnt\(4),
	combout => \dut_encorder|dut_gen_en|Equal0~1_combout\);

-- Location: LCCOMB_X95_Y44_N20
\dut_encorder|dut_gen_en|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|Add0~16_combout\ = \dut_encorder|dut_gen_en|cnt\(8) $ (!\dut_encorder|dut_gen_en|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|cnt\(8),
	cin => \dut_encorder|dut_gen_en|Add0~15\,
	combout => \dut_encorder|dut_gen_en|Add0~16_combout\);

-- Location: LCCOMB_X95_Y44_N22
\dut_encorder|dut_gen_en|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|cnt~3_combout\ = (\dut_encorder|dut_gen_en|Add0~16_combout\ & \dut_encorder|dut_gen_en|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|dut_gen_en|Add0~16_combout\,
	datad => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	combout => \dut_encorder|dut_gen_en|cnt~3_combout\);

-- Location: FF_X95_Y44_N23
\dut_encorder|dut_gen_en|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|dut_gen_en|cnt~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|dut_gen_en|cnt\(8));

-- Location: LCCOMB_X95_Y44_N2
\dut_encorder|dut_gen_en|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|dut_gen_en|Equal0~2_combout\ = (\dut_encorder|dut_gen_en|Equal0~0_combout\) # (((\dut_encorder|dut_gen_en|cnt\(0)) # (!\dut_encorder|dut_gen_en|cnt\(8))) # (!\dut_encorder|dut_gen_en|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|Equal0~0_combout\,
	datab => \dut_encorder|dut_gen_en|Equal0~1_combout\,
	datac => \dut_encorder|dut_gen_en|cnt\(8),
	datad => \dut_encorder|dut_gen_en|cnt\(0),
	combout => \dut_encorder|dut_gen_en|Equal0~2_combout\);

-- Location: LCCOMB_X96_Y43_N8
\dut_uart|dut_tx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Add0~0_combout\ = \dut_uart|dut_tx|tx_cnt\(3) $ (((\dut_uart|dut_tx|tx_cnt\(2) & (\dut_uart|dut_tx|tx_cnt\(1) & \dut_uart|dut_tx|tx_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_cnt\(2),
	datab => \dut_uart|dut_tx|tx_cnt\(3),
	datac => \dut_uart|dut_tx|tx_cnt\(1),
	datad => \dut_uart|dut_tx|tx_cnt\(0),
	combout => \dut_uart|dut_tx|Add0~0_combout\);

-- Location: LCCOMB_X96_Y43_N26
\dut_uart|dut_tx|tx_n_cnt[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[3]~2_combout\ = (\dut_encorder|dut_gen_en|Equal0~2_combout\ & (!\dut_uart|dut_tx|Equal3~0_combout\ & ((\dut_uart|dut_tx|tx_cnt\(3))))) # (!\dut_encorder|dut_gen_en|Equal0~2_combout\ & (((\dut_uart|dut_tx|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	datab => \dut_uart|dut_tx|Equal3~0_combout\,
	datac => \dut_uart|dut_tx|Add0~0_combout\,
	datad => \dut_uart|dut_tx|tx_cnt\(3),
	combout => \dut_uart|dut_tx|tx_n_cnt[3]~2_combout\);

-- Location: LCCOMB_X96_Y43_N0
\dut_uart|dut_tx|tx_n_cnt[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[3]~6_combout\ = (\dut_uart|dut_tx|tx_n_cnt[3]~2_combout\ & \dut_uart|dut_tx|tx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_uart|dut_tx|tx_n_cnt[3]~2_combout\,
	datad => \dut_uart|dut_tx|tx_state.IDLE~q\,
	combout => \dut_uart|dut_tx|tx_n_cnt[3]~6_combout\);

-- Location: FF_X96_Y43_N1
\dut_uart|dut_tx|tx_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|tx_n_cnt[3]~6_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_cnt\(3));

-- Location: LCCOMB_X96_Y43_N28
\dut_uart|dut_tx|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Equal3~0_combout\ = (!\dut_uart|dut_tx|tx_cnt\(2) & (\dut_uart|dut_tx|tx_cnt\(3) & (\dut_uart|dut_tx|tx_cnt\(1) & \dut_uart|dut_tx|tx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_cnt\(2),
	datab => \dut_uart|dut_tx|tx_cnt\(3),
	datac => \dut_uart|dut_tx|tx_cnt\(1),
	datad => \dut_uart|dut_tx|tx_cnt\(0),
	combout => \dut_uart|dut_tx|Equal3~0_combout\);

-- Location: LCCOMB_X96_Y43_N14
\dut_uart|dut_tx|tx_n_cnt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[1]~1_combout\ = (\dut_encorder|dut_gen_en|Equal0~2_combout\ & (\dut_uart|dut_tx|tx_cnt\(1) & (!\dut_uart|dut_tx|Equal3~0_combout\))) # (!\dut_encorder|dut_gen_en|Equal0~2_combout\ & (\dut_uart|dut_tx|tx_cnt\(1) $ 
-- (((\dut_uart|dut_tx|tx_cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_cnt\(1),
	datab => \dut_uart|dut_tx|Equal3~0_combout\,
	datac => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	datad => \dut_uart|dut_tx|tx_cnt\(0),
	combout => \dut_uart|dut_tx|tx_n_cnt[1]~1_combout\);

-- Location: LCCOMB_X96_Y43_N30
\dut_uart|dut_tx|tx_n_cnt[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[1]~5_combout\ = (\dut_uart|dut_tx|tx_n_cnt[1]~1_combout\ & \dut_uart|dut_tx|tx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_uart|dut_tx|tx_n_cnt[1]~1_combout\,
	datad => \dut_uart|dut_tx|tx_state.IDLE~q\,
	combout => \dut_uart|dut_tx|tx_n_cnt[1]~5_combout\);

-- Location: FF_X96_Y43_N31
\dut_uart|dut_tx|tx_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|tx_n_cnt[1]~5_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_cnt\(1));

-- Location: LCCOMB_X96_Y43_N12
\dut_uart|dut_tx|tx_n_cnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[2]~3_combout\ = \dut_uart|dut_tx|tx_cnt\(2) $ (((\dut_uart|dut_tx|tx_cnt\(1) & (!\dut_encorder|dut_gen_en|Equal0~2_combout\ & \dut_uart|dut_tx|tx_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_cnt\(1),
	datab => \dut_uart|dut_tx|tx_cnt\(2),
	datac => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	datad => \dut_uart|dut_tx|tx_cnt\(0),
	combout => \dut_uart|dut_tx|tx_n_cnt[2]~3_combout\);

-- Location: LCCOMB_X96_Y43_N18
\dut_uart|dut_tx|tx_n_cnt[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[2]~7_combout\ = (\dut_uart|dut_tx|tx_n_cnt[2]~3_combout\ & \dut_uart|dut_tx|tx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_n_cnt[2]~3_combout\,
	datad => \dut_uart|dut_tx|tx_state.IDLE~q\,
	combout => \dut_uart|dut_tx|tx_n_cnt[2]~7_combout\);

-- Location: FF_X96_Y43_N19
\dut_uart|dut_tx|tx_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|tx_n_cnt[2]~7_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_cnt\(2));

-- Location: LCCOMB_X96_Y43_N24
\dut_uart|dut_tx|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector0~0_combout\ = (!\dut_uart|dut_tx|tx_cnt\(2) & (\dut_uart|dut_tx|tx_cnt\(3) & (\dut_uart|dut_tx|tx_cnt\(1) & !\dut_uart|dut_tx|tx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_cnt\(2),
	datab => \dut_uart|dut_tx|tx_cnt\(3),
	datac => \dut_uart|dut_tx|tx_cnt\(1),
	datad => \dut_uart|dut_tx|tx_cnt\(0),
	combout => \dut_uart|dut_tx|Selector0~0_combout\);

-- Location: LCCOMB_X92_Y49_N10
\dut_alu|dut_mul_u|count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|count[0]~5_combout\ = \dut_alu|dut_mul_u|count\(0) $ (VCC)
-- \dut_alu|dut_mul_u|count[0]~6\ = CARRY(\dut_alu|dut_mul_u|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|count\(0),
	datad => VCC,
	combout => \dut_alu|dut_mul_u|count[0]~5_combout\,
	cout => \dut_alu|dut_mul_u|count[0]~6\);

-- Location: LCCOMB_X96_Y46_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X95_Y44_N28
\dut_uart|dut_gen_en|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_gen_en|Equal1~0_combout\ = (\dut_encorder|dut_gen_en|cnt\(3) & (\dut_encorder|dut_gen_en|cnt\(6) & (!\dut_encorder|dut_gen_en|cnt\(5) & !\dut_encorder|dut_gen_en|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|cnt\(3),
	datab => \dut_encorder|dut_gen_en|cnt\(6),
	datac => \dut_encorder|dut_gen_en|cnt\(5),
	datad => \dut_encorder|dut_gen_en|cnt\(1),
	combout => \dut_uart|dut_gen_en|Equal1~0_combout\);

-- Location: LCCOMB_X95_Y44_N30
\dut_uart|dut_gen_en|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_gen_en|Equal1~1_combout\ = (\dut_encorder|dut_gen_en|Equal0~1_combout\ & (\dut_uart|dut_gen_en|Equal1~0_combout\ & (!\dut_encorder|dut_gen_en|cnt\(8) & \dut_encorder|dut_gen_en|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|Equal0~1_combout\,
	datab => \dut_uart|dut_gen_en|Equal1~0_combout\,
	datac => \dut_encorder|dut_gen_en|cnt\(8),
	datad => \dut_encorder|dut_gen_en|cnt\(0),
	combout => \dut_uart|dut_gen_en|Equal1~1_combout\);

-- Location: IOIBUF_X27_Y73_N8
\rxd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rxd,
	o => \rxd~input_o\);

-- Location: LCCOMB_X96_Y49_N16
\dut_uart|dut_rx|rx_n_cnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[0]~3_combout\ = \dut_uart|dut_gen_en|Equal1~1_combout\ $ (\dut_uart|dut_rx|rx_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal1~1_combout\,
	datac => \dut_uart|dut_rx|rx_cnt\(0),
	combout => \dut_uart|dut_rx|rx_n_cnt[0]~3_combout\);

-- Location: LCCOMB_X96_Y49_N0
\dut_uart|dut_rx|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector2~0_combout\ = (\dut_uart|dut_rx|Selector0~0_combout\ & (!\dut_uart|dut_rx|rx_n_cnt[0]~3_combout\ & ((\dut_uart|dut_rx|rx_state.DATA~q\) # (\dut_uart|dut_rx|rx_state.STOP~q\)))) # (!\dut_uart|dut_rx|Selector0~0_combout\ & 
-- (((\dut_uart|dut_rx|rx_state.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_state.DATA~q\,
	datab => \dut_uart|dut_rx|rx_n_cnt[0]~3_combout\,
	datac => \dut_uart|dut_rx|rx_state.STOP~q\,
	datad => \dut_uart|dut_rx|Selector0~0_combout\,
	combout => \dut_uart|dut_rx|Selector2~0_combout\);

-- Location: FF_X96_Y49_N1
\dut_uart|dut_rx|rx_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|Selector2~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_state.STOP~q\);

-- Location: LCCOMB_X96_Y49_N12
\dut_uart|dut_rx|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector0~1_combout\ = (\dut_uart|dut_rx|Selector0~0_combout\ & (\dut_uart|dut_rx|rx_state.STOP~q\ & (\dut_uart|dut_rx|rx_cnt\(0) $ (\dut_uart|dut_gen_en|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_cnt\(0),
	datab => \dut_uart|dut_rx|Selector0~0_combout\,
	datac => \dut_uart|dut_gen_en|Equal1~1_combout\,
	datad => \dut_uart|dut_rx|rx_state.STOP~q\,
	combout => \dut_uart|dut_rx|Selector0~1_combout\);

-- Location: LCCOMB_X96_Y49_N28
\dut_uart|dut_rx|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector0~2_combout\ = (!\dut_uart|dut_rx|Selector0~1_combout\ & ((\dut_uart|dut_rx|rx_state.IDLE~q\) # ((\dut_uart|dut_gen_en|Equal1~1_combout\ & !\rxd~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_gen_en|Equal1~1_combout\,
	datab => \rxd~input_o\,
	datac => \dut_uart|dut_rx|rx_state.IDLE~q\,
	datad => \dut_uart|dut_rx|Selector0~1_combout\,
	combout => \dut_uart|dut_rx|Selector0~2_combout\);

-- Location: FF_X96_Y49_N29
\dut_uart|dut_rx|rx_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|Selector0~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_state.IDLE~q\);

-- Location: LCCOMB_X86_Y46_N2
\dut_uart|dut_rx|rx_n_cnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[0]~5_combout\ = (\dut_uart|dut_rx|rx_state.IDLE~q\ & (\dut_uart|dut_gen_en|Equal1~1_combout\ $ (\dut_uart|dut_rx|rx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_gen_en|Equal1~1_combout\,
	datac => \dut_uart|dut_rx|rx_cnt\(0),
	datad => \dut_uart|dut_rx|rx_state.IDLE~q\,
	combout => \dut_uart|dut_rx|rx_n_cnt[0]~5_combout\);

-- Location: FF_X86_Y46_N3
\dut_uart|dut_rx|rx_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|rx_n_cnt[0]~5_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_cnt\(0));

-- Location: LCCOMB_X86_Y46_N22
\dut_uart|dut_rx|rx_n_cnt[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[2]~7_combout\ = (\dut_uart|dut_rx|rx_n_cnt[2]~2_combout\ & \dut_uart|dut_rx|rx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_rx|rx_n_cnt[2]~2_combout\,
	datad => \dut_uart|dut_rx|rx_state.IDLE~q\,
	combout => \dut_uart|dut_rx|rx_n_cnt[2]~7_combout\);

-- Location: FF_X86_Y46_N23
\dut_uart|dut_rx|rx_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|rx_n_cnt[2]~7_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_cnt\(2));

-- Location: LCCOMB_X86_Y46_N16
\dut_uart|dut_rx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Add0~0_combout\ = \dut_uart|dut_rx|rx_cnt\(3) $ (((\dut_uart|dut_rx|rx_cnt\(2) & (\dut_uart|dut_rx|rx_cnt\(0) & \dut_uart|dut_rx|rx_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_cnt\(2),
	datab => \dut_uart|dut_rx|rx_cnt\(0),
	datac => \dut_uart|dut_rx|rx_cnt\(3),
	datad => \dut_uart|dut_rx|rx_cnt\(1),
	combout => \dut_uart|dut_rx|Add0~0_combout\);

-- Location: LCCOMB_X86_Y46_N20
\dut_uart|dut_rx|rx_n_cnt[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[3]~0_combout\ = (\dut_uart|dut_gen_en|Equal1~1_combout\ & (((\dut_uart|dut_rx|Add0~0_combout\)))) # (!\dut_uart|dut_gen_en|Equal1~1_combout\ & (!\dut_uart|dut_rx|Equal2~0_combout\ & ((\dut_uart|dut_rx|rx_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|Equal2~0_combout\,
	datab => \dut_uart|dut_rx|Add0~0_combout\,
	datac => \dut_uart|dut_rx|rx_cnt\(3),
	datad => \dut_uart|dut_gen_en|Equal1~1_combout\,
	combout => \dut_uart|dut_rx|rx_n_cnt[3]~0_combout\);

-- Location: LCCOMB_X86_Y46_N8
\dut_uart|dut_rx|rx_n_cnt[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[3]~4_combout\ = (\dut_uart|dut_rx|rx_n_cnt[3]~0_combout\ & \dut_uart|dut_rx|rx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_rx|rx_n_cnt[3]~0_combout\,
	datad => \dut_uart|dut_rx|rx_state.IDLE~q\,
	combout => \dut_uart|dut_rx|rx_n_cnt[3]~4_combout\);

-- Location: FF_X86_Y46_N9
\dut_uart|dut_rx|rx_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|rx_n_cnt[3]~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_cnt\(3));

-- Location: LCCOMB_X86_Y46_N10
\dut_uart|dut_rx|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Equal2~0_combout\ = (!\dut_uart|dut_rx|rx_cnt\(2) & (!\dut_uart|dut_rx|rx_cnt\(0) & (\dut_uart|dut_rx|rx_cnt\(3) & \dut_uart|dut_rx|rx_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_cnt\(2),
	datab => \dut_uart|dut_rx|rx_cnt\(0),
	datac => \dut_uart|dut_rx|rx_cnt\(3),
	datad => \dut_uart|dut_rx|rx_cnt\(1),
	combout => \dut_uart|dut_rx|Equal2~0_combout\);

-- Location: LCCOMB_X86_Y46_N30
\dut_uart|dut_rx|rx_n_cnt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[1]~1_combout\ = (\dut_uart|dut_gen_en|Equal1~1_combout\ & (\dut_uart|dut_rx|rx_cnt\(1) $ ((\dut_uart|dut_rx|rx_cnt\(0))))) # (!\dut_uart|dut_gen_en|Equal1~1_combout\ & (\dut_uart|dut_rx|rx_cnt\(1) & 
-- ((!\dut_uart|dut_rx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_cnt\(1),
	datab => \dut_uart|dut_rx|rx_cnt\(0),
	datac => \dut_uart|dut_rx|Equal2~0_combout\,
	datad => \dut_uart|dut_gen_en|Equal1~1_combout\,
	combout => \dut_uart|dut_rx|rx_n_cnt[1]~1_combout\);

-- Location: LCCOMB_X86_Y46_N12
\dut_uart|dut_rx|rx_n_cnt[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[1]~6_combout\ = (\dut_uart|dut_rx|rx_n_cnt[1]~1_combout\ & \dut_uart|dut_rx|rx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_n_cnt[1]~1_combout\,
	datad => \dut_uart|dut_rx|rx_state.IDLE~q\,
	combout => \dut_uart|dut_rx|rx_n_cnt[1]~6_combout\);

-- Location: FF_X86_Y46_N13
\dut_uart|dut_rx|rx_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|rx_n_cnt[1]~6_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_cnt\(1));

-- Location: LCCOMB_X86_Y46_N24
\dut_uart|dut_rx|rx_n_cnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|rx_n_cnt[2]~2_combout\ = \dut_uart|dut_rx|rx_cnt\(2) $ (((\dut_uart|dut_rx|rx_cnt\(1) & (\dut_uart|dut_rx|rx_cnt\(0) & \dut_uart|dut_gen_en|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_cnt\(1),
	datab => \dut_uart|dut_rx|rx_cnt\(0),
	datac => \dut_uart|dut_rx|rx_cnt\(2),
	datad => \dut_uart|dut_gen_en|Equal1~1_combout\,
	combout => \dut_uart|dut_rx|rx_n_cnt[2]~2_combout\);

-- Location: LCCOMB_X86_Y46_N26
\dut_uart|dut_rx|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector0~0_combout\ = (!\dut_uart|dut_rx|rx_n_cnt[2]~2_combout\ & (!\dut_uart|dut_rx|rx_n_cnt[1]~1_combout\ & \dut_uart|dut_rx|rx_n_cnt[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_rx|rx_n_cnt[2]~2_combout\,
	datac => \dut_uart|dut_rx|rx_n_cnt[1]~1_combout\,
	datad => \dut_uart|dut_rx|rx_n_cnt[3]~0_combout\,
	combout => \dut_uart|dut_rx|Selector0~0_combout\);

-- Location: LCCOMB_X96_Y49_N10
\dut_uart|dut_rx|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector1~0_combout\ = (!\rxd~input_o\ & (\dut_uart|dut_gen_en|Equal1~1_combout\ & !\dut_uart|dut_rx|rx_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rxd~input_o\,
	datac => \dut_uart|dut_gen_en|Equal1~1_combout\,
	datad => \dut_uart|dut_rx|rx_state.IDLE~q\,
	combout => \dut_uart|dut_rx|Selector1~0_combout\);

-- Location: LCCOMB_X96_Y49_N26
\dut_uart|dut_rx|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|Selector1~1_combout\ = (\dut_uart|dut_rx|Selector1~0_combout\) # ((\dut_uart|dut_rx|rx_state.DATA~q\ & ((\dut_uart|dut_rx|rx_n_cnt[0]~3_combout\) # (!\dut_uart|dut_rx|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|Selector0~0_combout\,
	datab => \dut_uart|dut_rx|rx_n_cnt[0]~3_combout\,
	datac => \dut_uart|dut_rx|rx_state.DATA~q\,
	datad => \dut_uart|dut_rx|Selector1~0_combout\,
	combout => \dut_uart|dut_rx|Selector1~1_combout\);

-- Location: FF_X96_Y49_N27
\dut_uart|dut_rx|rx_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|Selector1~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|rx_state.DATA~q\);

-- Location: LCCOMB_X96_Y49_N4
\dut_uart|dut_rx|fnd_rxd~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~7_combout\ = (\dut_uart|dut_rx|rx_state.DATA~q\ & (\rxd~input_o\ & \dut_uart|dut_gen_en|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_state.DATA~q\,
	datab => \rxd~input_o\,
	datac => \dut_uart|dut_gen_en|Equal1~1_combout\,
	combout => \dut_uart|dut_rx|fnd_rxd~7_combout\);

-- Location: LCCOMB_X96_Y49_N22
\dut_uart|dut_rx|fnd_rxd[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd[7]~1_combout\ = ((\dut_uart|dut_rx|rx_state.DATA~q\ & \dut_uart|dut_gen_en|Equal1~1_combout\)) # (!\dut_uart|dut_rx|rx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_state.DATA~q\,
	datac => \dut_uart|dut_gen_en|Equal1~1_combout\,
	datad => \dut_uart|dut_rx|rx_state.IDLE~q\,
	combout => \dut_uart|dut_rx|fnd_rxd[7]~1_combout\);

-- Location: FF_X96_Y49_N5
\dut_uart|dut_rx|fnd_rxd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_rx|fnd_rxd[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(7));

-- Location: LCCOMB_X96_Y49_N30
\dut_uart|dut_rx|fnd_rxd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~4_combout\ = (\dut_uart|dut_rx|rx_state.DATA~q\ & (\dut_uart|dut_rx|fnd_rxd\(7) & \dut_uart|dut_gen_en|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_state.DATA~q\,
	datab => \dut_uart|dut_rx|fnd_rxd\(7),
	datac => \dut_uart|dut_gen_en|Equal1~1_combout\,
	combout => \dut_uart|dut_rx|fnd_rxd~4_combout\);

-- Location: FF_X96_Y49_N31
\dut_uart|dut_rx|fnd_rxd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_rx|fnd_rxd[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(6));

-- Location: LCCOMB_X96_Y49_N2
\dut_uart|dut_rx|fnd_rxd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~6_combout\ = (\dut_uart|dut_rx|rx_state.DATA~q\ & (\dut_uart|dut_rx|fnd_rxd\(6) & \dut_uart|dut_gen_en|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_state.DATA~q\,
	datac => \dut_uart|dut_rx|fnd_rxd\(6),
	datad => \dut_uart|dut_gen_en|Equal1~1_combout\,
	combout => \dut_uart|dut_rx|fnd_rxd~6_combout\);

-- Location: FF_X96_Y49_N3
\dut_uart|dut_rx|fnd_rxd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_rx|fnd_rxd[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(5));

-- Location: LCCOMB_X96_Y49_N24
\dut_uart|dut_rx|fnd_rxd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~5_combout\ = (\dut_uart|dut_rx|rx_state.DATA~q\ & (\dut_uart|dut_gen_en|Equal1~1_combout\ & \dut_uart|dut_rx|fnd_rxd\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_state.DATA~q\,
	datac => \dut_uart|dut_gen_en|Equal1~1_combout\,
	datad => \dut_uart|dut_rx|fnd_rxd\(5),
	combout => \dut_uart|dut_rx|fnd_rxd~5_combout\);

-- Location: FF_X96_Y49_N25
\dut_uart|dut_rx|fnd_rxd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_rx|fnd_rxd[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(4));

-- Location: LCCOMB_X96_Y49_N8
\dut_uart|dut_rx|fnd_rxd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~0_combout\ = (\dut_uart|dut_rx|rx_state.DATA~q\ & (\dut_uart|dut_gen_en|Equal1~1_combout\ & \dut_uart|dut_rx|fnd_rxd\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_state.DATA~q\,
	datac => \dut_uart|dut_gen_en|Equal1~1_combout\,
	datad => \dut_uart|dut_rx|fnd_rxd\(4),
	combout => \dut_uart|dut_rx|fnd_rxd~0_combout\);

-- Location: FF_X96_Y49_N9
\dut_uart|dut_rx|fnd_rxd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_rx|fnd_rxd[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(3));

-- Location: LCCOMB_X96_Y49_N20
\dut_uart|dut_rx|fnd_rxd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~3_combout\ = (\dut_uart|dut_rx|rx_state.DATA~q\ & (\dut_uart|dut_rx|fnd_rxd\(3) & \dut_uart|dut_gen_en|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_state.DATA~q\,
	datab => \dut_uart|dut_rx|fnd_rxd\(3),
	datac => \dut_uart|dut_gen_en|Equal1~1_combout\,
	combout => \dut_uart|dut_rx|fnd_rxd~3_combout\);

-- Location: FF_X96_Y49_N21
\dut_uart|dut_rx|fnd_rxd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_rx|fnd_rxd[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(2));

-- Location: LCCOMB_X96_Y49_N18
\dut_uart|dut_rx|fnd_rxd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~2_combout\ = (\dut_uart|dut_rx|rx_state.DATA~q\ & (\dut_uart|dut_gen_en|Equal1~1_combout\ & \dut_uart|dut_rx|fnd_rxd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_state.DATA~q\,
	datac => \dut_uart|dut_gen_en|Equal1~1_combout\,
	datad => \dut_uart|dut_rx|fnd_rxd\(2),
	combout => \dut_uart|dut_rx|fnd_rxd~2_combout\);

-- Location: FF_X96_Y49_N19
\dut_uart|dut_rx|fnd_rxd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_rx|fnd_rxd[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(1));

-- Location: LCCOMB_X96_Y49_N14
\dut_uart|dut_rx|fnd_rxd~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|fnd_rxd~8_combout\ = (\dut_uart|dut_rx|rx_state.DATA~q\ & (\dut_uart|dut_gen_en|Equal1~1_combout\ & \dut_uart|dut_rx|fnd_rxd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|rx_state.DATA~q\,
	datac => \dut_uart|dut_gen_en|Equal1~1_combout\,
	datad => \dut_uart|dut_rx|fnd_rxd\(1),
	combout => \dut_uart|dut_rx|fnd_rxd~8_combout\);

-- Location: FF_X96_Y49_N15
\dut_uart|dut_rx|fnd_rxd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_rx|fnd_rxd~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_rx|fnd_rxd[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|fnd_rxd\(0));

-- Location: LCCOMB_X97_Y49_N30
\d1|src1_d~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src1_d~4_combout\ = (!\dut_uart|dut_rx|fnd_rxd\(7) & \dut_uart|dut_rx|fnd_rxd\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_uart|dut_rx|fnd_rxd\(7),
	datad => \dut_uart|dut_rx|fnd_rxd\(5),
	combout => \d1|src1_d~4_combout\);

-- Location: LCCOMB_X97_Y49_N4
\d1|Equal22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Equal22~2_combout\ = (\dut_uart|dut_rx|fnd_rxd\(3) & (!\dut_uart|dut_rx|fnd_rxd\(6) & (\d1|src1_d~4_combout\ & !\dut_uart|dut_rx|fnd_rxd\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(3),
	datab => \dut_uart|dut_rx|fnd_rxd\(6),
	datac => \d1|src1_d~4_combout\,
	datad => \dut_uart|dut_rx|fnd_rxd\(4),
	combout => \d1|Equal22~2_combout\);

-- Location: LCCOMB_X95_Y47_N12
\d1|Equal24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Equal24~2_combout\ = (\dut_uart|dut_rx|fnd_rxd\(1) & (!\dut_uart|dut_rx|fnd_rxd\(2) & (!\dut_uart|dut_rx|fnd_rxd\(0) & \d1|Equal22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(1),
	datab => \dut_uart|dut_rx|fnd_rxd\(2),
	datac => \dut_uart|dut_rx|fnd_rxd\(0),
	datad => \d1|Equal22~2_combout\,
	combout => \d1|Equal24~2_combout\);

-- Location: LCCOMB_X92_Y48_N8
\d1|Equal21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Equal21~3_combout\ = (\dut_uart|dut_rx|fnd_rxd\(0) & \dut_uart|dut_rx|fnd_rxd\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_uart|dut_rx|fnd_rxd\(0),
	datad => \dut_uart|dut_rx|fnd_rxd\(2),
	combout => \d1|Equal21~3_combout\);

-- Location: FF_X92_Y50_N5
\dut_uart|dut_rx|valid_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_uart|dut_rx|rx_state.STOP~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|valid_sig~q\);

-- Location: FF_X92_Y50_N13
\dut_uart|dut_rx|valid_sig_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_uart|dut_rx|valid_sig~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_rx|valid_sig_d~q\);

-- Location: LCCOMB_X92_Y50_N4
\dut_uart|dut_rx|valid\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_rx|valid~combout\ = (\dut_uart|dut_rx|valid_sig_d~q\) # (!\dut_uart|dut_rx|valid_sig~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_uart|dut_rx|valid_sig~q\,
	datad => \dut_uart|dut_rx|valid_sig_d~q\,
	combout => \dut_uart|dut_rx|valid~combout\);

-- Location: LCCOMB_X97_Y49_N28
\d1|n_state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|n_state~3_combout\ = (\d1|Equal21~3_combout\ & (!\dut_uart|dut_rx|fnd_rxd\(1) & (!\dut_uart|dut_rx|valid~combout\ & \dut_uart|dut_rx|fnd_rxd\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Equal21~3_combout\,
	datab => \dut_uart|dut_rx|fnd_rxd\(1),
	datac => \dut_uart|dut_rx|valid~combout\,
	datad => \dut_uart|dut_rx|fnd_rxd\(4),
	combout => \d1|n_state~3_combout\);

-- Location: LCCOMB_X97_Y49_N6
\d1|n_state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|n_state~4_combout\ = (\dut_uart|dut_rx|fnd_rxd\(3) & (!\dut_uart|dut_rx|fnd_rxd\(6) & (\d1|src1_d~4_combout\ & \d1|n_state~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(3),
	datab => \dut_uart|dut_rx|fnd_rxd\(6),
	datac => \d1|src1_d~4_combout\,
	datad => \d1|n_state~3_combout\,
	combout => \d1|n_state~4_combout\);

-- Location: LCCOMB_X95_Y49_N8
\d1|cnt_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|cnt_2~3_combout\ = (\d1|state.IDLE~q\ & !\d1|cnt_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|state.IDLE~q\,
	datac => \d1|cnt_2\(0),
	combout => \d1|cnt_2~3_combout\);

-- Location: LCCOMB_X92_Y50_N30
\d1|cnt_2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|cnt_2[0]~1_combout\ = ((!\dut_uart|dut_rx|valid_sig_d~q\ & (\d1|state.DATA_2~q\ & \dut_uart|dut_rx|valid_sig~q\))) # (!\d1|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|valid_sig_d~q\,
	datab => \d1|state.DATA_2~q\,
	datac => \dut_uart|dut_rx|valid_sig~q\,
	datad => \d1|state.IDLE~q\,
	combout => \d1|cnt_2[0]~1_combout\);

-- Location: FF_X95_Y49_N9
\d1|cnt_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|cnt_2~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \d1|cnt_2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|cnt_2\(0));

-- Location: LCCOMB_X95_Y49_N30
\d1|cnt_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|cnt_2~2_combout\ = (\d1|state.IDLE~q\ & (\d1|cnt_2\(1) $ (!\d1|cnt_2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|state.IDLE~q\,
	datac => \d1|cnt_2\(1),
	datad => \d1|cnt_2\(0),
	combout => \d1|cnt_2~2_combout\);

-- Location: FF_X95_Y49_N31
\d1|cnt_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|cnt_2~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \d1|cnt_2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|cnt_2\(1));

-- Location: LCCOMB_X95_Y49_N20
\d1|cnt_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|cnt_2~0_combout\ = (\d1|cnt_2\(2) $ (((!\d1|cnt_2\(1) & !\d1|cnt_2\(0))))) # (!\d1|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|cnt_2\(1),
	datab => \d1|state.IDLE~q\,
	datac => \d1|cnt_2\(2),
	datad => \d1|cnt_2\(0),
	combout => \d1|cnt_2~0_combout\);

-- Location: FF_X95_Y49_N21
\d1|cnt_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|cnt_2~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \d1|cnt_2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|cnt_2\(2));

-- Location: LCCOMB_X95_Y49_N2
\d1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Selector6~0_combout\ = (!\d1|cnt_2\(0) & (!\d1|cnt_2\(1) & !\d1|cnt_2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|cnt_2\(0),
	datac => \d1|cnt_2\(1),
	datad => \d1|cnt_2\(2),
	combout => \d1|Selector6~0_combout\);

-- Location: LCCOMB_X92_Y50_N2
\d1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Selector5~0_combout\ = (\d1|state.OPERATION~q\ & (((\d1|state.DATA_2~q\ & !\d1|Selector6~0_combout\)) # (!\dut_uart|dut_rx|valid~combout\))) # (!\d1|state.OPERATION~q\ & (((\d1|state.DATA_2~q\ & !\d1|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|state.OPERATION~q\,
	datab => \dut_uart|dut_rx|valid~combout\,
	datac => \d1|state.DATA_2~q\,
	datad => \d1|Selector6~0_combout\,
	combout => \d1|Selector5~0_combout\);

-- Location: FF_X92_Y50_N3
\d1|state.DATA_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Selector5~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|state.DATA_2~q\);

-- Location: LCCOMB_X95_Y49_N16
\d1|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Selector6~1_combout\ = (\d1|n_state~4_combout\ & (\d1|state.DATA_2~q\ & ((\d1|Selector6~0_combout\)))) # (!\d1|n_state~4_combout\ & ((\d1|state.EQUAL~q\) # ((\d1|state.DATA_2~q\ & \d1|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|n_state~4_combout\,
	datab => \d1|state.DATA_2~q\,
	datac => \d1|state.EQUAL~q\,
	datad => \d1|Selector6~0_combout\,
	combout => \d1|Selector6~1_combout\);

-- Location: FF_X95_Y49_N17
\d1|state.EQUAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Selector6~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|state.EQUAL~q\);

-- Location: LCCOMB_X95_Y49_N12
\d1|n_state.END_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|n_state.END_DATA~0_combout\ = (\d1|state.EQUAL~q\ & \d1|n_state~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|state.EQUAL~q\,
	datad => \d1|n_state~4_combout\,
	combout => \d1|n_state.END_DATA~0_combout\);

-- Location: FF_X95_Y49_N13
\d1|state.END_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|n_state.END_DATA~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|state.END_DATA~q\);

-- Location: LCCOMB_X97_Y49_N12
\d1|src2_d[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src2_d[3]~4_combout\ = (!\dut_uart|dut_rx|fnd_rxd\(1) & !\dut_uart|dut_rx|fnd_rxd\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_rx|fnd_rxd\(1),
	datad => \dut_uart|dut_rx|fnd_rxd\(2),
	combout => \d1|src2_d[3]~4_combout\);

-- Location: LCCOMB_X97_Y49_N14
\d1|n_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|n_state~0_combout\ = (!\dut_uart|dut_rx|valid~combout\ & (!\dut_uart|dut_rx|fnd_rxd\(4) & (!\dut_uart|dut_rx|fnd_rxd\(7) & \d1|src2_d[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|valid~combout\,
	datab => \dut_uart|dut_rx|fnd_rxd\(4),
	datac => \dut_uart|dut_rx|fnd_rxd\(7),
	datad => \d1|src2_d[3]~4_combout\,
	combout => \d1|n_state~0_combout\);

-- Location: LCCOMB_X97_Y49_N2
\d1|Equal21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Equal21~1_combout\ = (!\dut_uart|dut_rx|fnd_rxd\(5) & \dut_uart|dut_rx|fnd_rxd\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(5),
	datad => \dut_uart|dut_rx|fnd_rxd\(6),
	combout => \d1|Equal21~1_combout\);

-- Location: LCCOMB_X97_Y49_N10
\d1|n_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|n_state~2_combout\ = (\dut_uart|dut_rx|fnd_rxd\(3) & (\d1|n_state~0_combout\ & (\dut_uart|dut_rx|fnd_rxd\(0) & \d1|Equal21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(3),
	datab => \d1|n_state~0_combout\,
	datac => \dut_uart|dut_rx|fnd_rxd\(0),
	datad => \d1|Equal21~1_combout\,
	combout => \d1|n_state~2_combout\);

-- Location: LCCOMB_X95_Y49_N14
\d1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Selector0~0_combout\ = (!\d1|state.END_DATA~q\ & ((\d1|state.IDLE~q\) # (\d1|n_state~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|state.END_DATA~q\,
	datac => \d1|state.IDLE~q\,
	datad => \d1|n_state~2_combout\,
	combout => \d1|Selector0~0_combout\);

-- Location: FF_X95_Y49_N15
\d1|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Selector0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|state.IDLE~q\);

-- Location: LCCOMB_X92_Y50_N28
\d1|cnt_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|cnt_1~3_combout\ = (!\d1|state.IDLE~q\) # (!\d1|cnt_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|cnt_1\(0),
	datad => \d1|state.IDLE~q\,
	combout => \d1|cnt_1~3_combout\);

-- Location: LCCOMB_X97_Y49_N22
\d1|src2_d[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src2_d[3]~8_combout\ = (!\dut_uart|dut_rx|fnd_rxd\(6) & !\dut_uart|dut_rx|fnd_rxd\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_rx|fnd_rxd\(6),
	datad => \dut_uart|dut_rx|fnd_rxd\(3),
	combout => \d1|src2_d[3]~8_combout\);

-- Location: LCCOMB_X97_Y49_N0
\d1|n_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|n_state~1_combout\ = (\dut_uart|dut_rx|fnd_rxd\(5) & (\d1|n_state~0_combout\ & (\d1|src2_d[3]~8_combout\ & !\dut_uart|dut_rx|fnd_rxd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(5),
	datab => \d1|n_state~0_combout\,
	datac => \d1|src2_d[3]~8_combout\,
	datad => \dut_uart|dut_rx|fnd_rxd\(0),
	combout => \d1|n_state~1_combout\);

-- Location: LCCOMB_X92_Y50_N10
\d1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Selector1~0_combout\ = (\d1|n_state~2_combout\ & (((\d1|state.FORMAT~q\ & !\d1|n_state~1_combout\)) # (!\d1|state.IDLE~q\))) # (!\d1|n_state~2_combout\ & (((\d1|state.FORMAT~q\ & !\d1|n_state~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|n_state~2_combout\,
	datab => \d1|state.IDLE~q\,
	datac => \d1|state.FORMAT~q\,
	datad => \d1|n_state~1_combout\,
	combout => \d1|Selector1~0_combout\);

-- Location: FF_X92_Y50_N11
\d1|state.FORMAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Selector1~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|state.FORMAT~q\);

-- Location: LCCOMB_X92_Y50_N6
\d1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Selector2~0_combout\ = (\d1|state.FORMAT~q\ & ((\d1|n_state~1_combout\) # ((\dut_uart|dut_rx|valid~combout\ & \d1|state.TYPE~q\)))) # (!\d1|state.FORMAT~q\ & (\dut_uart|dut_rx|valid~combout\ & (\d1|state.TYPE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|state.FORMAT~q\,
	datab => \dut_uart|dut_rx|valid~combout\,
	datac => \d1|state.TYPE~q\,
	datad => \d1|n_state~1_combout\,
	combout => \d1|Selector2~0_combout\);

-- Location: FF_X92_Y50_N7
\d1|state.TYPE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Selector2~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|state.TYPE~q\);

-- Location: LCCOMB_X92_Y50_N16
\d1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Selector3~0_combout\ = (\d1|Selector4~0_combout\ & (!\dut_uart|dut_rx|valid~combout\ & ((\d1|state.TYPE~q\)))) # (!\d1|Selector4~0_combout\ & ((\d1|state.DATA_1~q\) # ((!\dut_uart|dut_rx|valid~combout\ & \d1|state.TYPE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Selector4~0_combout\,
	datab => \dut_uart|dut_rx|valid~combout\,
	datac => \d1|state.DATA_1~q\,
	datad => \d1|state.TYPE~q\,
	combout => \d1|Selector3~0_combout\);

-- Location: FF_X92_Y50_N17
\d1|state.DATA_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Selector3~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|state.DATA_1~q\);

-- Location: LCCOMB_X92_Y50_N22
\d1|cnt_1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|cnt_1[2]~1_combout\ = ((!\dut_uart|dut_rx|valid_sig_d~q\ & (\d1|state.DATA_1~q\ & \dut_uart|dut_rx|valid_sig~q\))) # (!\d1|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|valid_sig_d~q\,
	datab => \d1|state.DATA_1~q\,
	datac => \dut_uart|dut_rx|valid_sig~q\,
	datad => \d1|state.IDLE~q\,
	combout => \d1|cnt_1[2]~1_combout\);

-- Location: FF_X92_Y50_N29
\d1|cnt_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|cnt_1~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \d1|cnt_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|cnt_1\(0));

-- Location: LCCOMB_X92_Y50_N18
\d1|cnt_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|cnt_1~2_combout\ = (\d1|state.IDLE~q\ & (\d1|cnt_1\(0) $ (!\d1|cnt_1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|cnt_1\(0),
	datac => \d1|cnt_1\(1),
	datad => \d1|state.IDLE~q\,
	combout => \d1|cnt_1~2_combout\);

-- Location: FF_X92_Y50_N19
\d1|cnt_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|cnt_1~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \d1|cnt_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|cnt_1\(1));

-- Location: LCCOMB_X92_Y50_N20
\d1|cnt_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|cnt_1~0_combout\ = (\d1|cnt_1\(2) $ (((!\d1|cnt_1\(1) & !\d1|cnt_1\(0))))) # (!\d1|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|cnt_1\(1),
	datab => \d1|cnt_1\(0),
	datac => \d1|cnt_1\(2),
	datad => \d1|state.IDLE~q\,
	combout => \d1|cnt_1~0_combout\);

-- Location: FF_X92_Y50_N21
\d1|cnt_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|cnt_1~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \d1|cnt_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|cnt_1\(2));

-- Location: LCCOMB_X92_Y50_N26
\d1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Selector4~0_combout\ = (!\d1|cnt_1\(0) & (!\d1|cnt_1\(1) & !\d1|cnt_1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|cnt_1\(0),
	datac => \d1|cnt_1\(1),
	datad => \d1|cnt_1\(2),
	combout => \d1|Selector4~0_combout\);

-- Location: LCCOMB_X92_Y50_N8
\d1|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Selector4~1_combout\ = (\d1|Selector4~0_combout\ & ((\d1|state.DATA_1~q\) # ((\dut_uart|dut_rx|valid~combout\ & \d1|state.OPERATION~q\)))) # (!\d1|Selector4~0_combout\ & (\dut_uart|dut_rx|valid~combout\ & (\d1|state.OPERATION~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Selector4~0_combout\,
	datab => \dut_uart|dut_rx|valid~combout\,
	datac => \d1|state.OPERATION~q\,
	datad => \d1|state.DATA_1~q\,
	combout => \d1|Selector4~1_combout\);

-- Location: FF_X92_Y50_N9
\d1|state.OPERATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Selector4~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|state.OPERATION~q\);

-- Location: LCCOMB_X95_Y47_N16
\d1|op_d[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|op_d[1]~0_combout\ = (\dut_uart|dut_rx|fnd_rxd\(1) & !\dut_uart|dut_rx|fnd_rxd\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(1),
	datac => \dut_uart|dut_rx|fnd_rxd\(2),
	combout => \d1|op_d[1]~0_combout\);

-- Location: LCCOMB_X95_Y47_N2
\d1|op_d[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|op_d[1]~1_combout\ = (\d1|state.OPERATION~q\ & (\d1|Equal22~2_combout\ & ((\d1|op_d[1]~0_combout\) # (\d1|Equal21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|state.OPERATION~q\,
	datab => \d1|op_d[1]~0_combout\,
	datac => \d1|Equal21~3_combout\,
	datad => \d1|Equal22~2_combout\,
	combout => \d1|op_d[1]~1_combout\);

-- Location: FF_X95_Y47_N13
\d1|op_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Equal24~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \d1|op_d[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|op_d\(2));

-- Location: LCCOMB_X95_Y49_N0
\d1|done_sig~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|done_sig~feeder_combout\ = \d1|state.END_DATA~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|state.END_DATA~q\,
	combout => \d1|done_sig~feeder_combout\);

-- Location: FF_X95_Y49_N1
\d1|done_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|done_sig~feeder_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|done_sig~q\);

-- Location: LCCOMB_X92_Y49_N22
\dut_alu|op_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|op_s~1_combout\ = (\d1|op_d\(2) & \d1|done_sig~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|op_d\(2),
	datad => \d1|done_sig~q\,
	combout => \dut_alu|op_s~1_combout\);

-- Location: FF_X92_Y49_N23
\dut_alu|op_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|op_s~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|op_s\(2));

-- Location: LCCOMB_X97_Y49_N16
\d1|Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Equal21~0_combout\ = (\dut_uart|dut_rx|fnd_rxd\(0) & (\dut_uart|dut_rx|fnd_rxd\(1) & (!\dut_uart|dut_rx|fnd_rxd\(7) & \dut_uart|dut_rx|fnd_rxd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(0),
	datab => \dut_uart|dut_rx|fnd_rxd\(1),
	datac => \dut_uart|dut_rx|fnd_rxd\(7),
	datad => \dut_uart|dut_rx|fnd_rxd\(2),
	combout => \d1|Equal21~0_combout\);

-- Location: LCCOMB_X97_Y49_N26
\d1|Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Equal21~2_combout\ = (!\dut_uart|dut_rx|fnd_rxd\(3) & (\d1|Equal21~1_combout\ & (\dut_uart|dut_rx|fnd_rxd\(4) & \d1|Equal21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(3),
	datab => \d1|Equal21~1_combout\,
	datac => \dut_uart|dut_rx|fnd_rxd\(4),
	datad => \d1|Equal21~0_combout\,
	combout => \d1|Equal21~2_combout\);

-- Location: FF_X97_Y49_N27
\d1|dtype_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Equal21~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \d1|state.TYPE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|dtype_d\(0));

-- Location: LCCOMB_X92_Y49_N8
\dut_alu|dtype_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dtype_s~1_combout\ = (\d1|done_sig~q\ & \d1|dtype_d\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|done_sig~q\,
	datad => \d1|dtype_d\(0),
	combout => \dut_alu|dtype_s~1_combout\);

-- Location: FF_X92_Y49_N9
\dut_alu|dtype_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dtype_s~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dtype_s\(0));

-- Location: LCCOMB_X97_Y49_N24
\d1|dtype_d[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|dtype_d[1]~0_combout\ = !\d1|Equal21~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|Equal21~2_combout\,
	combout => \d1|dtype_d[1]~0_combout\);

-- Location: FF_X97_Y49_N25
\d1|dtype_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|dtype_d[1]~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \d1|state.TYPE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|dtype_d\(1));

-- Location: LCCOMB_X92_Y49_N4
\dut_alu|dtype_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dtype_s~0_combout\ = (\d1|done_sig~q\ & \d1|dtype_d\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|done_sig~q\,
	datac => \d1|dtype_d\(1),
	combout => \dut_alu|dtype_s~0_combout\);

-- Location: FF_X92_Y49_N5
\dut_alu|dtype_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dtype_s~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dtype_s\(1));

-- Location: LCCOMB_X92_Y49_N26
\dut_alu|dut_mul_u|n_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|n_state~0_combout\ = (\dut_alu|op_s\(2) & (!\dut_alu|dtype_s\(0) & (\dut_alu|dtype_s\(1) & !\dut_alu|dut_mul_u|state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|op_s\(2),
	datab => \dut_alu|dtype_s\(0),
	datac => \dut_alu|dtype_s\(1),
	datad => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|n_state~0_combout\);

-- Location: LCCOMB_X92_Y49_N20
\dut_alu|dut_mul_u|n_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|n_state~1_combout\ = (\dut_alu|dut_mul_u|count\(1)) # ((\dut_alu|dut_mul_u|count\(3)) # ((\dut_alu|dut_mul_u|count\(2)) # (\dut_alu|dut_mul_u|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|count\(1),
	datab => \dut_alu|dut_mul_u|count\(3),
	datac => \dut_alu|dut_mul_u|count\(2),
	datad => \dut_alu|dut_mul_u|count\(0),
	combout => \dut_alu|dut_mul_u|n_state~1_combout\);

-- Location: LCCOMB_X92_Y49_N24
\dut_alu|dut_mul_u|n_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|n_state~2_combout\ = (\dut_alu|dut_mul_u|n_state~0_combout\) # ((\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|n_state~1_combout\) # (!\dut_alu|dut_mul_u|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|n_state~0_combout\,
	datab => \dut_alu|dut_mul_u|n_state~1_combout\,
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \dut_alu|dut_mul_u|count\(4),
	combout => \dut_alu|dut_mul_u|n_state~2_combout\);

-- Location: FF_X92_Y49_N25
\dut_alu|dut_mul_u|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|n_state~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|state~q\);

-- Location: FF_X92_Y49_N11
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|count\(0));

-- Location: LCCOMB_X92_Y49_N12
\dut_alu|dut_mul_u|count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|count[1]~7_combout\ = (\dut_alu|dut_mul_u|count\(1) & (\dut_alu|dut_mul_u|count[0]~6\ & VCC)) # (!\dut_alu|dut_mul_u|count\(1) & (!\dut_alu|dut_mul_u|count[0]~6\))
-- \dut_alu|dut_mul_u|count[1]~8\ = CARRY((!\dut_alu|dut_mul_u|count\(1) & !\dut_alu|dut_mul_u|count[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|count\(1),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|count[0]~6\,
	combout => \dut_alu|dut_mul_u|count[1]~7_combout\,
	cout => \dut_alu|dut_mul_u|count[1]~8\);

-- Location: FF_X92_Y49_N13
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|count\(1));

-- Location: LCCOMB_X92_Y49_N14
\dut_alu|dut_mul_u|count[2]~9\ : cycloneive_lcell_comb
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

-- Location: FF_X92_Y49_N15
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|count\(2));

-- Location: LCCOMB_X92_Y49_N16
\dut_alu|dut_mul_u|count[3]~11\ : cycloneive_lcell_comb
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

-- Location: FF_X92_Y49_N17
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|count\(3));

-- Location: LCCOMB_X92_Y49_N18
\dut_alu|dut_mul_u|count[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|count[4]~13_combout\ = \dut_alu|dut_mul_u|count[3]~12\ $ (\dut_alu|dut_mul_u|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_u|count\(4),
	cin => \dut_alu|dut_mul_u|count[3]~12\,
	combout => \dut_alu|dut_mul_u|count[4]~13_combout\);

-- Location: FF_X92_Y49_N19
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|count\(4));

-- Location: LCCOMB_X92_Y49_N2
\dut_alu|dut_mul_u|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|Equal2~0_combout\ = (\dut_alu|dut_mul_u|count\(1) & (\dut_alu|dut_mul_u|count\(3) & (\dut_alu|dut_mul_u|count\(2) & \dut_alu|dut_mul_u|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|count\(1),
	datab => \dut_alu|dut_mul_u|count\(3),
	datac => \dut_alu|dut_mul_u|count\(2),
	datad => \dut_alu|dut_mul_u|count\(0),
	combout => \dut_alu|dut_mul_u|Equal2~0_combout\);

-- Location: LCCOMB_X92_Y49_N0
\dut_alu|dut_mul_u|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|Equal2~1_combout\ = (!\dut_alu|dut_mul_u|count\(4) & \dut_alu|dut_mul_u|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|count\(4),
	datad => \dut_alu|dut_mul_u|Equal2~0_combout\,
	combout => \dut_alu|dut_mul_u|Equal2~1_combout\);

-- Location: FF_X92_Y49_N1
\dut_alu|dut_mul_u|done_edge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|Equal2~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|done_edge~q\);

-- Location: LCCOMB_X92_Y49_N28
\dut_alu|dut_mul_u|done\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|done~combout\ = (\dut_alu|dut_mul_u|done_edge~q\) # ((\dut_alu|dut_mul_u|count\(4)) # (!\dut_alu|dut_mul_u|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|done_edge~q\,
	datac => \dut_alu|dut_mul_u|count\(4),
	datad => \dut_alu|dut_mul_u|Equal2~0_combout\,
	combout => \dut_alu|dut_mul_u|done~combout\);

-- Location: LCCOMB_X87_Y49_N22
\dut_alu|dut_mul_s|count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|count[0]~5_combout\ = \dut_alu|dut_mul_s|count\(0) $ (VCC)
-- \dut_alu|dut_mul_s|count[0]~6\ = CARRY(\dut_alu|dut_mul_s|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|count\(0),
	datad => VCC,
	combout => \dut_alu|dut_mul_s|count[0]~5_combout\,
	cout => \dut_alu|dut_mul_s|count[0]~6\);

-- Location: LCCOMB_X92_Y49_N30
\dut_alu|dut_mul_s|n_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|n_state~0_combout\ = (\dut_alu|op_s\(2) & (\dut_alu|dtype_s\(0) & (!\dut_alu|dtype_s\(1) & !\dut_alu|dut_mul_s|state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|op_s\(2),
	datab => \dut_alu|dtype_s\(0),
	datac => \dut_alu|dtype_s\(1),
	datad => \dut_alu|dut_mul_s|state~q\,
	combout => \dut_alu|dut_mul_s|n_state~0_combout\);

-- Location: LCCOMB_X87_Y49_N20
\dut_alu|dut_mul_s|n_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|n_state~1_combout\ = (\dut_alu|dut_mul_s|count\(0)) # ((\dut_alu|dut_mul_s|count\(3)) # ((\dut_alu|dut_mul_s|count\(2)) # (\dut_alu|dut_mul_s|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|count\(0),
	datab => \dut_alu|dut_mul_s|count\(3),
	datac => \dut_alu|dut_mul_s|count\(2),
	datad => \dut_alu|dut_mul_s|count\(1),
	combout => \dut_alu|dut_mul_s|n_state~1_combout\);

-- Location: LCCOMB_X87_Y49_N10
\dut_alu|dut_mul_s|n_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|n_state~2_combout\ = (\dut_alu|dut_mul_s|n_state~0_combout\) # ((\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|n_state~1_combout\) # (!\dut_alu|dut_mul_s|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|count\(4),
	datab => \dut_alu|dut_mul_s|n_state~0_combout\,
	datac => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|n_state~1_combout\,
	combout => \dut_alu|dut_mul_s|n_state~2_combout\);

-- Location: FF_X87_Y49_N11
\dut_alu|dut_mul_s|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|n_state~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|state~q\);

-- Location: FF_X87_Y49_N23
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|count\(0));

-- Location: LCCOMB_X87_Y49_N24
\dut_alu|dut_mul_s|count[1]~7\ : cycloneive_lcell_comb
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

-- Location: FF_X87_Y49_N25
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|count\(1));

-- Location: LCCOMB_X87_Y49_N26
\dut_alu|dut_mul_s|count[2]~9\ : cycloneive_lcell_comb
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

-- Location: FF_X87_Y49_N27
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|count\(2));

-- Location: LCCOMB_X87_Y49_N28
\dut_alu|dut_mul_s|count[3]~11\ : cycloneive_lcell_comb
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

-- Location: FF_X87_Y49_N29
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|count\(3));

-- Location: LCCOMB_X87_Y49_N30
\dut_alu|dut_mul_s|count[4]~13\ : cycloneive_lcell_comb
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

-- Location: FF_X87_Y49_N31
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|count\(4));

-- Location: LCCOMB_X87_Y49_N6
\dut_alu|dut_mul_s|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Equal4~0_combout\ = (\dut_alu|dut_mul_s|count\(0) & (\dut_alu|dut_mul_s|count\(3) & (\dut_alu|dut_mul_s|count\(2) & \dut_alu|dut_mul_s|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|count\(0),
	datab => \dut_alu|dut_mul_s|count\(3),
	datac => \dut_alu|dut_mul_s|count\(2),
	datad => \dut_alu|dut_mul_s|count\(1),
	combout => \dut_alu|dut_mul_s|Equal4~0_combout\);

-- Location: LCCOMB_X87_Y49_N4
\dut_alu|dut_mul_s|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Equal4~1_combout\ = (!\dut_alu|dut_mul_s|count\(4) & \dut_alu|dut_mul_s|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_mul_s|count\(4),
	datad => \dut_alu|dut_mul_s|Equal4~0_combout\,
	combout => \dut_alu|dut_mul_s|Equal4~1_combout\);

-- Location: LCCOMB_X90_Y50_N10
\dut_alu|dut_divider_u|count[0]~5\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X95_Y47_N10
\d1|op_d~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|op_d~2_combout\ = ((\dut_uart|dut_rx|fnd_rxd\(1) & (\dut_uart|dut_rx|fnd_rxd\(2))) # (!\dut_uart|dut_rx|fnd_rxd\(1) & ((!\dut_uart|dut_rx|fnd_rxd\(0)) # (!\dut_uart|dut_rx|fnd_rxd\(2))))) # (!\d1|Equal22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(1),
	datab => \dut_uart|dut_rx|fnd_rxd\(2),
	datac => \dut_uart|dut_rx|fnd_rxd\(0),
	datad => \d1|Equal22~2_combout\,
	combout => \d1|op_d~2_combout\);

-- Location: FF_X95_Y47_N11
\d1|op_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|op_d~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \d1|op_d[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|op_d\(3));

-- Location: LCCOMB_X90_Y50_N4
\dut_alu|op_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|op_s~0_combout\ = (\d1|op_d\(3) & \d1|done_sig~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|op_d\(3),
	datad => \d1|done_sig~q\,
	combout => \dut_alu|op_s~0_combout\);

-- Location: FF_X90_Y50_N5
\dut_alu|op_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|op_s~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|op_s\(3));

-- Location: LCCOMB_X90_Y50_N2
\dut_alu|dut_divider_u|Equal0~0\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X90_Y50_N6
\dut_alu|dut_divider_u|n_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|n_state~0_combout\ = (\dut_alu|dut_divider_u|state~q\ & (((\dut_alu|dut_divider_u|Equal0~0_combout\)) # (!\dut_alu|dut_divider_u|count\(4)))) # (!\dut_alu|dut_divider_u|state~q\ & (((\dut_alu|op_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|count\(4),
	datab => \dut_alu|op_s\(3),
	datac => \dut_alu|dut_divider_u|state~q\,
	datad => \dut_alu|dut_divider_u|Equal0~0_combout\,
	combout => \dut_alu|dut_divider_u|n_state~0_combout\);

-- Location: FF_X90_Y50_N7
\dut_alu|dut_divider_u|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|n_state~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|state~q\);

-- Location: FF_X90_Y50_N11
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|count\(0));

-- Location: LCCOMB_X90_Y50_N12
\dut_alu|dut_divider_u|count[1]~7\ : cycloneive_lcell_comb
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

-- Location: FF_X90_Y50_N13
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|count\(1));

-- Location: LCCOMB_X90_Y50_N14
\dut_alu|dut_divider_u|count[2]~9\ : cycloneive_lcell_comb
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

-- Location: FF_X90_Y50_N15
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|count\(2));

-- Location: LCCOMB_X90_Y50_N16
\dut_alu|dut_divider_u|count[3]~11\ : cycloneive_lcell_comb
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

-- Location: FF_X90_Y50_N17
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|count\(3));

-- Location: LCCOMB_X90_Y50_N18
\dut_alu|dut_divider_u|count[4]~13\ : cycloneive_lcell_comb
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

-- Location: FF_X90_Y50_N19
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|count\(4));

-- Location: LCCOMB_X90_Y50_N8
\dut_alu|dut_divider_u|Equal1~0\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X90_Y50_N26
\dut_alu|dut_divider_u|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Equal1~1_combout\ = (!\dut_alu|dut_divider_u|count\(4) & \dut_alu|dut_divider_u|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|count\(4),
	datac => \dut_alu|dut_divider_u|Equal1~0_combout\,
	combout => \dut_alu|dut_divider_u|Equal1~1_combout\);

-- Location: FF_X90_Y50_N27
\dut_alu|dut_divider_u|done_edge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|Equal1~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|done_edge~q\);

-- Location: LCCOMB_X90_Y50_N20
\dut_alu|dut_divider_u|done\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|done~combout\ = (!\dut_alu|dut_divider_u|done_edge~q\ & (!\dut_alu|dut_divider_u|count\(4) & \dut_alu|dut_divider_u|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|done_edge~q\,
	datab => \dut_alu|dut_divider_u|count\(4),
	datac => \dut_alu|dut_divider_u|Equal1~0_combout\,
	combout => \dut_alu|dut_divider_u|done~combout\);

-- Location: FF_X87_Y49_N5
\dut_alu|dut_mul_s|done_edge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Equal4~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|done_edge~q\);

-- Location: LCCOMB_X87_Y49_N0
\dut_alu|result_d[17]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[17]~35_combout\ = (\dut_alu|dut_mul_u|done~combout\ & (!\dut_alu|dut_divider_u|done~combout\ & ((\dut_alu|dut_mul_s|done_edge~q\) # (!\dut_alu|dut_mul_s|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|done~combout\,
	datab => \dut_alu|dut_mul_s|Equal4~1_combout\,
	datac => \dut_alu|dut_divider_u|done~combout\,
	datad => \dut_alu|dut_mul_s|done_edge~q\,
	combout => \dut_alu|result_d[17]~35_combout\);

-- Location: LCCOMB_X95_Y47_N14
\d1|Equal22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Equal22~3_combout\ = (\dut_uart|dut_rx|fnd_rxd\(1) & (!\dut_uart|dut_rx|fnd_rxd\(2) & (\dut_uart|dut_rx|fnd_rxd\(0) & \d1|Equal22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(1),
	datab => \dut_uart|dut_rx|fnd_rxd\(2),
	datac => \dut_uart|dut_rx|fnd_rxd\(0),
	datad => \d1|Equal22~2_combout\,
	combout => \d1|Equal22~3_combout\);

-- Location: FF_X95_Y47_N15
\d1|op_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Equal22~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \d1|op_d[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|op_d\(0));

-- Location: LCCOMB_X95_Y47_N0
\d1|Equal23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Equal23~2_combout\ = (!\dut_uart|dut_rx|fnd_rxd\(1) & (\dut_uart|dut_rx|fnd_rxd\(2) & (\dut_uart|dut_rx|fnd_rxd\(0) & \d1|Equal22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(1),
	datab => \dut_uart|dut_rx|fnd_rxd\(2),
	datac => \dut_uart|dut_rx|fnd_rxd\(0),
	datad => \d1|Equal22~2_combout\,
	combout => \d1|Equal23~2_combout\);

-- Location: FF_X95_Y47_N1
\d1|op_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Equal23~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \d1|op_d[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|op_d\(1));

-- Location: LCCOMB_X95_Y47_N22
\dut_alu|alu_done_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|alu_done_d~0_combout\ = (\d1|op_d\(0) & (\d1|dtype_d\(1) $ ((\d1|dtype_d\(0))))) # (!\d1|op_d\(0) & (\d1|op_d\(1) & (\d1|dtype_d\(1) $ (\d1|dtype_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|dtype_d\(1),
	datab => \d1|op_d\(0),
	datac => \d1|dtype_d\(0),
	datad => \d1|op_d\(1),
	combout => \dut_alu|alu_done_d~0_combout\);

-- Location: LCCOMB_X95_Y49_N10
\dut_alu|dut_delay|next_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_delay|next_cnt[0]~1_combout\ = (!\dut_alu|dut_delay|state~q\) # (!\dut_alu|dut_delay|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_delay|cnt\(0),
	datad => \dut_alu|dut_delay|state~q\,
	combout => \dut_alu|dut_delay|next_cnt[0]~1_combout\);

-- Location: FF_X95_Y49_N11
\dut_alu|dut_delay|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_delay|next_cnt[0]~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_delay|cnt\(0));

-- Location: LCCOMB_X95_Y49_N22
\dut_alu|dut_delay|next_cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_delay|next_cnt[1]~0_combout\ = (\dut_alu|dut_delay|cnt\(1) $ (!\dut_alu|dut_delay|cnt\(0))) # (!\dut_alu|dut_delay|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_delay|state~q\,
	datac => \dut_alu|dut_delay|cnt\(1),
	datad => \dut_alu|dut_delay|cnt\(0),
	combout => \dut_alu|dut_delay|next_cnt[1]~0_combout\);

-- Location: FF_X95_Y49_N23
\dut_alu|dut_delay|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_delay|next_cnt[1]~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_delay|cnt\(1));

-- Location: LCCOMB_X95_Y49_N28
\dut_alu|dut_delay|next_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_delay|next_state~0_combout\ = (\dut_alu|dut_delay|state~q\ & ((\dut_alu|dut_delay|cnt\(1)) # ((!\dut_alu|dut_delay|cnt\(0))))) # (!\dut_alu|dut_delay|state~q\ & (((\d1|done_sig~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_delay|cnt\(1),
	datab => \d1|done_sig~q\,
	datac => \dut_alu|dut_delay|state~q\,
	datad => \dut_alu|dut_delay|cnt\(0),
	combout => \dut_alu|dut_delay|next_state~0_combout\);

-- Location: FF_X95_Y49_N29
\dut_alu|dut_delay|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_delay|next_state~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_delay|state~q\);

-- Location: LCCOMB_X95_Y49_N26
\dut_alu|start_d~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|start_d~feeder_combout\ = \dut_alu|dut_delay|state~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_delay|state~q\,
	combout => \dut_alu|start_d~feeder_combout\);

-- Location: FF_X95_Y49_N27
\dut_alu|start_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|start_d~feeder_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|start_d~q\);

-- Location: LCCOMB_X95_Y49_N24
\dut_alu|alu_done_d~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|alu_done_d~1_combout\ = ((\dut_alu|alu_done_d~0_combout\ & (\dut_alu|start_d~q\ & !\dut_alu|dut_delay|state~q\))) # (!\dut_alu|result_d[17]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~35_combout\,
	datab => \dut_alu|alu_done_d~0_combout\,
	datac => \dut_alu|start_d~q\,
	datad => \dut_alu|dut_delay|state~q\,
	combout => \dut_alu|alu_done_d~1_combout\);

-- Location: FF_X95_Y49_N25
\dut_alu|alu_done_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|alu_done_d~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|alu_done_d~q\);

-- Location: LCCOMB_X97_Y46_N18
\dut_encorder|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|Selector0~0_combout\ = (\dut_encorder|state.UART_VALID~q\ & (!\dut_encorder|Equal1~0_combout\ & ((\dut_alu|alu_done_d~q\) # (\dut_encorder|state.IDLE~q\)))) # (!\dut_encorder|state.UART_VALID~q\ & ((\dut_alu|alu_done_d~q\) # 
-- ((\dut_encorder|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|state.UART_VALID~q\,
	datab => \dut_alu|alu_done_d~q\,
	datac => \dut_encorder|state.IDLE~q\,
	datad => \dut_encorder|Equal1~0_combout\,
	combout => \dut_encorder|Selector0~0_combout\);

-- Location: FF_X97_Y46_N19
\dut_encorder|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|Selector0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|state.IDLE~q\);

-- Location: LCCOMB_X97_Y46_N10
\dut_encorder|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|Selector1~1_combout\ = (\dut_alu|alu_done_d~q\ & (((!\dut_encorder|Equal1~0_combout\ & \dut_encorder|Selector1~0_combout\)) # (!\dut_encorder|state.IDLE~q\))) # (!\dut_alu|alu_done_d~q\ & (!\dut_encorder|Equal1~0_combout\ & 
-- (\dut_encorder|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|alu_done_d~q\,
	datab => \dut_encorder|Equal1~0_combout\,
	datac => \dut_encorder|Selector1~0_combout\,
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|Selector1~1_combout\);

-- Location: FF_X97_Y46_N11
\dut_encorder|state.UART_SHIFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|Selector1~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|state.UART_SHIFT~q\);

-- Location: LCCOMB_X97_Y45_N18
\dut_encorder|cnt_txen~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|cnt_txen~2_combout\ = (!\dut_encorder|cnt_txen\(0) & !\dut_encorder|state.UART_SHIFT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_encorder|cnt_txen\(0),
	datad => \dut_encorder|state.UART_SHIFT~q\,
	combout => \dut_encorder|cnt_txen~2_combout\);

-- Location: LCCOMB_X97_Y46_N16
\dut_encorder|state.UART_DATA~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|state.UART_DATA~feeder_combout\ = \dut_encorder|state.UART_SHIFT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_encorder|state.UART_SHIFT~q\,
	combout => \dut_encorder|state.UART_DATA~feeder_combout\);

-- Location: FF_X97_Y46_N17
\dut_encorder|state.UART_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|state.UART_DATA~feeder_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|state.UART_DATA~q\);

-- Location: LCCOMB_X97_Y46_N28
\dut_encorder|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|Selector2~0_combout\ = (\dut_encorder|state.UART_DATA~q\) # ((!\dut_encorder|Selector3~0_combout\ & \dut_encorder|state.UART_END~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|state.UART_DATA~q\,
	datab => \dut_encorder|Selector3~0_combout\,
	datac => \dut_encorder|state.UART_END~q\,
	combout => \dut_encorder|Selector2~0_combout\);

-- Location: FF_X97_Y46_N29
\dut_encorder|state.UART_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|Selector2~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|state.UART_END~q\);

-- Location: LCCOMB_X97_Y45_N20
\dut_encorder|cnt_txen[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|cnt_txen[0]~1_combout\ = (\dut_encorder|state.UART_SHIFT~q\) # ((!\dut_encorder|dut_gen_en|Equal0~2_combout\ & \dut_encorder|state.UART_END~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|state.UART_SHIFT~q\,
	datac => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	datad => \dut_encorder|state.UART_END~q\,
	combout => \dut_encorder|cnt_txen[0]~1_combout\);

-- Location: FF_X97_Y45_N19
\dut_encorder|cnt_txen[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|cnt_txen~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|cnt_txen[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|cnt_txen\(0));

-- Location: LCCOMB_X97_Y45_N6
\dut_encorder|cnt_txen~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|cnt_txen~4_combout\ = (!\dut_encorder|state.UART_SHIFT~q\ & (\dut_encorder|cnt_txen\(0) $ (\dut_encorder|cnt_txen\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|cnt_txen\(0),
	datac => \dut_encorder|cnt_txen\(1),
	datad => \dut_encorder|state.UART_SHIFT~q\,
	combout => \dut_encorder|cnt_txen~4_combout\);

-- Location: FF_X97_Y45_N7
\dut_encorder|cnt_txen[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|cnt_txen~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|cnt_txen[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|cnt_txen\(1));

-- Location: LCCOMB_X97_Y45_N12
\dut_encorder|cnt_txen~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|cnt_txen~3_combout\ = (!\dut_encorder|state.UART_SHIFT~q\ & (\dut_encorder|cnt_txen\(2) $ (((!\dut_encorder|cnt_txen\(1) & \dut_encorder|cnt_txen\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|cnt_txen\(1),
	datab => \dut_encorder|cnt_txen\(0),
	datac => \dut_encorder|cnt_txen\(2),
	datad => \dut_encorder|state.UART_SHIFT~q\,
	combout => \dut_encorder|cnt_txen~3_combout\);

-- Location: FF_X97_Y45_N13
\dut_encorder|cnt_txen[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|cnt_txen~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|cnt_txen[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|cnt_txen\(2));

-- Location: LCCOMB_X97_Y45_N10
\dut_encorder|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|Add1~0_combout\ = \dut_encorder|cnt_txen\(3) $ (((!\dut_encorder|cnt_txen\(2) & (\dut_encorder|cnt_txen\(0) & !\dut_encorder|cnt_txen\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|cnt_txen\(2),
	datab => \dut_encorder|cnt_txen\(0),
	datac => \dut_encorder|cnt_txen\(1),
	datad => \dut_encorder|cnt_txen\(3),
	combout => \dut_encorder|Add1~0_combout\);

-- Location: LCCOMB_X97_Y45_N24
\dut_encorder|cnt_txen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|cnt_txen~0_combout\ = (\dut_encorder|Add1~0_combout\ & !\dut_encorder|state.UART_SHIFT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|Add1~0_combout\,
	datad => \dut_encorder|state.UART_SHIFT~q\,
	combout => \dut_encorder|cnt_txen~0_combout\);

-- Location: FF_X97_Y45_N25
\dut_encorder|cnt_txen[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|cnt_txen~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|cnt_txen[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|cnt_txen\(3));

-- Location: LCCOMB_X97_Y45_N0
\dut_encorder|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|Selector3~0_combout\ = (!\dut_encorder|cnt_txen\(2) & (\dut_encorder|cnt_txen\(0) & (!\dut_encorder|cnt_txen\(1) & \dut_encorder|cnt_txen\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|cnt_txen\(2),
	datab => \dut_encorder|cnt_txen\(0),
	datac => \dut_encorder|cnt_txen\(1),
	datad => \dut_encorder|cnt_txen\(3),
	combout => \dut_encorder|Selector3~0_combout\);

-- Location: LCCOMB_X97_Y46_N26
\dut_encorder|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|Selector3~1_combout\ = (\dut_encorder|uart_valid_d~0_combout\ & ((\dut_encorder|dut_gen_en|Equal0~2_combout\) # ((\dut_encorder|Selector3~0_combout\ & \dut_encorder|state.UART_END~q\)))) # (!\dut_encorder|uart_valid_d~0_combout\ & 
-- (\dut_encorder|Selector3~0_combout\ & ((\dut_encorder|state.UART_END~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|uart_valid_d~0_combout\,
	datab => \dut_encorder|Selector3~0_combout\,
	datac => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	datad => \dut_encorder|state.UART_END~q\,
	combout => \dut_encorder|Selector3~1_combout\);

-- Location: FF_X97_Y46_N27
\dut_encorder|state.UART_VALID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|Selector3~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|state.UART_VALID~q\);

-- Location: LCCOMB_X97_Y46_N22
\dut_encorder|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|Selector1~0_combout\ = (\dut_encorder|state.UART_VALID~q\ & !\dut_encorder|dut_gen_en|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|state.UART_VALID~q\,
	datac => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	combout => \dut_encorder|Selector1~0_combout\);

-- Location: LCCOMB_X97_Y46_N14
\dut_encorder|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|cnt~2_combout\ = (!\dut_encorder|cnt\(0) & \dut_encorder|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_encorder|cnt\(0),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|cnt~2_combout\);

-- Location: LCCOMB_X97_Y46_N4
\dut_encorder|cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|cnt[0]~1_combout\ = ((\dut_encorder|state.UART_VALID~q\ & !\dut_encorder|dut_gen_en|Equal0~2_combout\)) # (!\dut_encorder|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|state.UART_VALID~q\,
	datac => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|cnt[0]~1_combout\);

-- Location: FF_X97_Y46_N15
\dut_encorder|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|cnt~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|cnt\(0));

-- Location: LCCOMB_X97_Y46_N2
\dut_encorder|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|Add0~2_combout\ = \dut_encorder|cnt\(0) $ (!\dut_encorder|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|cnt\(0),
	datac => \dut_encorder|cnt\(1),
	combout => \dut_encorder|Add0~2_combout\);

-- Location: FF_X97_Y46_N3
\dut_encorder|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|Add0~2_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_encorder|ALT_INV_state.IDLE~q\,
	ena => \dut_encorder|cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|cnt\(1));

-- Location: LCCOMB_X97_Y46_N8
\dut_encorder|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|Add0~1_combout\ = \dut_encorder|cnt\(2) $ (((!\dut_encorder|cnt\(0) & !\dut_encorder|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|cnt\(0),
	datac => \dut_encorder|cnt\(2),
	datad => \dut_encorder|cnt\(1),
	combout => \dut_encorder|Add0~1_combout\);

-- Location: FF_X97_Y46_N9
\dut_encorder|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|Add0~1_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_encorder|ALT_INV_state.IDLE~q\,
	ena => \dut_encorder|cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|cnt\(2));

-- Location: LCCOMB_X97_Y46_N0
\dut_encorder|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|Add0~0_combout\ = \dut_encorder|cnt\(3) $ (((!\dut_encorder|cnt\(0) & (!\dut_encorder|cnt\(2) & !\dut_encorder|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|cnt\(3),
	datab => \dut_encorder|cnt\(0),
	datac => \dut_encorder|cnt\(2),
	datad => \dut_encorder|cnt\(1),
	combout => \dut_encorder|Add0~0_combout\);

-- Location: LCCOMB_X97_Y46_N12
\dut_encorder|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|cnt~0_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|Selector1~0_combout\ & (\dut_encorder|Add0~0_combout\)) # (!\dut_encorder|Selector1~0_combout\ & ((\dut_encorder|cnt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|Selector1~0_combout\,
	datab => \dut_encorder|Add0~0_combout\,
	datac => \dut_encorder|cnt\(3),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|cnt~0_combout\);

-- Location: FF_X97_Y46_N13
\dut_encorder|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|cnt~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|cnt\(3));

-- Location: LCCOMB_X97_Y46_N24
\dut_encorder|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|Equal1~0_combout\ = (\dut_encorder|cnt\(3) & (!\dut_encorder|cnt\(0) & (!\dut_encorder|cnt\(2) & !\dut_encorder|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|cnt\(3),
	datab => \dut_encorder|cnt\(0),
	datac => \dut_encorder|cnt\(2),
	datad => \dut_encorder|cnt\(1),
	combout => \dut_encorder|Equal1~0_combout\);

-- Location: LCCOMB_X97_Y46_N30
\dut_encorder|uart_valid_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|uart_valid_d~0_combout\ = (!\dut_encorder|Equal1~0_combout\ & \dut_encorder|state.UART_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|Equal1~0_combout\,
	datac => \dut_encorder|state.UART_VALID~q\,
	combout => \dut_encorder|uart_valid_d~0_combout\);

-- Location: FF_X97_Y46_N31
\dut_encorder|uart_valid_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|uart_valid_d~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|uart_valid_d~q\);

-- Location: FF_X96_Y43_N21
\dut_encorder|uart_valid_dd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_encorder|uart_valid_d~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|uart_valid_dd~q\);

-- Location: LCCOMB_X96_Y43_N20
\dut_uart|dut_tx|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector1~0_combout\ = (\dut_encorder|uart_valid_d~q\ & !\dut_encorder|uart_valid_dd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|uart_valid_d~q\,
	datac => \dut_encorder|uart_valid_dd~q\,
	combout => \dut_uart|dut_tx|Selector1~0_combout\);

-- Location: LCCOMB_X96_Y43_N16
\dut_uart|dut_tx|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector3~1_combout\ = (\dut_uart|dut_tx|Selector3~0_combout\ & ((\dut_uart|dut_tx|tx_state.DATA~q\) # ((!\dut_uart|dut_tx|Selector0~0_combout\ & \dut_uart|dut_tx|tx_state.STOP~q\)))) # (!\dut_uart|dut_tx|Selector3~0_combout\ & 
-- (!\dut_uart|dut_tx|Selector0~0_combout\ & (\dut_uart|dut_tx|tx_state.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|Selector3~0_combout\,
	datab => \dut_uart|dut_tx|Selector0~0_combout\,
	datac => \dut_uart|dut_tx|tx_state.STOP~q\,
	datad => \dut_uart|dut_tx|tx_state.DATA~q\,
	combout => \dut_uart|dut_tx|Selector3~1_combout\);

-- Location: FF_X96_Y43_N17
\dut_uart|dut_tx|tx_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|Selector3~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_state.STOP~q\);

-- Location: LCCOMB_X96_Y43_N6
\dut_uart|dut_tx|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector0~1_combout\ = (\dut_uart|dut_tx|Selector0~0_combout\ & (!\dut_uart|dut_tx|tx_state.STOP~q\ & ((\dut_uart|dut_tx|Selector1~0_combout\) # (\dut_uart|dut_tx|tx_state.IDLE~q\)))) # (!\dut_uart|dut_tx|Selector0~0_combout\ & 
-- ((\dut_uart|dut_tx|Selector1~0_combout\) # ((\dut_uart|dut_tx|tx_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|Selector0~0_combout\,
	datab => \dut_uart|dut_tx|Selector1~0_combout\,
	datac => \dut_uart|dut_tx|tx_state.IDLE~q\,
	datad => \dut_uart|dut_tx|tx_state.STOP~q\,
	combout => \dut_uart|dut_tx|Selector0~1_combout\);

-- Location: FF_X96_Y43_N7
\dut_uart|dut_tx|tx_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|Selector0~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_state.IDLE~q\);

-- Location: LCCOMB_X97_Y46_N20
\dut_uart|dut_tx|tx_n_cnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[0]~4_combout\ = (\dut_uart|dut_tx|tx_state.IDLE~q\ & (\dut_encorder|dut_gen_en|Equal0~2_combout\ $ (!\dut_uart|dut_tx|tx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	datab => \dut_uart|dut_tx|tx_state.IDLE~q\,
	datac => \dut_uart|dut_tx|tx_cnt\(0),
	combout => \dut_uart|dut_tx|tx_n_cnt[0]~4_combout\);

-- Location: FF_X97_Y46_N21
\dut_uart|dut_tx|tx_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|tx_n_cnt[0]~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_cnt\(0));

-- Location: LCCOMB_X95_Y43_N12
\dut_uart|dut_tx|tx_n_cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|tx_n_cnt[0]~0_combout\ = \dut_uart|dut_tx|tx_cnt\(0) $ (\dut_encorder|dut_gen_en|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_cnt\(0),
	datac => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	combout => \dut_uart|dut_tx|tx_n_cnt[0]~0_combout\);

-- Location: LCCOMB_X96_Y43_N22
\dut_uart|dut_tx|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector3~0_combout\ = (\dut_uart|dut_tx|tx_n_cnt[0]~0_combout\ & (\dut_uart|dut_tx|tx_n_cnt[1]~1_combout\ & (\dut_uart|dut_tx|tx_n_cnt[3]~2_combout\ & !\dut_uart|dut_tx|tx_n_cnt[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_n_cnt[0]~0_combout\,
	datab => \dut_uart|dut_tx|tx_n_cnt[1]~1_combout\,
	datac => \dut_uart|dut_tx|tx_n_cnt[3]~2_combout\,
	datad => \dut_uart|dut_tx|tx_n_cnt[2]~3_combout\,
	combout => \dut_uart|dut_tx|Selector3~0_combout\);

-- Location: LCCOMB_X96_Y43_N10
\dut_uart|dut_tx|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector2~0_combout\ = (!\dut_uart|dut_tx|tx_n_cnt[0]~0_combout\ & (!\dut_uart|dut_tx|tx_n_cnt[1]~1_combout\ & (!\dut_uart|dut_tx|tx_n_cnt[3]~2_combout\ & !\dut_uart|dut_tx|tx_n_cnt[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_n_cnt[0]~0_combout\,
	datab => \dut_uart|dut_tx|tx_n_cnt[1]~1_combout\,
	datac => \dut_uart|dut_tx|tx_n_cnt[3]~2_combout\,
	datad => \dut_uart|dut_tx|tx_n_cnt[2]~3_combout\,
	combout => \dut_uart|dut_tx|Selector2~0_combout\);

-- Location: LCCOMB_X96_Y43_N4
\dut_uart|dut_tx|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector1~1_combout\ = (\dut_uart|dut_tx|Selector2~0_combout\ & (\dut_uart|dut_tx|Selector1~0_combout\ & ((!\dut_uart|dut_tx|tx_state.IDLE~q\)))) # (!\dut_uart|dut_tx|Selector2~0_combout\ & ((\dut_uart|dut_tx|tx_state.START~q\) # 
-- ((\dut_uart|dut_tx|Selector1~0_combout\ & !\dut_uart|dut_tx|tx_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|Selector2~0_combout\,
	datab => \dut_uart|dut_tx|Selector1~0_combout\,
	datac => \dut_uart|dut_tx|tx_state.START~q\,
	datad => \dut_uart|dut_tx|tx_state.IDLE~q\,
	combout => \dut_uart|dut_tx|Selector1~1_combout\);

-- Location: FF_X96_Y43_N5
\dut_uart|dut_tx|tx_state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|Selector1~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_state.START~q\);

-- Location: LCCOMB_X96_Y43_N2
\dut_uart|dut_tx|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|Selector2~1_combout\ = (\dut_uart|dut_tx|Selector3~0_combout\ & (\dut_uart|dut_tx|tx_state.START~q\ & ((\dut_uart|dut_tx|Selector2~0_combout\)))) # (!\dut_uart|dut_tx|Selector3~0_combout\ & ((\dut_uart|dut_tx|tx_state.DATA~q\) # 
-- ((\dut_uart|dut_tx|tx_state.START~q\ & \dut_uart|dut_tx|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|Selector3~0_combout\,
	datab => \dut_uart|dut_tx|tx_state.START~q\,
	datac => \dut_uart|dut_tx|tx_state.DATA~q\,
	datad => \dut_uart|dut_tx|Selector2~0_combout\,
	combout => \dut_uart|dut_tx|Selector2~1_combout\);

-- Location: FF_X96_Y43_N3
\dut_uart|dut_tx|tx_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|Selector2~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|tx_state.DATA~q\);

-- Location: LCCOMB_X92_Y48_N6
\d1|src2_d[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src2_d[3]~5_combout\ = (\dut_uart|dut_rx|fnd_rxd\(1) & (((!\dut_uart|dut_rx|fnd_rxd\(6)) # (!\dut_uart|dut_rx|fnd_rxd\(0))) # (!\dut_uart|dut_rx|fnd_rxd\(2)))) # (!\dut_uart|dut_rx|fnd_rxd\(1) & ((\dut_uart|dut_rx|fnd_rxd\(2)) # 
-- ((\dut_uart|dut_rx|fnd_rxd\(0) & \dut_uart|dut_rx|fnd_rxd\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(1),
	datab => \dut_uart|dut_rx|fnd_rxd\(2),
	datac => \dut_uart|dut_rx|fnd_rxd\(0),
	datad => \dut_uart|dut_rx|fnd_rxd\(6),
	combout => \d1|src2_d[3]~5_combout\);

-- Location: LCCOMB_X86_Y46_N6
\d1|src2_d[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src2_d[3]~6_combout\ = (\d1|src2_d[3]~5_combout\ & ((\dut_uart|dut_rx|fnd_rxd\(3)) # (\dut_uart|dut_rx|fnd_rxd\(4) $ (!\dut_uart|dut_rx|fnd_rxd\(6))))) # (!\d1|src2_d[3]~5_combout\ & (((\dut_uart|dut_rx|fnd_rxd\(6))) # 
-- (!\dut_uart|dut_rx|fnd_rxd\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(4),
	datab => \d1|src2_d[3]~5_combout\,
	datac => \dut_uart|dut_rx|fnd_rxd\(3),
	datad => \dut_uart|dut_rx|fnd_rxd\(6),
	combout => \d1|src2_d[3]~6_combout\);

-- Location: LCCOMB_X92_Y50_N24
\d1|src1_d[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src1_d[3]~9_combout\ = (!\d1|src2_d[3]~6_combout\ & (\d1|state.DATA_1~q\ & (!\dut_uart|dut_rx|valid~combout\ & \d1|src1_d~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d[3]~6_combout\,
	datab => \d1|state.DATA_1~q\,
	datac => \dut_uart|dut_rx|valid~combout\,
	datad => \d1|src1_d~4_combout\,
	combout => \d1|src1_d[3]~9_combout\);

-- Location: LCCOMB_X92_Y48_N28
\d1|src1_d[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src1_d[3]~11_combout\ = (\d1|src1_d[3]~9_combout\ & ((\dut_uart|dut_rx|fnd_rxd\(3)) # ((\dut_uart|dut_rx|fnd_rxd\(6))))) # (!\d1|src1_d[3]~9_combout\ & (((\d1|src1_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d[3]~9_combout\,
	datab => \dut_uart|dut_rx|fnd_rxd\(3),
	datac => \d1|src1_d\(3),
	datad => \dut_uart|dut_rx|fnd_rxd\(6),
	combout => \d1|src1_d[3]~11_combout\);

-- Location: FF_X92_Y48_N29
\d1|src1_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|src1_d[3]~11_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(3));

-- Location: LCCOMB_X97_Y49_N8
\d1|src1_d~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src1_d~5_combout\ = (\dut_uart|dut_rx|fnd_rxd\(1) & ((!\dut_uart|dut_rx|fnd_rxd\(2)) # (!\dut_uart|dut_rx|fnd_rxd\(0)))) # (!\dut_uart|dut_rx|fnd_rxd\(1) & ((\dut_uart|dut_rx|fnd_rxd\(0)) # (\dut_uart|dut_rx|fnd_rxd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_uart|dut_rx|fnd_rxd\(1),
	datac => \dut_uart|dut_rx|fnd_rxd\(0),
	datad => \dut_uart|dut_rx|fnd_rxd\(2),
	combout => \d1|src1_d~5_combout\);

-- Location: LCCOMB_X97_Y49_N18
\d1|src1_d~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src1_d~6_combout\ = (\d1|src1_d~4_combout\ & ((\dut_uart|dut_rx|fnd_rxd\(6) & (\d1|src1_d~5_combout\ & !\dut_uart|dut_rx|fnd_rxd\(4))) # (!\dut_uart|dut_rx|fnd_rxd\(6) & ((\dut_uart|dut_rx|fnd_rxd\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d~4_combout\,
	datab => \dut_uart|dut_rx|fnd_rxd\(6),
	datac => \d1|src1_d~5_combout\,
	datad => \dut_uart|dut_rx|fnd_rxd\(4),
	combout => \d1|src1_d~6_combout\);

-- Location: LCCOMB_X97_Y49_N20
\d1|src1_d~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src1_d~7_combout\ = ((\dut_uart|dut_rx|fnd_rxd\(3) & ((\dut_uart|dut_rx|fnd_rxd\(6)) # (!\d1|src2_d[3]~4_combout\)))) # (!\d1|src1_d~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d[3]~4_combout\,
	datab => \d1|src1_d~6_combout\,
	datac => \dut_uart|dut_rx|fnd_rxd\(3),
	datad => \dut_uart|dut_rx|fnd_rxd\(6),
	combout => \d1|src1_d~7_combout\);

-- Location: LCCOMB_X92_Y50_N14
\d1|src1_d[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src1_d[15]~10_combout\ = (!\dut_uart|dut_rx|valid_sig_d~q\ & (\d1|state.DATA_1~q\ & (\dut_uart|dut_rx|valid_sig~q\ & !\d1|src1_d~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|valid_sig_d~q\,
	datab => \d1|state.DATA_1~q\,
	datac => \dut_uart|dut_rx|valid_sig~q\,
	datad => \d1|src1_d~7_combout\,
	combout => \d1|src1_d[15]~10_combout\);

-- Location: FF_X90_Y47_N15
\d1|src1_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src1_d\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src1_d[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(7));

-- Location: FF_X89_Y48_N31
\d1|src1_d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src1_d\(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src1_d[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(11));

-- Location: FF_X94_Y46_N1
\d1|src1_d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src1_d\(11),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src1_d[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(15));

-- Location: LCCOMB_X92_Y48_N18
\d1|src2_d~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src2_d~9_combout\ = (\dut_uart|dut_rx|fnd_rxd\(2)) # (\dut_uart|dut_rx|fnd_rxd\(0) $ (!\dut_uart|dut_rx|fnd_rxd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(0),
	datac => \dut_uart|dut_rx|fnd_rxd\(2),
	datad => \dut_uart|dut_rx|fnd_rxd\(1),
	combout => \d1|src2_d~9_combout\);

-- Location: FF_X92_Y48_N19
\d1|src1_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|src2_d~9_combout\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(2),
	clrn => \n_rst~input_o\,
	sclr => \dut_uart|dut_rx|fnd_rxd\(3),
	sload => \dut_uart|dut_rx|ALT_INV_fnd_rxd\(6),
	ena => \d1|src1_d[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(2));

-- Location: FF_X90_Y47_N7
\d1|src1_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src1_d\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src1_d[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(6));

-- Location: FF_X89_Y48_N29
\d1|src1_d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src1_d\(6),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src1_d[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(10));

-- Location: FF_X94_Y46_N3
\d1|src1_d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src1_d\(10),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src1_d[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(14));

-- Location: LCCOMB_X86_Y46_N0
\d1|src2_d[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src2_d[2]~feeder_combout\ = \d1|src2_d~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|src2_d~9_combout\,
	combout => \d1|src2_d[2]~feeder_combout\);

-- Location: LCCOMB_X92_Y50_N0
\d1|src2_d[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src2_d[3]~7_combout\ = (!\d1|src2_d[3]~6_combout\ & (\d1|state.DATA_2~q\ & (!\dut_uart|dut_rx|valid~combout\ & \d1|src1_d~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d[3]~6_combout\,
	datab => \d1|state.DATA_2~q\,
	datac => \dut_uart|dut_rx|valid~combout\,
	datad => \d1|src1_d~4_combout\,
	combout => \d1|src2_d[3]~7_combout\);

-- Location: FF_X86_Y46_N1
\d1|src2_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|src2_d[2]~feeder_combout\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(2),
	clrn => \n_rst~input_o\,
	sclr => \dut_uart|dut_rx|fnd_rxd\(3),
	sload => \dut_uart|dut_rx|ALT_INV_fnd_rxd\(6),
	ena => \d1|src2_d[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(2));

-- Location: LCCOMB_X92_Y50_N12
\d1|src2_d[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src2_d[15]~11_combout\ = (\d1|state.DATA_2~q\ & (\dut_uart|dut_rx|valid_sig~q\ & (!\dut_uart|dut_rx|valid_sig_d~q\ & !\d1|src1_d~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|state.DATA_2~q\,
	datab => \dut_uart|dut_rx|valid_sig~q\,
	datac => \dut_uart|dut_rx|valid_sig_d~q\,
	datad => \d1|src1_d~7_combout\,
	combout => \d1|src2_d[15]~11_combout\);

-- Location: FF_X89_Y49_N29
\d1|src2_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src2_d\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src2_d[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(6));

-- Location: FF_X89_Y48_N5
\d1|src2_d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src2_d\(6),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src2_d[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(10));

-- Location: FF_X89_Y48_N13
\d1|src2_d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src2_d\(10),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src2_d[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(14));

-- Location: LCCOMB_X92_Y48_N16
\d1|src2_d[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src2_d[3]~10_combout\ = \dut_uart|dut_rx|fnd_rxd\(0) $ (\dut_uart|dut_rx|fnd_rxd\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(0),
	datac => \dut_uart|dut_rx|fnd_rxd\(1),
	combout => \d1|src2_d[3]~10_combout\);

-- Location: LCCOMB_X86_Y46_N18
\d1|src2_d[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src2_d[1]~feeder_combout\ = \d1|src2_d[3]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|src2_d[3]~10_combout\,
	combout => \d1|src2_d[1]~feeder_combout\);

-- Location: FF_X86_Y46_N19
\d1|src2_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|src2_d[1]~feeder_combout\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(1),
	clrn => \n_rst~input_o\,
	sclr => \dut_uart|dut_rx|fnd_rxd\(3),
	sload => \dut_uart|dut_rx|ALT_INV_fnd_rxd\(6),
	ena => \d1|src2_d[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(1));

-- Location: FF_X89_Y49_N9
\d1|src2_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src2_d\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src2_d[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(5));

-- Location: FF_X89_Y48_N3
\d1|src2_d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src2_d\(5),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src2_d[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(9));

-- Location: FF_X89_Y48_N11
\d1|src2_d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src2_d\(9),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src2_d[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(13));

-- Location: FF_X92_Y48_N17
\d1|src1_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|src2_d[3]~10_combout\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(1),
	clrn => \n_rst~input_o\,
	sclr => \dut_uart|dut_rx|fnd_rxd\(3),
	sload => \dut_uart|dut_rx|ALT_INV_fnd_rxd\(6),
	ena => \d1|src1_d[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(1));

-- Location: FF_X90_Y47_N27
\d1|src1_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src1_d\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src1_d[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(5));

-- Location: FF_X90_Y47_N21
\d1|src1_d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src1_d\(5),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src1_d[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(9));

-- Location: FF_X89_Y48_N23
\d1|src1_d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src1_d\(9),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src1_d[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(13));

-- Location: LCCOMB_X87_Y46_N26
\d1|src1_d~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src1_d~8_combout\ = \dut_uart|dut_rx|fnd_rxd\(6) $ (\dut_uart|dut_rx|fnd_rxd\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_rx|fnd_rxd\(6),
	datac => \dut_uart|dut_rx|fnd_rxd\(0),
	combout => \d1|src1_d~8_combout\);

-- Location: FF_X87_Y46_N27
\d1|src1_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|src1_d~8_combout\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(0),
	clrn => \n_rst~input_o\,
	sload => \dut_uart|dut_rx|fnd_rxd\(3),
	ena => \d1|src1_d[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(0));

-- Location: FF_X89_Y49_N5
\d1|src1_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src1_d\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src1_d[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(4));

-- Location: FF_X90_Y47_N5
\d1|src1_d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src1_d\(4),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src1_d[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(8));

-- Location: FF_X89_Y48_N25
\d1|src1_d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src1_d\(8),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src1_d[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src1_d\(12));

-- Location: LCCOMB_X86_Y46_N28
\d1|src2_d[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src2_d[3]~12_combout\ = (\d1|src2_d[3]~7_combout\ & ((\dut_uart|dut_rx|fnd_rxd\(3)) # ((\dut_uart|dut_rx|fnd_rxd\(6))))) # (!\d1|src2_d[3]~7_combout\ & (((\d1|src2_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d[3]~7_combout\,
	datab => \dut_uart|dut_rx|fnd_rxd\(3),
	datac => \d1|src2_d\(3),
	datad => \dut_uart|dut_rx|fnd_rxd\(6),
	combout => \d1|src2_d[3]~12_combout\);

-- Location: FF_X86_Y46_N29
\d1|src2_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|src2_d[3]~12_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(3));

-- Location: FF_X89_Y49_N31
\d1|src2_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src2_d\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src2_d[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(7));

-- Location: FF_X89_Y48_N7
\d1|src2_d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src2_d\(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src2_d[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(11));

-- Location: LCCOMB_X87_Y46_N24
\d1|src2_d[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|src2_d[0]~feeder_combout\ = \d1|src1_d~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d~8_combout\,
	combout => \d1|src2_d[0]~feeder_combout\);

-- Location: FF_X87_Y46_N25
\d1|src2_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|src2_d[0]~feeder_combout\,
	asdata => \dut_uart|dut_rx|fnd_rxd\(0),
	clrn => \n_rst~input_o\,
	sload => \dut_uart|dut_rx|fnd_rxd\(3),
	ena => \d1|src2_d[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(0));

-- Location: FF_X89_Y49_N11
\d1|src2_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src2_d\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src2_d[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(4));

-- Location: LCCOMB_X92_Y48_N22
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\ = (\d1|src1_d\(1) & ((\d1|src2_d\(1)) # ((\d1|src1_d\(0) & \d1|src2_d\(0))))) # (!\d1|src1_d\(1) & (\d1|src1_d\(0) & (\d1|src2_d\(1) & \d1|src2_d\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(0),
	datab => \d1|src1_d\(1),
	datac => \d1|src2_d\(1),
	datad => \d1|src2_d\(0),
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\);

-- Location: LCCOMB_X92_Y48_N26
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\ = (\d1|src2_d\(2) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\) # (\d1|src1_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\,
	datab => \d1|src1_d\(2),
	datac => \d1|src2_d\(2),
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\);

-- Location: LCCOMB_X92_Y48_N0
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\ = (\d1|src1_d\(2) & \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src1_d\(2),
	datac => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\);

-- Location: LCCOMB_X92_Y48_N4
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\ = (\d1|src1_d\(3) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\) # ((\d1|src2_d\(3)) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\)))) # (!\d1|src1_d\(3) & (\d1|src2_d\(3) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\,
	datab => \d1|src1_d\(3),
	datac => \d1|src2_d\(3),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\);

-- Location: LCCOMB_X94_Y47_N2
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~1_combout\ = (\d1|src2_d\(4) & ((\d1|src1_d\(4)) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(4),
	datab => \d1|src1_d\(4),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~1_combout\);

-- Location: LCCOMB_X94_Y47_N0
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~0_combout\ = (\d1|src1_d\(4) & \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src1_d\(4),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~0_combout\);

-- Location: LCCOMB_X94_Y47_N12
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[1]~2_combout\ = (\d1|src1_d\(5) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~1_combout\) # ((\d1|src2_d\(5)) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~0_combout\)))) # (!\d1|src1_d\(5) & (\d1|src2_d\(5) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~1_combout\) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(5),
	datab => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~1_combout\,
	datac => \d1|src2_d\(5),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~0_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[1]~2_combout\);

-- Location: LCCOMB_X94_Y47_N8
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~4_combout\ = (\d1|src2_d\(6) & ((\d1|src1_d\(6)) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src1_d\(6),
	datac => \d1|src2_d\(6),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~4_combout\);

-- Location: LCCOMB_X94_Y47_N30
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~3_combout\ = (\d1|src1_d\(6) & \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|src1_d\(6),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~3_combout\);

-- Location: LCCOMB_X90_Y47_N14
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[3]~5_combout\ = (\d1|src2_d\(7) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~4_combout\) # ((\d1|src1_d\(7)) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~3_combout\)))) # (!\d1|src2_d\(7) & (\d1|src1_d\(7) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~4_combout\) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(7),
	datab => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~4_combout\,
	datac => \d1|src1_d\(7),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[3]~5_combout\);

-- Location: FF_X89_Y48_N1
\d1|src2_d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src2_d\(4),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src2_d[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(8));

-- Location: LCCOMB_X91_Y46_N22
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~1_combout\ = (\d1|src2_d\(8) & ((\d1|src1_d\(8)) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src1_d\(8),
	datac => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[3]~5_combout\,
	datad => \d1|src2_d\(8),
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~1_combout\);

-- Location: LCCOMB_X91_Y46_N28
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~0_combout\ = (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[3]~5_combout\ & \d1|src1_d\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[3]~5_combout\,
	datad => \d1|src1_d\(8),
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~0_combout\);

-- Location: LCCOMB_X91_Y46_N0
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[1]~2_combout\ = (\d1|src1_d\(9) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~1_combout\) # ((\d1|src2_d\(9)) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~0_combout\)))) # (!\d1|src1_d\(9) & (\d1|src2_d\(9) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~1_combout\) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~1_combout\,
	datab => \d1|src1_d\(9),
	datac => \d1|src2_d\(9),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~0_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[1]~2_combout\);

-- Location: LCCOMB_X91_Y46_N26
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~3_combout\ = (\d1|src1_d\(10) & \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|src1_d\(10),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~3_combout\);

-- Location: LCCOMB_X91_Y46_N12
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~4_combout\ = (\d1|src2_d\(10) & ((\d1|src1_d\(10)) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(10),
	datac => \d1|src1_d\(10),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~4_combout\);

-- Location: LCCOMB_X91_Y46_N6
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[3]~5_combout\ = (\d1|src2_d\(11) & ((\d1|src1_d\(11)) # ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~3_combout\) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~4_combout\)))) # (!\d1|src2_d\(11) & (\d1|src1_d\(11) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~3_combout\) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(11),
	datab => \d1|src1_d\(11),
	datac => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~3_combout\,
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~4_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[3]~5_combout\);

-- Location: LCCOMB_X91_Y44_N10
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\ = (\d1|src1_d\(12) & \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|src1_d\(12),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[3]~5_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\);

-- Location: FF_X89_Y48_N9
\d1|src2_d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src2_d\(8),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src2_d[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(12));

-- Location: LCCOMB_X91_Y44_N12
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\ = (\d1|src2_d\(12) & ((\d1|src1_d\(12)) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(12),
	datab => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[3]~5_combout\,
	datad => \d1|src2_d\(12),
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\);

-- Location: LCCOMB_X94_Y46_N20
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\ = (\d1|src2_d\(13) & ((\d1|src1_d\(13)) # ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\)))) # (!\d1|src2_d\(13) & (\d1|src1_d\(13) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(13),
	datab => \d1|src1_d\(13),
	datac => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\,
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\);

-- Location: LCCOMB_X94_Y46_N16
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~4_combout\ = (\d1|src2_d\(14) & ((\d1|src1_d\(14)) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(14),
	datab => \d1|src2_d\(14),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~4_combout\);

-- Location: FF_X89_Y48_N15
\d1|src2_d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|src2_d\(11),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \d1|src2_d[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|src2_d\(15));

-- Location: LCCOMB_X94_Y46_N6
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\ = (\d1|src1_d\(14) & \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(14),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\);

-- Location: LCCOMB_X94_Y46_N10
\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\ = (\d1|src1_d\(15) & ((\d1|src2_d\(15)) # ((!\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~4_combout\ & !\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\)))) # 
-- (!\d1|src1_d\(15) & (!\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~4_combout\ & (\d1|src2_d\(15) & !\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(15),
	datab => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~4_combout\,
	datac => \d1|src2_d\(15),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\);

-- Location: LCCOMB_X95_Y47_N20
\dut_alu|result_d[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[15]~34_combout\ = (!\d1|op_d\(2) & (!\d1|op_d\(1) & (\d1|op_d\(0) & !\d1|op_d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|op_d\(2),
	datab => \d1|op_d\(1),
	datac => \d1|op_d\(0),
	datad => \d1|op_d\(3),
	combout => \dut_alu|result_d[15]~34_combout\);

-- Location: LCCOMB_X95_Y47_N30
\dut_alu|always2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|always2~2_combout\ = (\d1|dtype_d\(1) & (!\d1|dtype_d\(0) & \dut_alu|result_d[15]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|dtype_d\(1),
	datac => \d1|dtype_d\(0),
	datad => \dut_alu|result_d[15]~34_combout\,
	combout => \dut_alu|always2~2_combout\);

-- Location: LCCOMB_X95_Y47_N8
\dut_alu|always2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|always2~0_combout\ = (!\d1|op_d\(2) & (\d1|op_d\(1) & (!\d1|op_d\(0) & !\d1|op_d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|op_d\(2),
	datab => \d1|op_d\(1),
	datac => \d1|op_d\(0),
	datad => \d1|op_d\(3),
	combout => \dut_alu|always2~0_combout\);

-- Location: LCCOMB_X95_Y47_N18
\dut_alu|always2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|always2~1_combout\ = (\d1|dtype_d\(1) & (!\d1|dtype_d\(0) & \dut_alu|always2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|dtype_d\(1),
	datab => \d1|dtype_d\(0),
	datac => \dut_alu|always2~0_combout\,
	combout => \dut_alu|always2~1_combout\);

-- Location: LCCOMB_X92_Y49_N6
\dut_alu|result_d[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[17]~31_combout\ = (!\dut_alu|always2~1_combout\ & ((\dut_alu|dut_mul_u|count\(4)) # ((\dut_alu|dut_mul_u|done_edge~q\) # (!\dut_alu|dut_mul_u|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|count\(4),
	datab => \dut_alu|dut_mul_u|done_edge~q\,
	datac => \dut_alu|always2~1_combout\,
	datad => \dut_alu|dut_mul_u|Equal2~0_combout\,
	combout => \dut_alu|result_d[17]~31_combout\);

-- Location: LCCOMB_X86_Y47_N26
\dut_alu|dut_divider_u|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~0_combout\ = (\dut_alu|dut_divider_u|A\(16) & \d1|src2_d\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datad => \d1|src2_d\(15),
	combout => \dut_alu|dut_divider_u|Add2~0_combout\);

-- Location: LCCOMB_X88_Y46_N0
\dut_alu|dut_divider_u|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~1_combout\ = (\dut_alu|dut_divider_u|A\(16) & \d1|src2_d\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \d1|src2_d\(14),
	combout => \dut_alu|dut_divider_u|Add2~1_combout\);

-- Location: LCCOMB_X89_Y47_N10
\dut_alu|dut_divider_u|Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~5_combout\ = (\dut_alu|dut_divider_u|A\(16) & \d1|src2_d\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datad => \d1|src2_d\(10),
	combout => \dut_alu|dut_divider_u|Add2~5_combout\);

-- Location: LCCOMB_X86_Y47_N30
\dut_alu|dut_divider_u|Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~7_combout\ = (\dut_alu|dut_divider_u|A\(16) & \d1|src2_d\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datad => \d1|src2_d\(8),
	combout => \dut_alu|dut_divider_u|Add2~7_combout\);

-- Location: LCCOMB_X86_Y48_N12
\dut_alu|dut_divider_u|Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~9_combout\ = (\d1|src2_d\(6) & \dut_alu|dut_divider_u|A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(6),
	datac => \dut_alu|dut_divider_u|A\(16),
	combout => \dut_alu|dut_divider_u|Add2~9_combout\);

-- Location: LCCOMB_X87_Y48_N10
\dut_alu|dut_divider_u|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~10_combout\ = (\d1|src2_d\(5) & \dut_alu|dut_divider_u|A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(5),
	datad => \dut_alu|dut_divider_u|A\(16),
	combout => \dut_alu|dut_divider_u|Add2~10_combout\);

-- Location: LCCOMB_X87_Y48_N14
\dut_alu|dut_divider_u|Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~11_combout\ = (\d1|src2_d\(4) & \dut_alu|dut_divider_u|A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|src2_d\(4),
	datad => \dut_alu|dut_divider_u|A\(16),
	combout => \dut_alu|dut_divider_u|Add2~11_combout\);

-- Location: LCCOMB_X86_Y48_N2
\dut_alu|dut_divider_u|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~14_combout\ = (\dut_alu|dut_divider_u|A\(16) & \d1|src2_d\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datad => \d1|src2_d\(1),
	combout => \dut_alu|dut_divider_u|Add2~14_combout\);

-- Location: LCCOMB_X90_Y50_N0
\dut_alu|dut_divider_u|q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~8_combout\ = (\dut_alu|op_s\(3) & ((\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(9))) # (!\dut_alu|dut_divider_u|state~q\ & ((\d1|src1_d\(10)))))) # (!\dut_alu|op_s\(3) & (\dut_alu|dut_divider_u|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(9),
	datab => \dut_alu|op_s\(3),
	datac => \d1|src1_d\(10),
	datad => \dut_alu|dut_divider_u|state~q\,
	combout => \dut_alu|dut_divider_u|q~8_combout\);

-- Location: LCCOMB_X92_Y46_N4
\dut_alu|dut_divider_u|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~1_combout\ = (\dut_alu|op_s\(3)) # (\dut_alu|dut_divider_u|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|op_s\(3),
	datad => \dut_alu|dut_divider_u|state~q\,
	combout => \dut_alu|dut_divider_u|q~1_combout\);

-- Location: FF_X90_Y50_N1
\dut_alu|dut_divider_u|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(10));

-- Location: LCCOMB_X90_Y50_N24
\dut_alu|dut_divider_u|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~6_combout\ = (\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(10))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|op_s\(3) & ((\d1|src1_d\(11)))) # (!\dut_alu|op_s\(3) & (\dut_alu|dut_divider_u|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|state~q\,
	datab => \dut_alu|dut_divider_u|q\(10),
	datac => \dut_alu|op_s\(3),
	datad => \d1|src1_d\(11),
	combout => \dut_alu|dut_divider_u|q~6_combout\);

-- Location: FF_X90_Y50_N25
\dut_alu|dut_divider_u|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(11));

-- Location: LCCOMB_X92_Y46_N24
\dut_alu|dut_divider_u|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~0_combout\ = (\dut_alu|op_s\(3) & ((\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(11))) # (!\dut_alu|dut_divider_u|state~q\ & ((\d1|src1_d\(12)))))) # (!\dut_alu|op_s\(3) & (\dut_alu|dut_divider_u|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(11),
	datab => \d1|src1_d\(12),
	datac => \dut_alu|op_s\(3),
	datad => \dut_alu|dut_divider_u|state~q\,
	combout => \dut_alu|dut_divider_u|q~0_combout\);

-- Location: FF_X92_Y46_N25
\dut_alu|dut_divider_u|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(12));

-- Location: LCCOMB_X92_Y46_N2
\dut_alu|dut_divider_u|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~2_combout\ = (\dut_alu|op_s\(3) & ((\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|dut_divider_u|q\(12)))) # (!\dut_alu|dut_divider_u|state~q\ & (\d1|src1_d\(13))))) # (!\dut_alu|op_s\(3) & (((\dut_alu|dut_divider_u|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(13),
	datab => \dut_alu|dut_divider_u|q\(12),
	datac => \dut_alu|op_s\(3),
	datad => \dut_alu|dut_divider_u|state~q\,
	combout => \dut_alu|dut_divider_u|q~2_combout\);

-- Location: FF_X92_Y46_N3
\dut_alu|dut_divider_u|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(13));

-- Location: LCCOMB_X92_Y46_N12
\dut_alu|dut_divider_u|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~3_combout\ = (\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(13))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|op_s\(3) & ((\d1|src1_d\(14)))) # (!\dut_alu|op_s\(3) & (\dut_alu|dut_divider_u|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|state~q\,
	datab => \dut_alu|dut_divider_u|q\(13),
	datac => \dut_alu|op_s\(3),
	datad => \d1|src1_d\(14),
	combout => \dut_alu|dut_divider_u|q~3_combout\);

-- Location: FF_X92_Y46_N13
\dut_alu|dut_divider_u|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(14));

-- Location: LCCOMB_X92_Y46_N0
\dut_alu|dut_divider_u|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~4_combout\ = (\dut_alu|dut_divider_u|state~q\ & (((\dut_alu|dut_divider_u|q\(14))))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|op_s\(3) & (\d1|src1_d\(15))) # (!\dut_alu|op_s\(3) & ((\dut_alu|dut_divider_u|q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|state~q\,
	datab => \d1|src1_d\(15),
	datac => \dut_alu|op_s\(3),
	datad => \dut_alu|dut_divider_u|q\(14),
	combout => \dut_alu|dut_divider_u|q~4_combout\);

-- Location: FF_X92_Y46_N1
\dut_alu|dut_divider_u|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(15));

-- Location: LCCOMB_X87_Y48_N16
\dut_alu|dut_divider_u|M_sign_not[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[0]~0_combout\ = (\d1|src2_d\(0) & (\dut_alu|dut_divider_u|q\(15) & VCC)) # (!\d1|src2_d\(0) & (\dut_alu|dut_divider_u|q\(15) $ (VCC)))
-- \dut_alu|dut_divider_u|M_sign_not[0]~1\ = CARRY((!\d1|src2_d\(0) & \dut_alu|dut_divider_u|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(0),
	datab => \dut_alu|dut_divider_u|q\(15),
	datad => VCC,
	combout => \dut_alu|dut_divider_u|M_sign_not[0]~0_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[0]~1\);

-- Location: LCCOMB_X87_Y48_N6
\dut_alu|dut_divider_u|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~16_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|q\(15)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datab => \dut_alu|dut_divider_u|M_sign_not[0]~0_combout\,
	datac => \dut_alu|dut_divider_u|q\(15),
	combout => \dut_alu|dut_divider_u|Add0~16_combout\);

-- Location: LCCOMB_X86_Y48_N14
\dut_alu|dut_divider_u|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~15_combout\ = (\d1|src2_d\(0)) # (!\dut_alu|dut_divider_u|A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \d1|src2_d\(0),
	combout => \dut_alu|dut_divider_u|Add2~15_combout\);

-- Location: LCCOMB_X86_Y48_N16
\dut_alu|dut_divider_u|A[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[0]~17_combout\ = (\dut_alu|dut_divider_u|Add0~16_combout\ & (\dut_alu|dut_divider_u|Add2~15_combout\ $ (VCC))) # (!\dut_alu|dut_divider_u|Add0~16_combout\ & (\dut_alu|dut_divider_u|Add2~15_combout\ & VCC))
-- \dut_alu|dut_divider_u|A[0]~18\ = CARRY((\dut_alu|dut_divider_u|Add0~16_combout\ & \dut_alu|dut_divider_u|Add2~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~16_combout\,
	datab => \dut_alu|dut_divider_u|Add2~15_combout\,
	datad => VCC,
	combout => \dut_alu|dut_divider_u|A[0]~17_combout\,
	cout => \dut_alu|dut_divider_u|A[0]~18\);

-- Location: FF_X86_Y48_N17
\dut_alu|dut_divider_u|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[0]~17_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(0));

-- Location: LCCOMB_X87_Y48_N18
\dut_alu|dut_divider_u|M_sign_not[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[1]~2_combout\ = (\dut_alu|dut_divider_u|A\(0) & ((\d1|src2_d\(1) & (!\dut_alu|dut_divider_u|M_sign_not[0]~1\)) # (!\d1|src2_d\(1) & (\dut_alu|dut_divider_u|M_sign_not[0]~1\ & VCC)))) # (!\dut_alu|dut_divider_u|A\(0) & 
-- ((\d1|src2_d\(1) & ((\dut_alu|dut_divider_u|M_sign_not[0]~1\) # (GND))) # (!\d1|src2_d\(1) & (!\dut_alu|dut_divider_u|M_sign_not[0]~1\))))
-- \dut_alu|dut_divider_u|M_sign_not[1]~3\ = CARRY((\dut_alu|dut_divider_u|A\(0) & (\d1|src2_d\(1) & !\dut_alu|dut_divider_u|M_sign_not[0]~1\)) # (!\dut_alu|dut_divider_u|A\(0) & ((\d1|src2_d\(1)) # (!\dut_alu|dut_divider_u|M_sign_not[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(0),
	datab => \d1|src2_d\(1),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[0]~1\,
	combout => \dut_alu|dut_divider_u|M_sign_not[1]~2_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[1]~3\);

-- Location: LCCOMB_X86_Y48_N4
\dut_alu|dut_divider_u|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~15_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(0))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(0),
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|M_sign_not[1]~2_combout\,
	combout => \dut_alu|dut_divider_u|Add0~15_combout\);

-- Location: LCCOMB_X86_Y48_N18
\dut_alu|dut_divider_u|A[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[1]~19_combout\ = (\dut_alu|dut_divider_u|Add2~14_combout\ & ((\dut_alu|dut_divider_u|Add0~15_combout\ & (\dut_alu|dut_divider_u|A[0]~18\ & VCC)) # (!\dut_alu|dut_divider_u|Add0~15_combout\ & (!\dut_alu|dut_divider_u|A[0]~18\)))) # 
-- (!\dut_alu|dut_divider_u|Add2~14_combout\ & ((\dut_alu|dut_divider_u|Add0~15_combout\ & (!\dut_alu|dut_divider_u|A[0]~18\)) # (!\dut_alu|dut_divider_u|Add0~15_combout\ & ((\dut_alu|dut_divider_u|A[0]~18\) # (GND)))))
-- \dut_alu|dut_divider_u|A[1]~20\ = CARRY((\dut_alu|dut_divider_u|Add2~14_combout\ & (!\dut_alu|dut_divider_u|Add0~15_combout\ & !\dut_alu|dut_divider_u|A[0]~18\)) # (!\dut_alu|dut_divider_u|Add2~14_combout\ & ((!\dut_alu|dut_divider_u|A[0]~18\) # 
-- (!\dut_alu|dut_divider_u|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~14_combout\,
	datab => \dut_alu|dut_divider_u|Add0~15_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[0]~18\,
	combout => \dut_alu|dut_divider_u|A[1]~19_combout\,
	cout => \dut_alu|dut_divider_u|A[1]~20\);

-- Location: FF_X86_Y48_N19
\dut_alu|dut_divider_u|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[1]~19_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(1));

-- Location: LCCOMB_X87_Y48_N20
\dut_alu|dut_divider_u|M_sign_not[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[2]~4_combout\ = ((\d1|src2_d\(2) $ (\dut_alu|dut_divider_u|A\(1) $ (\dut_alu|dut_divider_u|M_sign_not[1]~3\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[2]~5\ = CARRY((\d1|src2_d\(2) & (\dut_alu|dut_divider_u|A\(1) & !\dut_alu|dut_divider_u|M_sign_not[1]~3\)) # (!\d1|src2_d\(2) & ((\dut_alu|dut_divider_u|A\(1)) # (!\dut_alu|dut_divider_u|M_sign_not[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(2),
	datab => \dut_alu|dut_divider_u|A\(1),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[1]~3\,
	combout => \dut_alu|dut_divider_u|M_sign_not[2]~4_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[2]~5\);

-- Location: LCCOMB_X87_Y48_N4
\dut_alu|dut_divider_u|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~14_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(1))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datab => \dut_alu|dut_divider_u|A\(1),
	datad => \dut_alu|dut_divider_u|M_sign_not[2]~4_combout\,
	combout => \dut_alu|dut_divider_u|Add0~14_combout\);

-- Location: LCCOMB_X86_Y48_N8
\dut_alu|dut_divider_u|Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~13_combout\ = (\dut_alu|dut_divider_u|A\(16) & \d1|src2_d\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datac => \d1|src2_d\(2),
	combout => \dut_alu|dut_divider_u|Add2~13_combout\);

-- Location: LCCOMB_X86_Y48_N20
\dut_alu|dut_divider_u|A[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[2]~21_combout\ = ((\dut_alu|dut_divider_u|Add0~14_combout\ $ (\dut_alu|dut_divider_u|Add2~13_combout\ $ (!\dut_alu|dut_divider_u|A[1]~20\)))) # (GND)
-- \dut_alu|dut_divider_u|A[2]~22\ = CARRY((\dut_alu|dut_divider_u|Add0~14_combout\ & ((\dut_alu|dut_divider_u|Add2~13_combout\) # (!\dut_alu|dut_divider_u|A[1]~20\))) # (!\dut_alu|dut_divider_u|Add0~14_combout\ & (\dut_alu|dut_divider_u|Add2~13_combout\ & 
-- !\dut_alu|dut_divider_u|A[1]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~14_combout\,
	datab => \dut_alu|dut_divider_u|Add2~13_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[1]~20\,
	combout => \dut_alu|dut_divider_u|A[2]~21_combout\,
	cout => \dut_alu|dut_divider_u|A[2]~22\);

-- Location: FF_X86_Y48_N21
\dut_alu|dut_divider_u|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[2]~21_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(2));

-- Location: LCCOMB_X87_Y48_N22
\dut_alu|dut_divider_u|M_sign_not[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[3]~6_combout\ = (\d1|src2_d\(3) & ((\dut_alu|dut_divider_u|A\(2) & (!\dut_alu|dut_divider_u|M_sign_not[2]~5\)) # (!\dut_alu|dut_divider_u|A\(2) & ((\dut_alu|dut_divider_u|M_sign_not[2]~5\) # (GND))))) # (!\d1|src2_d\(3) & 
-- ((\dut_alu|dut_divider_u|A\(2) & (\dut_alu|dut_divider_u|M_sign_not[2]~5\ & VCC)) # (!\dut_alu|dut_divider_u|A\(2) & (!\dut_alu|dut_divider_u|M_sign_not[2]~5\))))
-- \dut_alu|dut_divider_u|M_sign_not[3]~7\ = CARRY((\d1|src2_d\(3) & ((!\dut_alu|dut_divider_u|M_sign_not[2]~5\) # (!\dut_alu|dut_divider_u|A\(2)))) # (!\d1|src2_d\(3) & (!\dut_alu|dut_divider_u|A\(2) & !\dut_alu|dut_divider_u|M_sign_not[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(3),
	datab => \dut_alu|dut_divider_u|A\(2),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[2]~5\,
	combout => \dut_alu|dut_divider_u|M_sign_not[3]~6_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[3]~7\);

-- Location: LCCOMB_X87_Y48_N2
\dut_alu|dut_divider_u|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~13_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(2)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|M_sign_not[3]~6_combout\,
	datad => \dut_alu|dut_divider_u|A\(2),
	combout => \dut_alu|dut_divider_u|Add0~13_combout\);

-- Location: LCCOMB_X86_Y48_N6
\dut_alu|dut_divider_u|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~12_combout\ = (\dut_alu|dut_divider_u|A\(16) & \d1|src2_d\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datad => \d1|src2_d\(3),
	combout => \dut_alu|dut_divider_u|Add2~12_combout\);

-- Location: LCCOMB_X86_Y48_N22
\dut_alu|dut_divider_u|A[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[3]~23_combout\ = (\dut_alu|dut_divider_u|Add0~13_combout\ & ((\dut_alu|dut_divider_u|Add2~12_combout\ & (\dut_alu|dut_divider_u|A[2]~22\ & VCC)) # (!\dut_alu|dut_divider_u|Add2~12_combout\ & (!\dut_alu|dut_divider_u|A[2]~22\)))) # 
-- (!\dut_alu|dut_divider_u|Add0~13_combout\ & ((\dut_alu|dut_divider_u|Add2~12_combout\ & (!\dut_alu|dut_divider_u|A[2]~22\)) # (!\dut_alu|dut_divider_u|Add2~12_combout\ & ((\dut_alu|dut_divider_u|A[2]~22\) # (GND)))))
-- \dut_alu|dut_divider_u|A[3]~24\ = CARRY((\dut_alu|dut_divider_u|Add0~13_combout\ & (!\dut_alu|dut_divider_u|Add2~12_combout\ & !\dut_alu|dut_divider_u|A[2]~22\)) # (!\dut_alu|dut_divider_u|Add0~13_combout\ & ((!\dut_alu|dut_divider_u|A[2]~22\) # 
-- (!\dut_alu|dut_divider_u|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~13_combout\,
	datab => \dut_alu|dut_divider_u|Add2~12_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[2]~22\,
	combout => \dut_alu|dut_divider_u|A[3]~23_combout\,
	cout => \dut_alu|dut_divider_u|A[3]~24\);

-- Location: FF_X86_Y48_N23
\dut_alu|dut_divider_u|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[3]~23_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(3));

-- Location: LCCOMB_X87_Y48_N24
\dut_alu|dut_divider_u|M_sign_not[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[4]~8_combout\ = ((\dut_alu|dut_divider_u|A\(3) $ (\d1|src2_d\(4) $ (\dut_alu|dut_divider_u|M_sign_not[3]~7\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[4]~9\ = CARRY((\dut_alu|dut_divider_u|A\(3) & ((!\dut_alu|dut_divider_u|M_sign_not[3]~7\) # (!\d1|src2_d\(4)))) # (!\dut_alu|dut_divider_u|A\(3) & (!\d1|src2_d\(4) & !\dut_alu|dut_divider_u|M_sign_not[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(3),
	datab => \d1|src2_d\(4),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[3]~7\,
	combout => \dut_alu|dut_divider_u|M_sign_not[4]~8_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[4]~9\);

-- Location: LCCOMB_X87_Y48_N0
\dut_alu|dut_divider_u|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~12_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(3))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datab => \dut_alu|dut_divider_u|A\(3),
	datad => \dut_alu|dut_divider_u|M_sign_not[4]~8_combout\,
	combout => \dut_alu|dut_divider_u|Add0~12_combout\);

-- Location: LCCOMB_X86_Y48_N24
\dut_alu|dut_divider_u|A[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[4]~25_combout\ = ((\dut_alu|dut_divider_u|Add2~11_combout\ $ (\dut_alu|dut_divider_u|Add0~12_combout\ $ (!\dut_alu|dut_divider_u|A[3]~24\)))) # (GND)
-- \dut_alu|dut_divider_u|A[4]~26\ = CARRY((\dut_alu|dut_divider_u|Add2~11_combout\ & ((\dut_alu|dut_divider_u|Add0~12_combout\) # (!\dut_alu|dut_divider_u|A[3]~24\))) # (!\dut_alu|dut_divider_u|Add2~11_combout\ & (\dut_alu|dut_divider_u|Add0~12_combout\ & 
-- !\dut_alu|dut_divider_u|A[3]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~11_combout\,
	datab => \dut_alu|dut_divider_u|Add0~12_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[3]~24\,
	combout => \dut_alu|dut_divider_u|A[4]~25_combout\,
	cout => \dut_alu|dut_divider_u|A[4]~26\);

-- Location: FF_X86_Y48_N25
\dut_alu|dut_divider_u|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[4]~25_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(4));

-- Location: LCCOMB_X87_Y48_N26
\dut_alu|dut_divider_u|M_sign_not[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[5]~10_combout\ = (\d1|src2_d\(5) & ((\dut_alu|dut_divider_u|A\(4) & (!\dut_alu|dut_divider_u|M_sign_not[4]~9\)) # (!\dut_alu|dut_divider_u|A\(4) & ((\dut_alu|dut_divider_u|M_sign_not[4]~9\) # (GND))))) # (!\d1|src2_d\(5) 
-- & ((\dut_alu|dut_divider_u|A\(4) & (\dut_alu|dut_divider_u|M_sign_not[4]~9\ & VCC)) # (!\dut_alu|dut_divider_u|A\(4) & (!\dut_alu|dut_divider_u|M_sign_not[4]~9\))))
-- \dut_alu|dut_divider_u|M_sign_not[5]~11\ = CARRY((\d1|src2_d\(5) & ((!\dut_alu|dut_divider_u|M_sign_not[4]~9\) # (!\dut_alu|dut_divider_u|A\(4)))) # (!\d1|src2_d\(5) & (!\dut_alu|dut_divider_u|A\(4) & !\dut_alu|dut_divider_u|M_sign_not[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(5),
	datab => \dut_alu|dut_divider_u|A\(4),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[4]~9\,
	combout => \dut_alu|dut_divider_u|M_sign_not[5]~10_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[5]~11\);

-- Location: LCCOMB_X87_Y48_N12
\dut_alu|dut_divider_u|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~11_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(4)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|M_sign_not[5]~10_combout\,
	datad => \dut_alu|dut_divider_u|A\(4),
	combout => \dut_alu|dut_divider_u|Add0~11_combout\);

-- Location: LCCOMB_X86_Y48_N26
\dut_alu|dut_divider_u|A[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[5]~27_combout\ = (\dut_alu|dut_divider_u|Add2~10_combout\ & ((\dut_alu|dut_divider_u|Add0~11_combout\ & (\dut_alu|dut_divider_u|A[4]~26\ & VCC)) # (!\dut_alu|dut_divider_u|Add0~11_combout\ & (!\dut_alu|dut_divider_u|A[4]~26\)))) # 
-- (!\dut_alu|dut_divider_u|Add2~10_combout\ & ((\dut_alu|dut_divider_u|Add0~11_combout\ & (!\dut_alu|dut_divider_u|A[4]~26\)) # (!\dut_alu|dut_divider_u|Add0~11_combout\ & ((\dut_alu|dut_divider_u|A[4]~26\) # (GND)))))
-- \dut_alu|dut_divider_u|A[5]~28\ = CARRY((\dut_alu|dut_divider_u|Add2~10_combout\ & (!\dut_alu|dut_divider_u|Add0~11_combout\ & !\dut_alu|dut_divider_u|A[4]~26\)) # (!\dut_alu|dut_divider_u|Add2~10_combout\ & ((!\dut_alu|dut_divider_u|A[4]~26\) # 
-- (!\dut_alu|dut_divider_u|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~10_combout\,
	datab => \dut_alu|dut_divider_u|Add0~11_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[4]~26\,
	combout => \dut_alu|dut_divider_u|A[5]~27_combout\,
	cout => \dut_alu|dut_divider_u|A[5]~28\);

-- Location: FF_X86_Y48_N27
\dut_alu|dut_divider_u|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[5]~27_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(5));

-- Location: LCCOMB_X87_Y48_N28
\dut_alu|dut_divider_u|M_sign_not[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[6]~12_combout\ = ((\dut_alu|dut_divider_u|A\(5) $ (\d1|src2_d\(6) $ (\dut_alu|dut_divider_u|M_sign_not[5]~11\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[6]~13\ = CARRY((\dut_alu|dut_divider_u|A\(5) & ((!\dut_alu|dut_divider_u|M_sign_not[5]~11\) # (!\d1|src2_d\(6)))) # (!\dut_alu|dut_divider_u|A\(5) & (!\d1|src2_d\(6) & !\dut_alu|dut_divider_u|M_sign_not[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(5),
	datab => \d1|src2_d\(6),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[5]~11\,
	combout => \dut_alu|dut_divider_u|M_sign_not[6]~12_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[6]~13\);

-- Location: LCCOMB_X87_Y48_N8
\dut_alu|dut_divider_u|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~10_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(5))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|A\(5),
	datad => \dut_alu|dut_divider_u|M_sign_not[6]~12_combout\,
	combout => \dut_alu|dut_divider_u|Add0~10_combout\);

-- Location: LCCOMB_X86_Y48_N28
\dut_alu|dut_divider_u|A[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[6]~29_combout\ = ((\dut_alu|dut_divider_u|Add2~9_combout\ $ (\dut_alu|dut_divider_u|Add0~10_combout\ $ (!\dut_alu|dut_divider_u|A[5]~28\)))) # (GND)
-- \dut_alu|dut_divider_u|A[6]~30\ = CARRY((\dut_alu|dut_divider_u|Add2~9_combout\ & ((\dut_alu|dut_divider_u|Add0~10_combout\) # (!\dut_alu|dut_divider_u|A[5]~28\))) # (!\dut_alu|dut_divider_u|Add2~9_combout\ & (\dut_alu|dut_divider_u|Add0~10_combout\ & 
-- !\dut_alu|dut_divider_u|A[5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~9_combout\,
	datab => \dut_alu|dut_divider_u|Add0~10_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[5]~28\,
	combout => \dut_alu|dut_divider_u|A[6]~29_combout\,
	cout => \dut_alu|dut_divider_u|A[6]~30\);

-- Location: FF_X86_Y48_N29
\dut_alu|dut_divider_u|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[6]~29_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(6));

-- Location: LCCOMB_X87_Y48_N30
\dut_alu|dut_divider_u|M_sign_not[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[7]~14_combout\ = (\d1|src2_d\(7) & ((\dut_alu|dut_divider_u|A\(6) & (!\dut_alu|dut_divider_u|M_sign_not[6]~13\)) # (!\dut_alu|dut_divider_u|A\(6) & ((\dut_alu|dut_divider_u|M_sign_not[6]~13\) # (GND))))) # 
-- (!\d1|src2_d\(7) & ((\dut_alu|dut_divider_u|A\(6) & (\dut_alu|dut_divider_u|M_sign_not[6]~13\ & VCC)) # (!\dut_alu|dut_divider_u|A\(6) & (!\dut_alu|dut_divider_u|M_sign_not[6]~13\))))
-- \dut_alu|dut_divider_u|M_sign_not[7]~15\ = CARRY((\d1|src2_d\(7) & ((!\dut_alu|dut_divider_u|M_sign_not[6]~13\) # (!\dut_alu|dut_divider_u|A\(6)))) # (!\d1|src2_d\(7) & (!\dut_alu|dut_divider_u|A\(6) & !\dut_alu|dut_divider_u|M_sign_not[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(7),
	datab => \dut_alu|dut_divider_u|A\(6),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[6]~13\,
	combout => \dut_alu|dut_divider_u|M_sign_not[7]~14_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[7]~15\);

-- Location: LCCOMB_X86_Y48_N10
\dut_alu|dut_divider_u|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~9_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(6)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|M_sign_not[7]~14_combout\,
	datad => \dut_alu|dut_divider_u|A\(6),
	combout => \dut_alu|dut_divider_u|Add0~9_combout\);

-- Location: LCCOMB_X86_Y48_N0
\dut_alu|dut_divider_u|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~8_combout\ = (\dut_alu|dut_divider_u|A\(16) & \d1|src2_d\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datac => \d1|src2_d\(7),
	combout => \dut_alu|dut_divider_u|Add2~8_combout\);

-- Location: LCCOMB_X86_Y48_N30
\dut_alu|dut_divider_u|A[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[7]~31_combout\ = (\dut_alu|dut_divider_u|Add0~9_combout\ & ((\dut_alu|dut_divider_u|Add2~8_combout\ & (\dut_alu|dut_divider_u|A[6]~30\ & VCC)) # (!\dut_alu|dut_divider_u|Add2~8_combout\ & (!\dut_alu|dut_divider_u|A[6]~30\)))) # 
-- (!\dut_alu|dut_divider_u|Add0~9_combout\ & ((\dut_alu|dut_divider_u|Add2~8_combout\ & (!\dut_alu|dut_divider_u|A[6]~30\)) # (!\dut_alu|dut_divider_u|Add2~8_combout\ & ((\dut_alu|dut_divider_u|A[6]~30\) # (GND)))))
-- \dut_alu|dut_divider_u|A[7]~32\ = CARRY((\dut_alu|dut_divider_u|Add0~9_combout\ & (!\dut_alu|dut_divider_u|Add2~8_combout\ & !\dut_alu|dut_divider_u|A[6]~30\)) # (!\dut_alu|dut_divider_u|Add0~9_combout\ & ((!\dut_alu|dut_divider_u|A[6]~30\) # 
-- (!\dut_alu|dut_divider_u|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~9_combout\,
	datab => \dut_alu|dut_divider_u|Add2~8_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[6]~30\,
	combout => \dut_alu|dut_divider_u|A[7]~31_combout\,
	cout => \dut_alu|dut_divider_u|A[7]~32\);

-- Location: FF_X86_Y48_N31
\dut_alu|dut_divider_u|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[7]~31_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(7));

-- Location: LCCOMB_X87_Y47_N0
\dut_alu|dut_divider_u|M_sign_not[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[8]~16_combout\ = ((\dut_alu|dut_divider_u|A\(7) $ (\d1|src2_d\(8) $ (\dut_alu|dut_divider_u|M_sign_not[7]~15\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[8]~17\ = CARRY((\dut_alu|dut_divider_u|A\(7) & ((!\dut_alu|dut_divider_u|M_sign_not[7]~15\) # (!\d1|src2_d\(8)))) # (!\dut_alu|dut_divider_u|A\(7) & (!\d1|src2_d\(8) & !\dut_alu|dut_divider_u|M_sign_not[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(7),
	datab => \d1|src2_d\(8),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[7]~15\,
	combout => \dut_alu|dut_divider_u|M_sign_not[8]~16_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[8]~17\);

-- Location: LCCOMB_X87_Y47_N22
\dut_alu|dut_divider_u|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~8_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(7))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(7),
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|M_sign_not[8]~16_combout\,
	combout => \dut_alu|dut_divider_u|Add0~8_combout\);

-- Location: LCCOMB_X86_Y47_N0
\dut_alu|dut_divider_u|A[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[8]~33_combout\ = ((\dut_alu|dut_divider_u|Add2~7_combout\ $ (\dut_alu|dut_divider_u|Add0~8_combout\ $ (!\dut_alu|dut_divider_u|A[7]~32\)))) # (GND)
-- \dut_alu|dut_divider_u|A[8]~34\ = CARRY((\dut_alu|dut_divider_u|Add2~7_combout\ & ((\dut_alu|dut_divider_u|Add0~8_combout\) # (!\dut_alu|dut_divider_u|A[7]~32\))) # (!\dut_alu|dut_divider_u|Add2~7_combout\ & (\dut_alu|dut_divider_u|Add0~8_combout\ & 
-- !\dut_alu|dut_divider_u|A[7]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~7_combout\,
	datab => \dut_alu|dut_divider_u|Add0~8_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[7]~32\,
	combout => \dut_alu|dut_divider_u|A[8]~33_combout\,
	cout => \dut_alu|dut_divider_u|A[8]~34\);

-- Location: FF_X86_Y47_N1
\dut_alu|dut_divider_u|A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[8]~33_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(8));

-- Location: LCCOMB_X87_Y47_N2
\dut_alu|dut_divider_u|M_sign_not[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[9]~18_combout\ = (\dut_alu|dut_divider_u|A\(8) & ((\d1|src2_d\(9) & (!\dut_alu|dut_divider_u|M_sign_not[8]~17\)) # (!\d1|src2_d\(9) & (\dut_alu|dut_divider_u|M_sign_not[8]~17\ & VCC)))) # (!\dut_alu|dut_divider_u|A\(8) & 
-- ((\d1|src2_d\(9) & ((\dut_alu|dut_divider_u|M_sign_not[8]~17\) # (GND))) # (!\d1|src2_d\(9) & (!\dut_alu|dut_divider_u|M_sign_not[8]~17\))))
-- \dut_alu|dut_divider_u|M_sign_not[9]~19\ = CARRY((\dut_alu|dut_divider_u|A\(8) & (\d1|src2_d\(9) & !\dut_alu|dut_divider_u|M_sign_not[8]~17\)) # (!\dut_alu|dut_divider_u|A\(8) & ((\d1|src2_d\(9)) # (!\dut_alu|dut_divider_u|M_sign_not[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(8),
	datab => \d1|src2_d\(9),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[8]~17\,
	combout => \dut_alu|dut_divider_u|M_sign_not[9]~18_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[9]~19\);

-- Location: LCCOMB_X87_Y47_N28
\dut_alu|dut_divider_u|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~7_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(8))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(8),
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|M_sign_not[9]~18_combout\,
	combout => \dut_alu|dut_divider_u|Add0~7_combout\);

-- Location: LCCOMB_X86_Y47_N20
\dut_alu|dut_divider_u|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~6_combout\ = (\dut_alu|dut_divider_u|A\(16) & \d1|src2_d\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datad => \d1|src2_d\(9),
	combout => \dut_alu|dut_divider_u|Add2~6_combout\);

-- Location: LCCOMB_X86_Y47_N2
\dut_alu|dut_divider_u|A[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[9]~35_combout\ = (\dut_alu|dut_divider_u|Add0~7_combout\ & ((\dut_alu|dut_divider_u|Add2~6_combout\ & (\dut_alu|dut_divider_u|A[8]~34\ & VCC)) # (!\dut_alu|dut_divider_u|Add2~6_combout\ & (!\dut_alu|dut_divider_u|A[8]~34\)))) # 
-- (!\dut_alu|dut_divider_u|Add0~7_combout\ & ((\dut_alu|dut_divider_u|Add2~6_combout\ & (!\dut_alu|dut_divider_u|A[8]~34\)) # (!\dut_alu|dut_divider_u|Add2~6_combout\ & ((\dut_alu|dut_divider_u|A[8]~34\) # (GND)))))
-- \dut_alu|dut_divider_u|A[9]~36\ = CARRY((\dut_alu|dut_divider_u|Add0~7_combout\ & (!\dut_alu|dut_divider_u|Add2~6_combout\ & !\dut_alu|dut_divider_u|A[8]~34\)) # (!\dut_alu|dut_divider_u|Add0~7_combout\ & ((!\dut_alu|dut_divider_u|A[8]~34\) # 
-- (!\dut_alu|dut_divider_u|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~7_combout\,
	datab => \dut_alu|dut_divider_u|Add2~6_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[8]~34\,
	combout => \dut_alu|dut_divider_u|A[9]~35_combout\,
	cout => \dut_alu|dut_divider_u|A[9]~36\);

-- Location: FF_X86_Y47_N3
\dut_alu|dut_divider_u|A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[9]~35_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(9));

-- Location: LCCOMB_X87_Y47_N4
\dut_alu|dut_divider_u|M_sign_not[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[10]~20_combout\ = ((\dut_alu|dut_divider_u|A\(9) $ (\d1|src2_d\(10) $ (\dut_alu|dut_divider_u|M_sign_not[9]~19\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[10]~21\ = CARRY((\dut_alu|dut_divider_u|A\(9) & ((!\dut_alu|dut_divider_u|M_sign_not[9]~19\) # (!\d1|src2_d\(10)))) # (!\dut_alu|dut_divider_u|A\(9) & (!\d1|src2_d\(10) & !\dut_alu|dut_divider_u|M_sign_not[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(9),
	datab => \d1|src2_d\(10),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[9]~19\,
	combout => \dut_alu|dut_divider_u|M_sign_not[10]~20_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[10]~21\);

-- Location: LCCOMB_X86_Y47_N18
\dut_alu|dut_divider_u|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~6_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(9)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|M_sign_not[10]~20_combout\,
	datab => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|A\(9),
	combout => \dut_alu|dut_divider_u|Add0~6_combout\);

-- Location: LCCOMB_X86_Y47_N4
\dut_alu|dut_divider_u|A[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[10]~37_combout\ = ((\dut_alu|dut_divider_u|Add2~5_combout\ $ (\dut_alu|dut_divider_u|Add0~6_combout\ $ (!\dut_alu|dut_divider_u|A[9]~36\)))) # (GND)
-- \dut_alu|dut_divider_u|A[10]~38\ = CARRY((\dut_alu|dut_divider_u|Add2~5_combout\ & ((\dut_alu|dut_divider_u|Add0~6_combout\) # (!\dut_alu|dut_divider_u|A[9]~36\))) # (!\dut_alu|dut_divider_u|Add2~5_combout\ & (\dut_alu|dut_divider_u|Add0~6_combout\ & 
-- !\dut_alu|dut_divider_u|A[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~5_combout\,
	datab => \dut_alu|dut_divider_u|Add0~6_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[9]~36\,
	combout => \dut_alu|dut_divider_u|A[10]~37_combout\,
	cout => \dut_alu|dut_divider_u|A[10]~38\);

-- Location: FF_X86_Y47_N5
\dut_alu|dut_divider_u|A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[10]~37_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(10));

-- Location: LCCOMB_X87_Y47_N6
\dut_alu|dut_divider_u|M_sign_not[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[11]~22_combout\ = (\d1|src2_d\(11) & ((\dut_alu|dut_divider_u|A\(10) & (!\dut_alu|dut_divider_u|M_sign_not[10]~21\)) # (!\dut_alu|dut_divider_u|A\(10) & ((\dut_alu|dut_divider_u|M_sign_not[10]~21\) # (GND))))) # 
-- (!\d1|src2_d\(11) & ((\dut_alu|dut_divider_u|A\(10) & (\dut_alu|dut_divider_u|M_sign_not[10]~21\ & VCC)) # (!\dut_alu|dut_divider_u|A\(10) & (!\dut_alu|dut_divider_u|M_sign_not[10]~21\))))
-- \dut_alu|dut_divider_u|M_sign_not[11]~23\ = CARRY((\d1|src2_d\(11) & ((!\dut_alu|dut_divider_u|M_sign_not[10]~21\) # (!\dut_alu|dut_divider_u|A\(10)))) # (!\d1|src2_d\(11) & (!\dut_alu|dut_divider_u|A\(10) & !\dut_alu|dut_divider_u|M_sign_not[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(11),
	datab => \dut_alu|dut_divider_u|A\(10),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[10]~21\,
	combout => \dut_alu|dut_divider_u|M_sign_not[11]~22_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[11]~23\);

-- Location: LCCOMB_X87_Y47_N26
\dut_alu|dut_divider_u|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~5_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(10))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|A\(10),
	datad => \dut_alu|dut_divider_u|M_sign_not[11]~22_combout\,
	combout => \dut_alu|dut_divider_u|Add0~5_combout\);

-- Location: LCCOMB_X86_Y47_N24
\dut_alu|dut_divider_u|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~4_combout\ = (\dut_alu|dut_divider_u|A\(16) & \d1|src2_d\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datac => \d1|src2_d\(11),
	combout => \dut_alu|dut_divider_u|Add2~4_combout\);

-- Location: LCCOMB_X86_Y47_N6
\dut_alu|dut_divider_u|A[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[11]~39_combout\ = (\dut_alu|dut_divider_u|Add0~5_combout\ & ((\dut_alu|dut_divider_u|Add2~4_combout\ & (\dut_alu|dut_divider_u|A[10]~38\ & VCC)) # (!\dut_alu|dut_divider_u|Add2~4_combout\ & (!\dut_alu|dut_divider_u|A[10]~38\)))) # 
-- (!\dut_alu|dut_divider_u|Add0~5_combout\ & ((\dut_alu|dut_divider_u|Add2~4_combout\ & (!\dut_alu|dut_divider_u|A[10]~38\)) # (!\dut_alu|dut_divider_u|Add2~4_combout\ & ((\dut_alu|dut_divider_u|A[10]~38\) # (GND)))))
-- \dut_alu|dut_divider_u|A[11]~40\ = CARRY((\dut_alu|dut_divider_u|Add0~5_combout\ & (!\dut_alu|dut_divider_u|Add2~4_combout\ & !\dut_alu|dut_divider_u|A[10]~38\)) # (!\dut_alu|dut_divider_u|Add0~5_combout\ & ((!\dut_alu|dut_divider_u|A[10]~38\) # 
-- (!\dut_alu|dut_divider_u|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~5_combout\,
	datab => \dut_alu|dut_divider_u|Add2~4_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[10]~38\,
	combout => \dut_alu|dut_divider_u|A[11]~39_combout\,
	cout => \dut_alu|dut_divider_u|A[11]~40\);

-- Location: FF_X86_Y47_N7
\dut_alu|dut_divider_u|A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[11]~39_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(11));

-- Location: LCCOMB_X87_Y47_N8
\dut_alu|dut_divider_u|M_sign_not[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[12]~24_combout\ = ((\dut_alu|dut_divider_u|A\(11) $ (\d1|src2_d\(12) $ (\dut_alu|dut_divider_u|M_sign_not[11]~23\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[12]~25\ = CARRY((\dut_alu|dut_divider_u|A\(11) & ((!\dut_alu|dut_divider_u|M_sign_not[11]~23\) # (!\d1|src2_d\(12)))) # (!\dut_alu|dut_divider_u|A\(11) & (!\d1|src2_d\(12) & !\dut_alu|dut_divider_u|M_sign_not[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(11),
	datab => \d1|src2_d\(12),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[11]~23\,
	combout => \dut_alu|dut_divider_u|M_sign_not[12]~24_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[12]~25\);

-- Location: LCCOMB_X87_Y47_N24
\dut_alu|dut_divider_u|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~4_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(11))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datab => \dut_alu|dut_divider_u|A\(11),
	datac => \dut_alu|dut_divider_u|M_sign_not[12]~24_combout\,
	combout => \dut_alu|dut_divider_u|Add0~4_combout\);

-- Location: LCCOMB_X88_Y46_N26
\dut_alu|dut_divider_u|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~3_combout\ = (\dut_alu|dut_divider_u|A\(16) & \d1|src2_d\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \d1|src2_d\(12),
	combout => \dut_alu|dut_divider_u|Add2~3_combout\);

-- Location: LCCOMB_X86_Y47_N8
\dut_alu|dut_divider_u|A[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[12]~41_combout\ = ((\dut_alu|dut_divider_u|Add0~4_combout\ $ (\dut_alu|dut_divider_u|Add2~3_combout\ $ (!\dut_alu|dut_divider_u|A[11]~40\)))) # (GND)
-- \dut_alu|dut_divider_u|A[12]~42\ = CARRY((\dut_alu|dut_divider_u|Add0~4_combout\ & ((\dut_alu|dut_divider_u|Add2~3_combout\) # (!\dut_alu|dut_divider_u|A[11]~40\))) # (!\dut_alu|dut_divider_u|Add0~4_combout\ & (\dut_alu|dut_divider_u|Add2~3_combout\ & 
-- !\dut_alu|dut_divider_u|A[11]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~4_combout\,
	datab => \dut_alu|dut_divider_u|Add2~3_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[11]~40\,
	combout => \dut_alu|dut_divider_u|A[12]~41_combout\,
	cout => \dut_alu|dut_divider_u|A[12]~42\);

-- Location: FF_X86_Y47_N9
\dut_alu|dut_divider_u|A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[12]~41_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(12));

-- Location: LCCOMB_X87_Y47_N10
\dut_alu|dut_divider_u|M_sign_not[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[13]~26_combout\ = (\dut_alu|dut_divider_u|A\(12) & ((\d1|src2_d\(13) & (!\dut_alu|dut_divider_u|M_sign_not[12]~25\)) # (!\d1|src2_d\(13) & (\dut_alu|dut_divider_u|M_sign_not[12]~25\ & VCC)))) # 
-- (!\dut_alu|dut_divider_u|A\(12) & ((\d1|src2_d\(13) & ((\dut_alu|dut_divider_u|M_sign_not[12]~25\) # (GND))) # (!\d1|src2_d\(13) & (!\dut_alu|dut_divider_u|M_sign_not[12]~25\))))
-- \dut_alu|dut_divider_u|M_sign_not[13]~27\ = CARRY((\dut_alu|dut_divider_u|A\(12) & (\d1|src2_d\(13) & !\dut_alu|dut_divider_u|M_sign_not[12]~25\)) # (!\dut_alu|dut_divider_u|A\(12) & ((\d1|src2_d\(13)) # (!\dut_alu|dut_divider_u|M_sign_not[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(12),
	datab => \d1|src2_d\(13),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[12]~25\,
	combout => \dut_alu|dut_divider_u|M_sign_not[13]~26_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[13]~27\);

-- Location: LCCOMB_X87_Y47_N30
\dut_alu|dut_divider_u|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~3_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(12))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(12),
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|M_sign_not[13]~26_combout\,
	combout => \dut_alu|dut_divider_u|Add0~3_combout\);

-- Location: LCCOMB_X86_Y47_N22
\dut_alu|dut_divider_u|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add2~2_combout\ = (\d1|src2_d\(13) & \dut_alu|dut_divider_u|A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(13),
	datad => \dut_alu|dut_divider_u|A\(16),
	combout => \dut_alu|dut_divider_u|Add2~2_combout\);

-- Location: LCCOMB_X86_Y47_N10
\dut_alu|dut_divider_u|A[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[13]~43_combout\ = (\dut_alu|dut_divider_u|Add0~3_combout\ & ((\dut_alu|dut_divider_u|Add2~2_combout\ & (\dut_alu|dut_divider_u|A[12]~42\ & VCC)) # (!\dut_alu|dut_divider_u|Add2~2_combout\ & (!\dut_alu|dut_divider_u|A[12]~42\)))) # 
-- (!\dut_alu|dut_divider_u|Add0~3_combout\ & ((\dut_alu|dut_divider_u|Add2~2_combout\ & (!\dut_alu|dut_divider_u|A[12]~42\)) # (!\dut_alu|dut_divider_u|Add2~2_combout\ & ((\dut_alu|dut_divider_u|A[12]~42\) # (GND)))))
-- \dut_alu|dut_divider_u|A[13]~44\ = CARRY((\dut_alu|dut_divider_u|Add0~3_combout\ & (!\dut_alu|dut_divider_u|Add2~2_combout\ & !\dut_alu|dut_divider_u|A[12]~42\)) # (!\dut_alu|dut_divider_u|Add0~3_combout\ & ((!\dut_alu|dut_divider_u|A[12]~42\) # 
-- (!\dut_alu|dut_divider_u|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add0~3_combout\,
	datab => \dut_alu|dut_divider_u|Add2~2_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[12]~42\,
	combout => \dut_alu|dut_divider_u|A[13]~43_combout\,
	cout => \dut_alu|dut_divider_u|A[13]~44\);

-- Location: FF_X86_Y47_N11
\dut_alu|dut_divider_u|A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[13]~43_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(13));

-- Location: LCCOMB_X87_Y47_N12
\dut_alu|dut_divider_u|M_sign_not[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[14]~28_combout\ = ((\dut_alu|dut_divider_u|A\(13) $ (\d1|src2_d\(14) $ (\dut_alu|dut_divider_u|M_sign_not[13]~27\)))) # (GND)
-- \dut_alu|dut_divider_u|M_sign_not[14]~29\ = CARRY((\dut_alu|dut_divider_u|A\(13) & ((!\dut_alu|dut_divider_u|M_sign_not[13]~27\) # (!\d1|src2_d\(14)))) # (!\dut_alu|dut_divider_u|A\(13) & (!\d1|src2_d\(14) & !\dut_alu|dut_divider_u|M_sign_not[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(13),
	datab => \d1|src2_d\(14),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[13]~27\,
	combout => \dut_alu|dut_divider_u|M_sign_not[14]~28_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[14]~29\);

-- Location: LCCOMB_X87_Y47_N20
\dut_alu|dut_divider_u|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~2_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(13))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[14]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(13),
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|M_sign_not[14]~28_combout\,
	combout => \dut_alu|dut_divider_u|Add0~2_combout\);

-- Location: LCCOMB_X86_Y47_N12
\dut_alu|dut_divider_u|A[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[14]~45_combout\ = ((\dut_alu|dut_divider_u|Add2~1_combout\ $ (\dut_alu|dut_divider_u|Add0~2_combout\ $ (!\dut_alu|dut_divider_u|A[13]~44\)))) # (GND)
-- \dut_alu|dut_divider_u|A[14]~46\ = CARRY((\dut_alu|dut_divider_u|Add2~1_combout\ & ((\dut_alu|dut_divider_u|Add0~2_combout\) # (!\dut_alu|dut_divider_u|A[13]~44\))) # (!\dut_alu|dut_divider_u|Add2~1_combout\ & (\dut_alu|dut_divider_u|Add0~2_combout\ & 
-- !\dut_alu|dut_divider_u|A[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~1_combout\,
	datab => \dut_alu|dut_divider_u|Add0~2_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[13]~44\,
	combout => \dut_alu|dut_divider_u|A[14]~45_combout\,
	cout => \dut_alu|dut_divider_u|A[14]~46\);

-- Location: FF_X86_Y47_N13
\dut_alu|dut_divider_u|A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[14]~45_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(14));

-- Location: LCCOMB_X87_Y47_N14
\dut_alu|dut_divider_u|M_sign_not[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|M_sign_not[15]~30_combout\ = (\dut_alu|dut_divider_u|A\(14) & ((\d1|src2_d\(15) & (!\dut_alu|dut_divider_u|M_sign_not[14]~29\)) # (!\d1|src2_d\(15) & (\dut_alu|dut_divider_u|M_sign_not[14]~29\ & VCC)))) # 
-- (!\dut_alu|dut_divider_u|A\(14) & ((\d1|src2_d\(15) & ((\dut_alu|dut_divider_u|M_sign_not[14]~29\) # (GND))) # (!\d1|src2_d\(15) & (!\dut_alu|dut_divider_u|M_sign_not[14]~29\))))
-- \dut_alu|dut_divider_u|M_sign_not[15]~31\ = CARRY((\dut_alu|dut_divider_u|A\(14) & (\d1|src2_d\(15) & !\dut_alu|dut_divider_u|M_sign_not[14]~29\)) # (!\dut_alu|dut_divider_u|A\(14) & ((\d1|src2_d\(15)) # (!\dut_alu|dut_divider_u|M_sign_not[14]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(14),
	datab => \d1|src2_d\(15),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|M_sign_not[14]~29\,
	combout => \dut_alu|dut_divider_u|M_sign_not[15]~30_combout\,
	cout => \dut_alu|dut_divider_u|M_sign_not[15]~31\);

-- Location: LCCOMB_X86_Y47_N28
\dut_alu|dut_divider_u|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~1_combout\ = (\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|A\(14)))) # (!\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|M_sign_not[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datac => \dut_alu|dut_divider_u|M_sign_not[15]~30_combout\,
	datad => \dut_alu|dut_divider_u|A\(14),
	combout => \dut_alu|dut_divider_u|Add0~1_combout\);

-- Location: LCCOMB_X86_Y47_N14
\dut_alu|dut_divider_u|A[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[15]~47_combout\ = (\dut_alu|dut_divider_u|Add2~0_combout\ & ((\dut_alu|dut_divider_u|Add0~1_combout\ & (\dut_alu|dut_divider_u|A[14]~46\ & VCC)) # (!\dut_alu|dut_divider_u|Add0~1_combout\ & (!\dut_alu|dut_divider_u|A[14]~46\)))) # 
-- (!\dut_alu|dut_divider_u|Add2~0_combout\ & ((\dut_alu|dut_divider_u|Add0~1_combout\ & (!\dut_alu|dut_divider_u|A[14]~46\)) # (!\dut_alu|dut_divider_u|Add0~1_combout\ & ((\dut_alu|dut_divider_u|A[14]~46\) # (GND)))))
-- \dut_alu|dut_divider_u|A[15]~48\ = CARRY((\dut_alu|dut_divider_u|Add2~0_combout\ & (!\dut_alu|dut_divider_u|Add0~1_combout\ & !\dut_alu|dut_divider_u|A[14]~46\)) # (!\dut_alu|dut_divider_u|Add2~0_combout\ & ((!\dut_alu|dut_divider_u|A[14]~46\) # 
-- (!\dut_alu|dut_divider_u|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|Add2~0_combout\,
	datab => \dut_alu|dut_divider_u|Add0~1_combout\,
	datad => VCC,
	cin => \dut_alu|dut_divider_u|A[14]~46\,
	combout => \dut_alu|dut_divider_u|A[15]~47_combout\,
	cout => \dut_alu|dut_divider_u|A[15]~48\);

-- Location: FF_X86_Y47_N15
\dut_alu|dut_divider_u|A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[15]~47_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(15));

-- Location: LCCOMB_X87_Y47_N16
\dut_alu|dut_divider_u|M_sign_not[16]~32\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X87_Y47_N18
\dut_alu|dut_divider_u|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|Add0~0_combout\ = (\dut_alu|dut_divider_u|A\(16) & (\dut_alu|dut_divider_u|A\(15))) # (!\dut_alu|dut_divider_u|A\(16) & ((\dut_alu|dut_divider_u|M_sign_not[16]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(15),
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|M_sign_not[16]~32_combout\,
	combout => \dut_alu|dut_divider_u|Add0~0_combout\);

-- Location: LCCOMB_X86_Y47_N16
\dut_alu|dut_divider_u|A[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|A[16]~49_combout\ = \dut_alu|dut_divider_u|A\(16) $ (\dut_alu|dut_divider_u|A[15]~48\ $ (\dut_alu|dut_divider_u|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|Add0~0_combout\,
	cin => \dut_alu|dut_divider_u|A[15]~48\,
	combout => \dut_alu|dut_divider_u|A[16]~49_combout\);

-- Location: FF_X86_Y47_N17
\dut_alu|dut_divider_u|A[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|A[16]~49_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_divider_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|A\(16));

-- Location: LCCOMB_X90_Y50_N28
\dut_alu|dut_divider_u|q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~13_combout\ = (\dut_alu|op_s\(3) & ((\dut_alu|dut_divider_u|state~q\ & (!\dut_alu|dut_divider_u|A\(16))) # (!\dut_alu|dut_divider_u|state~q\ & ((\d1|src1_d\(0)))))) # (!\dut_alu|op_s\(3) & (!\dut_alu|dut_divider_u|A\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(16),
	datab => \d1|src1_d\(0),
	datac => \dut_alu|op_s\(3),
	datad => \dut_alu|dut_divider_u|state~q\,
	combout => \dut_alu|dut_divider_u|q~13_combout\);

-- Location: FF_X90_Y50_N29
\dut_alu|dut_divider_u|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~13_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(0));

-- Location: LCCOMB_X92_Y46_N8
\dut_alu|dut_divider_u|q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~15_combout\ = (\dut_alu|op_s\(3) & ((\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(0))) # (!\dut_alu|dut_divider_u|state~q\ & ((\d1|src1_d\(1)))))) # (!\dut_alu|op_s\(3) & (\dut_alu|dut_divider_u|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(0),
	datab => \d1|src1_d\(1),
	datac => \dut_alu|op_s\(3),
	datad => \dut_alu|dut_divider_u|state~q\,
	combout => \dut_alu|dut_divider_u|q~15_combout\);

-- Location: FF_X92_Y46_N9
\dut_alu|dut_divider_u|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~15_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(1));

-- Location: LCCOMB_X92_Y46_N20
\dut_alu|dut_divider_u|q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~16_combout\ = (\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(1))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|op_s\(3) & ((\d1|src1_d\(2)))) # (!\dut_alu|op_s\(3) & (\dut_alu|dut_divider_u|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|state~q\,
	datab => \dut_alu|dut_divider_u|q\(1),
	datac => \dut_alu|op_s\(3),
	datad => \d1|src1_d\(2),
	combout => \dut_alu|dut_divider_u|q~16_combout\);

-- Location: FF_X92_Y46_N21
\dut_alu|dut_divider_u|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~16_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(2));

-- Location: LCCOMB_X92_Y46_N14
\dut_alu|dut_divider_u|q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~14_combout\ = (\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(2))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|op_s\(3) & ((\d1|src1_d\(3)))) # (!\dut_alu|op_s\(3) & (\dut_alu|dut_divider_u|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|state~q\,
	datab => \dut_alu|dut_divider_u|q\(2),
	datac => \dut_alu|op_s\(3),
	datad => \d1|src1_d\(3),
	combout => \dut_alu|dut_divider_u|q~14_combout\);

-- Location: FF_X92_Y46_N15
\dut_alu|dut_divider_u|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(3));

-- Location: LCCOMB_X92_Y46_N6
\dut_alu|dut_divider_u|q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~9_combout\ = (\dut_alu|op_s\(3) & ((\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|dut_divider_u|q\(3)))) # (!\dut_alu|dut_divider_u|state~q\ & (\d1|src1_d\(4))))) # (!\dut_alu|op_s\(3) & (((\dut_alu|dut_divider_u|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(4),
	datab => \dut_alu|dut_divider_u|q\(3),
	datac => \dut_alu|op_s\(3),
	datad => \dut_alu|dut_divider_u|state~q\,
	combout => \dut_alu|dut_divider_u|q~9_combout\);

-- Location: FF_X92_Y46_N7
\dut_alu|dut_divider_u|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~9_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(4));

-- Location: LCCOMB_X92_Y46_N18
\dut_alu|dut_divider_u|q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~11_combout\ = (\dut_alu|dut_divider_u|state~q\ & (((\dut_alu|dut_divider_u|q\(4))))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|op_s\(3) & (\d1|src1_d\(5))) # (!\dut_alu|op_s\(3) & ((\dut_alu|dut_divider_u|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|state~q\,
	datab => \d1|src1_d\(5),
	datac => \dut_alu|op_s\(3),
	datad => \dut_alu|dut_divider_u|q\(4),
	combout => \dut_alu|dut_divider_u|q~11_combout\);

-- Location: FF_X92_Y46_N19
\dut_alu|dut_divider_u|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~11_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(5));

-- Location: LCCOMB_X92_Y46_N28
\dut_alu|dut_divider_u|q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~12_combout\ = (\dut_alu|op_s\(3) & ((\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|dut_divider_u|q\(5)))) # (!\dut_alu|dut_divider_u|state~q\ & (\d1|src1_d\(6))))) # (!\dut_alu|op_s\(3) & (((\dut_alu|dut_divider_u|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(6),
	datab => \dut_alu|dut_divider_u|q\(5),
	datac => \dut_alu|op_s\(3),
	datad => \dut_alu|dut_divider_u|state~q\,
	combout => \dut_alu|dut_divider_u|q~12_combout\);

-- Location: FF_X92_Y46_N29
\dut_alu|dut_divider_u|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(6));

-- Location: LCCOMB_X92_Y46_N16
\dut_alu|dut_divider_u|q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~10_combout\ = (\dut_alu|dut_divider_u|state~q\ & (\dut_alu|dut_divider_u|q\(6))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|op_s\(3) & ((\d1|src1_d\(7)))) # (!\dut_alu|op_s\(3) & (\dut_alu|dut_divider_u|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|state~q\,
	datab => \dut_alu|dut_divider_u|q\(6),
	datac => \dut_alu|op_s\(3),
	datad => \d1|src1_d\(7),
	combout => \dut_alu|dut_divider_u|q~10_combout\);

-- Location: FF_X92_Y46_N17
\dut_alu|dut_divider_u|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~10_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(7));

-- Location: LCCOMB_X92_Y46_N26
\dut_alu|dut_divider_u|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~5_combout\ = (\dut_alu|dut_divider_u|state~q\ & (((\dut_alu|dut_divider_u|q\(7))))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|op_s\(3) & (\d1|src1_d\(8))) # (!\dut_alu|op_s\(3) & ((\dut_alu|dut_divider_u|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|state~q\,
	datab => \d1|src1_d\(8),
	datac => \dut_alu|op_s\(3),
	datad => \dut_alu|dut_divider_u|q\(7),
	combout => \dut_alu|dut_divider_u|q~5_combout\);

-- Location: FF_X92_Y46_N27
\dut_alu|dut_divider_u|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(8));

-- Location: LCCOMB_X90_Y50_N30
\dut_alu|dut_divider_u|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|q~7_combout\ = (\dut_alu|dut_divider_u|state~q\ & (((\dut_alu|dut_divider_u|q\(8))))) # (!\dut_alu|dut_divider_u|state~q\ & ((\dut_alu|op_s\(3) & (\d1|src1_d\(9))) # (!\dut_alu|op_s\(3) & ((\dut_alu|dut_divider_u|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|state~q\,
	datab => \d1|src1_d\(9),
	datac => \dut_alu|op_s\(3),
	datad => \dut_alu|dut_divider_u|q\(8),
	combout => \dut_alu|dut_divider_u|q~7_combout\);

-- Location: FF_X90_Y50_N31
\dut_alu|dut_divider_u|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|q~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_divider_u|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|q\(9));

-- Location: LCCOMB_X89_Y45_N0
\dut_alu|dut_mul_s|m_not[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[0]~0_combout\ = (\dut_alu|dut_mul_s|A\(0) & ((GND) # (!\d1|src1_d\(0)))) # (!\dut_alu|dut_mul_s|A\(0) & (\d1|src1_d\(0) $ (GND)))
-- \dut_alu|dut_mul_s|m_not[0]~1\ = CARRY((\dut_alu|dut_mul_s|A\(0)) # (!\d1|src1_d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(0),
	datab => \d1|src1_d\(0),
	datad => VCC,
	combout => \dut_alu|dut_mul_s|m_not[0]~0_combout\,
	cout => \dut_alu|dut_mul_s|m_not[0]~1\);

-- Location: LCCOMB_X89_Y45_N2
\dut_alu|dut_mul_s|m_not[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[1]~2_combout\ = (\dut_alu|dut_mul_s|A\(1) & ((\d1|src1_d\(1) & (!\dut_alu|dut_mul_s|m_not[0]~1\)) # (!\d1|src1_d\(1) & (\dut_alu|dut_mul_s|m_not[0]~1\ & VCC)))) # (!\dut_alu|dut_mul_s|A\(1) & ((\d1|src1_d\(1) & 
-- ((\dut_alu|dut_mul_s|m_not[0]~1\) # (GND))) # (!\d1|src1_d\(1) & (!\dut_alu|dut_mul_s|m_not[0]~1\))))
-- \dut_alu|dut_mul_s|m_not[1]~3\ = CARRY((\dut_alu|dut_mul_s|A\(1) & (\d1|src1_d\(1) & !\dut_alu|dut_mul_s|m_not[0]~1\)) # (!\dut_alu|dut_mul_s|A\(1) & ((\d1|src1_d\(1)) # (!\dut_alu|dut_mul_s|m_not[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(1),
	datab => \d1|src1_d\(1),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[0]~1\,
	combout => \dut_alu|dut_mul_s|m_not[1]~2_combout\,
	cout => \dut_alu|dut_mul_s|m_not[1]~3\);

-- Location: LCCOMB_X89_Y45_N4
\dut_alu|dut_mul_s|m_not[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[2]~4_combout\ = ((\dut_alu|dut_mul_s|A\(2) $ (\d1|src1_d\(2) $ (\dut_alu|dut_mul_s|m_not[1]~3\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[2]~5\ = CARRY((\dut_alu|dut_mul_s|A\(2) & ((!\dut_alu|dut_mul_s|m_not[1]~3\) # (!\d1|src1_d\(2)))) # (!\dut_alu|dut_mul_s|A\(2) & (!\d1|src1_d\(2) & !\dut_alu|dut_mul_s|m_not[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(2),
	datab => \d1|src1_d\(2),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[1]~3\,
	combout => \dut_alu|dut_mul_s|m_not[2]~4_combout\,
	cout => \dut_alu|dut_mul_s|m_not[2]~5\);

-- Location: LCCOMB_X89_Y45_N6
\dut_alu|dut_mul_s|m_not[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[3]~6_combout\ = (\dut_alu|dut_mul_s|A\(3) & ((\d1|src1_d\(3) & (!\dut_alu|dut_mul_s|m_not[2]~5\)) # (!\d1|src1_d\(3) & (\dut_alu|dut_mul_s|m_not[2]~5\ & VCC)))) # (!\dut_alu|dut_mul_s|A\(3) & ((\d1|src1_d\(3) & 
-- ((\dut_alu|dut_mul_s|m_not[2]~5\) # (GND))) # (!\d1|src1_d\(3) & (!\dut_alu|dut_mul_s|m_not[2]~5\))))
-- \dut_alu|dut_mul_s|m_not[3]~7\ = CARRY((\dut_alu|dut_mul_s|A\(3) & (\d1|src1_d\(3) & !\dut_alu|dut_mul_s|m_not[2]~5\)) # (!\dut_alu|dut_mul_s|A\(3) & ((\d1|src1_d\(3)) # (!\dut_alu|dut_mul_s|m_not[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(3),
	datab => \d1|src1_d\(3),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[2]~5\,
	combout => \dut_alu|dut_mul_s|m_not[3]~6_combout\,
	cout => \dut_alu|dut_mul_s|m_not[3]~7\);

-- Location: LCCOMB_X89_Y45_N8
\dut_alu|dut_mul_s|m_not[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[4]~8_combout\ = ((\dut_alu|dut_mul_s|A\(4) $ (\d1|src1_d\(4) $ (\dut_alu|dut_mul_s|m_not[3]~7\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[4]~9\ = CARRY((\dut_alu|dut_mul_s|A\(4) & ((!\dut_alu|dut_mul_s|m_not[3]~7\) # (!\d1|src1_d\(4)))) # (!\dut_alu|dut_mul_s|A\(4) & (!\d1|src1_d\(4) & !\dut_alu|dut_mul_s|m_not[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(4),
	datab => \d1|src1_d\(4),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[3]~7\,
	combout => \dut_alu|dut_mul_s|m_not[4]~8_combout\,
	cout => \dut_alu|dut_mul_s|m_not[4]~9\);

-- Location: LCCOMB_X89_Y45_N10
\dut_alu|dut_mul_s|m_not[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[5]~10_combout\ = (\dut_alu|dut_mul_s|A\(5) & ((\d1|src1_d\(5) & (!\dut_alu|dut_mul_s|m_not[4]~9\)) # (!\d1|src1_d\(5) & (\dut_alu|dut_mul_s|m_not[4]~9\ & VCC)))) # (!\dut_alu|dut_mul_s|A\(5) & ((\d1|src1_d\(5) & 
-- ((\dut_alu|dut_mul_s|m_not[4]~9\) # (GND))) # (!\d1|src1_d\(5) & (!\dut_alu|dut_mul_s|m_not[4]~9\))))
-- \dut_alu|dut_mul_s|m_not[5]~11\ = CARRY((\dut_alu|dut_mul_s|A\(5) & (\d1|src1_d\(5) & !\dut_alu|dut_mul_s|m_not[4]~9\)) # (!\dut_alu|dut_mul_s|A\(5) & ((\d1|src1_d\(5)) # (!\dut_alu|dut_mul_s|m_not[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(5),
	datab => \d1|src1_d\(5),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[4]~9\,
	combout => \dut_alu|dut_mul_s|m_not[5]~10_combout\,
	cout => \dut_alu|dut_mul_s|m_not[5]~11\);

-- Location: LCCOMB_X89_Y45_N12
\dut_alu|dut_mul_s|m_not[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[6]~12_combout\ = ((\d1|src1_d\(6) $ (\dut_alu|dut_mul_s|A\(6) $ (\dut_alu|dut_mul_s|m_not[5]~11\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[6]~13\ = CARRY((\d1|src1_d\(6) & (\dut_alu|dut_mul_s|A\(6) & !\dut_alu|dut_mul_s|m_not[5]~11\)) # (!\d1|src1_d\(6) & ((\dut_alu|dut_mul_s|A\(6)) # (!\dut_alu|dut_mul_s|m_not[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(6),
	datab => \dut_alu|dut_mul_s|A\(6),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[5]~11\,
	combout => \dut_alu|dut_mul_s|m_not[6]~12_combout\,
	cout => \dut_alu|dut_mul_s|m_not[6]~13\);

-- Location: LCCOMB_X89_Y45_N14
\dut_alu|dut_mul_s|m_not[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[7]~14_combout\ = (\d1|src1_d\(7) & ((\dut_alu|dut_mul_s|A\(7) & (!\dut_alu|dut_mul_s|m_not[6]~13\)) # (!\dut_alu|dut_mul_s|A\(7) & ((\dut_alu|dut_mul_s|m_not[6]~13\) # (GND))))) # (!\d1|src1_d\(7) & ((\dut_alu|dut_mul_s|A\(7) & 
-- (\dut_alu|dut_mul_s|m_not[6]~13\ & VCC)) # (!\dut_alu|dut_mul_s|A\(7) & (!\dut_alu|dut_mul_s|m_not[6]~13\))))
-- \dut_alu|dut_mul_s|m_not[7]~15\ = CARRY((\d1|src1_d\(7) & ((!\dut_alu|dut_mul_s|m_not[6]~13\) # (!\dut_alu|dut_mul_s|A\(7)))) # (!\d1|src1_d\(7) & (!\dut_alu|dut_mul_s|A\(7) & !\dut_alu|dut_mul_s|m_not[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(7),
	datab => \dut_alu|dut_mul_s|A\(7),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[6]~13\,
	combout => \dut_alu|dut_mul_s|m_not[7]~14_combout\,
	cout => \dut_alu|dut_mul_s|m_not[7]~15\);

-- Location: LCCOMB_X89_Y45_N16
\dut_alu|dut_mul_s|m_not[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[8]~16_combout\ = ((\dut_alu|dut_mul_s|A\(8) $ (\d1|src1_d\(8) $ (\dut_alu|dut_mul_s|m_not[7]~15\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[8]~17\ = CARRY((\dut_alu|dut_mul_s|A\(8) & ((!\dut_alu|dut_mul_s|m_not[7]~15\) # (!\d1|src1_d\(8)))) # (!\dut_alu|dut_mul_s|A\(8) & (!\d1|src1_d\(8) & !\dut_alu|dut_mul_s|m_not[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(8),
	datab => \d1|src1_d\(8),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[7]~15\,
	combout => \dut_alu|dut_mul_s|m_not[8]~16_combout\,
	cout => \dut_alu|dut_mul_s|m_not[8]~17\);

-- Location: LCCOMB_X89_Y45_N18
\dut_alu|dut_mul_s|m_not[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[9]~18_combout\ = (\d1|src1_d\(9) & ((\dut_alu|dut_mul_s|A\(9) & (!\dut_alu|dut_mul_s|m_not[8]~17\)) # (!\dut_alu|dut_mul_s|A\(9) & ((\dut_alu|dut_mul_s|m_not[8]~17\) # (GND))))) # (!\d1|src1_d\(9) & ((\dut_alu|dut_mul_s|A\(9) & 
-- (\dut_alu|dut_mul_s|m_not[8]~17\ & VCC)) # (!\dut_alu|dut_mul_s|A\(9) & (!\dut_alu|dut_mul_s|m_not[8]~17\))))
-- \dut_alu|dut_mul_s|m_not[9]~19\ = CARRY((\d1|src1_d\(9) & ((!\dut_alu|dut_mul_s|m_not[8]~17\) # (!\dut_alu|dut_mul_s|A\(9)))) # (!\d1|src1_d\(9) & (!\dut_alu|dut_mul_s|A\(9) & !\dut_alu|dut_mul_s|m_not[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(9),
	datab => \dut_alu|dut_mul_s|A\(9),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[8]~17\,
	combout => \dut_alu|dut_mul_s|m_not[9]~18_combout\,
	cout => \dut_alu|dut_mul_s|m_not[9]~19\);

-- Location: LCCOMB_X92_Y47_N26
\dut_alu|dut_mul_s|q0~0\ : cycloneive_lcell_comb
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

-- Location: FF_X92_Y47_N27
\dut_alu|dut_mul_s|q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q0~q\);

-- Location: LCCOMB_X92_Y45_N0
\dut_alu|dut_mul_s|A_m[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[0]~0_combout\ = (\d1|src1_d\(0) & (\dut_alu|dut_mul_s|A\(0) $ (VCC))) # (!\d1|src1_d\(0) & (\dut_alu|dut_mul_s|A\(0) & VCC))
-- \dut_alu|dut_mul_s|A_m[0]~1\ = CARRY((\d1|src1_d\(0) & \dut_alu|dut_mul_s|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(0),
	datab => \dut_alu|dut_mul_s|A\(0),
	datad => VCC,
	combout => \dut_alu|dut_mul_s|A_m[0]~0_combout\,
	cout => \dut_alu|dut_mul_s|A_m[0]~1\);

-- Location: LCCOMB_X92_Y45_N2
\dut_alu|dut_mul_s|A_m[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[1]~2_combout\ = (\dut_alu|dut_mul_s|A\(1) & ((\d1|src1_d\(1) & (\dut_alu|dut_mul_s|A_m[0]~1\ & VCC)) # (!\d1|src1_d\(1) & (!\dut_alu|dut_mul_s|A_m[0]~1\)))) # (!\dut_alu|dut_mul_s|A\(1) & ((\d1|src1_d\(1) & 
-- (!\dut_alu|dut_mul_s|A_m[0]~1\)) # (!\d1|src1_d\(1) & ((\dut_alu|dut_mul_s|A_m[0]~1\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[1]~3\ = CARRY((\dut_alu|dut_mul_s|A\(1) & (!\d1|src1_d\(1) & !\dut_alu|dut_mul_s|A_m[0]~1\)) # (!\dut_alu|dut_mul_s|A\(1) & ((!\dut_alu|dut_mul_s|A_m[0]~1\) # (!\d1|src1_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(1),
	datab => \d1|src1_d\(1),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[0]~1\,
	combout => \dut_alu|dut_mul_s|A_m[1]~2_combout\,
	cout => \dut_alu|dut_mul_s|A_m[1]~3\);

-- Location: LCCOMB_X92_Y45_N4
\dut_alu|dut_mul_s|A_m[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[2]~4_combout\ = ((\d1|src1_d\(2) $ (\dut_alu|dut_mul_s|A\(2) $ (!\dut_alu|dut_mul_s|A_m[1]~3\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[2]~5\ = CARRY((\d1|src1_d\(2) & ((\dut_alu|dut_mul_s|A\(2)) # (!\dut_alu|dut_mul_s|A_m[1]~3\))) # (!\d1|src1_d\(2) & (\dut_alu|dut_mul_s|A\(2) & !\dut_alu|dut_mul_s|A_m[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(2),
	datab => \dut_alu|dut_mul_s|A\(2),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[1]~3\,
	combout => \dut_alu|dut_mul_s|A_m[2]~4_combout\,
	cout => \dut_alu|dut_mul_s|A_m[2]~5\);

-- Location: LCCOMB_X92_Y45_N6
\dut_alu|dut_mul_s|A_m[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[3]~6_combout\ = (\dut_alu|dut_mul_s|A\(3) & ((\d1|src1_d\(3) & (\dut_alu|dut_mul_s|A_m[2]~5\ & VCC)) # (!\d1|src1_d\(3) & (!\dut_alu|dut_mul_s|A_m[2]~5\)))) # (!\dut_alu|dut_mul_s|A\(3) & ((\d1|src1_d\(3) & 
-- (!\dut_alu|dut_mul_s|A_m[2]~5\)) # (!\d1|src1_d\(3) & ((\dut_alu|dut_mul_s|A_m[2]~5\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[3]~7\ = CARRY((\dut_alu|dut_mul_s|A\(3) & (!\d1|src1_d\(3) & !\dut_alu|dut_mul_s|A_m[2]~5\)) # (!\dut_alu|dut_mul_s|A\(3) & ((!\dut_alu|dut_mul_s|A_m[2]~5\) # (!\d1|src1_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(3),
	datab => \d1|src1_d\(3),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[2]~5\,
	combout => \dut_alu|dut_mul_s|A_m[3]~6_combout\,
	cout => \dut_alu|dut_mul_s|A_m[3]~7\);

-- Location: LCCOMB_X92_Y45_N8
\dut_alu|dut_mul_s|A_m[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[4]~8_combout\ = ((\d1|src1_d\(4) $ (\dut_alu|dut_mul_s|A\(4) $ (!\dut_alu|dut_mul_s|A_m[3]~7\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[4]~9\ = CARRY((\d1|src1_d\(4) & ((\dut_alu|dut_mul_s|A\(4)) # (!\dut_alu|dut_mul_s|A_m[3]~7\))) # (!\d1|src1_d\(4) & (\dut_alu|dut_mul_s|A\(4) & !\dut_alu|dut_mul_s|A_m[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(4),
	datab => \dut_alu|dut_mul_s|A\(4),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[3]~7\,
	combout => \dut_alu|dut_mul_s|A_m[4]~8_combout\,
	cout => \dut_alu|dut_mul_s|A_m[4]~9\);

-- Location: LCCOMB_X92_Y45_N10
\dut_alu|dut_mul_s|A_m[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[5]~10_combout\ = (\d1|src1_d\(5) & ((\dut_alu|dut_mul_s|A\(5) & (\dut_alu|dut_mul_s|A_m[4]~9\ & VCC)) # (!\dut_alu|dut_mul_s|A\(5) & (!\dut_alu|dut_mul_s|A_m[4]~9\)))) # (!\d1|src1_d\(5) & ((\dut_alu|dut_mul_s|A\(5) & 
-- (!\dut_alu|dut_mul_s|A_m[4]~9\)) # (!\dut_alu|dut_mul_s|A\(5) & ((\dut_alu|dut_mul_s|A_m[4]~9\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[5]~11\ = CARRY((\d1|src1_d\(5) & (!\dut_alu|dut_mul_s|A\(5) & !\dut_alu|dut_mul_s|A_m[4]~9\)) # (!\d1|src1_d\(5) & ((!\dut_alu|dut_mul_s|A_m[4]~9\) # (!\dut_alu|dut_mul_s|A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(5),
	datab => \dut_alu|dut_mul_s|A\(5),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[4]~9\,
	combout => \dut_alu|dut_mul_s|A_m[5]~10_combout\,
	cout => \dut_alu|dut_mul_s|A_m[5]~11\);

-- Location: LCCOMB_X92_Y45_N12
\dut_alu|dut_mul_s|A_m[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[6]~12_combout\ = ((\d1|src1_d\(6) $ (\dut_alu|dut_mul_s|A\(6) $ (!\dut_alu|dut_mul_s|A_m[5]~11\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[6]~13\ = CARRY((\d1|src1_d\(6) & ((\dut_alu|dut_mul_s|A\(6)) # (!\dut_alu|dut_mul_s|A_m[5]~11\))) # (!\d1|src1_d\(6) & (\dut_alu|dut_mul_s|A\(6) & !\dut_alu|dut_mul_s|A_m[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(6),
	datab => \dut_alu|dut_mul_s|A\(6),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[5]~11\,
	combout => \dut_alu|dut_mul_s|A_m[6]~12_combout\,
	cout => \dut_alu|dut_mul_s|A_m[6]~13\);

-- Location: LCCOMB_X92_Y45_N14
\dut_alu|dut_mul_s|A_m[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[7]~14_combout\ = (\dut_alu|dut_mul_s|A\(7) & ((\d1|src1_d\(7) & (\dut_alu|dut_mul_s|A_m[6]~13\ & VCC)) # (!\d1|src1_d\(7) & (!\dut_alu|dut_mul_s|A_m[6]~13\)))) # (!\dut_alu|dut_mul_s|A\(7) & ((\d1|src1_d\(7) & 
-- (!\dut_alu|dut_mul_s|A_m[6]~13\)) # (!\d1|src1_d\(7) & ((\dut_alu|dut_mul_s|A_m[6]~13\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[7]~15\ = CARRY((\dut_alu|dut_mul_s|A\(7) & (!\d1|src1_d\(7) & !\dut_alu|dut_mul_s|A_m[6]~13\)) # (!\dut_alu|dut_mul_s|A\(7) & ((!\dut_alu|dut_mul_s|A_m[6]~13\) # (!\d1|src1_d\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(7),
	datab => \d1|src1_d\(7),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[6]~13\,
	combout => \dut_alu|dut_mul_s|A_m[7]~14_combout\,
	cout => \dut_alu|dut_mul_s|A_m[7]~15\);

-- Location: LCCOMB_X92_Y45_N16
\dut_alu|dut_mul_s|A_m[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[8]~16_combout\ = ((\dut_alu|dut_mul_s|A\(8) $ (\d1|src1_d\(8) $ (!\dut_alu|dut_mul_s|A_m[7]~15\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[8]~17\ = CARRY((\dut_alu|dut_mul_s|A\(8) & ((\d1|src1_d\(8)) # (!\dut_alu|dut_mul_s|A_m[7]~15\))) # (!\dut_alu|dut_mul_s|A\(8) & (\d1|src1_d\(8) & !\dut_alu|dut_mul_s|A_m[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(8),
	datab => \d1|src1_d\(8),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[7]~15\,
	combout => \dut_alu|dut_mul_s|A_m[8]~16_combout\,
	cout => \dut_alu|dut_mul_s|A_m[8]~17\);

-- Location: LCCOMB_X92_Y45_N18
\dut_alu|dut_mul_s|A_m[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[9]~18_combout\ = (\dut_alu|dut_mul_s|A\(9) & ((\d1|src1_d\(9) & (\dut_alu|dut_mul_s|A_m[8]~17\ & VCC)) # (!\d1|src1_d\(9) & (!\dut_alu|dut_mul_s|A_m[8]~17\)))) # (!\dut_alu|dut_mul_s|A\(9) & ((\d1|src1_d\(9) & 
-- (!\dut_alu|dut_mul_s|A_m[8]~17\)) # (!\d1|src1_d\(9) & ((\dut_alu|dut_mul_s|A_m[8]~17\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[9]~19\ = CARRY((\dut_alu|dut_mul_s|A\(9) & (!\d1|src1_d\(9) & !\dut_alu|dut_mul_s|A_m[8]~17\)) # (!\dut_alu|dut_mul_s|A\(9) & ((!\dut_alu|dut_mul_s|A_m[8]~17\) # (!\d1|src1_d\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(9),
	datab => \d1|src1_d\(9),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[8]~17\,
	combout => \dut_alu|dut_mul_s|A_m[9]~18_combout\,
	cout => \dut_alu|dut_mul_s|A_m[9]~19\);

-- Location: LCCOMB_X90_Y49_N30
\dut_alu|dut_mul_s|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~6_combout\ = (\dut_alu|dut_mul_s|q\(0) & (\dut_alu|dut_mul_s|m_not[9]~18_combout\ & (!\dut_alu|dut_mul_s|q0~q\))) # (!\dut_alu|dut_mul_s|q\(0) & (((\dut_alu|dut_mul_s|q0~q\ & \dut_alu|dut_mul_s|A_m[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|m_not[9]~18_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|A_m[9]~18_combout\,
	combout => \dut_alu|dut_mul_s|Add2~6_combout\);

-- Location: LCCOMB_X90_Y49_N14
\dut_alu|dut_mul_s|Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~7_combout\ = (\dut_alu|dut_mul_s|Add2~6_combout\) # ((\dut_alu|dut_mul_s|A\(9) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|Add2~6_combout\,
	datab => \dut_alu|dut_mul_s|A\(9),
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~7_combout\);

-- Location: FF_X90_Y49_N15
\dut_alu|dut_mul_s|A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~7_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(8));

-- Location: LCCOMB_X90_Y49_N22
\dut_alu|dut_mul_s|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~14_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A_m[8]~16_combout\ & ((!\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|m_not[8]~16_combout\ & \dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A_m[8]~16_combout\,
	datab => \dut_alu|dut_mul_s|m_not[8]~16_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~14_combout\);

-- Location: LCCOMB_X90_Y49_N6
\dut_alu|dut_mul_s|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~15_combout\ = (\dut_alu|dut_mul_s|Add2~14_combout\) # ((\dut_alu|dut_mul_s|A\(8) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|Add2~14_combout\,
	datab => \dut_alu|dut_mul_s|A\(8),
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~15_combout\);

-- Location: FF_X90_Y49_N7
\dut_alu|dut_mul_s|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~15_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(7));

-- Location: LCCOMB_X85_Y45_N0
\dut_alu|dut_mul_s|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~16_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A_m[7]~14_combout\ & ((!\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|m_not[7]~14_combout\ & \dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A_m[7]~14_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|m_not[7]~14_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~16_combout\);

-- Location: LCCOMB_X85_Y45_N24
\dut_alu|dut_mul_s|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~17_combout\ = (\dut_alu|dut_mul_s|Add2~16_combout\) # ((\dut_alu|dut_mul_s|A\(7) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|Add2~16_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|A\(7),
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~17_combout\);

-- Location: FF_X85_Y45_N25
\dut_alu|dut_mul_s|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~17_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(6));

-- Location: LCCOMB_X85_Y45_N10
\dut_alu|dut_mul_s|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~18_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A_m[6]~12_combout\ & ((!\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|m_not[6]~12_combout\ & \dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A_m[6]~12_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|m_not[6]~12_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~18_combout\);

-- Location: LCCOMB_X85_Y45_N18
\dut_alu|dut_mul_s|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~19_combout\ = (\dut_alu|dut_mul_s|Add2~18_combout\) # ((\dut_alu|dut_mul_s|A\(6) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|Add2~18_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|A\(6),
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~19_combout\);

-- Location: FF_X85_Y45_N19
\dut_alu|dut_mul_s|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~19_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(5));

-- Location: LCCOMB_X85_Y45_N4
\dut_alu|dut_mul_s|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~20_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|A_m[5]~10_combout\ & !\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|m_not[5]~10_combout\ & ((\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|m_not[5]~10_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|A_m[5]~10_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~20_combout\);

-- Location: LCCOMB_X85_Y45_N20
\dut_alu|dut_mul_s|Add2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~21_combout\ = (\dut_alu|dut_mul_s|Add2~20_combout\) # ((\dut_alu|dut_mul_s|A\(5) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(5),
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|Add2~20_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~21_combout\);

-- Location: FF_X85_Y45_N21
\dut_alu|dut_mul_s|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~21_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(4));

-- Location: LCCOMB_X85_Y45_N30
\dut_alu|dut_mul_s|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~22_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A_m[4]~8_combout\ & ((!\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|m_not[4]~8_combout\ & \dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A_m[4]~8_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|m_not[4]~8_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~22_combout\);

-- Location: LCCOMB_X85_Y45_N14
\dut_alu|dut_mul_s|Add2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~23_combout\ = (\dut_alu|dut_mul_s|Add2~22_combout\) # ((\dut_alu|dut_mul_s|A\(4) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(4),
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|Add2~22_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~23_combout\);

-- Location: FF_X85_Y45_N15
\dut_alu|dut_mul_s|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~23_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(3));

-- Location: LCCOMB_X85_Y45_N16
\dut_alu|dut_mul_s|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~24_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|A_m[3]~6_combout\ & !\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|m_not[3]~6_combout\ & ((\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|m_not[3]~6_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|A_m[3]~6_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~24_combout\);

-- Location: LCCOMB_X85_Y45_N8
\dut_alu|dut_mul_s|Add2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~25_combout\ = (\dut_alu|dut_mul_s|Add2~24_combout\) # ((\dut_alu|dut_mul_s|A\(3) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|Add2~24_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|A\(3),
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~25_combout\);

-- Location: FF_X85_Y45_N9
\dut_alu|dut_mul_s|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~25_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(2));

-- Location: LCCOMB_X85_Y45_N2
\dut_alu|dut_mul_s|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~26_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A_m[2]~4_combout\ & ((!\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|m_not[2]~4_combout\ & \dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A_m[2]~4_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|m_not[2]~4_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~26_combout\);

-- Location: LCCOMB_X85_Y45_N26
\dut_alu|dut_mul_s|Add2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~27_combout\ = (\dut_alu|dut_mul_s|Add2~26_combout\) # ((\dut_alu|dut_mul_s|A\(2) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|Add2~26_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|A\(2),
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~27_combout\);

-- Location: FF_X85_Y45_N27
\dut_alu|dut_mul_s|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~27_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(1));

-- Location: LCCOMB_X85_Y45_N28
\dut_alu|dut_mul_s|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~28_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A_m[1]~2_combout\ & ((!\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|m_not[1]~2_combout\ & \dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A_m[1]~2_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|m_not[1]~2_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~28_combout\);

-- Location: LCCOMB_X85_Y45_N12
\dut_alu|dut_mul_s|Add2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~29_combout\ = (\dut_alu|dut_mul_s|Add2~28_combout\) # ((\dut_alu|dut_mul_s|A\(1) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|Add2~28_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|A\(1),
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~29_combout\);

-- Location: FF_X85_Y45_N13
\dut_alu|dut_mul_s|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~29_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(0));

-- Location: LCCOMB_X85_Y45_N22
\dut_alu|dut_mul_s|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~30_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A_m[0]~0_combout\ & ((!\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|m_not[0]~0_combout\ & \dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A_m[0]~0_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|m_not[0]~0_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~30_combout\);

-- Location: LCCOMB_X87_Y49_N12
\dut_alu|dut_mul_s|Add2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~31_combout\ = (\dut_alu|dut_mul_s|Add2~30_combout\) # ((\dut_alu|dut_mul_s|A\(0) & (\dut_alu|dut_mul_s|q\(0) $ (!\dut_alu|dut_mul_s|q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|Add2~30_combout\,
	datab => \dut_alu|dut_mul_s|A\(0),
	datac => \dut_alu|dut_mul_s|q\(0),
	datad => \dut_alu|dut_mul_s|q0~q\,
	combout => \dut_alu|dut_mul_s|Add2~31_combout\);

-- Location: LCCOMB_X87_Y49_N16
\dut_alu|dut_mul_s|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q[15]~feeder_combout\ = \dut_alu|dut_mul_s|Add2~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|Add2~31_combout\,
	combout => \dut_alu|dut_mul_s|q[15]~feeder_combout\);

-- Location: FF_X87_Y49_N17
\dut_alu|dut_mul_s|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q[15]~feeder_combout\,
	asdata => \d1|src2_d\(15),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(15));

-- Location: LCCOMB_X87_Y49_N18
\dut_alu|dut_mul_s|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~6_combout\ = (\dut_alu|dut_mul_s|state~q\ & (\dut_alu|dut_mul_s|q\(15))) # (!\dut_alu|dut_mul_s|state~q\ & ((\d1|src2_d\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|state~q\,
	datab => \dut_alu|dut_mul_s|q\(15),
	datad => \d1|src2_d\(14),
	combout => \dut_alu|dut_mul_s|q~6_combout\);

-- Location: FF_X87_Y49_N19
\dut_alu|dut_mul_s|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~6_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(14));

-- Location: LCCOMB_X92_Y47_N12
\dut_alu|dut_mul_s|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~5_combout\ = (\dut_alu|dut_mul_s|state~q\ & (\dut_alu|dut_mul_s|q\(14))) # (!\dut_alu|dut_mul_s|state~q\ & ((\d1|src2_d\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|state~q\,
	datac => \dut_alu|dut_mul_s|q\(14),
	datad => \d1|src2_d\(13),
	combout => \dut_alu|dut_mul_s|q~5_combout\);

-- Location: FF_X92_Y47_N13
\dut_alu|dut_mul_s|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~5_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(13));

-- Location: LCCOMB_X92_Y47_N16
\dut_alu|dut_mul_s|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~3_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(13)))) # (!\dut_alu|dut_mul_s|state~q\ & (\d1|src2_d\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(12),
	datac => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|q\(13),
	combout => \dut_alu|dut_mul_s|q~3_combout\);

-- Location: FF_X92_Y47_N17
\dut_alu|dut_mul_s|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(12));

-- Location: LCCOMB_X92_Y47_N14
\dut_alu|dut_mul_s|q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~11_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(12)))) # (!\dut_alu|dut_mul_s|state~q\ & (\d1|src2_d\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|state~q\,
	datac => \d1|src2_d\(11),
	datad => \dut_alu|dut_mul_s|q\(12),
	combout => \dut_alu|dut_mul_s|q~11_combout\);

-- Location: FF_X92_Y47_N15
\dut_alu|dut_mul_s|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~11_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(11));

-- Location: LCCOMB_X92_Y47_N4
\dut_alu|dut_mul_s|q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~10_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(11)))) # (!\dut_alu|dut_mul_s|state~q\ & (\d1|src2_d\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(10),
	datab => \dut_alu|dut_mul_s|state~q\,
	datac => \dut_alu|dut_mul_s|q\(11),
	combout => \dut_alu|dut_mul_s|q~10_combout\);

-- Location: FF_X92_Y47_N5
\dut_alu|dut_mul_s|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~10_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(10));

-- Location: LCCOMB_X92_Y47_N10
\dut_alu|dut_mul_s|q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~9_combout\ = (\dut_alu|dut_mul_s|state~q\ & (\dut_alu|dut_mul_s|q\(10))) # (!\dut_alu|dut_mul_s|state~q\ & ((\d1|src2_d\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|state~q\,
	datac => \dut_alu|dut_mul_s|q\(10),
	datad => \d1|src2_d\(9),
	combout => \dut_alu|dut_mul_s|q~9_combout\);

-- Location: FF_X92_Y47_N11
\dut_alu|dut_mul_s|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~9_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(9));

-- Location: LCCOMB_X92_Y47_N6
\dut_alu|dut_mul_s|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~7_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(9)))) # (!\dut_alu|dut_mul_s|state~q\ & (\d1|src2_d\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(8),
	datab => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|q\(9),
	combout => \dut_alu|dut_mul_s|q~7_combout\);

-- Location: FF_X92_Y47_N7
\dut_alu|dut_mul_s|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~7_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(8));

-- Location: LCCOMB_X92_Y47_N28
\dut_alu|dut_mul_s|q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~14_combout\ = (\dut_alu|dut_mul_s|state~q\ & (\dut_alu|dut_mul_s|q\(8))) # (!\dut_alu|dut_mul_s|state~q\ & ((\d1|src2_d\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|state~q\,
	datac => \dut_alu|dut_mul_s|q\(8),
	datad => \d1|src2_d\(7),
	combout => \dut_alu|dut_mul_s|q~14_combout\);

-- Location: FF_X92_Y47_N29
\dut_alu|dut_mul_s|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~14_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(7));

-- Location: LCCOMB_X92_Y47_N2
\dut_alu|dut_mul_s|q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~13_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(7)))) # (!\dut_alu|dut_mul_s|state~q\ & (\d1|src2_d\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|state~q\,
	datac => \d1|src2_d\(6),
	datad => \dut_alu|dut_mul_s|q\(7),
	combout => \dut_alu|dut_mul_s|q~13_combout\);

-- Location: FF_X92_Y47_N3
\dut_alu|dut_mul_s|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~13_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(6));

-- Location: LCCOMB_X92_Y47_N0
\dut_alu|dut_mul_s|q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~12_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(6)))) # (!\dut_alu|dut_mul_s|state~q\ & (\d1|src2_d\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|state~q\,
	datac => \d1|src2_d\(5),
	datad => \dut_alu|dut_mul_s|q\(6),
	combout => \dut_alu|dut_mul_s|q~12_combout\);

-- Location: FF_X92_Y47_N1
\dut_alu|dut_mul_s|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~12_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(5));

-- Location: LCCOMB_X92_Y47_N24
\dut_alu|dut_mul_s|q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~8_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(5)))) # (!\dut_alu|dut_mul_s|state~q\ & (\d1|src2_d\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(4),
	datac => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|q\(5),
	combout => \dut_alu|dut_mul_s|q~8_combout\);

-- Location: FF_X92_Y47_N25
\dut_alu|dut_mul_s|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~8_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(4));

-- Location: LCCOMB_X92_Y47_N18
\dut_alu|dut_mul_s|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~4_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(4)))) # (!\dut_alu|dut_mul_s|state~q\ & (\d1|src2_d\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|state~q\,
	datac => \d1|src2_d\(3),
	datad => \dut_alu|dut_mul_s|q\(4),
	combout => \dut_alu|dut_mul_s|q~4_combout\);

-- Location: FF_X92_Y47_N19
\dut_alu|dut_mul_s|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(3));

-- Location: LCCOMB_X92_Y47_N22
\dut_alu|dut_mul_s|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~2_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(3)))) # (!\dut_alu|dut_mul_s|state~q\ & (\d1|src2_d\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(2),
	datac => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|q\(3),
	combout => \dut_alu|dut_mul_s|q~2_combout\);

-- Location: FF_X92_Y47_N23
\dut_alu|dut_mul_s|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(2));

-- Location: LCCOMB_X92_Y47_N20
\dut_alu|dut_mul_s|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~1_combout\ = (\dut_alu|dut_mul_s|state~q\ & (\dut_alu|dut_mul_s|q\(2))) # (!\dut_alu|dut_mul_s|state~q\ & ((\d1|src2_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(2),
	datab => \d1|src2_d\(1),
	datac => \dut_alu|dut_mul_s|state~q\,
	combout => \dut_alu|dut_mul_s|q~1_combout\);

-- Location: FF_X92_Y47_N21
\dut_alu|dut_mul_s|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(1));

-- Location: LCCOMB_X92_Y47_N8
\dut_alu|dut_mul_s|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|q~0_combout\ = (\dut_alu|dut_mul_s|state~q\ & ((\dut_alu|dut_mul_s|q\(1)))) # (!\dut_alu|dut_mul_s|state~q\ & (\d1|src2_d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(0),
	datac => \dut_alu|dut_mul_s|state~q\,
	datad => \dut_alu|dut_mul_s|q\(1),
	combout => \dut_alu|dut_mul_s|q~0_combout\);

-- Location: FF_X92_Y47_N9
\dut_alu|dut_mul_s|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|q~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|q\(0));

-- Location: LCCOMB_X92_Y45_N20
\dut_alu|dut_mul_s|A_m[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[10]~20_combout\ = ((\d1|src1_d\(10) $ (\dut_alu|dut_mul_s|A\(10) $ (!\dut_alu|dut_mul_s|A_m[9]~19\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[10]~21\ = CARRY((\d1|src1_d\(10) & ((\dut_alu|dut_mul_s|A\(10)) # (!\dut_alu|dut_mul_s|A_m[9]~19\))) # (!\d1|src1_d\(10) & (\dut_alu|dut_mul_s|A\(10) & !\dut_alu|dut_mul_s|A_m[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(10),
	datab => \dut_alu|dut_mul_s|A\(10),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[9]~19\,
	combout => \dut_alu|dut_mul_s|A_m[10]~20_combout\,
	cout => \dut_alu|dut_mul_s|A_m[10]~21\);

-- Location: LCCOMB_X92_Y45_N22
\dut_alu|dut_mul_s|A_m[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[11]~22_combout\ = (\dut_alu|dut_mul_s|A\(11) & ((\d1|src1_d\(11) & (\dut_alu|dut_mul_s|A_m[10]~21\ & VCC)) # (!\d1|src1_d\(11) & (!\dut_alu|dut_mul_s|A_m[10]~21\)))) # (!\dut_alu|dut_mul_s|A\(11) & ((\d1|src1_d\(11) & 
-- (!\dut_alu|dut_mul_s|A_m[10]~21\)) # (!\d1|src1_d\(11) & ((\dut_alu|dut_mul_s|A_m[10]~21\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[11]~23\ = CARRY((\dut_alu|dut_mul_s|A\(11) & (!\d1|src1_d\(11) & !\dut_alu|dut_mul_s|A_m[10]~21\)) # (!\dut_alu|dut_mul_s|A\(11) & ((!\dut_alu|dut_mul_s|A_m[10]~21\) # (!\d1|src1_d\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(11),
	datab => \d1|src1_d\(11),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[10]~21\,
	combout => \dut_alu|dut_mul_s|A_m[11]~22_combout\,
	cout => \dut_alu|dut_mul_s|A_m[11]~23\);

-- Location: LCCOMB_X92_Y45_N24
\dut_alu|dut_mul_s|A_m[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[12]~24_combout\ = ((\d1|src1_d\(12) $ (\dut_alu|dut_mul_s|A\(12) $ (!\dut_alu|dut_mul_s|A_m[11]~23\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[12]~25\ = CARRY((\d1|src1_d\(12) & ((\dut_alu|dut_mul_s|A\(12)) # (!\dut_alu|dut_mul_s|A_m[11]~23\))) # (!\d1|src1_d\(12) & (\dut_alu|dut_mul_s|A\(12) & !\dut_alu|dut_mul_s|A_m[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(12),
	datab => \dut_alu|dut_mul_s|A\(12),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[11]~23\,
	combout => \dut_alu|dut_mul_s|A_m[12]~24_combout\,
	cout => \dut_alu|dut_mul_s|A_m[12]~25\);

-- Location: LCCOMB_X92_Y45_N26
\dut_alu|dut_mul_s|A_m[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[13]~26_combout\ = (\d1|src1_d\(13) & ((\dut_alu|dut_mul_s|A\(13) & (\dut_alu|dut_mul_s|A_m[12]~25\ & VCC)) # (!\dut_alu|dut_mul_s|A\(13) & (!\dut_alu|dut_mul_s|A_m[12]~25\)))) # (!\d1|src1_d\(13) & ((\dut_alu|dut_mul_s|A\(13) & 
-- (!\dut_alu|dut_mul_s|A_m[12]~25\)) # (!\dut_alu|dut_mul_s|A\(13) & ((\dut_alu|dut_mul_s|A_m[12]~25\) # (GND)))))
-- \dut_alu|dut_mul_s|A_m[13]~27\ = CARRY((\d1|src1_d\(13) & (!\dut_alu|dut_mul_s|A\(13) & !\dut_alu|dut_mul_s|A_m[12]~25\)) # (!\d1|src1_d\(13) & ((!\dut_alu|dut_mul_s|A_m[12]~25\) # (!\dut_alu|dut_mul_s|A\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(13),
	datab => \dut_alu|dut_mul_s|A\(13),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[12]~25\,
	combout => \dut_alu|dut_mul_s|A_m[13]~26_combout\,
	cout => \dut_alu|dut_mul_s|A_m[13]~27\);

-- Location: LCCOMB_X92_Y45_N28
\dut_alu|dut_mul_s|A_m[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[14]~28_combout\ = ((\dut_alu|dut_mul_s|A\(15) $ (\d1|src1_d\(14) $ (!\dut_alu|dut_mul_s|A_m[13]~27\)))) # (GND)
-- \dut_alu|dut_mul_s|A_m[14]~29\ = CARRY((\dut_alu|dut_mul_s|A\(15) & ((\d1|src1_d\(14)) # (!\dut_alu|dut_mul_s|A_m[13]~27\))) # (!\dut_alu|dut_mul_s|A\(15) & (\d1|src1_d\(14) & !\dut_alu|dut_mul_s|A_m[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(15),
	datab => \d1|src1_d\(14),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|A_m[13]~27\,
	combout => \dut_alu|dut_mul_s|A_m[14]~28_combout\,
	cout => \dut_alu|dut_mul_s|A_m[14]~29\);

-- Location: LCCOMB_X92_Y45_N30
\dut_alu|dut_mul_s|A_m[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|A_m[15]~30_combout\ = \dut_alu|dut_mul_s|A\(15) $ (\dut_alu|dut_mul_s|A_m[14]~29\ $ (\d1|src1_d\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_s|A\(15),
	datad => \d1|src1_d\(15),
	cin => \dut_alu|dut_mul_s|A_m[14]~29\,
	combout => \dut_alu|dut_mul_s|A_m[15]~30_combout\);

-- Location: LCCOMB_X89_Y45_N20
\dut_alu|dut_mul_s|m_not[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[10]~20_combout\ = ((\d1|src1_d\(10) $ (\dut_alu|dut_mul_s|A\(10) $ (\dut_alu|dut_mul_s|m_not[9]~19\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[10]~21\ = CARRY((\d1|src1_d\(10) & (\dut_alu|dut_mul_s|A\(10) & !\dut_alu|dut_mul_s|m_not[9]~19\)) # (!\d1|src1_d\(10) & ((\dut_alu|dut_mul_s|A\(10)) # (!\dut_alu|dut_mul_s|m_not[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(10),
	datab => \dut_alu|dut_mul_s|A\(10),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[9]~19\,
	combout => \dut_alu|dut_mul_s|m_not[10]~20_combout\,
	cout => \dut_alu|dut_mul_s|m_not[10]~21\);

-- Location: LCCOMB_X89_Y45_N22
\dut_alu|dut_mul_s|m_not[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[11]~22_combout\ = (\dut_alu|dut_mul_s|A\(11) & ((\d1|src1_d\(11) & (!\dut_alu|dut_mul_s|m_not[10]~21\)) # (!\d1|src1_d\(11) & (\dut_alu|dut_mul_s|m_not[10]~21\ & VCC)))) # (!\dut_alu|dut_mul_s|A\(11) & ((\d1|src1_d\(11) & 
-- ((\dut_alu|dut_mul_s|m_not[10]~21\) # (GND))) # (!\d1|src1_d\(11) & (!\dut_alu|dut_mul_s|m_not[10]~21\))))
-- \dut_alu|dut_mul_s|m_not[11]~23\ = CARRY((\dut_alu|dut_mul_s|A\(11) & (\d1|src1_d\(11) & !\dut_alu|dut_mul_s|m_not[10]~21\)) # (!\dut_alu|dut_mul_s|A\(11) & ((\d1|src1_d\(11)) # (!\dut_alu|dut_mul_s|m_not[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(11),
	datab => \d1|src1_d\(11),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[10]~21\,
	combout => \dut_alu|dut_mul_s|m_not[11]~22_combout\,
	cout => \dut_alu|dut_mul_s|m_not[11]~23\);

-- Location: LCCOMB_X89_Y45_N24
\dut_alu|dut_mul_s|m_not[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[12]~24_combout\ = ((\d1|src1_d\(12) $ (\dut_alu|dut_mul_s|A\(12) $ (\dut_alu|dut_mul_s|m_not[11]~23\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[12]~25\ = CARRY((\d1|src1_d\(12) & (\dut_alu|dut_mul_s|A\(12) & !\dut_alu|dut_mul_s|m_not[11]~23\)) # (!\d1|src1_d\(12) & ((\dut_alu|dut_mul_s|A\(12)) # (!\dut_alu|dut_mul_s|m_not[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(12),
	datab => \dut_alu|dut_mul_s|A\(12),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[11]~23\,
	combout => \dut_alu|dut_mul_s|m_not[12]~24_combout\,
	cout => \dut_alu|dut_mul_s|m_not[12]~25\);

-- Location: LCCOMB_X89_Y45_N26
\dut_alu|dut_mul_s|m_not[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[13]~26_combout\ = (\dut_alu|dut_mul_s|A\(13) & ((\d1|src1_d\(13) & (!\dut_alu|dut_mul_s|m_not[12]~25\)) # (!\d1|src1_d\(13) & (\dut_alu|dut_mul_s|m_not[12]~25\ & VCC)))) # (!\dut_alu|dut_mul_s|A\(13) & ((\d1|src1_d\(13) & 
-- ((\dut_alu|dut_mul_s|m_not[12]~25\) # (GND))) # (!\d1|src1_d\(13) & (!\dut_alu|dut_mul_s|m_not[12]~25\))))
-- \dut_alu|dut_mul_s|m_not[13]~27\ = CARRY((\dut_alu|dut_mul_s|A\(13) & (\d1|src1_d\(13) & !\dut_alu|dut_mul_s|m_not[12]~25\)) # (!\dut_alu|dut_mul_s|A\(13) & ((\d1|src1_d\(13)) # (!\dut_alu|dut_mul_s|m_not[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(13),
	datab => \d1|src1_d\(13),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[12]~25\,
	combout => \dut_alu|dut_mul_s|m_not[13]~26_combout\,
	cout => \dut_alu|dut_mul_s|m_not[13]~27\);

-- Location: LCCOMB_X89_Y45_N28
\dut_alu|dut_mul_s|m_not[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[14]~28_combout\ = ((\d1|src1_d\(14) $ (\dut_alu|dut_mul_s|A\(15) $ (\dut_alu|dut_mul_s|m_not[13]~27\)))) # (GND)
-- \dut_alu|dut_mul_s|m_not[14]~29\ = CARRY((\d1|src1_d\(14) & (\dut_alu|dut_mul_s|A\(15) & !\dut_alu|dut_mul_s|m_not[13]~27\)) # (!\d1|src1_d\(14) & ((\dut_alu|dut_mul_s|A\(15)) # (!\dut_alu|dut_mul_s|m_not[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(14),
	datab => \dut_alu|dut_mul_s|A\(15),
	datad => VCC,
	cin => \dut_alu|dut_mul_s|m_not[13]~27\,
	combout => \dut_alu|dut_mul_s|m_not[14]~28_combout\,
	cout => \dut_alu|dut_mul_s|m_not[14]~29\);

-- Location: LCCOMB_X89_Y45_N30
\dut_alu|dut_mul_s|m_not[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|m_not[15]~30_combout\ = \d1|src1_d\(15) $ (\dut_alu|dut_mul_s|A\(15) $ (!\dut_alu|dut_mul_s|m_not[14]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(15),
	datab => \dut_alu|dut_mul_s|A\(15),
	cin => \dut_alu|dut_mul_s|m_not[14]~29\,
	combout => \dut_alu|dut_mul_s|m_not[15]~30_combout\);

-- Location: LCCOMB_X90_Y49_N12
\dut_alu|dut_mul_s|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~4_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|A_m[15]~30_combout\ & ((!\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|m_not[15]~30_combout\ & \dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A_m[15]~30_combout\,
	datab => \dut_alu|dut_mul_s|m_not[15]~30_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~4_combout\);

-- Location: LCCOMB_X90_Y49_N4
\dut_alu|dut_mul_s|Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~5_combout\ = (\dut_alu|dut_mul_s|Add2~4_combout\) # ((\dut_alu|dut_mul_s|A\(15) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|Add2~4_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|A\(15),
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~5_combout\);

-- Location: FF_X90_Y49_N5
\dut_alu|dut_mul_s|A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~5_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(15));

-- Location: LCCOMB_X90_Y49_N18
\dut_alu|dut_mul_s|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~2_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|A_m[14]~28_combout\ & !\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|m_not[14]~28_combout\ & ((\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|m_not[14]~28_combout\,
	datab => \dut_alu|dut_mul_s|q0~q\,
	datac => \dut_alu|dut_mul_s|A_m[14]~28_combout\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~2_combout\);

-- Location: LCCOMB_X90_Y49_N2
\dut_alu|dut_mul_s|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~3_combout\ = (\dut_alu|dut_mul_s|Add2~2_combout\) # ((\dut_alu|dut_mul_s|A\(15) & (\dut_alu|dut_mul_s|q\(0) $ (!\dut_alu|dut_mul_s|q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|q\(0),
	datab => \dut_alu|dut_mul_s|A\(15),
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|Add2~2_combout\,
	combout => \dut_alu|dut_mul_s|Add2~3_combout\);

-- Location: FF_X90_Y49_N3
\dut_alu|dut_mul_s|A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~3_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(13));

-- Location: LCCOMB_X90_Y49_N24
\dut_alu|dut_mul_s|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~0_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|A_m[13]~26_combout\ & !\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|m_not[13]~26_combout\ & ((\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|m_not[13]~26_combout\,
	datab => \dut_alu|dut_mul_s|A_m[13]~26_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~0_combout\);

-- Location: LCCOMB_X90_Y49_N16
\dut_alu|dut_mul_s|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~1_combout\ = (\dut_alu|dut_mul_s|Add2~0_combout\) # ((\dut_alu|dut_mul_s|A\(13) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(13),
	datab => \dut_alu|dut_mul_s|Add2~0_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~1_combout\);

-- Location: FF_X90_Y49_N17
\dut_alu|dut_mul_s|A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~1_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(12));

-- Location: LCCOMB_X90_Y49_N8
\dut_alu|dut_mul_s|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~8_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|A_m[12]~24_combout\ & !\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|m_not[12]~24_combout\ & ((\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|m_not[12]~24_combout\,
	datab => \dut_alu|dut_mul_s|A_m[12]~24_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~8_combout\);

-- Location: LCCOMB_X90_Y49_N0
\dut_alu|dut_mul_s|Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~9_combout\ = (\dut_alu|dut_mul_s|Add2~8_combout\) # ((\dut_alu|dut_mul_s|A\(12) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(12),
	datab => \dut_alu|dut_mul_s|Add2~8_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~9_combout\);

-- Location: FF_X90_Y49_N1
\dut_alu|dut_mul_s|A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~9_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(11));

-- Location: LCCOMB_X90_Y49_N26
\dut_alu|dut_mul_s|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~10_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|A_m[11]~22_combout\ & !\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|m_not[11]~22_combout\ & ((\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|m_not[11]~22_combout\,
	datab => \dut_alu|dut_mul_s|A_m[11]~22_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~10_combout\);

-- Location: LCCOMB_X90_Y49_N10
\dut_alu|dut_mul_s|Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~11_combout\ = (\dut_alu|dut_mul_s|Add2~10_combout\) # ((\dut_alu|dut_mul_s|A\(11) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|Add2~10_combout\,
	datab => \dut_alu|dut_mul_s|A\(11),
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~11_combout\);

-- Location: FF_X90_Y49_N11
\dut_alu|dut_mul_s|A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~11_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(10));

-- Location: LCCOMB_X90_Y49_N20
\dut_alu|dut_mul_s|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~12_combout\ = (\dut_alu|dut_mul_s|q0~q\ & (((\dut_alu|dut_mul_s|A_m[10]~20_combout\ & !\dut_alu|dut_mul_s|q\(0))))) # (!\dut_alu|dut_mul_s|q0~q\ & (\dut_alu|dut_mul_s|m_not[10]~20_combout\ & ((\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|m_not[10]~20_combout\,
	datab => \dut_alu|dut_mul_s|A_m[10]~20_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~12_combout\);

-- Location: LCCOMB_X90_Y49_N28
\dut_alu|dut_mul_s|Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|Add2~13_combout\ = (\dut_alu|dut_mul_s|Add2~12_combout\) # ((\dut_alu|dut_mul_s|A\(10) & (\dut_alu|dut_mul_s|q0~q\ $ (!\dut_alu|dut_mul_s|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|A\(10),
	datab => \dut_alu|dut_mul_s|Add2~12_combout\,
	datac => \dut_alu|dut_mul_s|q0~q\,
	datad => \dut_alu|dut_mul_s|q\(0),
	combout => \dut_alu|dut_mul_s|Add2~13_combout\);

-- Location: FF_X90_Y49_N29
\dut_alu|dut_mul_s|A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|Add2~13_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_s|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|A\(9));

-- Location: FF_X95_Y48_N27
\dut_alu|dut_mul_s|result[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(9),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(25));

-- Location: LCCOMB_X87_Y49_N2
\dut_alu|result_d[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[17]~30_combout\ = (\dut_alu|always2~1_combout\) # ((\dut_alu|dut_mul_u|done~combout\ & \dut_alu|dut_divider_u|done~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|done~combout\,
	datac => \dut_alu|dut_divider_u|done~combout\,
	datad => \dut_alu|always2~1_combout\,
	combout => \dut_alu|result_d[17]~30_combout\);

-- Location: LCCOMB_X96_Y48_N16
\dut_alu|dut_mul_u|A_m[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[0]~0_combout\ = (\d1|src1_d\(0) & (\dut_alu|dut_mul_u|A\(0) $ (VCC))) # (!\d1|src1_d\(0) & (\dut_alu|dut_mul_u|A\(0) & VCC))
-- \dut_alu|dut_mul_u|A_m[0]~1\ = CARRY((\d1|src1_d\(0) & \dut_alu|dut_mul_u|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(0),
	datab => \dut_alu|dut_mul_u|A\(0),
	datad => VCC,
	combout => \dut_alu|dut_mul_u|A_m[0]~0_combout\,
	cout => \dut_alu|dut_mul_u|A_m[0]~1\);

-- Location: LCCOMB_X96_Y48_N18
\dut_alu|dut_mul_u|A_m[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[1]~2_combout\ = (\d1|src1_d\(1) & ((\dut_alu|dut_mul_u|A\(1) & (\dut_alu|dut_mul_u|A_m[0]~1\ & VCC)) # (!\dut_alu|dut_mul_u|A\(1) & (!\dut_alu|dut_mul_u|A_m[0]~1\)))) # (!\d1|src1_d\(1) & ((\dut_alu|dut_mul_u|A\(1) & 
-- (!\dut_alu|dut_mul_u|A_m[0]~1\)) # (!\dut_alu|dut_mul_u|A\(1) & ((\dut_alu|dut_mul_u|A_m[0]~1\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[1]~3\ = CARRY((\d1|src1_d\(1) & (!\dut_alu|dut_mul_u|A\(1) & !\dut_alu|dut_mul_u|A_m[0]~1\)) # (!\d1|src1_d\(1) & ((!\dut_alu|dut_mul_u|A_m[0]~1\) # (!\dut_alu|dut_mul_u|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(1),
	datab => \dut_alu|dut_mul_u|A\(1),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[0]~1\,
	combout => \dut_alu|dut_mul_u|A_m[1]~2_combout\,
	cout => \dut_alu|dut_mul_u|A_m[1]~3\);

-- Location: LCCOMB_X96_Y48_N20
\dut_alu|dut_mul_u|A_m[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[2]~4_combout\ = ((\d1|src1_d\(2) $ (\dut_alu|dut_mul_u|A\(2) $ (!\dut_alu|dut_mul_u|A_m[1]~3\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[2]~5\ = CARRY((\d1|src1_d\(2) & ((\dut_alu|dut_mul_u|A\(2)) # (!\dut_alu|dut_mul_u|A_m[1]~3\))) # (!\d1|src1_d\(2) & (\dut_alu|dut_mul_u|A\(2) & !\dut_alu|dut_mul_u|A_m[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(2),
	datab => \dut_alu|dut_mul_u|A\(2),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[1]~3\,
	combout => \dut_alu|dut_mul_u|A_m[2]~4_combout\,
	cout => \dut_alu|dut_mul_u|A_m[2]~5\);

-- Location: LCCOMB_X96_Y48_N22
\dut_alu|dut_mul_u|A_m[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[3]~6_combout\ = (\d1|src1_d\(3) & ((\dut_alu|dut_mul_u|A\(3) & (\dut_alu|dut_mul_u|A_m[2]~5\ & VCC)) # (!\dut_alu|dut_mul_u|A\(3) & (!\dut_alu|dut_mul_u|A_m[2]~5\)))) # (!\d1|src1_d\(3) & ((\dut_alu|dut_mul_u|A\(3) & 
-- (!\dut_alu|dut_mul_u|A_m[2]~5\)) # (!\dut_alu|dut_mul_u|A\(3) & ((\dut_alu|dut_mul_u|A_m[2]~5\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[3]~7\ = CARRY((\d1|src1_d\(3) & (!\dut_alu|dut_mul_u|A\(3) & !\dut_alu|dut_mul_u|A_m[2]~5\)) # (!\d1|src1_d\(3) & ((!\dut_alu|dut_mul_u|A_m[2]~5\) # (!\dut_alu|dut_mul_u|A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(3),
	datab => \dut_alu|dut_mul_u|A\(3),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[2]~5\,
	combout => \dut_alu|dut_mul_u|A_m[3]~6_combout\,
	cout => \dut_alu|dut_mul_u|A_m[3]~7\);

-- Location: LCCOMB_X96_Y48_N24
\dut_alu|dut_mul_u|A_m[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[4]~8_combout\ = ((\dut_alu|dut_mul_u|A\(4) $ (\d1|src1_d\(4) $ (!\dut_alu|dut_mul_u|A_m[3]~7\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[4]~9\ = CARRY((\dut_alu|dut_mul_u|A\(4) & ((\d1|src1_d\(4)) # (!\dut_alu|dut_mul_u|A_m[3]~7\))) # (!\dut_alu|dut_mul_u|A\(4) & (\d1|src1_d\(4) & !\dut_alu|dut_mul_u|A_m[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(4),
	datab => \d1|src1_d\(4),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[3]~7\,
	combout => \dut_alu|dut_mul_u|A_m[4]~8_combout\,
	cout => \dut_alu|dut_mul_u|A_m[4]~9\);

-- Location: LCCOMB_X96_Y48_N26
\dut_alu|dut_mul_u|A_m[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[5]~10_combout\ = (\dut_alu|dut_mul_u|A\(5) & ((\d1|src1_d\(5) & (\dut_alu|dut_mul_u|A_m[4]~9\ & VCC)) # (!\d1|src1_d\(5) & (!\dut_alu|dut_mul_u|A_m[4]~9\)))) # (!\dut_alu|dut_mul_u|A\(5) & ((\d1|src1_d\(5) & 
-- (!\dut_alu|dut_mul_u|A_m[4]~9\)) # (!\d1|src1_d\(5) & ((\dut_alu|dut_mul_u|A_m[4]~9\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[5]~11\ = CARRY((\dut_alu|dut_mul_u|A\(5) & (!\d1|src1_d\(5) & !\dut_alu|dut_mul_u|A_m[4]~9\)) # (!\dut_alu|dut_mul_u|A\(5) & ((!\dut_alu|dut_mul_u|A_m[4]~9\) # (!\d1|src1_d\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(5),
	datab => \d1|src1_d\(5),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[4]~9\,
	combout => \dut_alu|dut_mul_u|A_m[5]~10_combout\,
	cout => \dut_alu|dut_mul_u|A_m[5]~11\);

-- Location: LCCOMB_X96_Y48_N28
\dut_alu|dut_mul_u|A_m[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[6]~12_combout\ = ((\dut_alu|dut_mul_u|A\(6) $ (\d1|src1_d\(6) $ (!\dut_alu|dut_mul_u|A_m[5]~11\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[6]~13\ = CARRY((\dut_alu|dut_mul_u|A\(6) & ((\d1|src1_d\(6)) # (!\dut_alu|dut_mul_u|A_m[5]~11\))) # (!\dut_alu|dut_mul_u|A\(6) & (\d1|src1_d\(6) & !\dut_alu|dut_mul_u|A_m[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(6),
	datab => \d1|src1_d\(6),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[5]~11\,
	combout => \dut_alu|dut_mul_u|A_m[6]~12_combout\,
	cout => \dut_alu|dut_mul_u|A_m[6]~13\);

-- Location: LCCOMB_X96_Y48_N30
\dut_alu|dut_mul_u|A_m[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[7]~14_combout\ = (\d1|src1_d\(7) & ((\dut_alu|dut_mul_u|A\(7) & (\dut_alu|dut_mul_u|A_m[6]~13\ & VCC)) # (!\dut_alu|dut_mul_u|A\(7) & (!\dut_alu|dut_mul_u|A_m[6]~13\)))) # (!\d1|src1_d\(7) & ((\dut_alu|dut_mul_u|A\(7) & 
-- (!\dut_alu|dut_mul_u|A_m[6]~13\)) # (!\dut_alu|dut_mul_u|A\(7) & ((\dut_alu|dut_mul_u|A_m[6]~13\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[7]~15\ = CARRY((\d1|src1_d\(7) & (!\dut_alu|dut_mul_u|A\(7) & !\dut_alu|dut_mul_u|A_m[6]~13\)) # (!\d1|src1_d\(7) & ((!\dut_alu|dut_mul_u|A_m[6]~13\) # (!\dut_alu|dut_mul_u|A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(7),
	datab => \dut_alu|dut_mul_u|A\(7),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[6]~13\,
	combout => \dut_alu|dut_mul_u|A_m[7]~14_combout\,
	cout => \dut_alu|dut_mul_u|A_m[7]~15\);

-- Location: LCCOMB_X96_Y47_N0
\dut_alu|dut_mul_u|A_m[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[8]~16_combout\ = ((\d1|src1_d\(8) $ (\dut_alu|dut_mul_u|A\(8) $ (!\dut_alu|dut_mul_u|A_m[7]~15\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[8]~17\ = CARRY((\d1|src1_d\(8) & ((\dut_alu|dut_mul_u|A\(8)) # (!\dut_alu|dut_mul_u|A_m[7]~15\))) # (!\d1|src1_d\(8) & (\dut_alu|dut_mul_u|A\(8) & !\dut_alu|dut_mul_u|A_m[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(8),
	datab => \dut_alu|dut_mul_u|A\(8),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[7]~15\,
	combout => \dut_alu|dut_mul_u|A_m[8]~16_combout\,
	cout => \dut_alu|dut_mul_u|A_m[8]~17\);

-- Location: LCCOMB_X96_Y47_N2
\dut_alu|dut_mul_u|A_m[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[9]~18_combout\ = (\dut_alu|dut_mul_u|A\(9) & ((\d1|src1_d\(9) & (\dut_alu|dut_mul_u|A_m[8]~17\ & VCC)) # (!\d1|src1_d\(9) & (!\dut_alu|dut_mul_u|A_m[8]~17\)))) # (!\dut_alu|dut_mul_u|A\(9) & ((\d1|src1_d\(9) & 
-- (!\dut_alu|dut_mul_u|A_m[8]~17\)) # (!\d1|src1_d\(9) & ((\dut_alu|dut_mul_u|A_m[8]~17\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[9]~19\ = CARRY((\dut_alu|dut_mul_u|A\(9) & (!\d1|src1_d\(9) & !\dut_alu|dut_mul_u|A_m[8]~17\)) # (!\dut_alu|dut_mul_u|A\(9) & ((!\dut_alu|dut_mul_u|A_m[8]~17\) # (!\d1|src1_d\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(9),
	datab => \d1|src1_d\(9),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[8]~17\,
	combout => \dut_alu|dut_mul_u|A_m[9]~18_combout\,
	cout => \dut_alu|dut_mul_u|A_m[9]~19\);

-- Location: LCCOMB_X96_Y47_N24
\dut_alu|dut_mul_u|A~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~4_combout\ = (\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A_m[9]~18_combout\))) # (!\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(9),
	datab => \dut_alu|dut_mul_u|A_m[9]~18_combout\,
	datad => \dut_alu|dut_mul_u|q\(0),
	combout => \dut_alu|dut_mul_u|A~4_combout\);

-- Location: FF_X96_Y47_N25
\dut_alu|dut_mul_u|A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~4_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(8));

-- Location: LCCOMB_X96_Y48_N8
\dut_alu|dut_mul_u|A~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~8_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[8]~16_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|A_m[8]~16_combout\,
	datac => \dut_alu|dut_mul_u|q\(0),
	datad => \dut_alu|dut_mul_u|A\(8),
	combout => \dut_alu|dut_mul_u|A~8_combout\);

-- Location: FF_X96_Y48_N9
\dut_alu|dut_mul_u|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~8_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(7));

-- Location: LCCOMB_X96_Y48_N10
\dut_alu|dut_mul_u|A~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~9_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[7]~14_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A_m[7]~14_combout\,
	datab => \dut_alu|dut_mul_u|A\(7),
	datac => \dut_alu|dut_mul_u|q\(0),
	combout => \dut_alu|dut_mul_u|A~9_combout\);

-- Location: FF_X96_Y48_N11
\dut_alu|dut_mul_u|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~9_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(6));

-- Location: LCCOMB_X96_Y48_N12
\dut_alu|dut_mul_u|A~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~10_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[6]~12_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|A_m[6]~12_combout\,
	datac => \dut_alu|dut_mul_u|q\(0),
	datad => \dut_alu|dut_mul_u|A\(6),
	combout => \dut_alu|dut_mul_u|A~10_combout\);

-- Location: FF_X96_Y48_N13
\dut_alu|dut_mul_u|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~10_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(5));

-- Location: LCCOMB_X96_Y48_N6
\dut_alu|dut_mul_u|A~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~11_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[5]~10_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|q\(0),
	datac => \dut_alu|dut_mul_u|A_m[5]~10_combout\,
	datad => \dut_alu|dut_mul_u|A\(5),
	combout => \dut_alu|dut_mul_u|A~11_combout\);

-- Location: FF_X96_Y48_N7
\dut_alu|dut_mul_u|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~11_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(4));

-- Location: LCCOMB_X96_Y48_N0
\dut_alu|dut_mul_u|A~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~12_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[4]~8_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|A_m[4]~8_combout\,
	datac => \dut_alu|dut_mul_u|q\(0),
	datad => \dut_alu|dut_mul_u|A\(4),
	combout => \dut_alu|dut_mul_u|A~12_combout\);

-- Location: FF_X96_Y48_N1
\dut_alu|dut_mul_u|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~12_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(3));

-- Location: LCCOMB_X96_Y48_N2
\dut_alu|dut_mul_u|A~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~13_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[3]~6_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|q\(0),
	datac => \dut_alu|dut_mul_u|A_m[3]~6_combout\,
	datad => \dut_alu|dut_mul_u|A\(3),
	combout => \dut_alu|dut_mul_u|A~13_combout\);

-- Location: FF_X96_Y48_N3
\dut_alu|dut_mul_u|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~13_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(2));

-- Location: LCCOMB_X96_Y48_N4
\dut_alu|dut_mul_u|A~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~14_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[2]~4_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|A_m[2]~4_combout\,
	datac => \dut_alu|dut_mul_u|q\(0),
	datad => \dut_alu|dut_mul_u|A\(2),
	combout => \dut_alu|dut_mul_u|A~14_combout\);

-- Location: FF_X96_Y48_N5
\dut_alu|dut_mul_u|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~14_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(1));

-- Location: LCCOMB_X96_Y48_N14
\dut_alu|dut_mul_u|A~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~15_combout\ = (\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A_m[1]~2_combout\))) # (!\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|q\(0),
	datac => \dut_alu|dut_mul_u|A\(1),
	datad => \dut_alu|dut_mul_u|A_m[1]~2_combout\,
	combout => \dut_alu|dut_mul_u|A~15_combout\);

-- Location: FF_X96_Y48_N15
\dut_alu|dut_mul_u|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~15_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(0));

-- Location: LCCOMB_X91_Y48_N24
\dut_alu|dut_mul_u|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~7_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[0]~0_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A_m[0]~0_combout\,
	datab => \dut_alu|dut_mul_u|q\(0),
	datad => \dut_alu|dut_mul_u|A\(0),
	combout => \dut_alu|dut_mul_u|q~7_combout\);

-- Location: FF_X91_Y48_N25
\dut_alu|dut_mul_u|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~7_combout\,
	asdata => \d1|src2_d\(15),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(15));

-- Location: LCCOMB_X91_Y48_N22
\dut_alu|dut_mul_u|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~6_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(15))) # (!\dut_alu|dut_mul_u|state~q\ & ((\d1|src2_d\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|q\(15),
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \d1|src2_d\(14),
	combout => \dut_alu|dut_mul_u|q~6_combout\);

-- Location: FF_X91_Y48_N23
\dut_alu|dut_mul_u|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~6_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(14));

-- Location: LCCOMB_X91_Y48_N28
\dut_alu|dut_mul_u|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~5_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(14))) # (!\dut_alu|dut_mul_u|state~q\ & ((\d1|src2_d\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(14),
	datab => \d1|src2_d\(13),
	datac => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|q~5_combout\);

-- Location: FF_X91_Y48_N29
\dut_alu|dut_mul_u|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~5_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(13));

-- Location: LCCOMB_X91_Y48_N8
\dut_alu|dut_mul_u|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~3_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(13))) # (!\dut_alu|dut_mul_u|state~q\ & ((\d1|src2_d\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|q\(13),
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \d1|src2_d\(12),
	combout => \dut_alu|dut_mul_u|q~3_combout\);

-- Location: FF_X91_Y48_N9
\dut_alu|dut_mul_u|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(12));

-- Location: LCCOMB_X91_Y48_N0
\dut_alu|dut_mul_u|q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~12_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(12))) # (!\dut_alu|dut_mul_u|state~q\ & ((\d1|src2_d\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|state~q\,
	datab => \dut_alu|dut_mul_u|q\(12),
	datac => \d1|src2_d\(11),
	combout => \dut_alu|dut_mul_u|q~12_combout\);

-- Location: FF_X91_Y48_N1
\dut_alu|dut_mul_u|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~12_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(11));

-- Location: LCCOMB_X91_Y48_N30
\dut_alu|dut_mul_u|q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~11_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(11))) # (!\dut_alu|dut_mul_u|state~q\ & ((\d1|src2_d\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|state~q\,
	datab => \dut_alu|dut_mul_u|q\(11),
	datac => \d1|src2_d\(10),
	combout => \dut_alu|dut_mul_u|q~11_combout\);

-- Location: FF_X91_Y48_N31
\dut_alu|dut_mul_u|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~11_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(10));

-- Location: LCCOMB_X91_Y48_N4
\dut_alu|dut_mul_u|q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~10_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(10))) # (!\dut_alu|dut_mul_u|state~q\ & ((\d1|src2_d\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|q\(10),
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \d1|src2_d\(9),
	combout => \dut_alu|dut_mul_u|q~10_combout\);

-- Location: FF_X91_Y48_N5
\dut_alu|dut_mul_u|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~10_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(9));

-- Location: LCCOMB_X91_Y48_N16
\dut_alu|dut_mul_u|q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~8_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(9))) # (!\dut_alu|dut_mul_u|state~q\ & ((\d1|src2_d\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|state~q\,
	datac => \dut_alu|dut_mul_u|q\(9),
	datad => \d1|src2_d\(8),
	combout => \dut_alu|dut_mul_u|q~8_combout\);

-- Location: FF_X91_Y48_N17
\dut_alu|dut_mul_u|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~8_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(8));

-- Location: LCCOMB_X91_Y48_N6
\dut_alu|dut_mul_u|q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~15_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|q\(8)))) # (!\dut_alu|dut_mul_u|state~q\ & (\d1|src2_d\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(7),
	datab => \dut_alu|dut_mul_u|q\(8),
	datac => \dut_alu|dut_mul_u|state~q\,
	combout => \dut_alu|dut_mul_u|q~15_combout\);

-- Location: FF_X91_Y48_N7
\dut_alu|dut_mul_u|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~15_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(7));

-- Location: LCCOMB_X91_Y48_N20
\dut_alu|dut_mul_u|q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~14_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|q\(7)))) # (!\dut_alu|dut_mul_u|state~q\ & (\d1|src2_d\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(6),
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \dut_alu|dut_mul_u|q\(7),
	combout => \dut_alu|dut_mul_u|q~14_combout\);

-- Location: FF_X91_Y48_N21
\dut_alu|dut_mul_u|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~14_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(6));

-- Location: LCCOMB_X91_Y48_N26
\dut_alu|dut_mul_u|q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~13_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|q\(6)))) # (!\dut_alu|dut_mul_u|state~q\ & (\d1|src2_d\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|state~q\,
	datab => \d1|src2_d\(5),
	datac => \dut_alu|dut_mul_u|q\(6),
	combout => \dut_alu|dut_mul_u|q~13_combout\);

-- Location: FF_X91_Y48_N27
\dut_alu|dut_mul_u|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~13_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(5));

-- Location: LCCOMB_X91_Y48_N10
\dut_alu|dut_mul_u|q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~9_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|q\(5)))) # (!\dut_alu|dut_mul_u|state~q\ & (\d1|src2_d\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(4),
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \dut_alu|dut_mul_u|q\(5),
	combout => \dut_alu|dut_mul_u|q~9_combout\);

-- Location: FF_X91_Y48_N11
\dut_alu|dut_mul_u|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~9_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(4));

-- Location: LCCOMB_X91_Y48_N2
\dut_alu|dut_mul_u|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~4_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|q\(4)))) # (!\dut_alu|dut_mul_u|state~q\ & (\d1|src2_d\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(3),
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \dut_alu|dut_mul_u|q\(4),
	combout => \dut_alu|dut_mul_u|q~4_combout\);

-- Location: FF_X91_Y48_N3
\dut_alu|dut_mul_u|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(3));

-- Location: LCCOMB_X91_Y48_N14
\dut_alu|dut_mul_u|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~2_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(3))) # (!\dut_alu|dut_mul_u|state~q\ & ((\d1|src2_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|state~q\,
	datab => \dut_alu|dut_mul_u|q\(3),
	datac => \d1|src2_d\(2),
	combout => \dut_alu|dut_mul_u|q~2_combout\);

-- Location: FF_X91_Y48_N15
\dut_alu|dut_mul_u|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(2));

-- Location: LCCOMB_X91_Y48_N12
\dut_alu|dut_mul_u|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~1_combout\ = (\dut_alu|dut_mul_u|state~q\ & (\dut_alu|dut_mul_u|q\(2))) # (!\dut_alu|dut_mul_u|state~q\ & ((\d1|src2_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|state~q\,
	datab => \dut_alu|dut_mul_u|q\(2),
	datac => \d1|src2_d\(1),
	combout => \dut_alu|dut_mul_u|q~1_combout\);

-- Location: FF_X91_Y48_N13
\dut_alu|dut_mul_u|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(1));

-- Location: LCCOMB_X91_Y48_N18
\dut_alu|dut_mul_u|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|q~0_combout\ = (\dut_alu|dut_mul_u|state~q\ & ((\dut_alu|dut_mul_u|q\(1)))) # (!\dut_alu|dut_mul_u|state~q\ & (\d1|src2_d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(0),
	datac => \dut_alu|dut_mul_u|state~q\,
	datad => \dut_alu|dut_mul_u|q\(1),
	combout => \dut_alu|dut_mul_u|q~0_combout\);

-- Location: FF_X91_Y48_N19
\dut_alu|dut_mul_u|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|q~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|q\(0));

-- Location: LCCOMB_X96_Y47_N4
\dut_alu|dut_mul_u|A_m[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[10]~20_combout\ = ((\d1|src1_d\(10) $ (\dut_alu|dut_mul_u|A\(10) $ (!\dut_alu|dut_mul_u|A_m[9]~19\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[10]~21\ = CARRY((\d1|src1_d\(10) & ((\dut_alu|dut_mul_u|A\(10)) # (!\dut_alu|dut_mul_u|A_m[9]~19\))) # (!\d1|src1_d\(10) & (\dut_alu|dut_mul_u|A\(10) & !\dut_alu|dut_mul_u|A_m[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(10),
	datab => \dut_alu|dut_mul_u|A\(10),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[9]~19\,
	combout => \dut_alu|dut_mul_u|A_m[10]~20_combout\,
	cout => \dut_alu|dut_mul_u|A_m[10]~21\);

-- Location: LCCOMB_X96_Y47_N6
\dut_alu|dut_mul_u|A_m[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[11]~22_combout\ = (\d1|src1_d\(11) & ((\dut_alu|dut_mul_u|A\(11) & (\dut_alu|dut_mul_u|A_m[10]~21\ & VCC)) # (!\dut_alu|dut_mul_u|A\(11) & (!\dut_alu|dut_mul_u|A_m[10]~21\)))) # (!\d1|src1_d\(11) & ((\dut_alu|dut_mul_u|A\(11) & 
-- (!\dut_alu|dut_mul_u|A_m[10]~21\)) # (!\dut_alu|dut_mul_u|A\(11) & ((\dut_alu|dut_mul_u|A_m[10]~21\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[11]~23\ = CARRY((\d1|src1_d\(11) & (!\dut_alu|dut_mul_u|A\(11) & !\dut_alu|dut_mul_u|A_m[10]~21\)) # (!\d1|src1_d\(11) & ((!\dut_alu|dut_mul_u|A_m[10]~21\) # (!\dut_alu|dut_mul_u|A\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(11),
	datab => \dut_alu|dut_mul_u|A\(11),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[10]~21\,
	combout => \dut_alu|dut_mul_u|A_m[11]~22_combout\,
	cout => \dut_alu|dut_mul_u|A_m[11]~23\);

-- Location: LCCOMB_X96_Y47_N8
\dut_alu|dut_mul_u|A_m[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[12]~24_combout\ = ((\dut_alu|dut_mul_u|A\(12) $ (\d1|src1_d\(12) $ (!\dut_alu|dut_mul_u|A_m[11]~23\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[12]~25\ = CARRY((\dut_alu|dut_mul_u|A\(12) & ((\d1|src1_d\(12)) # (!\dut_alu|dut_mul_u|A_m[11]~23\))) # (!\dut_alu|dut_mul_u|A\(12) & (\d1|src1_d\(12) & !\dut_alu|dut_mul_u|A_m[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(12),
	datab => \d1|src1_d\(12),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[11]~23\,
	combout => \dut_alu|dut_mul_u|A_m[12]~24_combout\,
	cout => \dut_alu|dut_mul_u|A_m[12]~25\);

-- Location: LCCOMB_X96_Y47_N10
\dut_alu|dut_mul_u|A_m[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[13]~26_combout\ = (\d1|src1_d\(13) & ((\dut_alu|dut_mul_u|A\(13) & (\dut_alu|dut_mul_u|A_m[12]~25\ & VCC)) # (!\dut_alu|dut_mul_u|A\(13) & (!\dut_alu|dut_mul_u|A_m[12]~25\)))) # (!\d1|src1_d\(13) & ((\dut_alu|dut_mul_u|A\(13) & 
-- (!\dut_alu|dut_mul_u|A_m[12]~25\)) # (!\dut_alu|dut_mul_u|A\(13) & ((\dut_alu|dut_mul_u|A_m[12]~25\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[13]~27\ = CARRY((\d1|src1_d\(13) & (!\dut_alu|dut_mul_u|A\(13) & !\dut_alu|dut_mul_u|A_m[12]~25\)) # (!\d1|src1_d\(13) & ((!\dut_alu|dut_mul_u|A_m[12]~25\) # (!\dut_alu|dut_mul_u|A\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(13),
	datab => \dut_alu|dut_mul_u|A\(13),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[12]~25\,
	combout => \dut_alu|dut_mul_u|A_m[13]~26_combout\,
	cout => \dut_alu|dut_mul_u|A_m[13]~27\);

-- Location: LCCOMB_X96_Y47_N12
\dut_alu|dut_mul_u|A_m[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[14]~28_combout\ = ((\dut_alu|dut_mul_u|A\(14) $ (\d1|src1_d\(14) $ (!\dut_alu|dut_mul_u|A_m[13]~27\)))) # (GND)
-- \dut_alu|dut_mul_u|A_m[14]~29\ = CARRY((\dut_alu|dut_mul_u|A\(14) & ((\d1|src1_d\(14)) # (!\dut_alu|dut_mul_u|A_m[13]~27\))) # (!\dut_alu|dut_mul_u|A\(14) & (\d1|src1_d\(14) & !\dut_alu|dut_mul_u|A_m[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(14),
	datab => \d1|src1_d\(14),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[13]~27\,
	combout => \dut_alu|dut_mul_u|A_m[14]~28_combout\,
	cout => \dut_alu|dut_mul_u|A_m[14]~29\);

-- Location: LCCOMB_X96_Y47_N14
\dut_alu|dut_mul_u|A_m[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A_m[15]~30_combout\ = (\dut_alu|dut_mul_u|A\(15) & ((\d1|src1_d\(15) & (\dut_alu|dut_mul_u|A_m[14]~29\ & VCC)) # (!\d1|src1_d\(15) & (!\dut_alu|dut_mul_u|A_m[14]~29\)))) # (!\dut_alu|dut_mul_u|A\(15) & ((\d1|src1_d\(15) & 
-- (!\dut_alu|dut_mul_u|A_m[14]~29\)) # (!\d1|src1_d\(15) & ((\dut_alu|dut_mul_u|A_m[14]~29\) # (GND)))))
-- \dut_alu|dut_mul_u|A_m[15]~31\ = CARRY((\dut_alu|dut_mul_u|A\(15) & (!\d1|src1_d\(15) & !\dut_alu|dut_mul_u|A_m[14]~29\)) # (!\dut_alu|dut_mul_u|A\(15) & ((!\dut_alu|dut_mul_u|A_m[14]~29\) # (!\d1|src1_d\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(15),
	datab => \d1|src1_d\(15),
	datad => VCC,
	cin => \dut_alu|dut_mul_u|A_m[14]~29\,
	combout => \dut_alu|dut_mul_u|A_m[15]~30_combout\,
	cout => \dut_alu|dut_mul_u|A_m[15]~31\);

-- Location: LCCOMB_X96_Y47_N16
\dut_alu|dut_mul_u|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|Add0~0_combout\ = !\dut_alu|dut_mul_u|A_m[15]~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dut_alu|dut_mul_u|A_m[15]~31\,
	combout => \dut_alu|dut_mul_u|Add0~0_combout\);

-- Location: LCCOMB_X94_Y45_N0
\dut_alu|dut_mul_u|A~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~3_combout\ = (\dut_alu|dut_mul_u|state~q\ & \dut_alu|dut_mul_u|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|state~q\,
	datad => \dut_alu|dut_mul_u|Add0~0_combout\,
	combout => \dut_alu|dut_mul_u|A~3_combout\);

-- Location: FF_X94_Y45_N1
\dut_alu|dut_mul_u|A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(15));

-- Location: LCCOMB_X96_Y47_N30
\dut_alu|dut_mul_u|A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~2_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[15]~30_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|q\(0),
	datac => \dut_alu|dut_mul_u|A_m[15]~30_combout\,
	datad => \dut_alu|dut_mul_u|A\(15),
	combout => \dut_alu|dut_mul_u|A~2_combout\);

-- Location: FF_X96_Y47_N31
\dut_alu|dut_mul_u|A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~2_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(14));

-- Location: LCCOMB_X96_Y47_N20
\dut_alu|dut_mul_u|A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~1_combout\ = (\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A_m[14]~28_combout\))) # (!\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(14),
	datab => \dut_alu|dut_mul_u|A_m[14]~28_combout\,
	datad => \dut_alu|dut_mul_u|q\(0),
	combout => \dut_alu|dut_mul_u|A~1_combout\);

-- Location: FF_X96_Y47_N21
\dut_alu|dut_mul_u|A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~1_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(13));

-- Location: LCCOMB_X96_Y47_N26
\dut_alu|dut_mul_u|A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~0_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[13]~26_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A_m[13]~26_combout\,
	datab => \dut_alu|dut_mul_u|q\(0),
	datad => \dut_alu|dut_mul_u|A\(13),
	combout => \dut_alu|dut_mul_u|A~0_combout\);

-- Location: FF_X96_Y47_N27
\dut_alu|dut_mul_u|A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~0_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(12));

-- Location: LCCOMB_X96_Y47_N18
\dut_alu|dut_mul_u|A~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~5_combout\ = (\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A_m[12]~24_combout\))) # (!\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A\(12),
	datac => \dut_alu|dut_mul_u|A_m[12]~24_combout\,
	datad => \dut_alu|dut_mul_u|q\(0),
	combout => \dut_alu|dut_mul_u|A~5_combout\);

-- Location: FF_X96_Y47_N19
\dut_alu|dut_mul_u|A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~5_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(11));

-- Location: LCCOMB_X96_Y47_N28
\dut_alu|dut_mul_u|A~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~6_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[11]~22_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|A_m[11]~22_combout\,
	datab => \dut_alu|dut_mul_u|q\(0),
	datad => \dut_alu|dut_mul_u|A\(11),
	combout => \dut_alu|dut_mul_u|A~6_combout\);

-- Location: FF_X96_Y47_N29
\dut_alu|dut_mul_u|A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~6_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(10));

-- Location: LCCOMB_X96_Y47_N22
\dut_alu|dut_mul_u|A~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_u|A~7_combout\ = (\dut_alu|dut_mul_u|q\(0) & (\dut_alu|dut_mul_u|A_m[10]~20_combout\)) # (!\dut_alu|dut_mul_u|q\(0) & ((\dut_alu|dut_mul_u|A\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_mul_u|q\(0),
	datac => \dut_alu|dut_mul_u|A_m[10]~20_combout\,
	datad => \dut_alu|dut_mul_u|A\(10),
	combout => \dut_alu|dut_mul_u|A~7_combout\);

-- Location: FF_X96_Y47_N23
\dut_alu|dut_mul_u|A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_u|A~7_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|dut_mul_u|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|A\(9));

-- Location: FF_X95_Y48_N7
\dut_alu|dut_mul_u|result[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(9),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(25));

-- Location: LCCOMB_X89_Y49_N16
\dut_alu|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~1_cout\ = CARRY(!\d1|src2_d\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(0),
	datad => VCC,
	cout => \dut_alu|Add1~1_cout\);

-- Location: LCCOMB_X89_Y49_N18
\dut_alu|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~2_combout\ = (\d1|src2_d\(1) & ((\dut_alu|Add1~1_cout\) # (GND))) # (!\d1|src2_d\(1) & (!\dut_alu|Add1~1_cout\))
-- \dut_alu|Add1~3\ = CARRY((\d1|src2_d\(1)) # (!\dut_alu|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(1),
	datad => VCC,
	cin => \dut_alu|Add1~1_cout\,
	combout => \dut_alu|Add1~2_combout\,
	cout => \dut_alu|Add1~3\);

-- Location: LCCOMB_X89_Y49_N20
\dut_alu|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~4_combout\ = (\d1|src2_d\(2) & (!\dut_alu|Add1~3\ & VCC)) # (!\d1|src2_d\(2) & (\dut_alu|Add1~3\ $ (GND)))
-- \dut_alu|Add1~5\ = CARRY((!\d1|src2_d\(2) & !\dut_alu|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(2),
	datad => VCC,
	cin => \dut_alu|Add1~3\,
	combout => \dut_alu|Add1~4_combout\,
	cout => \dut_alu|Add1~5\);

-- Location: LCCOMB_X89_Y49_N22
\dut_alu|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~6_combout\ = (\d1|src2_d\(3) & ((\dut_alu|Add1~5\) # (GND))) # (!\d1|src2_d\(3) & (!\dut_alu|Add1~5\))
-- \dut_alu|Add1~7\ = CARRY((\d1|src2_d\(3)) # (!\dut_alu|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(3),
	datad => VCC,
	cin => \dut_alu|Add1~5\,
	combout => \dut_alu|Add1~6_combout\,
	cout => \dut_alu|Add1~7\);

-- Location: LCCOMB_X89_Y49_N24
\dut_alu|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~8_combout\ = (\d1|src2_d\(4) & (!\dut_alu|Add1~7\ & VCC)) # (!\d1|src2_d\(4) & (\dut_alu|Add1~7\ $ (GND)))
-- \dut_alu|Add1~9\ = CARRY((!\d1|src2_d\(4) & !\dut_alu|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(4),
	datad => VCC,
	cin => \dut_alu|Add1~7\,
	combout => \dut_alu|Add1~8_combout\,
	cout => \dut_alu|Add1~9\);

-- Location: LCCOMB_X89_Y49_N26
\dut_alu|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~10_combout\ = (\d1|src2_d\(5) & ((\dut_alu|Add1~9\) # (GND))) # (!\d1|src2_d\(5) & (!\dut_alu|Add1~9\))
-- \dut_alu|Add1~11\ = CARRY((\d1|src2_d\(5)) # (!\dut_alu|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(5),
	datad => VCC,
	cin => \dut_alu|Add1~9\,
	combout => \dut_alu|Add1~10_combout\,
	cout => \dut_alu|Add1~11\);

-- Location: LCCOMB_X89_Y49_N28
\dut_alu|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~12_combout\ = (\d1|src2_d\(6) & (!\dut_alu|Add1~11\ & VCC)) # (!\d1|src2_d\(6) & (\dut_alu|Add1~11\ $ (GND)))
-- \dut_alu|Add1~13\ = CARRY((!\d1|src2_d\(6) & !\dut_alu|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(6),
	datad => VCC,
	cin => \dut_alu|Add1~11\,
	combout => \dut_alu|Add1~12_combout\,
	cout => \dut_alu|Add1~13\);

-- Location: LCCOMB_X89_Y49_N30
\dut_alu|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~14_combout\ = (\d1|src2_d\(7) & ((\dut_alu|Add1~13\) # (GND))) # (!\d1|src2_d\(7) & (!\dut_alu|Add1~13\))
-- \dut_alu|Add1~15\ = CARRY((\d1|src2_d\(7)) # (!\dut_alu|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(7),
	datad => VCC,
	cin => \dut_alu|Add1~13\,
	combout => \dut_alu|Add1~14_combout\,
	cout => \dut_alu|Add1~15\);

-- Location: LCCOMB_X89_Y48_N0
\dut_alu|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~16_combout\ = (\d1|src2_d\(8) & (!\dut_alu|Add1~15\ & VCC)) # (!\d1|src2_d\(8) & (\dut_alu|Add1~15\ $ (GND)))
-- \dut_alu|Add1~17\ = CARRY((!\d1|src2_d\(8) & !\dut_alu|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(8),
	datad => VCC,
	cin => \dut_alu|Add1~15\,
	combout => \dut_alu|Add1~16_combout\,
	cout => \dut_alu|Add1~17\);

-- Location: LCCOMB_X89_Y48_N2
\dut_alu|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~18_combout\ = (\d1|src2_d\(9) & ((\dut_alu|Add1~17\) # (GND))) # (!\d1|src2_d\(9) & (!\dut_alu|Add1~17\))
-- \dut_alu|Add1~19\ = CARRY((\d1|src2_d\(9)) # (!\dut_alu|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(9),
	datad => VCC,
	cin => \dut_alu|Add1~17\,
	combout => \dut_alu|Add1~18_combout\,
	cout => \dut_alu|Add1~19\);

-- Location: LCCOMB_X89_Y48_N4
\dut_alu|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~20_combout\ = (\d1|src2_d\(10) & (!\dut_alu|Add1~19\ & VCC)) # (!\d1|src2_d\(10) & (\dut_alu|Add1~19\ $ (GND)))
-- \dut_alu|Add1~21\ = CARRY((!\d1|src2_d\(10) & !\dut_alu|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(10),
	datad => VCC,
	cin => \dut_alu|Add1~19\,
	combout => \dut_alu|Add1~20_combout\,
	cout => \dut_alu|Add1~21\);

-- Location: LCCOMB_X89_Y48_N6
\dut_alu|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~22_combout\ = (\d1|src2_d\(11) & ((\dut_alu|Add1~21\) # (GND))) # (!\d1|src2_d\(11) & (!\dut_alu|Add1~21\))
-- \dut_alu|Add1~23\ = CARRY((\d1|src2_d\(11)) # (!\dut_alu|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(11),
	datad => VCC,
	cin => \dut_alu|Add1~21\,
	combout => \dut_alu|Add1~22_combout\,
	cout => \dut_alu|Add1~23\);

-- Location: LCCOMB_X89_Y48_N8
\dut_alu|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~24_combout\ = (\d1|src2_d\(12) & (!\dut_alu|Add1~23\ & VCC)) # (!\d1|src2_d\(12) & (\dut_alu|Add1~23\ $ (GND)))
-- \dut_alu|Add1~25\ = CARRY((!\d1|src2_d\(12) & !\dut_alu|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(12),
	datad => VCC,
	cin => \dut_alu|Add1~23\,
	combout => \dut_alu|Add1~24_combout\,
	cout => \dut_alu|Add1~25\);

-- Location: LCCOMB_X89_Y48_N10
\dut_alu|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~26_combout\ = (\d1|src2_d\(13) & ((\dut_alu|Add1~25\) # (GND))) # (!\d1|src2_d\(13) & (!\dut_alu|Add1~25\))
-- \dut_alu|Add1~27\ = CARRY((\d1|src2_d\(13)) # (!\dut_alu|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(13),
	datad => VCC,
	cin => \dut_alu|Add1~25\,
	combout => \dut_alu|Add1~26_combout\,
	cout => \dut_alu|Add1~27\);

-- Location: LCCOMB_X89_Y48_N12
\dut_alu|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~28_combout\ = (\d1|src2_d\(14) & (!\dut_alu|Add1~27\ & VCC)) # (!\d1|src2_d\(14) & (\dut_alu|Add1~27\ $ (GND)))
-- \dut_alu|Add1~29\ = CARRY((!\d1|src2_d\(14) & !\dut_alu|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(14),
	datad => VCC,
	cin => \dut_alu|Add1~27\,
	combout => \dut_alu|Add1~28_combout\,
	cout => \dut_alu|Add1~29\);

-- Location: LCCOMB_X89_Y48_N14
\dut_alu|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~30_combout\ = (\d1|src2_d\(15) & ((\dut_alu|Add1~29\) # (GND))) # (!\d1|src2_d\(15) & (!\dut_alu|Add1~29\))
-- \dut_alu|Add1~31\ = CARRY((\d1|src2_d\(15)) # (!\dut_alu|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(15),
	datad => VCC,
	cin => \dut_alu|Add1~29\,
	combout => \dut_alu|Add1~30_combout\,
	cout => \dut_alu|Add1~31\);

-- Location: LCCOMB_X89_Y48_N16
\dut_alu|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|Add1~32_combout\ = \d1|src2_d\(15) $ (\dut_alu|Add1~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(15),
	cin => \dut_alu|Add1~31\,
	combout => \dut_alu|Add1~32_combout\);

-- Location: LCCOMB_X89_Y49_N10
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\ = (\dut_alu|Add1~2_combout\ & ((\d1|src1_d\(1)) # ((\d1|src1_d\(0) & \d1|src2_d\(0))))) # (!\dut_alu|Add1~2_combout\ & (\d1|src1_d\(0) & (\d1|src2_d\(0) & \d1|src1_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(0),
	datab => \dut_alu|Add1~2_combout\,
	datac => \d1|src2_d\(0),
	datad => \d1|src1_d\(1),
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\);

-- Location: LCCOMB_X89_Y49_N14
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~17_combout\ = (\dut_alu|Add1~4_combout\ & ((\d1|src1_d\(2)) # (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\))) # (!\dut_alu|Add1~4_combout\ & (\d1|src1_d\(2) & 
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|Add1~4_combout\,
	datac => \d1|src1_d\(2),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~17_combout\);

-- Location: LCCOMB_X89_Y49_N4
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~10_combout\ = (\d1|src1_d\(4) & ((\dut_alu|Add1~6_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~17_combout\) # (\d1|src1_d\(3)))) # (!\dut_alu|Add1~6_combout\ & 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~17_combout\ & \d1|src1_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~6_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~17_combout\,
	datac => \d1|src1_d\(4),
	datad => \d1|src1_d\(3),
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~10_combout\);

-- Location: LCCOMB_X89_Y49_N6
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\ = (\dut_alu|Add1~4_combout\ & ((\d1|src1_d\(2)) # (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|Add1~4_combout\,
	datac => \d1|src1_d\(2),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\);

-- Location: LCCOMB_X89_Y49_N8
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\ = (\d1|src1_d\(2) & \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src1_d\(2),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\);

-- Location: LCCOMB_X89_Y49_N0
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\ = (\d1|src1_d\(3) & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\) # ((\dut_alu|Add1~6_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\)))) # (!\d1|src1_d\(3) & (\dut_alu|Add1~6_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\,
	datab => \d1|src1_d\(3),
	datac => \dut_alu|Add1~6_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\);

-- Location: LCCOMB_X89_Y49_N2
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~11_combout\ = (\dut_alu|Add1~8_combout\ & ((\d1|src1_d\(4)) # (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|Add1~8_combout\,
	datac => \d1|src1_d\(4),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~11_combout\);

-- Location: LCCOMB_X90_Y47_N26
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[1]~13_combout\ = (\dut_alu|Add1~10_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~10_combout\) # ((\d1|src1_d\(5)) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~11_combout\)))) # (!\dut_alu|Add1~10_combout\ & (\d1|src1_d\(5) & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~10_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~10_combout\,
	datab => \dut_alu|Add1~10_combout\,
	datac => \d1|src1_d\(5),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~11_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[1]~13_combout\);

-- Location: LCCOMB_X90_Y47_N18
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~16_combout\ = (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~10_combout\) # ((\dut_alu|Add1~8_combout\ & ((\d1|src1_d\(4)) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~8_combout\,
	datab => \d1|src1_d\(4),
	datac => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~10_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~16_combout\);

-- Location: LCCOMB_X90_Y47_N6
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\ = (\d1|src1_d\(6) & ((\d1|src1_d\(5) & ((\dut_alu|Add1~10_combout\) # (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~16_combout\))) # (!\d1|src1_d\(5) & 
-- (\dut_alu|Add1~10_combout\ & \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(5),
	datab => \dut_alu|Add1~10_combout\,
	datac => \d1|src1_d\(6),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~16_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\);

-- Location: LCCOMB_X90_Y47_N22
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~9_combout\ = (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\) # ((\dut_alu|Add1~12_combout\ & ((\d1|src1_d\(6)) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(6),
	datab => \dut_alu|Add1~12_combout\,
	datac => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[1]~13_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~9_combout\);

-- Location: LCCOMB_X90_Y47_N4
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~2_combout\ = (\d1|src1_d\(8) & ((\dut_alu|Add1~14_combout\ & ((\d1|src1_d\(7)) # (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~9_combout\))) # (!\dut_alu|Add1~14_combout\ & 
-- (\d1|src1_d\(7) & \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~14_combout\,
	datab => \d1|src1_d\(7),
	datac => \d1|src1_d\(8),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~9_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~2_combout\);

-- Location: LCCOMB_X90_Y47_N30
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~14_combout\ = (\dut_alu|Add1~12_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[1]~13_combout\) # (\d1|src1_d\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|Add1~12_combout\,
	datac => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[1]~13_combout\,
	datad => \d1|src1_d\(6),
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~14_combout\);

-- Location: LCCOMB_X90_Y47_N16
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~3_combout\ = (\dut_alu|Add1~14_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~14_combout\) # ((\d1|src1_d\(7)) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\)))) # (!\dut_alu|Add1~14_combout\ & (\d1|src1_d\(7) & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~14_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~14_combout\,
	datab => \dut_alu|Add1~14_combout\,
	datac => \d1|src1_d\(7),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~3_combout\);

-- Location: LCCOMB_X90_Y47_N8
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~4_combout\ = (\dut_alu|Add1~16_combout\ & ((\d1|src1_d\(8)) # (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(8),
	datac => \dut_alu|Add1~16_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~4_combout\);

-- Location: LCCOMB_X90_Y47_N20
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[1]~5_combout\ = (\dut_alu|Add1~18_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~2_combout\) # ((\d1|src1_d\(9)) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~4_combout\)))) # (!\dut_alu|Add1~18_combout\ & (\d1|src1_d\(9) & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~2_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~18_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~2_combout\,
	datac => \d1|src1_d\(9),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~4_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[1]~5_combout\);

-- Location: LCCOMB_X89_Y48_N20
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~7_combout\ = (\dut_alu|Add1~20_combout\ & ((\d1|src1_d\(10)) # (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(10),
	datac => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[1]~5_combout\,
	datad => \dut_alu|Add1~20_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~7_combout\);

-- Location: LCCOMB_X89_Y48_N28
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~6_combout\ = (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[1]~5_combout\ & \d1|src1_d\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[1]~5_combout\,
	datac => \d1|src1_d\(10),
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~6_combout\);

-- Location: LCCOMB_X89_Y48_N30
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[3]~8_combout\ = (\dut_alu|Add1~22_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~7_combout\) # ((\d1|src1_d\(11)) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~6_combout\)))) # (!\dut_alu|Add1~22_combout\ & (\d1|src1_d\(11) & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~7_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~22_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~7_combout\,
	datac => \d1|src1_d\(11),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~6_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[3]~8_combout\);

-- Location: LCCOMB_X89_Y48_N18
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\ = (\dut_alu|Add1~24_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[3]~8_combout\) # (\d1|src1_d\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[3]~8_combout\,
	datac => \dut_alu|Add1~24_combout\,
	datad => \d1|src1_d\(12),
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\);

-- Location: LCCOMB_X89_Y48_N24
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\ = (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[3]~8_combout\ & \d1|src1_d\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[3]~8_combout\,
	datac => \d1|src1_d\(12),
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\);

-- Location: LCCOMB_X89_Y48_N22
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\ = (\dut_alu|Add1~26_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\) # ((\d1|src1_d\(13)) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\)))) # (!\dut_alu|Add1~26_combout\ & (\d1|src1_d\(13) & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~26_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\,
	datac => \d1|src1_d\(13),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\);

-- Location: LCCOMB_X89_Y48_N26
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\ = (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\ & ((\d1|src1_d\(14)) # (\dut_alu|Add1~28_combout\))) # 
-- (!\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\ & (\d1|src1_d\(14) & \dut_alu|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\,
	datab => \d1|src1_d\(14),
	datad => \dut_alu|Add1~28_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\);

-- Location: LCCOMB_X95_Y48_N20
\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA00|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA00|f01|sum~combout\ = (\dut_alu|Add1~30_combout\ & (\dut_alu|Add1~32_combout\ & ((\d1|src1_d\(15)) # (!\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\)))) # (!\dut_alu|Add1~30_combout\ & 
-- ((\dut_alu|Add1~32_combout\) # ((\d1|src1_d\(15) & !\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~30_combout\,
	datab => \dut_alu|Add1~32_combout\,
	datac => \d1|src1_d\(15),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA00|f01|sum~combout\);

-- Location: LCCOMB_X95_Y48_N6
\dut_alu|result_d~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~46_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\) # ((\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA00|f01|sum~combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & (!\dut_alu|result_d[17]~31_combout\ & 
-- (\dut_alu|dut_mul_u|result\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|result_d[17]~31_combout\,
	datac => \dut_alu|dut_mul_u|result\(25),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA00|f01|sum~combout\,
	combout => \dut_alu|result_d~46_combout\);

-- Location: LCCOMB_X95_Y48_N26
\dut_alu|result_d~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~47_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|result_d~46_combout\ & (\dut_alu|dut_divider_u|q\(9))) # (!\dut_alu|result_d~46_combout\ & ((\dut_alu|dut_mul_s|result\(25)))))) # (!\dut_alu|result_d[17]~31_combout\ & 
-- (((\dut_alu|result_d~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_divider_u|q\(9),
	datac => \dut_alu|dut_mul_s|result\(25),
	datad => \dut_alu|result_d~46_combout\,
	combout => \dut_alu|result_d~47_combout\);

-- Location: LCCOMB_X95_Y50_N2
\dut_alu|result_d[25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[25]~5_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|always2~2_combout\,
	datad => \dut_alu|result_d~47_combout\,
	combout => \dut_alu|result_d[25]~5_combout\);

-- Location: LCCOMB_X88_Y45_N0
\dut_alu|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~1_cout\ = CARRY((\d1|src1_d\(0) & !\d1|src2_d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(0),
	datab => \d1|src2_d\(0),
	datad => VCC,
	cout => \dut_alu|LessThan0~1_cout\);

-- Location: LCCOMB_X88_Y45_N2
\dut_alu|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~3_cout\ = CARRY((\d1|src1_d\(1) & (\d1|src2_d\(1) & !\dut_alu|LessThan0~1_cout\)) # (!\d1|src1_d\(1) & ((\d1|src2_d\(1)) # (!\dut_alu|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(1),
	datab => \d1|src2_d\(1),
	datad => VCC,
	cin => \dut_alu|LessThan0~1_cout\,
	cout => \dut_alu|LessThan0~3_cout\);

-- Location: LCCOMB_X88_Y45_N4
\dut_alu|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~5_cout\ = CARRY((\d1|src2_d\(2) & (\d1|src1_d\(2) & !\dut_alu|LessThan0~3_cout\)) # (!\d1|src2_d\(2) & ((\d1|src1_d\(2)) # (!\dut_alu|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(2),
	datab => \d1|src1_d\(2),
	datad => VCC,
	cin => \dut_alu|LessThan0~3_cout\,
	cout => \dut_alu|LessThan0~5_cout\);

-- Location: LCCOMB_X88_Y45_N6
\dut_alu|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~7_cout\ = CARRY((\d1|src1_d\(3) & (\d1|src2_d\(3) & !\dut_alu|LessThan0~5_cout\)) # (!\d1|src1_d\(3) & ((\d1|src2_d\(3)) # (!\dut_alu|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(3),
	datab => \d1|src2_d\(3),
	datad => VCC,
	cin => \dut_alu|LessThan0~5_cout\,
	cout => \dut_alu|LessThan0~7_cout\);

-- Location: LCCOMB_X88_Y45_N8
\dut_alu|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~9_cout\ = CARRY((\d1|src1_d\(4) & ((!\dut_alu|LessThan0~7_cout\) # (!\d1|src2_d\(4)))) # (!\d1|src1_d\(4) & (!\d1|src2_d\(4) & !\dut_alu|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(4),
	datab => \d1|src2_d\(4),
	datad => VCC,
	cin => \dut_alu|LessThan0~7_cout\,
	cout => \dut_alu|LessThan0~9_cout\);

-- Location: LCCOMB_X88_Y45_N10
\dut_alu|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~11_cout\ = CARRY((\d1|src1_d\(5) & (\d1|src2_d\(5) & !\dut_alu|LessThan0~9_cout\)) # (!\d1|src1_d\(5) & ((\d1|src2_d\(5)) # (!\dut_alu|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(5),
	datab => \d1|src2_d\(5),
	datad => VCC,
	cin => \dut_alu|LessThan0~9_cout\,
	cout => \dut_alu|LessThan0~11_cout\);

-- Location: LCCOMB_X88_Y45_N12
\dut_alu|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~13_cout\ = CARRY((\d1|src1_d\(6) & ((!\dut_alu|LessThan0~11_cout\) # (!\d1|src2_d\(6)))) # (!\d1|src1_d\(6) & (!\d1|src2_d\(6) & !\dut_alu|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(6),
	datab => \d1|src2_d\(6),
	datad => VCC,
	cin => \dut_alu|LessThan0~11_cout\,
	cout => \dut_alu|LessThan0~13_cout\);

-- Location: LCCOMB_X88_Y45_N14
\dut_alu|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~15_cout\ = CARRY((\d1|src1_d\(7) & (\d1|src2_d\(7) & !\dut_alu|LessThan0~13_cout\)) # (!\d1|src1_d\(7) & ((\d1|src2_d\(7)) # (!\dut_alu|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(7),
	datab => \d1|src2_d\(7),
	datad => VCC,
	cin => \dut_alu|LessThan0~13_cout\,
	cout => \dut_alu|LessThan0~15_cout\);

-- Location: LCCOMB_X88_Y45_N16
\dut_alu|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~17_cout\ = CARRY((\d1|src2_d\(8) & (\d1|src1_d\(8) & !\dut_alu|LessThan0~15_cout\)) # (!\d1|src2_d\(8) & ((\d1|src1_d\(8)) # (!\dut_alu|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(8),
	datab => \d1|src1_d\(8),
	datad => VCC,
	cin => \dut_alu|LessThan0~15_cout\,
	cout => \dut_alu|LessThan0~17_cout\);

-- Location: LCCOMB_X88_Y45_N18
\dut_alu|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~19_cout\ = CARRY((\d1|src2_d\(9) & ((!\dut_alu|LessThan0~17_cout\) # (!\d1|src1_d\(9)))) # (!\d1|src2_d\(9) & (!\d1|src1_d\(9) & !\dut_alu|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(9),
	datab => \d1|src1_d\(9),
	datad => VCC,
	cin => \dut_alu|LessThan0~17_cout\,
	cout => \dut_alu|LessThan0~19_cout\);

-- Location: LCCOMB_X88_Y45_N20
\dut_alu|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~21_cout\ = CARRY((\d1|src1_d\(10) & ((!\dut_alu|LessThan0~19_cout\) # (!\d1|src2_d\(10)))) # (!\d1|src1_d\(10) & (!\d1|src2_d\(10) & !\dut_alu|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(10),
	datab => \d1|src2_d\(10),
	datad => VCC,
	cin => \dut_alu|LessThan0~19_cout\,
	cout => \dut_alu|LessThan0~21_cout\);

-- Location: LCCOMB_X88_Y45_N22
\dut_alu|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~23_cout\ = CARRY((\d1|src2_d\(11) & ((!\dut_alu|LessThan0~21_cout\) # (!\d1|src1_d\(11)))) # (!\d1|src2_d\(11) & (!\d1|src1_d\(11) & !\dut_alu|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(11),
	datab => \d1|src1_d\(11),
	datad => VCC,
	cin => \dut_alu|LessThan0~21_cout\,
	cout => \dut_alu|LessThan0~23_cout\);

-- Location: LCCOMB_X88_Y45_N24
\dut_alu|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~25_cout\ = CARRY((\d1|src1_d\(12) & ((!\dut_alu|LessThan0~23_cout\) # (!\d1|src2_d\(12)))) # (!\d1|src1_d\(12) & (!\d1|src2_d\(12) & !\dut_alu|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(12),
	datab => \d1|src2_d\(12),
	datad => VCC,
	cin => \dut_alu|LessThan0~23_cout\,
	cout => \dut_alu|LessThan0~25_cout\);

-- Location: LCCOMB_X88_Y45_N26
\dut_alu|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~27_cout\ = CARRY((\d1|src1_d\(13) & (\d1|src2_d\(13) & !\dut_alu|LessThan0~25_cout\)) # (!\d1|src1_d\(13) & ((\d1|src2_d\(13)) # (!\dut_alu|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(13),
	datab => \d1|src2_d\(13),
	datad => VCC,
	cin => \dut_alu|LessThan0~25_cout\,
	cout => \dut_alu|LessThan0~27_cout\);

-- Location: LCCOMB_X88_Y45_N28
\dut_alu|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~29_cout\ = CARRY((\d1|src2_d\(14) & (\d1|src1_d\(14) & !\dut_alu|LessThan0~27_cout\)) # (!\d1|src2_d\(14) & ((\d1|src1_d\(14)) # (!\dut_alu|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(14),
	datab => \d1|src1_d\(14),
	datad => VCC,
	cin => \dut_alu|LessThan0~27_cout\,
	cout => \dut_alu|LessThan0~29_cout\);

-- Location: LCCOMB_X88_Y45_N30
\dut_alu|LessThan0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~30_combout\ = (\d1|src2_d\(15) & (\dut_alu|LessThan0~29_cout\ & \d1|src1_d\(15))) # (!\d1|src2_d\(15) & ((\dut_alu|LessThan0~29_cout\) # (\d1|src1_d\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(15),
	datad => \d1|src1_d\(15),
	cin => \dut_alu|LessThan0~29_cout\,
	combout => \dut_alu|LessThan0~30_combout\);

-- Location: LCCOMB_X84_Y47_N8
\dut_alu|LessThan0~30_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|LessThan0~30_wirecell_combout\ = !\dut_alu|LessThan0~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|LessThan0~30_combout\,
	combout => \dut_alu|LessThan0~30_wirecell_combout\);

-- Location: LCCOMB_X95_Y47_N24
\dut_alu|always2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|always2~3_combout\ = (!\d1|dtype_d\(1) & (\d1|dtype_d\(0) & \dut_alu|result_d[15]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|dtype_d\(1),
	datac => \d1|dtype_d\(0),
	datad => \dut_alu|result_d[15]~34_combout\,
	combout => \dut_alu|always2~3_combout\);

-- Location: LCCOMB_X95_Y47_N26
\dut_alu|always2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|always2~4_combout\ = (!\d1|dtype_d\(1) & (\d1|dtype_d\(0) & \dut_alu|always2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|dtype_d\(1),
	datab => \d1|dtype_d\(0),
	datac => \dut_alu|always2~0_combout\,
	combout => \dut_alu|always2~4_combout\);

-- Location: LCCOMB_X95_Y47_N4
\dut_alu|result_d[17]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[17]~36_combout\ = ((\d1|dtype_d\(0)) # ((!\dut_alu|always2~0_combout\ & !\dut_alu|result_d[15]~34_combout\))) # (!\d1|dtype_d\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|dtype_d\(1),
	datab => \dut_alu|always2~0_combout\,
	datac => \d1|dtype_d\(0),
	datad => \dut_alu|result_d[15]~34_combout\,
	combout => \dut_alu|result_d[17]~36_combout\);

-- Location: LCCOMB_X95_Y50_N22
\dut_alu|result_d[17]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[17]~37_combout\ = (\dut_alu|always2~4_combout\) # (((\dut_alu|always2~3_combout\) # (!\dut_alu|result_d[17]~36_combout\)) # (!\dut_alu|result_d[17]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|always2~4_combout\,
	datab => \dut_alu|result_d[17]~35_combout\,
	datac => \dut_alu|result_d[17]~36_combout\,
	datad => \dut_alu|always2~3_combout\,
	combout => \dut_alu|result_d[17]~37_combout\);

-- Location: FF_X95_Y50_N3
\dut_alu|result_d[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[25]~5_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(25));

-- Location: FF_X95_Y48_N13
\dut_alu|dut_mul_s|result[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(5),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(21));

-- Location: FF_X95_Y48_N31
\dut_alu|dut_mul_u|result[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(5),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(21));

-- Location: LCCOMB_X95_Y48_N10
\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\ = (\dut_alu|Add1~30_combout\ & (\dut_alu|Add1~32_combout\ & ((\d1|src1_d\(15)) # (!\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\)))) # (!\dut_alu|Add1~30_combout\ & 
-- ((\dut_alu|Add1~32_combout\) # ((\d1|src1_d\(15) & !\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~30_combout\,
	datab => \dut_alu|Add1~32_combout\,
	datac => \d1|src1_d\(15),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\);

-- Location: LCCOMB_X95_Y48_N30
\dut_alu|result_d~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~54_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\) # ((\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & (!\dut_alu|result_d[17]~31_combout\ & 
-- (\dut_alu|dut_mul_u|result\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|result_d[17]~31_combout\,
	datac => \dut_alu|dut_mul_u|result\(21),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\,
	combout => \dut_alu|result_d~54_combout\);

-- Location: LCCOMB_X95_Y48_N12
\dut_alu|result_d~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~55_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|result_d~54_combout\ & (\dut_alu|dut_divider_u|q\(5))) # (!\dut_alu|result_d~54_combout\ & ((\dut_alu|dut_mul_s|result\(21)))))) # (!\dut_alu|result_d[17]~31_combout\ & 
-- (((\dut_alu|result_d~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_divider_u|q\(5),
	datac => \dut_alu|dut_mul_s|result\(21),
	datad => \dut_alu|result_d~54_combout\,
	combout => \dut_alu|result_d~55_combout\);

-- Location: LCCOMB_X95_Y50_N10
\dut_alu|result_d[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[21]~9_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|always2~2_combout\,
	datad => \dut_alu|result_d~55_combout\,
	combout => \dut_alu|result_d[21]~9_combout\);

-- Location: FF_X95_Y50_N11
\dut_alu|result_d[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[21]~9_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(21));

-- Location: LCCOMB_X89_Y46_N0
\dut_alu|src2_not[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[0]~1_cout\ = CARRY(!\d1|src2_d\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(0),
	datad => VCC,
	cout => \dut_alu|src2_not[0]~1_cout\);

-- Location: LCCOMB_X89_Y46_N2
\dut_alu|src2_not[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[1]~2_combout\ = (\d1|src2_d\(1) & ((\dut_alu|src2_not[0]~1_cout\) # (GND))) # (!\d1|src2_d\(1) & (!\dut_alu|src2_not[0]~1_cout\))
-- \dut_alu|src2_not[1]~3\ = CARRY((\d1|src2_d\(1)) # (!\dut_alu|src2_not[0]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(1),
	datad => VCC,
	cin => \dut_alu|src2_not[0]~1_cout\,
	combout => \dut_alu|src2_not[1]~2_combout\,
	cout => \dut_alu|src2_not[1]~3\);

-- Location: LCCOMB_X89_Y46_N4
\dut_alu|src2_not[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[2]~4_combout\ = (\d1|src2_d\(2) & (!\dut_alu|src2_not[1]~3\ & VCC)) # (!\d1|src2_d\(2) & (\dut_alu|src2_not[1]~3\ $ (GND)))
-- \dut_alu|src2_not[2]~5\ = CARRY((!\d1|src2_d\(2) & !\dut_alu|src2_not[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(2),
	datad => VCC,
	cin => \dut_alu|src2_not[1]~3\,
	combout => \dut_alu|src2_not[2]~4_combout\,
	cout => \dut_alu|src2_not[2]~5\);

-- Location: LCCOMB_X89_Y46_N6
\dut_alu|src2_not[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[3]~6_combout\ = (\d1|src2_d\(3) & ((\dut_alu|src2_not[2]~5\) # (GND))) # (!\d1|src2_d\(3) & (!\dut_alu|src2_not[2]~5\))
-- \dut_alu|src2_not[3]~7\ = CARRY((\d1|src2_d\(3)) # (!\dut_alu|src2_not[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(3),
	datad => VCC,
	cin => \dut_alu|src2_not[2]~5\,
	combout => \dut_alu|src2_not[3]~6_combout\,
	cout => \dut_alu|src2_not[3]~7\);

-- Location: LCCOMB_X89_Y46_N8
\dut_alu|src2_not[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[4]~8_combout\ = (\d1|src2_d\(4) & (!\dut_alu|src2_not[3]~7\ & VCC)) # (!\d1|src2_d\(4) & (\dut_alu|src2_not[3]~7\ $ (GND)))
-- \dut_alu|src2_not[4]~9\ = CARRY((!\d1|src2_d\(4) & !\dut_alu|src2_not[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(4),
	datad => VCC,
	cin => \dut_alu|src2_not[3]~7\,
	combout => \dut_alu|src2_not[4]~8_combout\,
	cout => \dut_alu|src2_not[4]~9\);

-- Location: LCCOMB_X89_Y46_N10
\dut_alu|src2_not[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[5]~10_combout\ = (\d1|src2_d\(5) & ((\dut_alu|src2_not[4]~9\) # (GND))) # (!\d1|src2_d\(5) & (!\dut_alu|src2_not[4]~9\))
-- \dut_alu|src2_not[5]~11\ = CARRY((\d1|src2_d\(5)) # (!\dut_alu|src2_not[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(5),
	datad => VCC,
	cin => \dut_alu|src2_not[4]~9\,
	combout => \dut_alu|src2_not[5]~10_combout\,
	cout => \dut_alu|src2_not[5]~11\);

-- Location: LCCOMB_X89_Y46_N12
\dut_alu|src2_not[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[6]~12_combout\ = (\d1|src2_d\(6) & (!\dut_alu|src2_not[5]~11\ & VCC)) # (!\d1|src2_d\(6) & (\dut_alu|src2_not[5]~11\ $ (GND)))
-- \dut_alu|src2_not[6]~13\ = CARRY((!\d1|src2_d\(6) & !\dut_alu|src2_not[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(6),
	datad => VCC,
	cin => \dut_alu|src2_not[5]~11\,
	combout => \dut_alu|src2_not[6]~12_combout\,
	cout => \dut_alu|src2_not[6]~13\);

-- Location: LCCOMB_X89_Y46_N14
\dut_alu|src2_not[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[7]~14_combout\ = (\d1|src2_d\(7) & ((\dut_alu|src2_not[6]~13\) # (GND))) # (!\d1|src2_d\(7) & (!\dut_alu|src2_not[6]~13\))
-- \dut_alu|src2_not[7]~15\ = CARRY((\d1|src2_d\(7)) # (!\dut_alu|src2_not[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(7),
	datad => VCC,
	cin => \dut_alu|src2_not[6]~13\,
	combout => \dut_alu|src2_not[7]~14_combout\,
	cout => \dut_alu|src2_not[7]~15\);

-- Location: LCCOMB_X89_Y46_N16
\dut_alu|src2_not[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[8]~16_combout\ = (\d1|src2_d\(8) & (!\dut_alu|src2_not[7]~15\ & VCC)) # (!\d1|src2_d\(8) & (\dut_alu|src2_not[7]~15\ $ (GND)))
-- \dut_alu|src2_not[8]~17\ = CARRY((!\d1|src2_d\(8) & !\dut_alu|src2_not[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(8),
	datad => VCC,
	cin => \dut_alu|src2_not[7]~15\,
	combout => \dut_alu|src2_not[8]~16_combout\,
	cout => \dut_alu|src2_not[8]~17\);

-- Location: LCCOMB_X89_Y46_N18
\dut_alu|src2_not[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[9]~18_combout\ = (\d1|src2_d\(9) & ((\dut_alu|src2_not[8]~17\) # (GND))) # (!\d1|src2_d\(9) & (!\dut_alu|src2_not[8]~17\))
-- \dut_alu|src2_not[9]~19\ = CARRY((\d1|src2_d\(9)) # (!\dut_alu|src2_not[8]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(9),
	datad => VCC,
	cin => \dut_alu|src2_not[8]~17\,
	combout => \dut_alu|src2_not[9]~18_combout\,
	cout => \dut_alu|src2_not[9]~19\);

-- Location: LCCOMB_X89_Y46_N20
\dut_alu|src2_not[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[10]~20_combout\ = (\d1|src2_d\(10) & (!\dut_alu|src2_not[9]~19\ & VCC)) # (!\d1|src2_d\(10) & (\dut_alu|src2_not[9]~19\ $ (GND)))
-- \dut_alu|src2_not[10]~21\ = CARRY((!\d1|src2_d\(10) & !\dut_alu|src2_not[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(10),
	datad => VCC,
	cin => \dut_alu|src2_not[9]~19\,
	combout => \dut_alu|src2_not[10]~20_combout\,
	cout => \dut_alu|src2_not[10]~21\);

-- Location: LCCOMB_X89_Y46_N22
\dut_alu|src2_not[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[11]~22_combout\ = (\d1|src2_d\(11) & ((\dut_alu|src2_not[10]~21\) # (GND))) # (!\d1|src2_d\(11) & (!\dut_alu|src2_not[10]~21\))
-- \dut_alu|src2_not[11]~23\ = CARRY((\d1|src2_d\(11)) # (!\dut_alu|src2_not[10]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(11),
	datad => VCC,
	cin => \dut_alu|src2_not[10]~21\,
	combout => \dut_alu|src2_not[11]~22_combout\,
	cout => \dut_alu|src2_not[11]~23\);

-- Location: LCCOMB_X89_Y46_N24
\dut_alu|src2_not[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[12]~24_combout\ = (\d1|src2_d\(12) & (!\dut_alu|src2_not[11]~23\ & VCC)) # (!\d1|src2_d\(12) & (\dut_alu|src2_not[11]~23\ $ (GND)))
-- \dut_alu|src2_not[12]~25\ = CARRY((!\d1|src2_d\(12) & !\dut_alu|src2_not[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(12),
	datad => VCC,
	cin => \dut_alu|src2_not[11]~23\,
	combout => \dut_alu|src2_not[12]~24_combout\,
	cout => \dut_alu|src2_not[12]~25\);

-- Location: LCCOMB_X89_Y46_N26
\dut_alu|src2_not[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[13]~26_combout\ = (\d1|src2_d\(13) & ((\dut_alu|src2_not[12]~25\) # (GND))) # (!\d1|src2_d\(13) & (!\dut_alu|src2_not[12]~25\))
-- \dut_alu|src2_not[13]~27\ = CARRY((\d1|src2_d\(13)) # (!\dut_alu|src2_not[12]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(13),
	datad => VCC,
	cin => \dut_alu|src2_not[12]~25\,
	combout => \dut_alu|src2_not[13]~26_combout\,
	cout => \dut_alu|src2_not[13]~27\);

-- Location: LCCOMB_X85_Y48_N0
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[1]~0_combout\ = (\d1|src1_d\(1) & ((\dut_alu|src2_not[1]~2_combout\) # ((\d1|src1_d\(0) & \d1|src2_d\(0))))) # (!\d1|src1_d\(1) & (\d1|src1_d\(0) & (\d1|src2_d\(0) & \dut_alu|src2_not[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(0),
	datab => \d1|src2_d\(0),
	datac => \d1|src1_d\(1),
	datad => \dut_alu|src2_not[1]~2_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[1]~0_combout\);

-- Location: LCCOMB_X85_Y48_N12
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~2_combout\ = (\dut_alu|src2_not[2]~4_combout\ & ((\d1|src1_d\(2)) # (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(2),
	datab => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[1]~0_combout\,
	datac => \dut_alu|src2_not[2]~4_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~2_combout\);

-- Location: LCCOMB_X85_Y48_N2
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~1_combout\ = (\d1|src1_d\(2) & \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|src1_d\(2),
	datad => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[1]~0_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~1_combout\);

-- Location: LCCOMB_X85_Y48_N6
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[3]~3_combout\ = (\dut_alu|src2_not[3]~6_combout\ & ((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~2_combout\) # ((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~1_combout\) # (\d1|src1_d\(3))))) 
-- # (!\dut_alu|src2_not[3]~6_combout\ & (\d1|src1_d\(3) & ((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~2_combout\) # (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~2_combout\,
	datab => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~1_combout\,
	datac => \dut_alu|src2_not[3]~6_combout\,
	datad => \d1|src1_d\(3),
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[3]~3_combout\);

-- Location: LCCOMB_X87_Y44_N0
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~0_combout\ = (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[3]~3_combout\ & \d1|src1_d\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[3]~3_combout\,
	datad => \d1|src1_d\(4),
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~0_combout\);

-- Location: LCCOMB_X87_Y44_N26
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~1_combout\ = (\dut_alu|src2_not[4]~8_combout\ & ((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[3]~3_combout\) # (\d1|src1_d\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|src2_not[4]~8_combout\,
	datac => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[3]~3_combout\,
	datad => \d1|src1_d\(4),
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~1_combout\);

-- Location: LCCOMB_X87_Y44_N12
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[1]~2_combout\ = (\dut_alu|src2_not[5]~10_combout\ & ((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~0_combout\) # ((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~1_combout\) # 
-- (\d1|src1_d\(5))))) # (!\dut_alu|src2_not[5]~10_combout\ & (\d1|src1_d\(5) & ((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~0_combout\) # (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|src2_not[5]~10_combout\,
	datab => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~0_combout\,
	datac => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~1_combout\,
	datad => \d1|src1_d\(5),
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[1]~2_combout\);

-- Location: LCCOMB_X87_Y44_N16
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~4_combout\ = (\dut_alu|src2_not[6]~12_combout\ & ((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[1]~2_combout\) # (\d1|src1_d\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[1]~2_combout\,
	datab => \d1|src1_d\(6),
	datac => \dut_alu|src2_not[6]~12_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~4_combout\);

-- Location: LCCOMB_X87_Y44_N6
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~3_combout\ = (\d1|src1_d\(6) & \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|src1_d\(6),
	datad => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~3_combout\);

-- Location: LCCOMB_X87_Y44_N2
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[3]~5_combout\ = (\dut_alu|src2_not[7]~14_combout\ & ((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~4_combout\) # ((\d1|src1_d\(7)) # 
-- (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~3_combout\)))) # (!\dut_alu|src2_not[7]~14_combout\ & (\d1|src1_d\(7) & ((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~4_combout\) # 
-- (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|src2_not[7]~14_combout\,
	datab => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~4_combout\,
	datac => \d1|src1_d\(7),
	datad => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~3_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[3]~5_combout\);

-- Location: LCCOMB_X91_Y46_N10
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~1_combout\ = (\dut_alu|src2_not[8]~16_combout\ & ((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[3]~5_combout\) # (\d1|src1_d\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|src2_not[8]~16_combout\,
	datac => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[3]~5_combout\,
	datad => \d1|src1_d\(8),
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~1_combout\);

-- Location: LCCOMB_X91_Y46_N24
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~0_combout\ = (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[3]~5_combout\ & \d1|src1_d\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[3]~5_combout\,
	datad => \d1|src1_d\(8),
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~0_combout\);

-- Location: LCCOMB_X91_Y46_N4
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[1]~2_combout\ = (\d1|src1_d\(9) & ((\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~1_combout\) # ((\dut_alu|src2_not[9]~18_combout\) # 
-- (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~0_combout\)))) # (!\d1|src1_d\(9) & (\dut_alu|src2_not[9]~18_combout\ & ((\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~1_combout\) # 
-- (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~1_combout\,
	datab => \d1|src1_d\(9),
	datac => \dut_alu|src2_not[9]~18_combout\,
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~0_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[1]~2_combout\);

-- Location: LCCOMB_X90_Y46_N6
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~4_combout\ = (\dut_alu|src2_not[10]~20_combout\ & ((\d1|src1_d\(10)) # (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(10),
	datab => \dut_alu|src2_not[10]~20_combout\,
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~4_combout\);

-- Location: LCCOMB_X90_Y46_N20
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~3_combout\ = (\d1|src1_d\(10) & \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(10),
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~3_combout\);

-- Location: LCCOMB_X90_Y46_N16
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[3]~5_combout\ = (\d1|src1_d\(11) & ((\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~4_combout\) # ((\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~3_combout\) # 
-- (\dut_alu|src2_not[11]~22_combout\)))) # (!\d1|src1_d\(11) & (\dut_alu|src2_not[11]~22_combout\ & ((\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~4_combout\) # (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~4_combout\,
	datab => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~3_combout\,
	datac => \d1|src1_d\(11),
	datad => \dut_alu|src2_not[11]~22_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[3]~5_combout\);

-- Location: LCCOMB_X90_Y46_N30
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~1_combout\ = (\dut_alu|src2_not[12]~24_combout\ & ((\d1|src1_d\(12)) # (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|src2_not[12]~24_combout\,
	datac => \d1|src1_d\(12),
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[3]~5_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~1_combout\);

-- Location: LCCOMB_X90_Y46_N12
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~0_combout\ = (\d1|src1_d\(12) & \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|src1_d\(12),
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[3]~5_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~0_combout\);

-- Location: LCCOMB_X90_Y46_N24
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f01|sum~combout\ = \dut_alu|src2_not[13]~26_combout\ $ (\d1|src1_d\(13) $ (((\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~1_combout\) # (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|src2_not[13]~26_combout\,
	datab => \d1|src1_d\(13),
	datac => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~1_combout\,
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~0_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f01|sum~combout\);

-- Location: LCCOMB_X87_Y45_N0
\dut_alu|dut_divider_u|result[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[0]~16_combout\ = (\d1|src2_d\(0) & (\dut_alu|dut_divider_u|A\(0) $ (VCC))) # (!\d1|src2_d\(0) & (\dut_alu|dut_divider_u|A\(0) & VCC))
-- \dut_alu|dut_divider_u|result[0]~17\ = CARRY((\d1|src2_d\(0) & \dut_alu|dut_divider_u|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(0),
	datab => \dut_alu|dut_divider_u|A\(0),
	datad => VCC,
	combout => \dut_alu|dut_divider_u|result[0]~16_combout\,
	cout => \dut_alu|dut_divider_u|result[0]~17\);

-- Location: LCCOMB_X87_Y45_N2
\dut_alu|dut_divider_u|result[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[1]~18_combout\ = (\d1|src2_d\(1) & ((\dut_alu|dut_divider_u|A\(1) & (\dut_alu|dut_divider_u|result[0]~17\ & VCC)) # (!\dut_alu|dut_divider_u|A\(1) & (!\dut_alu|dut_divider_u|result[0]~17\)))) # (!\d1|src2_d\(1) & 
-- ((\dut_alu|dut_divider_u|A\(1) & (!\dut_alu|dut_divider_u|result[0]~17\)) # (!\dut_alu|dut_divider_u|A\(1) & ((\dut_alu|dut_divider_u|result[0]~17\) # (GND)))))
-- \dut_alu|dut_divider_u|result[1]~19\ = CARRY((\d1|src2_d\(1) & (!\dut_alu|dut_divider_u|A\(1) & !\dut_alu|dut_divider_u|result[0]~17\)) # (!\d1|src2_d\(1) & ((!\dut_alu|dut_divider_u|result[0]~17\) # (!\dut_alu|dut_divider_u|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(1),
	datab => \dut_alu|dut_divider_u|A\(1),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[0]~17\,
	combout => \dut_alu|dut_divider_u|result[1]~18_combout\,
	cout => \dut_alu|dut_divider_u|result[1]~19\);

-- Location: LCCOMB_X87_Y45_N4
\dut_alu|dut_divider_u|result[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[2]~20_combout\ = ((\dut_alu|dut_divider_u|A\(2) $ (\d1|src2_d\(2) $ (!\dut_alu|dut_divider_u|result[1]~19\)))) # (GND)
-- \dut_alu|dut_divider_u|result[2]~21\ = CARRY((\dut_alu|dut_divider_u|A\(2) & ((\d1|src2_d\(2)) # (!\dut_alu|dut_divider_u|result[1]~19\))) # (!\dut_alu|dut_divider_u|A\(2) & (\d1|src2_d\(2) & !\dut_alu|dut_divider_u|result[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(2),
	datab => \d1|src2_d\(2),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[1]~19\,
	combout => \dut_alu|dut_divider_u|result[2]~20_combout\,
	cout => \dut_alu|dut_divider_u|result[2]~21\);

-- Location: LCCOMB_X87_Y45_N6
\dut_alu|dut_divider_u|result[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[3]~22_combout\ = (\dut_alu|dut_divider_u|A\(3) & ((\d1|src2_d\(3) & (\dut_alu|dut_divider_u|result[2]~21\ & VCC)) # (!\d1|src2_d\(3) & (!\dut_alu|dut_divider_u|result[2]~21\)))) # (!\dut_alu|dut_divider_u|A\(3) & 
-- ((\d1|src2_d\(3) & (!\dut_alu|dut_divider_u|result[2]~21\)) # (!\d1|src2_d\(3) & ((\dut_alu|dut_divider_u|result[2]~21\) # (GND)))))
-- \dut_alu|dut_divider_u|result[3]~23\ = CARRY((\dut_alu|dut_divider_u|A\(3) & (!\d1|src2_d\(3) & !\dut_alu|dut_divider_u|result[2]~21\)) # (!\dut_alu|dut_divider_u|A\(3) & ((!\dut_alu|dut_divider_u|result[2]~21\) # (!\d1|src2_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(3),
	datab => \d1|src2_d\(3),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[2]~21\,
	combout => \dut_alu|dut_divider_u|result[3]~22_combout\,
	cout => \dut_alu|dut_divider_u|result[3]~23\);

-- Location: LCCOMB_X87_Y45_N8
\dut_alu|dut_divider_u|result[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[4]~24_combout\ = ((\dut_alu|dut_divider_u|A\(4) $ (\d1|src2_d\(4) $ (!\dut_alu|dut_divider_u|result[3]~23\)))) # (GND)
-- \dut_alu|dut_divider_u|result[4]~25\ = CARRY((\dut_alu|dut_divider_u|A\(4) & ((\d1|src2_d\(4)) # (!\dut_alu|dut_divider_u|result[3]~23\))) # (!\dut_alu|dut_divider_u|A\(4) & (\d1|src2_d\(4) & !\dut_alu|dut_divider_u|result[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(4),
	datab => \d1|src2_d\(4),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[3]~23\,
	combout => \dut_alu|dut_divider_u|result[4]~24_combout\,
	cout => \dut_alu|dut_divider_u|result[4]~25\);

-- Location: LCCOMB_X87_Y45_N10
\dut_alu|dut_divider_u|result[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[5]~26_combout\ = (\dut_alu|dut_divider_u|A\(5) & ((\d1|src2_d\(5) & (\dut_alu|dut_divider_u|result[4]~25\ & VCC)) # (!\d1|src2_d\(5) & (!\dut_alu|dut_divider_u|result[4]~25\)))) # (!\dut_alu|dut_divider_u|A\(5) & 
-- ((\d1|src2_d\(5) & (!\dut_alu|dut_divider_u|result[4]~25\)) # (!\d1|src2_d\(5) & ((\dut_alu|dut_divider_u|result[4]~25\) # (GND)))))
-- \dut_alu|dut_divider_u|result[5]~27\ = CARRY((\dut_alu|dut_divider_u|A\(5) & (!\d1|src2_d\(5) & !\dut_alu|dut_divider_u|result[4]~25\)) # (!\dut_alu|dut_divider_u|A\(5) & ((!\dut_alu|dut_divider_u|result[4]~25\) # (!\d1|src2_d\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(5),
	datab => \d1|src2_d\(5),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[4]~25\,
	combout => \dut_alu|dut_divider_u|result[5]~26_combout\,
	cout => \dut_alu|dut_divider_u|result[5]~27\);

-- Location: LCCOMB_X87_Y45_N12
\dut_alu|dut_divider_u|result[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[6]~28_combout\ = ((\dut_alu|dut_divider_u|A\(6) $ (\d1|src2_d\(6) $ (!\dut_alu|dut_divider_u|result[5]~27\)))) # (GND)
-- \dut_alu|dut_divider_u|result[6]~29\ = CARRY((\dut_alu|dut_divider_u|A\(6) & ((\d1|src2_d\(6)) # (!\dut_alu|dut_divider_u|result[5]~27\))) # (!\dut_alu|dut_divider_u|A\(6) & (\d1|src2_d\(6) & !\dut_alu|dut_divider_u|result[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(6),
	datab => \d1|src2_d\(6),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[5]~27\,
	combout => \dut_alu|dut_divider_u|result[6]~28_combout\,
	cout => \dut_alu|dut_divider_u|result[6]~29\);

-- Location: LCCOMB_X87_Y45_N14
\dut_alu|dut_divider_u|result[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[7]~30_combout\ = (\d1|src2_d\(7) & ((\dut_alu|dut_divider_u|A\(7) & (\dut_alu|dut_divider_u|result[6]~29\ & VCC)) # (!\dut_alu|dut_divider_u|A\(7) & (!\dut_alu|dut_divider_u|result[6]~29\)))) # (!\d1|src2_d\(7) & 
-- ((\dut_alu|dut_divider_u|A\(7) & (!\dut_alu|dut_divider_u|result[6]~29\)) # (!\dut_alu|dut_divider_u|A\(7) & ((\dut_alu|dut_divider_u|result[6]~29\) # (GND)))))
-- \dut_alu|dut_divider_u|result[7]~31\ = CARRY((\d1|src2_d\(7) & (!\dut_alu|dut_divider_u|A\(7) & !\dut_alu|dut_divider_u|result[6]~29\)) # (!\d1|src2_d\(7) & ((!\dut_alu|dut_divider_u|result[6]~29\) # (!\dut_alu|dut_divider_u|A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(7),
	datab => \dut_alu|dut_divider_u|A\(7),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[6]~29\,
	combout => \dut_alu|dut_divider_u|result[7]~30_combout\,
	cout => \dut_alu|dut_divider_u|result[7]~31\);

-- Location: LCCOMB_X87_Y45_N16
\dut_alu|dut_divider_u|result[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[8]~32_combout\ = ((\dut_alu|dut_divider_u|A\(8) $ (\d1|src2_d\(8) $ (!\dut_alu|dut_divider_u|result[7]~31\)))) # (GND)
-- \dut_alu|dut_divider_u|result[8]~33\ = CARRY((\dut_alu|dut_divider_u|A\(8) & ((\d1|src2_d\(8)) # (!\dut_alu|dut_divider_u|result[7]~31\))) # (!\dut_alu|dut_divider_u|A\(8) & (\d1|src2_d\(8) & !\dut_alu|dut_divider_u|result[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(8),
	datab => \d1|src2_d\(8),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[7]~31\,
	combout => \dut_alu|dut_divider_u|result[8]~32_combout\,
	cout => \dut_alu|dut_divider_u|result[8]~33\);

-- Location: LCCOMB_X87_Y45_N18
\dut_alu|dut_divider_u|result[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[9]~34_combout\ = (\d1|src2_d\(9) & ((\dut_alu|dut_divider_u|A\(9) & (\dut_alu|dut_divider_u|result[8]~33\ & VCC)) # (!\dut_alu|dut_divider_u|A\(9) & (!\dut_alu|dut_divider_u|result[8]~33\)))) # (!\d1|src2_d\(9) & 
-- ((\dut_alu|dut_divider_u|A\(9) & (!\dut_alu|dut_divider_u|result[8]~33\)) # (!\dut_alu|dut_divider_u|A\(9) & ((\dut_alu|dut_divider_u|result[8]~33\) # (GND)))))
-- \dut_alu|dut_divider_u|result[9]~35\ = CARRY((\d1|src2_d\(9) & (!\dut_alu|dut_divider_u|A\(9) & !\dut_alu|dut_divider_u|result[8]~33\)) # (!\d1|src2_d\(9) & ((!\dut_alu|dut_divider_u|result[8]~33\) # (!\dut_alu|dut_divider_u|A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(9),
	datab => \dut_alu|dut_divider_u|A\(9),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[8]~33\,
	combout => \dut_alu|dut_divider_u|result[9]~34_combout\,
	cout => \dut_alu|dut_divider_u|result[9]~35\);

-- Location: LCCOMB_X87_Y45_N20
\dut_alu|dut_divider_u|result[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[10]~36_combout\ = ((\d1|src2_d\(10) $ (\dut_alu|dut_divider_u|A\(10) $ (!\dut_alu|dut_divider_u|result[9]~35\)))) # (GND)
-- \dut_alu|dut_divider_u|result[10]~37\ = CARRY((\d1|src2_d\(10) & ((\dut_alu|dut_divider_u|A\(10)) # (!\dut_alu|dut_divider_u|result[9]~35\))) # (!\d1|src2_d\(10) & (\dut_alu|dut_divider_u|A\(10) & !\dut_alu|dut_divider_u|result[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(10),
	datab => \dut_alu|dut_divider_u|A\(10),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[9]~35\,
	combout => \dut_alu|dut_divider_u|result[10]~36_combout\,
	cout => \dut_alu|dut_divider_u|result[10]~37\);

-- Location: LCCOMB_X87_Y45_N22
\dut_alu|dut_divider_u|result[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[11]~38_combout\ = (\d1|src2_d\(11) & ((\dut_alu|dut_divider_u|A\(11) & (\dut_alu|dut_divider_u|result[10]~37\ & VCC)) # (!\dut_alu|dut_divider_u|A\(11) & (!\dut_alu|dut_divider_u|result[10]~37\)))) # (!\d1|src2_d\(11) & 
-- ((\dut_alu|dut_divider_u|A\(11) & (!\dut_alu|dut_divider_u|result[10]~37\)) # (!\dut_alu|dut_divider_u|A\(11) & ((\dut_alu|dut_divider_u|result[10]~37\) # (GND)))))
-- \dut_alu|dut_divider_u|result[11]~39\ = CARRY((\d1|src2_d\(11) & (!\dut_alu|dut_divider_u|A\(11) & !\dut_alu|dut_divider_u|result[10]~37\)) # (!\d1|src2_d\(11) & ((!\dut_alu|dut_divider_u|result[10]~37\) # (!\dut_alu|dut_divider_u|A\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(11),
	datab => \dut_alu|dut_divider_u|A\(11),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[10]~37\,
	combout => \dut_alu|dut_divider_u|result[11]~38_combout\,
	cout => \dut_alu|dut_divider_u|result[11]~39\);

-- Location: LCCOMB_X87_Y45_N24
\dut_alu|dut_divider_u|result[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[12]~40_combout\ = ((\dut_alu|dut_divider_u|A\(12) $ (\d1|src2_d\(12) $ (!\dut_alu|dut_divider_u|result[11]~39\)))) # (GND)
-- \dut_alu|dut_divider_u|result[12]~41\ = CARRY((\dut_alu|dut_divider_u|A\(12) & ((\d1|src2_d\(12)) # (!\dut_alu|dut_divider_u|result[11]~39\))) # (!\dut_alu|dut_divider_u|A\(12) & (\d1|src2_d\(12) & !\dut_alu|dut_divider_u|result[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(12),
	datab => \d1|src2_d\(12),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[11]~39\,
	combout => \dut_alu|dut_divider_u|result[12]~40_combout\,
	cout => \dut_alu|dut_divider_u|result[12]~41\);

-- Location: LCCOMB_X87_Y45_N26
\dut_alu|dut_divider_u|result[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[13]~43_combout\ = (\dut_alu|dut_divider_u|A\(13) & ((\d1|src2_d\(13) & (\dut_alu|dut_divider_u|result[12]~41\ & VCC)) # (!\d1|src2_d\(13) & (!\dut_alu|dut_divider_u|result[12]~41\)))) # (!\dut_alu|dut_divider_u|A\(13) & 
-- ((\d1|src2_d\(13) & (!\dut_alu|dut_divider_u|result[12]~41\)) # (!\d1|src2_d\(13) & ((\dut_alu|dut_divider_u|result[12]~41\) # (GND)))))
-- \dut_alu|dut_divider_u|result[13]~44\ = CARRY((\dut_alu|dut_divider_u|A\(13) & (!\d1|src2_d\(13) & !\dut_alu|dut_divider_u|result[12]~41\)) # (!\dut_alu|dut_divider_u|A\(13) & ((!\dut_alu|dut_divider_u|result[12]~41\) # (!\d1|src2_d\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(13),
	datab => \d1|src2_d\(13),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[12]~41\,
	combout => \dut_alu|dut_divider_u|result[13]~43_combout\,
	cout => \dut_alu|dut_divider_u|result[13]~44\);

-- Location: LCCOMB_X90_Y50_N22
\dut_alu|dut_divider_u|result~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result~42_combout\ = (\dut_alu|dut_divider_u|count\(4) & (!\dut_alu|dut_divider_u|A\(16) & !\dut_alu|dut_divider_u|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|count\(4),
	datac => \dut_alu|dut_divider_u|A\(16),
	datad => \dut_alu|dut_divider_u|Equal0~0_combout\,
	combout => \dut_alu|dut_divider_u|result~42_combout\);

-- Location: FF_X87_Y45_N27
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(13));

-- Location: LCCOMB_X91_Y49_N22
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f01|sum~combout\ = \d1|src1_d\(13) $ (\dut_alu|Add1~26_combout\ $ (((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(13),
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\,
	datac => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\,
	datad => \dut_alu|Add1~26_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f01|sum~combout\);

-- Location: LCCOMB_X91_Y49_N8
\dut_alu|dut_mul_s|result[13]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X91_Y49_N9
\dut_alu|dut_mul_s|result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[13]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(13));

-- Location: FF_X91_Y49_N11
\dut_alu|dut_mul_u|result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(13),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(13));

-- Location: LCCOMB_X91_Y49_N10
\dut_alu|result_d~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~77_combout\ = (\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\ & (\dut_alu|dut_mul_s|result\(13))) # 
-- (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_u|result\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_mul_s|result\(13),
	datac => \dut_alu|dut_mul_u|result\(13),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~77_combout\);

-- Location: LCCOMB_X91_Y49_N12
\dut_alu|result_d~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~78_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d~77_combout\ & (\dut_alu|dut_divider_u|result\(13))) # (!\dut_alu|result_d~77_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f01|sum~combout\))))) # 
-- (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_divider_u|result\(13),
	datac => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f01|sum~combout\,
	datad => \dut_alu|result_d~77_combout\,
	combout => \dut_alu|result_d~78_combout\);

-- Location: LCCOMB_X91_Y44_N18
\dut_alu|result_d[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[13]~16_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f01|sum~combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f01|sum~combout\,
	datab => \dut_alu|always2~4_combout\,
	datad => \dut_alu|result_d~78_combout\,
	combout => \dut_alu|result_d[13]~16_combout\);

-- Location: LCCOMB_X91_Y44_N4
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f01|sum~combout\ = \d1|src2_d\(13) $ (\d1|src1_d\(13) $ (((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~0_combout\,
	datab => \d1|src2_d\(13),
	datac => \d1|src1_d\(13),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[0]~1_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f01|sum~combout\);

-- Location: LCCOMB_X95_Y47_N6
\dut_alu|result_d[15]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[15]~76_combout\ = (\dut_alu|result_d[15]~34_combout\ & (\d1|dtype_d\(1) $ (\d1|dtype_d\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|dtype_d\(1),
	datac => \d1|dtype_d\(0),
	datad => \dut_alu|result_d[15]~34_combout\,
	combout => \dut_alu|result_d[15]~76_combout\);

-- Location: FF_X91_Y44_N19
\dut_alu|result_d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[13]~16_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f01|sum~combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(13));

-- Location: LCCOMB_X89_Y49_N12
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f01|sum~combout\ = \dut_alu|Add1~10_combout\ $ (\d1|src1_d\(5) $ (((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~11_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~11_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[0]~10_combout\,
	datac => \dut_alu|Add1~10_combout\,
	datad => \d1|src1_d\(5),
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f01|sum~combout\);

-- Location: LCCOMB_X90_Y48_N22
\dut_alu|dut_mul_s|result[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[5]~feeder_combout\ = \dut_alu|dut_mul_s|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(5),
	combout => \dut_alu|dut_mul_s|result[5]~feeder_combout\);

-- Location: FF_X90_Y48_N23
\dut_alu|dut_mul_s|result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[5]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(5));

-- Location: FF_X90_Y48_N9
\dut_alu|dut_mul_u|result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(5),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(5));

-- Location: LCCOMB_X90_Y48_N8
\dut_alu|result_d~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~93_combout\ = (\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\ & (\dut_alu|dut_mul_s|result\(5))) # 
-- (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_u|result\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|result\(5),
	datab => \dut_alu|result_d[17]~30_combout\,
	datac => \dut_alu|dut_mul_u|result\(5),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~93_combout\);

-- Location: FF_X87_Y45_N11
\dut_alu|dut_divider_u|result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[5]~26_combout\,
	asdata => \dut_alu|dut_divider_u|A\(5),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(5));

-- Location: LCCOMB_X90_Y48_N18
\dut_alu|result_d~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~94_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d~93_combout\ & ((\dut_alu|dut_divider_u|result\(5)))) # (!\dut_alu|result_d~93_combout\ & (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f01|sum~combout\)))) # 
-- (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f01|sum~combout\,
	datab => \dut_alu|result_d[17]~30_combout\,
	datac => \dut_alu|result_d~93_combout\,
	datad => \dut_alu|dut_divider_u|result\(5),
	combout => \dut_alu|result_d~94_combout\);

-- Location: LCCOMB_X87_Y44_N22
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f01|sum~combout\ = \dut_alu|src2_not[5]~10_combout\ $ (\d1|src1_d\(5) $ (((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~0_combout\) # (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|src2_not[5]~10_combout\,
	datab => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~0_combout\,
	datac => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[0]~1_combout\,
	datad => \d1|src1_d\(5),
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f01|sum~combout\);

-- Location: LCCOMB_X91_Y44_N22
\dut_alu|result_d[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[5]~24_combout\ = (\dut_alu|always2~4_combout\ & ((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f01|sum~combout\))) # (!\dut_alu|always2~4_combout\ & (\dut_alu|result_d~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d~94_combout\,
	datab => \dut_alu|always2~4_combout\,
	datad => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f01|sum~combout\,
	combout => \dut_alu|result_d[5]~24_combout\);

-- Location: LCCOMB_X94_Y47_N20
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f01|sum~combout\ = \d1|src1_d\(5) $ (\d1|src2_d\(5) $ (((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~1_combout\) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(5),
	datab => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~1_combout\,
	datac => \d1|src2_d\(5),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[0]~0_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f01|sum~combout\);

-- Location: FF_X91_Y44_N23
\dut_alu|result_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[5]~24_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f01|sum~combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(5));

-- Location: LCCOMB_X85_Y48_N24
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f01|sum~combout\ = \d1|src1_d\(1) $ (\dut_alu|src2_not[1]~2_combout\ $ (((\d1|src1_d\(0) & \d1|src2_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(0),
	datab => \d1|src2_d\(0),
	datac => \d1|src1_d\(1),
	datad => \dut_alu|src2_not[1]~2_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f01|sum~combout\);

-- Location: FF_X87_Y45_N3
\dut_alu|dut_divider_u|result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[1]~18_combout\,
	asdata => \dut_alu|dut_divider_u|A\(1),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(1));

-- Location: LCCOMB_X91_Y45_N28
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f01|sum~combout\ = \d1|src1_d\(1) $ (\dut_alu|Add1~2_combout\ $ (((\d1|src1_d\(0) & \d1|src2_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(1),
	datab => \d1|src1_d\(0),
	datac => \dut_alu|Add1~2_combout\,
	datad => \d1|src2_d\(0),
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f01|sum~combout\);

-- Location: LCCOMB_X91_Y45_N14
\dut_alu|dut_mul_s|result[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[1]~feeder_combout\ = \dut_alu|dut_mul_s|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(1),
	combout => \dut_alu|dut_mul_s|result[1]~feeder_combout\);

-- Location: FF_X91_Y45_N15
\dut_alu|dut_mul_s|result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[1]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(1));

-- Location: FF_X91_Y45_N9
\dut_alu|dut_mul_u|result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(1));

-- Location: LCCOMB_X91_Y45_N8
\dut_alu|result_d~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~102_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_s|result\(1)) # ((\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d[17]~31_combout\ & (((\dut_alu|dut_mul_u|result\(1) & 
-- !\dut_alu|result_d[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_mul_s|result\(1),
	datac => \dut_alu|dut_mul_u|result\(1),
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~102_combout\);

-- Location: LCCOMB_X91_Y45_N26
\dut_alu|result_d~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~103_combout\ = (\dut_alu|result_d~102_combout\ & ((\dut_alu|dut_divider_u|result\(1)) # ((!\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d~102_combout\ & (((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f01|sum~combout\ & 
-- \dut_alu|result_d[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(1),
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f01|sum~combout\,
	datac => \dut_alu|result_d~102_combout\,
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~103_combout\);

-- Location: LCCOMB_X91_Y44_N0
\dut_alu|result_d[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[1]~27_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f01|sum~combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f01|sum~combout\,
	datab => \dut_alu|result_d~103_combout\,
	datad => \dut_alu|always2~4_combout\,
	combout => \dut_alu|result_d[1]~27_combout\);

-- Location: LCCOMB_X92_Y48_N10
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f01|sum~combout\ = \d1|src1_d\(1) $ (\d1|src2_d\(1) $ (((\d1|src1_d\(0) & \d1|src2_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(0),
	datab => \d1|src1_d\(1),
	datac => \d1|src2_d\(1),
	datad => \d1|src2_d\(0),
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f01|sum~combout\);

-- Location: FF_X91_Y44_N1
\dut_alu|result_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[1]~27_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f01|sum~combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(1));

-- Location: LCCOMB_X91_Y44_N30
\dut_encorder|shift_result~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~30_combout\ = (\dut_alu|result_d\(1) & !\dut_encorder|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|result_d\(1),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~30_combout\);

-- Location: LCCOMB_X95_Y43_N0
\dut_encorder|shift_result[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result[28]~1_combout\ = (\dut_encorder|state.UART_SHIFT~q\) # (!\dut_encorder|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|state.IDLE~q\,
	datad => \dut_encorder|state.UART_SHIFT~q\,
	combout => \dut_encorder|shift_result[28]~1_combout\);

-- Location: FF_X91_Y44_N31
\dut_encorder|shift_result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~30_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(1));

-- Location: LCCOMB_X91_Y44_N2
\dut_encorder|shift_result~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~26_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(1)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d\(5),
	datac => \dut_encorder|shift_result\(1),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~26_combout\);

-- Location: FF_X91_Y44_N3
\dut_encorder|shift_result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~26_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(5));

-- Location: LCCOMB_X91_Y46_N20
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f01|sum~combout\ = \d1|src1_d\(9) $ (\dut_alu|src2_not[9]~18_combout\ $ (((\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~1_combout\) # (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~1_combout\,
	datab => \d1|src1_d\(9),
	datac => \dut_alu|src2_not[9]~18_combout\,
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[0]~0_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f01|sum~combout\);

-- Location: FF_X87_Y45_N19
\dut_alu|dut_divider_u|result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[9]~34_combout\,
	asdata => \dut_alu|dut_divider_u|A\(9),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(9));

-- Location: LCCOMB_X90_Y48_N24
\dut_alu|dut_mul_s|result[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[9]~feeder_combout\ = \dut_alu|dut_mul_s|q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|q\(9),
	combout => \dut_alu|dut_mul_s|result[9]~feeder_combout\);

-- Location: FF_X90_Y48_N25
\dut_alu|dut_mul_s|result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[9]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(9));

-- Location: FF_X90_Y48_N27
\dut_alu|dut_mul_u|result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(9),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(9));

-- Location: LCCOMB_X90_Y48_N26
\dut_alu|result_d~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~85_combout\ = (\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\ & (\dut_alu|dut_mul_s|result\(9))) # 
-- (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_u|result\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_mul_s|result\(9),
	datac => \dut_alu|dut_mul_u|result\(9),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~85_combout\);

-- Location: LCCOMB_X90_Y47_N24
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f01|sum~combout\ = \dut_alu|Add1~18_combout\ $ (\d1|src1_d\(9) $ (((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~2_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~18_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~2_combout\,
	datac => \d1|src1_d\(9),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[0]~4_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f01|sum~combout\);

-- Location: LCCOMB_X91_Y46_N18
\dut_alu|result_d~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~86_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d~85_combout\ & (\dut_alu|dut_divider_u|result\(9))) # (!\dut_alu|result_d~85_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f01|sum~combout\))))) # 
-- (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_divider_u|result\(9),
	datac => \dut_alu|result_d~85_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f01|sum~combout\,
	combout => \dut_alu|result_d~86_combout\);

-- Location: LCCOMB_X91_Y46_N2
\dut_alu|result_d[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[9]~20_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f01|sum~combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|always2~4_combout\,
	datab => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f01|sum~combout\,
	datad => \dut_alu|result_d~86_combout\,
	combout => \dut_alu|result_d[9]~20_combout\);

-- Location: LCCOMB_X91_Y46_N30
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f01|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f01|sum~combout\ = \d1|src1_d\(9) $ (\d1|src2_d\(9) $ (((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~1_combout\) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~1_combout\,
	datab => \d1|src1_d\(9),
	datac => \d1|src2_d\(9),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[0]~0_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f01|sum~combout\);

-- Location: FF_X91_Y46_N3
\dut_alu|result_d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[9]~20_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f01|sum~combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(9));

-- Location: LCCOMB_X91_Y44_N20
\dut_encorder|shift_result~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~22_combout\ = (\dut_encorder|state.IDLE~q\ & (\dut_encorder|shift_result\(5))) # (!\dut_encorder|state.IDLE~q\ & ((\dut_alu|result_d\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|shift_result\(5),
	datac => \dut_alu|result_d\(9),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~22_combout\);

-- Location: FF_X91_Y44_N21
\dut_encorder|shift_result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~22_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(9));

-- Location: LCCOMB_X91_Y44_N24
\dut_encorder|shift_result~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~18_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(9)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d\(13),
	datab => \dut_encorder|shift_result\(9),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~18_combout\);

-- Location: FF_X91_Y44_N25
\dut_encorder|shift_result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~18_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(13));

-- Location: LCCOMB_X91_Y49_N24
\dut_alu|dut_mul_s|result[17]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X91_Y49_N25
\dut_alu|dut_mul_s|result[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[17]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(17));

-- Location: FF_X91_Y49_N19
\dut_alu|dut_mul_u|result[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(17));

-- Location: LCCOMB_X91_Y49_N18
\dut_alu|result_d~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~68_combout\ = (\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\ & (\dut_alu|dut_mul_s|result\(17))) # 
-- (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_u|result\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_mul_s|result\(17),
	datac => \dut_alu|dut_mul_u|result\(17),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~68_combout\);

-- Location: LCCOMB_X92_Y46_N10
\dut_alu|result_d~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~69_combout\ = (\dut_alu|result_d~68_combout\ & (((\dut_alu|dut_divider_u|q\(1)) # (!\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d~68_combout\ & (\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\ & 
-- ((\dut_alu|result_d[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\,
	datab => \dut_alu|result_d~68_combout\,
	datac => \dut_alu|dut_divider_u|q\(1),
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~69_combout\);

-- Location: LCCOMB_X95_Y50_N8
\dut_alu|result_d[17]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[17]~12_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|result_d~69_combout\,
	datad => \dut_alu|always2~2_combout\,
	combout => \dut_alu|result_d[17]~12_combout\);

-- Location: FF_X95_Y50_N9
\dut_alu|result_d[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[17]~12_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(17));

-- Location: LCCOMB_X91_Y47_N4
\dut_encorder|shift_result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~14_combout\ = (\dut_encorder|state.IDLE~q\ & (\dut_encorder|shift_result\(13))) # (!\dut_encorder|state.IDLE~q\ & ((\dut_alu|result_d\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|shift_result\(13),
	datac => \dut_alu|result_d\(17),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~14_combout\);

-- Location: FF_X91_Y47_N5
\dut_encorder|shift_result[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(17));

-- Location: LCCOMB_X91_Y47_N14
\dut_encorder|shift_result~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~10_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(17)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|result_d\(21),
	datac => \dut_encorder|shift_result\(17),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~10_combout\);

-- Location: FF_X91_Y47_N15
\dut_encorder|shift_result[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~10_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(21));

-- Location: LCCOMB_X91_Y47_N0
\dut_encorder|shift_result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~6_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(21)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|result_d\(25),
	datac => \dut_encorder|shift_result\(21),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~6_combout\);

-- Location: FF_X91_Y47_N1
\dut_encorder|shift_result[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(25));

-- Location: FF_X95_Y46_N23
\dut_alu|dut_mul_s|result[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(13),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(29));

-- Location: LCCOMB_X94_Y46_N2
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~4_combout\ = (\dut_alu|Add1~28_combout\ & ((\d1|src1_d\(14)) # (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\))) # (!\dut_alu|Add1~28_combout\ & (\d1|src1_d\(14) & 
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|Add1~28_combout\,
	datac => \d1|src1_d\(14),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~4_combout\);

-- Location: LCCOMB_X94_Y46_N22
\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f01|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f01|sum~2_combout\ = (\dut_alu|Add1~30_combout\ & (\dut_alu|Add1~32_combout\ & ((\d1|src1_d\(15)) # (!\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~4_combout\)))) # (!\dut_alu|Add1~30_combout\ & 
-- ((\dut_alu|Add1~32_combout\) # ((\d1|src1_d\(15) & !\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~30_combout\,
	datab => \d1|src1_d\(15),
	datac => \dut_alu|Add1~32_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~4_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f01|sum~2_combout\);

-- Location: FF_X95_Y46_N17
\dut_alu|dut_mul_u|result[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(13),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(29));

-- Location: LCCOMB_X95_Y46_N16
\dut_alu|result_d~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~38_combout\ = (\dut_alu|result_d[17]~31_combout\ & (((\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|result_d[17]~30_combout\ & (\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f01|sum~2_combout\)) 
-- # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|dut_mul_u|result\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f01|sum~2_combout\,
	datac => \dut_alu|dut_mul_u|result\(29),
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~38_combout\);

-- Location: LCCOMB_X95_Y46_N22
\dut_alu|result_d~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~39_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|result_d~38_combout\ & (\dut_alu|dut_divider_u|q\(13))) # (!\dut_alu|result_d~38_combout\ & ((\dut_alu|dut_mul_s|result\(29)))))) # (!\dut_alu|result_d[17]~31_combout\ & 
-- (((\dut_alu|result_d~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_divider_u|q\(13),
	datac => \dut_alu|dut_mul_s|result\(29),
	datad => \dut_alu|result_d~38_combout\,
	combout => \dut_alu|result_d~39_combout\);

-- Location: LCCOMB_X95_Y50_N18
\dut_alu|result_d[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[29]~1_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|always2~2_combout\,
	datad => \dut_alu|result_d~39_combout\,
	combout => \dut_alu|result_d[29]~1_combout\);

-- Location: FF_X95_Y50_N19
\dut_alu|result_d[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[29]~1_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(29));

-- Location: LCCOMB_X91_Y47_N18
\dut_encorder|shift_result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~2_combout\ = (\dut_encorder|state.IDLE~q\ & (\dut_encorder|shift_result\(25))) # (!\dut_encorder|state.IDLE~q\ & ((\dut_alu|result_d\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|shift_result\(25),
	datac => \dut_alu|result_d\(29),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~2_combout\);

-- Location: FF_X91_Y47_N19
\dut_encorder|shift_result[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(29));

-- Location: FF_X97_Y45_N3
\dut_encorder|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_encorder|shift_result\(29),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_encorder|state.UART_SHIFT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|data\(1));

-- Location: LCCOMB_X85_Y45_N6
\dut_alu|dut_mul_s|result[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[22]~feeder_combout\ = \dut_alu|dut_mul_s|A\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|A\(6),
	combout => \dut_alu|dut_mul_s|result[22]~feeder_combout\);

-- Location: FF_X85_Y45_N7
\dut_alu|dut_mul_s|result[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[22]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(22));

-- Location: FF_X95_Y46_N5
\dut_alu|dut_mul_u|result[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(6),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(22));

-- Location: LCCOMB_X95_Y46_N4
\dut_alu|result_d~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~56_combout\ = (\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\ & (\dut_alu|dut_mul_s|result\(22))) # 
-- (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_u|result\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_mul_s|result\(22),
	datac => \dut_alu|dut_mul_u|result\(22),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~56_combout\);

-- Location: LCCOMB_X95_Y48_N8
\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\ = (\dut_alu|Add1~30_combout\ & (\dut_alu|Add1~32_combout\ & ((\d1|src1_d\(15)) # (!\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\)))) # (!\dut_alu|Add1~30_combout\ & 
-- ((\dut_alu|Add1~32_combout\) # ((\d1|src1_d\(15) & !\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~30_combout\,
	datab => \dut_alu|Add1~32_combout\,
	datac => \d1|src1_d\(15),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\);

-- Location: LCCOMB_X95_Y46_N14
\dut_alu|result_d~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~57_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d~56_combout\ & (\dut_alu|dut_divider_u|q\(6))) # (!\dut_alu|result_d~56_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\))))) # 
-- (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_divider_u|q\(6),
	datac => \dut_alu|result_d~56_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\,
	combout => \dut_alu|result_d~57_combout\);

-- Location: LCCOMB_X95_Y50_N12
\dut_alu|result_d[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[22]~10_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|result_d~57_combout\,
	datad => \dut_alu|always2~2_combout\,
	combout => \dut_alu|result_d[22]~10_combout\);

-- Location: FF_X95_Y50_N13
\dut_alu|result_d[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[22]~10_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(22));

-- Location: FF_X95_Y48_N15
\dut_alu|dut_mul_u|result[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(18));

-- Location: LCCOMB_X95_Y48_N14
\dut_alu|result_d~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~70_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\) # ((\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & (!\dut_alu|result_d[17]~31_combout\ & 
-- (\dut_alu|dut_mul_u|result\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|result_d[17]~31_combout\,
	datac => \dut_alu|dut_mul_u|result\(18),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\,
	combout => \dut_alu|result_d~70_combout\);

-- Location: FF_X95_Y48_N5
\dut_alu|dut_mul_s|result[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(18));

-- Location: LCCOMB_X95_Y48_N4
\dut_alu|result_d~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~71_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|result_d~70_combout\ & ((\dut_alu|dut_divider_u|q\(2)))) # (!\dut_alu|result_d~70_combout\ & (\dut_alu|dut_mul_s|result\(18))))) # (!\dut_alu|result_d[17]~31_combout\ & 
-- (\dut_alu|result_d~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|result_d~70_combout\,
	datac => \dut_alu|dut_mul_s|result\(18),
	datad => \dut_alu|dut_divider_u|q\(2),
	combout => \dut_alu|result_d~71_combout\);

-- Location: LCCOMB_X95_Y50_N26
\dut_alu|result_d[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[18]~13_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|always2~2_combout\,
	datad => \dut_alu|result_d~71_combout\,
	combout => \dut_alu|result_d[18]~13_combout\);

-- Location: FF_X95_Y50_N27
\dut_alu|result_d[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[18]~13_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(18));

-- Location: LCCOMB_X89_Y46_N28
\dut_alu|src2_not[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[14]~28_combout\ = (\d1|src2_d\(14) & (!\dut_alu|src2_not[13]~27\ & VCC)) # (!\d1|src2_d\(14) & (\dut_alu|src2_not[13]~27\ $ (GND)))
-- \dut_alu|src2_not[14]~29\ = CARRY((!\d1|src2_d\(14) & !\dut_alu|src2_not[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(14),
	datad => VCC,
	cin => \dut_alu|src2_not[13]~27\,
	combout => \dut_alu|src2_not[14]~28_combout\,
	cout => \dut_alu|src2_not[14]~29\);

-- Location: LCCOMB_X90_Y46_N10
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[1]~2_combout\ = (\dut_alu|src2_not[13]~26_combout\ & ((\d1|src1_d\(13)) # ((\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~1_combout\) # 
-- (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~0_combout\)))) # (!\dut_alu|src2_not[13]~26_combout\ & (\d1|src1_d\(13) & ((\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~1_combout\) # 
-- (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|src2_not[13]~26_combout\,
	datab => \d1|src1_d\(13),
	datac => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~1_combout\,
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[0]~0_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[1]~2_combout\);

-- Location: LCCOMB_X90_Y46_N4
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f02|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f02|sum~0_combout\ = \dut_alu|src2_not[14]~28_combout\ $ (\d1|src1_d\(14) $ (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|src2_not[14]~28_combout\,
	datac => \d1|src1_d\(14),
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f02|sum~0_combout\);

-- Location: LCCOMB_X87_Y45_N28
\dut_alu|dut_divider_u|result[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[14]~45_combout\ = ((\dut_alu|dut_divider_u|A\(14) $ (\d1|src2_d\(14) $ (!\dut_alu|dut_divider_u|result[13]~44\)))) # (GND)
-- \dut_alu|dut_divider_u|result[14]~46\ = CARRY((\dut_alu|dut_divider_u|A\(14) & ((\d1|src2_d\(14)) # (!\dut_alu|dut_divider_u|result[13]~44\))) # (!\dut_alu|dut_divider_u|A\(14) & (\d1|src2_d\(14) & !\dut_alu|dut_divider_u|result[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|A\(14),
	datab => \d1|src2_d\(14),
	datad => VCC,
	cin => \dut_alu|dut_divider_u|result[13]~44\,
	combout => \dut_alu|dut_divider_u|result[14]~45_combout\,
	cout => \dut_alu|dut_divider_u|result[14]~46\);

-- Location: FF_X87_Y45_N29
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(14));

-- Location: FF_X91_Y49_N7
\dut_alu|dut_mul_s|result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|q\(14),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(14));

-- Location: LCCOMB_X94_Y46_N24
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f02|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f02|sum~0_combout\ = \d1|src1_d\(14) $ (\dut_alu|Add1~28_combout\ $ (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(14),
	datab => \dut_alu|Add1~28_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f02|sum~0_combout\);

-- Location: FF_X91_Y49_N1
\dut_alu|dut_mul_u|result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(14),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(14));

-- Location: LCCOMB_X91_Y49_N0
\dut_alu|result_d~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~79_combout\ = (\dut_alu|result_d[17]~31_combout\ & (((\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|result_d[17]~30_combout\ & (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f02|sum~0_combout\)) 
-- # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|dut_mul_u|result\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f02|sum~0_combout\,
	datac => \dut_alu|dut_mul_u|result\(14),
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~79_combout\);

-- Location: LCCOMB_X91_Y49_N6
\dut_alu|result_d~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~80_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|result_d~79_combout\ & (\dut_alu|dut_divider_u|result\(14))) # (!\dut_alu|result_d~79_combout\ & ((\dut_alu|dut_mul_s|result\(14)))))) # (!\dut_alu|result_d[17]~31_combout\ & 
-- (((\dut_alu|result_d~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_divider_u|result\(14),
	datac => \dut_alu|dut_mul_s|result\(14),
	datad => \dut_alu|result_d~79_combout\,
	combout => \dut_alu|result_d~80_combout\);

-- Location: LCCOMB_X90_Y46_N8
\dut_alu|result_d[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[14]~17_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f02|sum~0_combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|always2~4_combout\,
	datab => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f02|sum~0_combout\,
	datad => \dut_alu|result_d~80_combout\,
	combout => \dut_alu|result_d[14]~17_combout\);

-- Location: LCCOMB_X94_Y46_N18
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f02|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f02|sum~0_combout\ = \d1|src1_d\(14) $ (\d1|src2_d\(14) $ (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(14),
	datab => \d1|src2_d\(14),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f02|sum~0_combout\);

-- Location: FF_X90_Y46_N9
\dut_alu|result_d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[14]~17_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f02|sum~0_combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(14));

-- Location: LCCOMB_X89_Y47_N12
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f02|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f02|sum~0_combout\ = \dut_alu|src2_not[10]~20_combout\ $ (\d1|src1_d\(10) $ (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|src2_not[10]~20_combout\,
	datac => \d1|src1_d\(10),
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f02|sum~0_combout\);

-- Location: FF_X87_Y45_N21
\dut_alu|dut_divider_u|result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[10]~36_combout\,
	asdata => \dut_alu|dut_divider_u|A\(10),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(10));

-- Location: LCCOMB_X90_Y48_N6
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f02|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f02|sum~0_combout\ = \d1|src1_d\(10) $ (\dut_alu|Add1~20_combout\ $ (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src1_d\(10),
	datac => \dut_alu|Add1~20_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[1]~5_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f02|sum~0_combout\);

-- Location: FF_X90_Y48_N17
\dut_alu|dut_mul_u|result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(10),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(10));

-- Location: LCCOMB_X90_Y48_N16
\dut_alu|result_d~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~87_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f02|sum~0_combout\) # ((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|dut_mul_u|result\(10) & 
-- !\dut_alu|result_d[17]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f02|sum~0_combout\,
	datab => \dut_alu|result_d[17]~30_combout\,
	datac => \dut_alu|dut_mul_u|result\(10),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~87_combout\);

-- Location: FF_X90_Y48_N21
\dut_alu|dut_mul_s|result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|q\(10),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(10));

-- Location: LCCOMB_X90_Y48_N20
\dut_alu|result_d~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~88_combout\ = (\dut_alu|result_d~87_combout\ & ((\dut_alu|dut_divider_u|result\(10)) # ((!\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d~87_combout\ & (((\dut_alu|dut_mul_s|result\(10) & \dut_alu|result_d[17]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(10),
	datab => \dut_alu|result_d~87_combout\,
	datac => \dut_alu|dut_mul_s|result\(10),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~88_combout\);

-- Location: LCCOMB_X89_Y47_N0
\dut_alu|result_d[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[10]~21_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f02|sum~0_combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f02|sum~0_combout\,
	datab => \dut_alu|result_d~88_combout\,
	datad => \dut_alu|always2~4_combout\,
	combout => \dut_alu|result_d[10]~21_combout\);

-- Location: LCCOMB_X89_Y47_N22
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f02|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f02|sum~0_combout\ = \d1|src2_d\(10) $ (\d1|src1_d\(10) $ (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(10),
	datac => \d1|src1_d\(10),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f02|sum~0_combout\);

-- Location: FF_X89_Y47_N1
\dut_alu|result_d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[10]~21_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f02|sum~0_combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(10));

-- Location: LCCOMB_X85_Y48_N18
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f02|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f02|sum~0_combout\ = \d1|src1_d\(2) $ (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[1]~0_combout\ $ (\dut_alu|src2_not[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(2),
	datab => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[1]~0_combout\,
	datac => \dut_alu|src2_not[2]~4_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f02|sum~0_combout\);

-- Location: FF_X87_Y45_N5
\dut_alu|dut_divider_u|result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[2]~20_combout\,
	asdata => \dut_alu|dut_divider_u|A\(2),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(2));

-- Location: LCCOMB_X91_Y45_N30
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f02|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f02|sum~0_combout\ = \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\ $ (\dut_alu|Add1~4_combout\ $ (\d1|src1_d\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\,
	datac => \dut_alu|Add1~4_combout\,
	datad => \d1|src1_d\(2),
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f02|sum~0_combout\);

-- Location: FF_X91_Y45_N1
\dut_alu|dut_mul_u|result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(2));

-- Location: LCCOMB_X91_Y45_N0
\dut_alu|result_d~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~104_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f02|sum~0_combout\) # ((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|dut_mul_u|result\(2) & 
-- !\dut_alu|result_d[17]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f02|sum~0_combout\,
	datab => \dut_alu|result_d[17]~30_combout\,
	datac => \dut_alu|dut_mul_u|result\(2),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~104_combout\);

-- Location: FF_X91_Y45_N5
\dut_alu|dut_mul_s|result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|q\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(2));

-- Location: LCCOMB_X91_Y45_N4
\dut_alu|result_d~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~105_combout\ = (\dut_alu|result_d~104_combout\ & ((\dut_alu|dut_divider_u|result\(2)) # ((!\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d~104_combout\ & (((\dut_alu|dut_mul_s|result\(2) & 
-- \dut_alu|result_d[17]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(2),
	datab => \dut_alu|result_d~104_combout\,
	datac => \dut_alu|dut_mul_s|result\(2),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~105_combout\);

-- Location: LCCOMB_X95_Y43_N16
\dut_alu|result_d[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[2]~28_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f02|sum~0_combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f02|sum~0_combout\,
	datab => \dut_alu|result_d~105_combout\,
	datad => \dut_alu|always2~4_combout\,
	combout => \dut_alu|result_d[2]~28_combout\);

-- Location: LCCOMB_X92_Y48_N12
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f02|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f02|sum~0_combout\ = \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\ $ (\d1|src2_d\(2) $ (\d1|src1_d\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[1]~0_combout\,
	datac => \d1|src2_d\(2),
	datad => \d1|src1_d\(2),
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f02|sum~0_combout\);

-- Location: FF_X95_Y43_N17
\dut_alu|result_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[2]~28_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f02|sum~0_combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(2));

-- Location: LCCOMB_X95_Y43_N24
\dut_encorder|shift_result~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~31_combout\ = (\dut_alu|result_d\(2) & !\dut_encorder|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|result_d\(2),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~31_combout\);

-- Location: FF_X95_Y43_N25
\dut_encorder|shift_result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~31_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(2));

-- Location: LCCOMB_X87_Y44_N24
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f02|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f02|sum~0_combout\ = \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[1]~2_combout\ $ (\d1|src1_d\(6) $ (\dut_alu|src2_not[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[1]~2_combout\,
	datab => \d1|src1_d\(6),
	datac => \dut_alu|src2_not[6]~12_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f02|sum~0_combout\);

-- Location: LCCOMB_X90_Y47_N12
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f02|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f02|sum~0_combout\ = \dut_alu|Add1~12_combout\ $ (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[1]~13_combout\ $ (\d1|src1_d\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|Add1~12_combout\,
	datac => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[1]~13_combout\,
	datad => \d1|src1_d\(6),
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f02|sum~0_combout\);

-- Location: FF_X90_Y48_N31
\dut_alu|dut_mul_u|result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(6),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(6));

-- Location: LCCOMB_X90_Y48_N30
\dut_alu|result_d~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~95_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f02|sum~0_combout\) # ((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|dut_mul_u|result\(6) & 
-- !\dut_alu|result_d[17]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f02|sum~0_combout\,
	datab => \dut_alu|result_d[17]~30_combout\,
	datac => \dut_alu|dut_mul_u|result\(6),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~95_combout\);

-- Location: FF_X87_Y45_N13
\dut_alu|dut_divider_u|result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[6]~28_combout\,
	asdata => \dut_alu|dut_divider_u|A\(6),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(6));

-- Location: FF_X90_Y48_N5
\dut_alu|dut_mul_s|result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|q\(6),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(6));

-- Location: LCCOMB_X90_Y48_N4
\dut_alu|result_d~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~96_combout\ = (\dut_alu|result_d~95_combout\ & ((\dut_alu|dut_divider_u|result\(6)) # ((!\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d~95_combout\ & (((\dut_alu|dut_mul_s|result\(6) & \dut_alu|result_d[17]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d~95_combout\,
	datab => \dut_alu|dut_divider_u|result\(6),
	datac => \dut_alu|dut_mul_s|result\(6),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~96_combout\);

-- Location: LCCOMB_X89_Y47_N4
\dut_alu|result_d[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[6]~25_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f02|sum~0_combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f02|sum~0_combout\,
	datab => \dut_alu|result_d~96_combout\,
	datad => \dut_alu|always2~4_combout\,
	combout => \dut_alu|result_d[6]~25_combout\);

-- Location: LCCOMB_X94_Y47_N14
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f02|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f02|sum~0_combout\ = \d1|src1_d\(6) $ (\d1|src2_d\(6) $ (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src1_d\(6),
	datac => \d1|src2_d\(6),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f02|sum~0_combout\);

-- Location: FF_X89_Y47_N5
\dut_alu|result_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[6]~25_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f02|sum~0_combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(6));

-- Location: LCCOMB_X91_Y47_N22
\dut_encorder|shift_result~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~27_combout\ = (\dut_encorder|state.IDLE~q\ & (\dut_encorder|shift_result\(2))) # (!\dut_encorder|state.IDLE~q\ & ((\dut_alu|result_d\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|shift_result\(2),
	datab => \dut_encorder|state.IDLE~q\,
	datad => \dut_alu|result_d\(6),
	combout => \dut_encorder|shift_result~27_combout\);

-- Location: FF_X91_Y47_N23
\dut_encorder|shift_result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~27_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(6));

-- Location: LCCOMB_X91_Y47_N12
\dut_encorder|shift_result~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~23_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(6)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d\(10),
	datac => \dut_encorder|shift_result\(6),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~23_combout\);

-- Location: FF_X91_Y47_N13
\dut_encorder|shift_result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~23_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(10));

-- Location: LCCOMB_X91_Y47_N8
\dut_encorder|shift_result~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~19_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(10)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d\(14),
	datab => \dut_encorder|state.IDLE~q\,
	datad => \dut_encorder|shift_result\(10),
	combout => \dut_encorder|shift_result~19_combout\);

-- Location: FF_X91_Y47_N9
\dut_encorder|shift_result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~19_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(14));

-- Location: LCCOMB_X91_Y47_N30
\dut_encorder|shift_result~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~15_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(14)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|result_d\(18),
	datac => \dut_encorder|shift_result\(14),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~15_combout\);

-- Location: FF_X91_Y47_N31
\dut_encorder|shift_result[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~15_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(18));

-- Location: LCCOMB_X91_Y47_N24
\dut_encorder|shift_result~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~11_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(18)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|result_d\(22),
	datac => \dut_encorder|shift_result\(18),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~11_combout\);

-- Location: FF_X91_Y47_N25
\dut_encorder|shift_result[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~11_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(22));

-- Location: FF_X95_Y46_N25
\dut_alu|dut_mul_s|result[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(10),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(26));

-- Location: FF_X95_Y46_N11
\dut_alu|dut_mul_u|result[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(10),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(26));

-- Location: LCCOMB_X95_Y46_N10
\dut_alu|result_d~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~48_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_s|result\(26)) # ((\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d[17]~31_combout\ & (((\dut_alu|dut_mul_u|result\(26) & 
-- !\dut_alu|result_d[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_mul_s|result\(26),
	datac => \dut_alu|dut_mul_u|result\(26),
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~48_combout\);

-- Location: LCCOMB_X95_Y46_N12
\dut_alu|result_d~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~49_combout\ = (\dut_alu|result_d~48_combout\ & (((\dut_alu|dut_divider_u|q\(10)) # (!\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d~48_combout\ & (\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\ & 
-- ((\dut_alu|result_d[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d~48_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\,
	datac => \dut_alu|dut_divider_u|q\(10),
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~49_combout\);

-- Location: LCCOMB_X95_Y50_N4
\dut_alu|result_d[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[26]~6_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|always2~2_combout\,
	datad => \dut_alu|result_d~49_combout\,
	combout => \dut_alu|result_d[26]~6_combout\);

-- Location: FF_X95_Y50_N5
\dut_alu|result_d[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[26]~6_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(26));

-- Location: LCCOMB_X91_Y47_N2
\dut_encorder|shift_result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~7_combout\ = (\dut_encorder|state.IDLE~q\ & (\dut_encorder|shift_result\(22))) # (!\dut_encorder|state.IDLE~q\ & ((\dut_alu|result_d\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|shift_result\(22),
	datac => \dut_alu|result_d\(26),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~7_combout\);

-- Location: FF_X91_Y47_N3
\dut_encorder|shift_result[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(26));

-- Location: FF_X95_Y48_N23
\dut_alu|dut_mul_u|result[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(14),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(30));

-- Location: FF_X95_Y48_N29
\dut_alu|dut_mul_s|result[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(15),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(31));

-- Location: LCCOMB_X95_Y48_N22
\dut_alu|result_d~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~40_combout\ = (\dut_alu|result_d[17]~30_combout\ & (\dut_alu|result_d[17]~31_combout\)) # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_s|result\(31)))) # 
-- (!\dut_alu|result_d[17]~31_combout\ & (\dut_alu|dut_mul_u|result\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|result_d[17]~31_combout\,
	datac => \dut_alu|dut_mul_u|result\(30),
	datad => \dut_alu|dut_mul_s|result\(31),
	combout => \dut_alu|result_d~40_combout\);

-- Location: LCCOMB_X92_Y46_N22
\dut_alu|result_d~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~41_combout\ = (\dut_alu|result_d~40_combout\ & ((\dut_alu|dut_divider_u|q\(14)) # ((!\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d~40_combout\ & (((\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\ & 
-- \dut_alu|result_d[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|q\(14),
	datab => \dut_alu|result_d~40_combout\,
	datac => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\,
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~41_combout\);

-- Location: LCCOMB_X95_Y50_N20
\dut_alu|result_d[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[30]~2_combout\ = (\dut_alu|always2~2_combout\ & ((\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\))) # (!\dut_alu|always2~2_combout\ & (\dut_alu|result_d~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d~41_combout\,
	datab => \dut_alu|always2~2_combout\,
	datad => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	combout => \dut_alu|result_d[30]~2_combout\);

-- Location: FF_X95_Y50_N21
\dut_alu|result_d[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[30]~2_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(30));

-- Location: LCCOMB_X91_Y47_N20
\dut_encorder|shift_result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~3_combout\ = (\dut_encorder|state.IDLE~q\ & (\dut_encorder|shift_result\(26))) # (!\dut_encorder|state.IDLE~q\ & ((\dut_alu|result_d\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|shift_result\(26),
	datac => \dut_alu|result_d\(30),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~3_combout\);

-- Location: FF_X91_Y47_N21
\dut_encorder|shift_result[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(30));

-- Location: FF_X97_Y45_N5
\dut_encorder|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_encorder|shift_result\(30),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_encorder|state.UART_SHIFT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|data\(2));

-- Location: FF_X95_Y48_N25
\dut_alu|dut_mul_u|result[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(15),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(31));

-- Location: LCCOMB_X95_Y48_N24
\dut_alu|result_d~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~42_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\) # ((\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & (!\dut_alu|result_d[17]~31_combout\ & 
-- (\dut_alu|dut_mul_u|result\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|result_d[17]~31_combout\,
	datac => \dut_alu|dut_mul_u|result\(31),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\,
	combout => \dut_alu|result_d~42_combout\);

-- Location: LCCOMB_X95_Y48_N28
\dut_alu|result_d~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~43_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|result_d~42_combout\ & (\dut_alu|dut_divider_u|q\(15))) # (!\dut_alu|result_d~42_combout\ & ((\dut_alu|dut_mul_s|result\(31)))))) # (!\dut_alu|result_d[17]~31_combout\ & 
-- (((\dut_alu|result_d~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_divider_u|q\(15),
	datac => \dut_alu|dut_mul_s|result\(31),
	datad => \dut_alu|result_d~42_combout\,
	combout => \dut_alu|result_d~43_combout\);

-- Location: LCCOMB_X95_Y50_N6
\dut_alu|result_d[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[31]~3_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|result_d~43_combout\,
	datad => \dut_alu|always2~2_combout\,
	combout => \dut_alu|result_d[31]~3_combout\);

-- Location: FF_X95_Y50_N7
\dut_alu|result_d[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[31]~3_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(31));

-- Location: FF_X95_Y48_N1
\dut_alu|dut_mul_s|result[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(23));

-- Location: FF_X95_Y48_N19
\dut_alu|dut_mul_u|result[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(23));

-- Location: LCCOMB_X95_Y48_N18
\dut_alu|result_d~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~58_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\) # ((\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & (!\dut_alu|result_d[17]~31_combout\ & 
-- (\dut_alu|dut_mul_u|result\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|result_d[17]~31_combout\,
	datac => \dut_alu|dut_mul_u|result\(23),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\,
	combout => \dut_alu|result_d~58_combout\);

-- Location: LCCOMB_X95_Y48_N0
\dut_alu|result_d~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~59_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|result_d~58_combout\ & (\dut_alu|dut_divider_u|q\(7))) # (!\dut_alu|result_d~58_combout\ & ((\dut_alu|dut_mul_s|result\(23)))))) # (!\dut_alu|result_d[17]~31_combout\ & 
-- (((\dut_alu|result_d~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_divider_u|q\(7),
	datac => \dut_alu|dut_mul_s|result\(23),
	datad => \dut_alu|result_d~58_combout\,
	combout => \dut_alu|result_d~59_combout\);

-- Location: LCCOMB_X95_Y50_N30
\dut_alu|result_d[23]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[23]~11_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|always2~2_combout\,
	datad => \dut_alu|result_d~59_combout\,
	combout => \dut_alu|result_d[23]~11_combout\);

-- Location: FF_X95_Y50_N31
\dut_alu|result_d[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[23]~11_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(23));

-- Location: FF_X91_Y49_N5
\dut_alu|dut_mul_s|result[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(19));

-- Location: FF_X91_Y49_N15
\dut_alu|dut_mul_u|result[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(19));

-- Location: LCCOMB_X91_Y49_N14
\dut_alu|result_d~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~72_combout\ = (\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\ & (\dut_alu|dut_mul_s|result\(19))) # 
-- (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_u|result\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_mul_s|result\(19),
	datac => \dut_alu|dut_mul_u|result\(19),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~72_combout\);

-- Location: LCCOMB_X92_Y46_N30
\dut_alu|result_d~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~73_combout\ = (\dut_alu|result_d~72_combout\ & ((\dut_alu|dut_divider_u|q\(3)) # ((!\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d~72_combout\ & (((\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\ & 
-- \dut_alu|result_d[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d~72_combout\,
	datab => \dut_alu|dut_divider_u|q\(3),
	datac => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\,
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~73_combout\);

-- Location: LCCOMB_X95_Y50_N28
\dut_alu|result_d[19]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[19]~14_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|result_d~73_combout\,
	datad => \dut_alu|always2~2_combout\,
	combout => \dut_alu|result_d[19]~14_combout\);

-- Location: FF_X95_Y50_N29
\dut_alu|result_d[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[19]~14_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(19));

-- Location: LCCOMB_X89_Y46_N30
\dut_alu|src2_not[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|src2_not[15]~30_combout\ = \dut_alu|src2_not[14]~29\ $ (!\d1|src2_d\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d1|src2_d\(15),
	cin => \dut_alu|src2_not[14]~29\,
	combout => \dut_alu|src2_not[15]~30_combout\);

-- Location: LCCOMB_X90_Y46_N2
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f03|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f03|sum~0_combout\ = \d1|src1_d\(15) $ (((\dut_alu|src2_not[14]~28_combout\ & ((\d1|src1_d\(14)) # (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[1]~2_combout\))) # (!\dut_alu|src2_not[14]~28_combout\ & 
-- (\d1|src1_d\(14) & \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(15),
	datab => \dut_alu|src2_not[14]~28_combout\,
	datac => \d1|src1_d\(14),
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|CLA|c_out[1]~2_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f03|sum~0_combout\);

-- Location: LCCOMB_X90_Y46_N28
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f03|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f03|sum~combout\ = \dut_alu|src2_not[15]~30_combout\ $ (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f03|sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_alu|src2_not[15]~30_combout\,
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f03|sum~0_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f03|sum~combout\);

-- Location: LCCOMB_X87_Y49_N8
\dut_alu|dut_mul_s|result[15]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X87_Y49_N9
\dut_alu|dut_mul_s|result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[15]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(15));

-- Location: FF_X91_Y49_N3
\dut_alu|dut_mul_u|result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(15),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(15));

-- Location: LCCOMB_X91_Y49_N2
\dut_alu|result_d~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~81_combout\ = (\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\ & (\dut_alu|dut_mul_s|result\(15))) # 
-- (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_u|result\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_mul_s|result\(15),
	datac => \dut_alu|dut_mul_u|result\(15),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~81_combout\);

-- Location: LCCOMB_X87_Y45_N30
\dut_alu|dut_divider_u|result[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_divider_u|result[15]~47_combout\ = \dut_alu|dut_divider_u|A\(15) $ (\dut_alu|dut_divider_u|result[14]~46\ $ (\d1|src2_d\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|dut_divider_u|A\(15),
	datad => \d1|src2_d\(15),
	cin => \dut_alu|dut_divider_u|result[14]~46\,
	combout => \dut_alu|dut_divider_u|result[15]~47_combout\);

-- Location: FF_X87_Y45_N31
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(15));

-- Location: LCCOMB_X90_Y46_N22
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f03|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f03|sum~combout\ = \d1|src1_d\(15) $ (\dut_alu|Add1~30_combout\ $ (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(15),
	datab => \dut_alu|Add1~30_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f03|sum~combout\);

-- Location: LCCOMB_X90_Y46_N0
\dut_alu|result_d~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~82_combout\ = (\dut_alu|result_d~81_combout\ & ((\dut_alu|dut_divider_u|result\(15)) # ((!\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d~81_combout\ & (((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f03|sum~combout\ & 
-- \dut_alu|result_d[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d~81_combout\,
	datab => \dut_alu|dut_divider_u|result\(15),
	datac => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f03|sum~combout\,
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~82_combout\);

-- Location: LCCOMB_X90_Y46_N26
\dut_alu|result_d[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[15]~18_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f03|sum~combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|always2~4_combout\,
	datab => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f03|sum~combout\,
	datad => \dut_alu|result_d~82_combout\,
	combout => \dut_alu|result_d[15]~18_combout\);

-- Location: LCCOMB_X94_Y46_N28
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f03|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f03|sum~combout\ = \d1|src1_d\(15) $ (\d1|src2_d\(15) $ (((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~4_combout\) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(15),
	datab => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~4_combout\,
	datac => \d1|src2_d\(15),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f03|sum~combout\);

-- Location: FF_X90_Y46_N27
\dut_alu|result_d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[15]~18_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f03|sum~combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(15));

-- Location: LCCOMB_X90_Y46_N14
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f03|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f03|sum~combout\ = \dut_alu|src2_not[11]~22_combout\ $ (\d1|src1_d\(11) $ (((\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~4_combout\) # (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~4_combout\,
	datab => \dut_alu|src2_not[11]~22_combout\,
	datac => \d1|src1_d\(11),
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[2]~3_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f03|sum~combout\);

-- Location: FF_X87_Y45_N23
\dut_alu|dut_divider_u|result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[11]~38_combout\,
	asdata => \dut_alu|dut_divider_u|A\(11),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(11));

-- Location: LCCOMB_X90_Y48_N12
\dut_alu|dut_mul_s|result[11]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X90_Y48_N13
\dut_alu|dut_mul_s|result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[11]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(11));

-- Location: FF_X90_Y48_N15
\dut_alu|dut_mul_u|result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(11),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(11));

-- Location: LCCOMB_X90_Y48_N14
\dut_alu|result_d~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~89_combout\ = (\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\ & (\dut_alu|dut_mul_s|result\(11))) # 
-- (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_u|result\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|result\(11),
	datab => \dut_alu|result_d[17]~30_combout\,
	datac => \dut_alu|dut_mul_u|result\(11),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~89_combout\);

-- Location: LCCOMB_X90_Y48_N10
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f03|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f03|sum~combout\ = \d1|src1_d\(11) $ (\dut_alu|Add1~22_combout\ $ (((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~6_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(11),
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~6_combout\,
	datac => \dut_alu|Add1~22_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[2]~7_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f03|sum~combout\);

-- Location: LCCOMB_X90_Y48_N0
\dut_alu|result_d~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~90_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d~89_combout\ & (\dut_alu|dut_divider_u|result\(11))) # (!\dut_alu|result_d~89_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f03|sum~combout\))))) # 
-- (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(11),
	datab => \dut_alu|result_d[17]~30_combout\,
	datac => \dut_alu|result_d~89_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f03|sum~combout\,
	combout => \dut_alu|result_d~90_combout\);

-- Location: LCCOMB_X89_Y47_N2
\dut_alu|result_d[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[11]~22_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f03|sum~combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f03|sum~combout\,
	datab => \dut_alu|result_d~90_combout\,
	datad => \dut_alu|always2~4_combout\,
	combout => \dut_alu|result_d[11]~22_combout\);

-- Location: LCCOMB_X89_Y47_N8
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f03|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f03|sum~combout\ = \d1|src2_d\(11) $ (\d1|src1_d\(11) $ (((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~4_combout\) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~4_combout\,
	datab => \d1|src2_d\(11),
	datac => \d1|src1_d\(11),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[2]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f03|sum~combout\);

-- Location: FF_X89_Y47_N3
\dut_alu|result_d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[11]~22_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f03|sum~combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(11));

-- Location: LCCOMB_X85_Y48_N4
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f03|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f03|sum~combout\ = \dut_alu|src2_not[3]~6_combout\ $ (\d1|src1_d\(3) $ (((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~2_combout\) # (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~2_combout\,
	datab => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[2]~1_combout\,
	datac => \dut_alu|src2_not[3]~6_combout\,
	datad => \d1|src1_d\(3),
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f03|sum~combout\);

-- Location: LCCOMB_X91_Y45_N10
\dut_alu|dut_mul_s|result[3]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X91_Y45_N11
\dut_alu|dut_mul_s|result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[3]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(3));

-- Location: FF_X91_Y45_N21
\dut_alu|dut_mul_u|result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(3));

-- Location: LCCOMB_X91_Y45_N20
\dut_alu|result_d~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~106_combout\ = (\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\ & (\dut_alu|dut_mul_s|result\(3))) # 
-- (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_u|result\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|result\(3),
	datab => \dut_alu|result_d[17]~30_combout\,
	datac => \dut_alu|dut_mul_u|result\(3),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~106_combout\);

-- Location: FF_X87_Y45_N7
\dut_alu|dut_divider_u|result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[3]~22_combout\,
	asdata => \dut_alu|dut_divider_u|A\(3),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(3));

-- Location: LCCOMB_X92_Y48_N30
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f03|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f03|sum~combout\ = \dut_alu|Add1~6_combout\ $ (\d1|src1_d\(3) $ (((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~6_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\,
	datac => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\,
	datad => \d1|src1_d\(3),
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f03|sum~combout\);

-- Location: LCCOMB_X91_Y45_N22
\dut_alu|result_d~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~107_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d~106_combout\ & (\dut_alu|dut_divider_u|result\(3))) # (!\dut_alu|result_d~106_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f03|sum~combout\))))) # 
-- (!\dut_alu|result_d[17]~30_combout\ & (\dut_alu|result_d~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|result_d~106_combout\,
	datac => \dut_alu|dut_divider_u|result\(3),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|f03|sum~combout\,
	combout => \dut_alu|result_d~107_combout\);

-- Location: LCCOMB_X89_Y47_N16
\dut_alu|result_d[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[3]~29_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f03|sum~combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|f03|sum~combout\,
	datab => \dut_alu|result_d~107_combout\,
	datad => \dut_alu|always2~4_combout\,
	combout => \dut_alu|result_d[3]~29_combout\);

-- Location: LCCOMB_X92_Y48_N24
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f03|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f03|sum~combout\ = \d1|src2_d\(3) $ (\d1|src1_d\(3) $ (((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~2_combout\,
	datab => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[2]~1_combout\,
	datac => \d1|src2_d\(3),
	datad => \d1|src1_d\(3),
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f03|sum~combout\);

-- Location: FF_X89_Y47_N17
\dut_alu|result_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[3]~29_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f03|sum~combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(3));

-- Location: LCCOMB_X95_Y43_N10
\dut_encorder|shift_result~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~32_combout\ = (\dut_alu|result_d\(3) & !\dut_encorder|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d\(3),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~32_combout\);

-- Location: FF_X95_Y43_N11
\dut_encorder|shift_result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~32_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(3));

-- Location: LCCOMB_X87_Y44_N10
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f03|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f03|sum~combout\ = \dut_alu|src2_not[7]~14_combout\ $ (\d1|src1_d\(7) $ (((\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~4_combout\) # (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|src2_not[7]~14_combout\,
	datab => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~4_combout\,
	datac => \d1|src1_d\(7),
	datad => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[2]~3_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f03|sum~combout\);

-- Location: LCCOMB_X90_Y47_N2
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f03|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f03|sum~combout\ = \dut_alu|Add1~14_combout\ $ (\d1|src1_d\(7) $ (((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~14_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~14_combout\,
	datab => \d1|src1_d\(7),
	datac => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~14_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f03|sum~combout\);

-- Location: FF_X87_Y45_N15
\dut_alu|dut_divider_u|result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[7]~30_combout\,
	asdata => \dut_alu|dut_divider_u|A\(7),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(7));

-- Location: FF_X91_Y45_N25
\dut_alu|dut_mul_s|result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|q\(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(7));

-- Location: FF_X91_Y45_N3
\dut_alu|dut_mul_u|result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(7));

-- Location: LCCOMB_X91_Y45_N2
\dut_alu|result_d~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~97_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_s|result\(7)) # ((\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d[17]~31_combout\ & (((\dut_alu|dut_mul_u|result\(7) & 
-- !\dut_alu|result_d[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_mul_s|result\(7),
	datac => \dut_alu|dut_mul_u|result\(7),
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~97_combout\);

-- Location: LCCOMB_X91_Y45_N12
\dut_alu|result_d~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~98_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d~97_combout\ & ((\dut_alu|dut_divider_u|result\(7)))) # (!\dut_alu|result_d~97_combout\ & (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f03|sum~combout\)))) # 
-- (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f03|sum~combout\,
	datac => \dut_alu|dut_divider_u|result\(7),
	datad => \dut_alu|result_d~97_combout\,
	combout => \dut_alu|result_d~98_combout\);

-- Location: LCCOMB_X89_Y47_N6
\dut_alu|result_d[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[7]~26_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f03|sum~combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f03|sum~combout\,
	datab => \dut_alu|result_d~98_combout\,
	datad => \dut_alu|always2~4_combout\,
	combout => \dut_alu|result_d[7]~26_combout\);

-- Location: LCCOMB_X89_Y47_N26
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f03|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f03|sum~combout\ = \d1|src2_d\(7) $ (\d1|src1_d\(7) $ (((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~3_combout\) # (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(7),
	datab => \d1|src1_d\(7),
	datac => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~3_combout\,
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[2]~4_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f03|sum~combout\);

-- Location: FF_X89_Y47_N7
\dut_alu|result_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[7]~26_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f03|sum~combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(7));

-- Location: LCCOMB_X95_Y43_N20
\dut_encorder|shift_result~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~28_combout\ = (\dut_encorder|state.IDLE~q\ & (\dut_encorder|shift_result\(3))) # (!\dut_encorder|state.IDLE~q\ & ((\dut_alu|result_d\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|shift_result\(3),
	datac => \dut_alu|result_d\(7),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~28_combout\);

-- Location: FF_X95_Y43_N21
\dut_encorder|shift_result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~28_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(7));

-- Location: LCCOMB_X95_Y43_N26
\dut_encorder|shift_result~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~24_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(7)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d\(11),
	datab => \dut_encorder|shift_result\(7),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~24_combout\);

-- Location: FF_X95_Y43_N27
\dut_encorder|shift_result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~24_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(11));

-- Location: LCCOMB_X95_Y43_N8
\dut_encorder|shift_result~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~20_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(11)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|result_d\(15),
	datac => \dut_encorder|shift_result\(11),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~20_combout\);

-- Location: FF_X95_Y43_N9
\dut_encorder|shift_result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~20_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(15));

-- Location: LCCOMB_X95_Y43_N22
\dut_encorder|shift_result~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~16_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(15)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|result_d\(19),
	datac => \dut_encorder|shift_result\(15),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~16_combout\);

-- Location: FF_X95_Y43_N23
\dut_encorder|shift_result[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~16_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(19));

-- Location: LCCOMB_X95_Y43_N4
\dut_encorder|shift_result~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~12_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(19)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d\(23),
	datac => \dut_encorder|shift_result\(19),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~12_combout\);

-- Location: FF_X95_Y43_N5
\dut_encorder|shift_result[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(23));

-- Location: FF_X95_Y48_N17
\dut_alu|dut_mul_s|result[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(11),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(27));

-- Location: FF_X95_Y48_N3
\dut_alu|dut_mul_u|result[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(11),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(27));

-- Location: LCCOMB_X95_Y48_N2
\dut_alu|result_d~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~50_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\) # ((\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & (!\dut_alu|result_d[17]~31_combout\ & 
-- (\dut_alu|dut_mul_u|result\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|result_d[17]~31_combout\,
	datac => \dut_alu|dut_mul_u|result\(27),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f02|sum~combout\,
	combout => \dut_alu|result_d~50_combout\);

-- Location: LCCOMB_X95_Y48_N16
\dut_alu|result_d~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~51_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|result_d~50_combout\ & (\dut_alu|dut_divider_u|q\(11))) # (!\dut_alu|result_d~50_combout\ & ((\dut_alu|dut_mul_s|result\(27)))))) # (!\dut_alu|result_d[17]~31_combout\ & 
-- (((\dut_alu|result_d~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_divider_u|q\(11),
	datac => \dut_alu|dut_mul_s|result\(27),
	datad => \dut_alu|result_d~50_combout\,
	combout => \dut_alu|result_d~51_combout\);

-- Location: LCCOMB_X95_Y50_N14
\dut_alu|result_d[27]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[27]~7_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|always2~2_combout\,
	datad => \dut_alu|result_d~51_combout\,
	combout => \dut_alu|result_d[27]~7_combout\);

-- Location: FF_X95_Y50_N15
\dut_alu|result_d[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[27]~7_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(27));

-- Location: LCCOMB_X95_Y43_N18
\dut_encorder|shift_result~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~8_combout\ = (\dut_encorder|state.IDLE~q\ & (\dut_encorder|shift_result\(23))) # (!\dut_encorder|state.IDLE~q\ & ((\dut_alu|result_d\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|shift_result\(23),
	datac => \dut_alu|result_d\(27),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~8_combout\);

-- Location: FF_X95_Y43_N19
\dut_encorder|shift_result[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(27));

-- Location: LCCOMB_X95_Y43_N14
\dut_encorder|shift_result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~4_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(27)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d\(31),
	datab => \dut_encorder|shift_result\(27),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~4_combout\);

-- Location: FF_X95_Y43_N15
\dut_encorder|shift_result[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(31));

-- Location: LCCOMB_X97_Y45_N22
\dut_encorder|data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|data[3]~feeder_combout\ = \dut_encorder|shift_result\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_encorder|shift_result\(31),
	combout => \dut_encorder|data[3]~feeder_combout\);

-- Location: FF_X97_Y45_N23
\dut_encorder|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|data[3]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|state.UART_SHIFT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|data\(3));

-- Location: LCCOMB_X94_Y46_N0
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5_combout\ = (\d1|src2_d\(15) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~4_combout\) # ((\d1|src1_d\(15)) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\)))) # (!\d1|src2_d\(15) & (\d1|src1_d\(15) & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~4_combout\) # 
-- (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(15),
	datab => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~4_combout\,
	datac => \d1|src1_d\(15),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[2]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5_combout\);

-- Location: LCCOMB_X94_Y46_N8
\dut_alu|result_d~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~60_combout\ = (\dut_alu|always2~3_combout\ & (((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5_combout\)))) # (!\dut_alu|always2~3_combout\ & (\dut_alu|always2~4_combout\ & ((!\dut_alu|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|always2~4_combout\,
	datab => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5_combout\,
	datac => \dut_alu|LessThan0~30_combout\,
	datad => \dut_alu|always2~3_combout\,
	combout => \dut_alu|result_d~60_combout\);

-- Location: LCCOMB_X94_Y46_N26
\dut_alu|result_d~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~64_combout\ = (\dut_alu|always2~2_combout\ & (\d1|src2_d\(15) $ (\d1|src1_d\(15) $ (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(15),
	datab => \dut_alu|always2~2_combout\,
	datac => \d1|src1_d\(15),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5_combout\,
	combout => \dut_alu|result_d~64_combout\);

-- Location: LCCOMB_X94_Y46_N12
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5_combout\ = (\dut_alu|Add1~30_combout\ & ((\d1|src1_d\(15)) # (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~4_combout\))) # (!\dut_alu|Add1~30_combout\ & (\d1|src1_d\(15) & 
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~30_combout\,
	datac => \d1|src1_d\(15),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~4_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5_combout\);

-- Location: LCCOMB_X94_Y46_N4
\dut_alu|result_d~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~65_combout\ = (!\dut_alu|always2~2_combout\ & (\d1|src1_d\(15) $ (\dut_alu|Add1~32_combout\ $ (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(15),
	datab => \dut_alu|Add1~32_combout\,
	datac => \dut_alu|always2~2_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|CLA|c_out[3]~5_combout\,
	combout => \dut_alu|result_d~65_combout\);

-- Location: FF_X95_Y47_N29
\dut_alu|dut_mul_u|result[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(16));

-- Location: FF_X91_Y47_N27
\dut_alu|dut_mul_s|result[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(16));

-- Location: LCCOMB_X91_Y47_N26
\dut_alu|result_d~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~61_combout\ = (\dut_alu|dut_mul_s|done_edge~q\ & (\dut_alu|result_d\(16))) # (!\dut_alu|dut_mul_s|done_edge~q\ & ((\dut_alu|dut_mul_s|Equal4~1_combout\ & ((\dut_alu|dut_mul_s|result\(16)))) # (!\dut_alu|dut_mul_s|Equal4~1_combout\ & 
-- (\dut_alu|result_d\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|done_edge~q\,
	datab => \dut_alu|result_d\(16),
	datac => \dut_alu|dut_mul_s|result\(16),
	datad => \dut_alu|dut_mul_s|Equal4~1_combout\,
	combout => \dut_alu|result_d~61_combout\);

-- Location: LCCOMB_X87_Y49_N14
\dut_alu|result_d~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~62_combout\ = (\dut_alu|dut_mul_u|done~combout\ & ((\dut_alu|dut_divider_u|done~combout\ & (\dut_alu|dut_divider_u|q\(0))) # (!\dut_alu|dut_divider_u|done~combout\ & ((\dut_alu|result_d~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|done~combout\,
	datab => \dut_alu|dut_divider_u|q\(0),
	datac => \dut_alu|dut_divider_u|done~combout\,
	datad => \dut_alu|result_d~61_combout\,
	combout => \dut_alu|result_d~62_combout\);

-- Location: LCCOMB_X95_Y47_N28
\dut_alu|result_d~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~63_combout\ = (\dut_alu|result_d[17]~36_combout\ & ((\dut_alu|result_d~62_combout\) # ((!\dut_alu|dut_mul_u|done~combout\ & \dut_alu|dut_mul_u|result\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_u|done~combout\,
	datab => \dut_alu|result_d[17]~36_combout\,
	datac => \dut_alu|dut_mul_u|result\(16),
	datad => \dut_alu|result_d~62_combout\,
	combout => \dut_alu|result_d~63_combout\);

-- Location: LCCOMB_X94_Y46_N30
\dut_alu|result_d~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~66_combout\ = (\dut_alu|result_d~64_combout\) # ((\dut_alu|result_d~63_combout\) # ((\dut_alu|always2~1_combout\ & \dut_alu|result_d~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d~64_combout\,
	datab => \dut_alu|always2~1_combout\,
	datac => \dut_alu|result_d~65_combout\,
	datad => \dut_alu|result_d~63_combout\,
	combout => \dut_alu|result_d~66_combout\);

-- Location: LCCOMB_X94_Y46_N14
\dut_alu|result_d~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~67_combout\ = (\dut_alu|result_d~60_combout\) # ((!\dut_alu|always2~4_combout\ & (\dut_alu|result_d~66_combout\ & !\dut_alu|always2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|always2~4_combout\,
	datab => \dut_alu|result_d~60_combout\,
	datac => \dut_alu|result_d~66_combout\,
	datad => \dut_alu|always2~3_combout\,
	combout => \dut_alu|result_d~67_combout\);

-- Location: FF_X94_Y46_N15
\dut_alu|result_d[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d~67_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(16));

-- Location: FF_X87_Y45_N25
\dut_alu|dut_divider_u|result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[12]~40_combout\,
	asdata => \dut_alu|dut_divider_u|A\(12),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(12));

-- Location: FF_X91_Y49_N17
\dut_alu|dut_mul_s|result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|q\(12),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(12));

-- Location: LCCOMB_X91_Y49_N26
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f00|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f00|sum~0_combout\ = \dut_alu|Add1~24_combout\ $ (\d1|src1_d\(12) $ (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[3]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~24_combout\,
	datab => \d1|src1_d\(12),
	datac => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|CLA|c_out[3]~8_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f00|sum~0_combout\);

-- Location: FF_X91_Y49_N29
\dut_alu|dut_mul_u|result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(12),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(12));

-- Location: LCCOMB_X91_Y49_N28
\dut_alu|result_d~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~74_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f00|sum~0_combout\) # ((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|dut_mul_u|result\(12) & 
-- !\dut_alu|result_d[17]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA01|f00|sum~0_combout\,
	datac => \dut_alu|dut_mul_u|result\(12),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~74_combout\);

-- Location: LCCOMB_X91_Y49_N16
\dut_alu|result_d~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~75_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|result_d~74_combout\ & (\dut_alu|dut_divider_u|result\(12))) # (!\dut_alu|result_d~74_combout\ & ((\dut_alu|dut_mul_s|result\(12)))))) # (!\dut_alu|result_d[17]~31_combout\ & 
-- (((\dut_alu|result_d~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_divider_u|result\(12),
	datac => \dut_alu|dut_mul_s|result\(12),
	datad => \dut_alu|result_d~74_combout\,
	combout => \dut_alu|result_d~75_combout\);

-- Location: LCCOMB_X90_Y46_N18
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f00|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f00|sum~0_combout\ = \dut_alu|src2_not[12]~24_combout\ $ (\d1|src1_d\(12) $ (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|src2_not[12]~24_combout\,
	datac => \d1|src1_d\(12),
	datad => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|CLA|c_out[3]~5_combout\,
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f00|sum~0_combout\);

-- Location: LCCOMB_X91_Y44_N16
\dut_alu|result_d[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[12]~15_combout\ = (\dut_alu|always2~4_combout\ & ((\dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f00|sum~0_combout\))) # (!\dut_alu|always2~4_combout\ & (\dut_alu|result_d~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d~75_combout\,
	datab => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA01|f00|sum~0_combout\,
	datad => \dut_alu|always2~4_combout\,
	combout => \dut_alu|result_d[12]~15_combout\);

-- Location: LCCOMB_X91_Y44_N8
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f00|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f00|sum~0_combout\ = \d1|src1_d\(12) $ (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[3]~5_combout\ $ (\d1|src2_d\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src1_d\(12),
	datab => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|CLA|c_out[3]~5_combout\,
	datad => \d1|src2_d\(12),
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f00|sum~0_combout\);

-- Location: FF_X91_Y44_N17
\dut_alu|result_d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[12]~15_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA01|f00|sum~0_combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(12));

-- Location: LCCOMB_X91_Y46_N14
\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f00|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f00|sum~0_combout\ = \dut_alu|src2_not[8]~16_combout\ $ (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[3]~5_combout\ $ (\d1|src1_d\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|src2_not[8]~16_combout\,
	datac => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|CLA|c_out[3]~5_combout\,
	datad => \d1|src1_d\(8),
	combout => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f00|sum~0_combout\);

-- Location: LCCOMB_X90_Y47_N10
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[3]~15_combout\ = (\dut_alu|Add1~14_combout\ & ((\d1|src1_d\(7)) # ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~14_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\)))) # (!\dut_alu|Add1~14_combout\ & (\d1|src1_d\(7) & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~14_combout\) # 
-- (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|Add1~14_combout\,
	datab => \d1|src1_d\(7),
	datac => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~14_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[2]~12_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[3]~15_combout\);

-- Location: LCCOMB_X90_Y47_N0
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f00|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f00|sum~0_combout\ = \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[3]~15_combout\ $ (\dut_alu|Add1~16_combout\ $ (\d1|src1_d\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|CLA|c_out[3]~15_combout\,
	datac => \dut_alu|Add1~16_combout\,
	datad => \d1|src1_d\(8),
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f00|sum~0_combout\);

-- Location: FF_X91_Y49_N31
\dut_alu|dut_mul_u|result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(8),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(8));

-- Location: LCCOMB_X91_Y49_N30
\dut_alu|result_d~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~83_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f00|sum~0_combout\) # ((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|dut_mul_u|result\(8) & 
-- !\dut_alu|result_d[17]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA01|CLA00|f00|sum~0_combout\,
	datac => \dut_alu|dut_mul_u|result\(8),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~83_combout\);

-- Location: FF_X87_Y45_N17
\dut_alu|dut_divider_u|result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[8]~32_combout\,
	asdata => \dut_alu|dut_divider_u|A\(8),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(8));

-- Location: FF_X91_Y49_N21
\dut_alu|dut_mul_s|result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|q\(8),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(8));

-- Location: LCCOMB_X91_Y49_N20
\dut_alu|result_d~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~84_combout\ = (\dut_alu|result_d~83_combout\ & ((\dut_alu|dut_divider_u|result\(8)) # ((!\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d~83_combout\ & (((\dut_alu|dut_mul_s|result\(8) & \dut_alu|result_d[17]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d~83_combout\,
	datab => \dut_alu|dut_divider_u|result\(8),
	datac => \dut_alu|dut_mul_s|result\(8),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~84_combout\);

-- Location: LCCOMB_X91_Y46_N16
\dut_alu|result_d[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[8]~19_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f00|sum~0_combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|always2~4_combout\,
	datab => \dut_alu|dut_cla_16bit_s_u|CLA01|CLA00|f00|sum~0_combout\,
	datad => \dut_alu|result_d~84_combout\,
	combout => \dut_alu|result_d[8]~19_combout\);

-- Location: LCCOMB_X91_Y46_N8
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f00|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f00|sum~0_combout\ = \d1|src2_d\(8) $ (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[3]~5_combout\ $ (\d1|src1_d\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(8),
	datac => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|CLA|c_out[3]~5_combout\,
	datad => \d1|src1_d\(8),
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f00|sum~0_combout\);

-- Location: FF_X91_Y46_N17
\dut_alu|result_d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[8]~19_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA01|CLA00|f00|sum~0_combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(8));

-- Location: FF_X87_Y45_N1
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
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(0));

-- Location: LCCOMB_X91_Y45_N6
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f00|p\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f00|p~combout\ = \d1|src2_d\(0) $ (\d1|src1_d\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src2_d\(0),
	datad => \d1|src1_d\(0),
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f00|p~combout\);

-- Location: FF_X91_Y45_N19
\dut_alu|dut_mul_u|result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(0));

-- Location: LCCOMB_X91_Y45_N18
\dut_alu|result_d~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~99_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f00|p~combout\) # ((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|dut_mul_u|result\(0) & 
-- !\dut_alu|result_d[17]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f00|p~combout\,
	datab => \dut_alu|result_d[17]~30_combout\,
	datac => \dut_alu|dut_mul_u|result\(0),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~99_combout\);

-- Location: FF_X91_Y45_N17
\dut_alu|dut_mul_s|result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|q\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(0));

-- Location: LCCOMB_X91_Y45_N16
\dut_alu|result_d~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~100_combout\ = (\dut_alu|result_d~99_combout\ & ((\dut_alu|dut_divider_u|result\(0)) # ((!\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d~99_combout\ & (((\dut_alu|dut_mul_s|result\(0) & \dut_alu|result_d[17]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(0),
	datab => \dut_alu|result_d~99_combout\,
	datac => \dut_alu|dut_mul_s|result\(0),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~100_combout\);

-- Location: LCCOMB_X95_Y43_N28
\dut_alu|result_d~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~101_combout\ = (\dut_alu|always2~4_combout\ & (((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f00|p~combout\)))) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d[15]~76_combout\ & 
-- ((\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f00|p~combout\))) # (!\dut_alu|result_d[15]~76_combout\ & (\dut_alu|result_d~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d~100_combout\,
	datab => \dut_alu|always2~4_combout\,
	datac => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|f00|p~combout\,
	datad => \dut_alu|result_d[15]~76_combout\,
	combout => \dut_alu|result_d~101_combout\);

-- Location: FF_X95_Y43_N29
\dut_alu|result_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d~101_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(0));

-- Location: LCCOMB_X95_Y43_N6
\dut_encorder|shift_result~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~29_combout\ = (\dut_alu|result_d\(0) & !\dut_encorder|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|result_d\(0),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~29_combout\);

-- Location: FF_X95_Y43_N7
\dut_encorder|shift_result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~29_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(0));

-- Location: LCCOMB_X87_Y44_N20
\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f00|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f00|sum~0_combout\ = \dut_alu|src2_not[4]~8_combout\ $ (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[3]~3_combout\ $ (\d1|src1_d\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|src2_not[4]~8_combout\,
	datac => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA00|CLA|c_out[3]~3_combout\,
	datad => \d1|src1_d\(4),
	combout => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f00|sum~0_combout\);

-- Location: FF_X87_Y45_N9
\dut_alu|dut_divider_u|result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_divider_u|result[4]~24_combout\,
	asdata => \dut_alu|dut_divider_u|A\(4),
	clrn => \n_rst~input_o\,
	sload => \dut_alu|dut_divider_u|result~42_combout\,
	ena => \dut_alu|dut_divider_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_divider_u|result\(4));

-- Location: LCCOMB_X90_Y47_N28
\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f00|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f00|sum~0_combout\ = \d1|src1_d\(4) $ (\dut_alu|Add1~8_combout\ $ (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|src1_d\(4),
	datac => \dut_alu|Add1~8_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f00|sum~0_combout\);

-- Location: FF_X90_Y48_N29
\dut_alu|dut_mul_u|result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|q\(4),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(4));

-- Location: LCCOMB_X90_Y48_N28
\dut_alu|result_d~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~91_combout\ = (\dut_alu|result_d[17]~31_combout\ & (((\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|result_d[17]~30_combout\ & (\dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f00|sum~0_combout\)) 
-- # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|dut_mul_u|result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_s_s|CLA00|CLA00|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|result_d[17]~31_combout\,
	datac => \dut_alu|dut_mul_u|result\(4),
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~91_combout\);

-- Location: FF_X90_Y48_N3
\dut_alu|dut_mul_s|result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|q\(4),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(4));

-- Location: LCCOMB_X90_Y48_N2
\dut_alu|result_d~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~92_combout\ = (\dut_alu|result_d~91_combout\ & ((\dut_alu|dut_divider_u|result\(4)) # ((!\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d~91_combout\ & (((\dut_alu|dut_mul_s|result\(4) & \dut_alu|result_d[17]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_divider_u|result\(4),
	datab => \dut_alu|result_d~91_combout\,
	datac => \dut_alu|dut_mul_s|result\(4),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~92_combout\);

-- Location: LCCOMB_X91_Y44_N28
\dut_alu|result_d[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[4]~23_combout\ = (\dut_alu|always2~4_combout\ & (\dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~4_combout\ & ((\dut_alu|result_d~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_16bit_s_u|CLA00|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|always2~4_combout\,
	datad => \dut_alu|result_d~92_combout\,
	combout => \dut_alu|result_d[4]~23_combout\);

-- Location: LCCOMB_X94_Y47_N18
\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f00|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f00|sum~0_combout\ = \d1|src2_d\(4) $ (\d1|src1_d\(4) $ (\dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|src2_d\(4),
	datab => \d1|src1_d\(4),
	datad => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA00|CLA|c_out[3]~3_combout\,
	combout => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f00|sum~0_combout\);

-- Location: FF_X91_Y44_N29
\dut_alu|result_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[4]~23_combout\,
	asdata => \dut_alu|dut_cla_32bit_a_s|CLA00|CLA00|CLA01|f00|sum~0_combout\,
	clrn => \n_rst~input_o\,
	sload => \dut_alu|result_d[15]~76_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(4));

-- Location: LCCOMB_X91_Y44_N14
\dut_encorder|shift_result~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~25_combout\ = (\dut_encorder|state.IDLE~q\ & (\dut_encorder|shift_result\(0))) # (!\dut_encorder|state.IDLE~q\ & ((\dut_alu|result_d\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|shift_result\(0),
	datab => \dut_alu|result_d\(4),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~25_combout\);

-- Location: FF_X91_Y44_N15
\dut_encorder|shift_result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~25_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(4));

-- Location: LCCOMB_X91_Y44_N26
\dut_encorder|shift_result~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~21_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(4)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|result_d\(8),
	datac => \dut_encorder|shift_result\(4),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~21_combout\);

-- Location: FF_X91_Y44_N27
\dut_encorder|shift_result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~21_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(8));

-- Location: LCCOMB_X91_Y44_N6
\dut_encorder|shift_result~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~17_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(8)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|result_d\(12),
	datac => \dut_encorder|shift_result\(8),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~17_combout\);

-- Location: FF_X91_Y44_N7
\dut_encorder|shift_result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~17_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(12));

-- Location: LCCOMB_X91_Y47_N10
\dut_encorder|shift_result~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~13_combout\ = (\dut_encorder|state.IDLE~q\ & ((\dut_encorder|shift_result\(12)))) # (!\dut_encorder|state.IDLE~q\ & (\dut_alu|result_d\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_alu|result_d\(16),
	datac => \dut_encorder|shift_result\(12),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~13_combout\);

-- Location: FF_X91_Y47_N11
\dut_encorder|shift_result[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~13_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(16));

-- Location: FF_X95_Y46_N31
\dut_alu|dut_mul_s|result[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(4),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(20));

-- Location: FF_X95_Y46_N1
\dut_alu|dut_mul_u|result[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(4),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(20));

-- Location: LCCOMB_X95_Y46_N0
\dut_alu|result_d~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~52_combout\ = (\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d[17]~31_combout\)))) # (!\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d[17]~31_combout\ & (\dut_alu|dut_mul_s|result\(20))) # 
-- (!\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_u|result\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_mul_s|result\(20),
	datab => \dut_alu|result_d[17]~30_combout\,
	datac => \dut_alu|dut_mul_u|result\(20),
	datad => \dut_alu|result_d[17]~31_combout\,
	combout => \dut_alu|result_d~52_combout\);

-- Location: LCCOMB_X95_Y46_N18
\dut_alu|result_d~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~53_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d~52_combout\ & (\dut_alu|dut_divider_u|q\(4))) # (!\dut_alu|result_d~52_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\))))) # 
-- (!\dut_alu|result_d[17]~30_combout\ & (\dut_alu|result_d~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|result_d~52_combout\,
	datac => \dut_alu|dut_divider_u|q\(4),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\,
	combout => \dut_alu|result_d~53_combout\);

-- Location: LCCOMB_X95_Y50_N24
\dut_alu|result_d[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[20]~8_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|always2~2_combout\,
	datad => \dut_alu|result_d~53_combout\,
	combout => \dut_alu|result_d[20]~8_combout\);

-- Location: FF_X95_Y50_N25
\dut_alu|result_d[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[20]~8_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(20));

-- Location: LCCOMB_X91_Y47_N28
\dut_encorder|shift_result~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~9_combout\ = (\dut_encorder|state.IDLE~q\ & (\dut_encorder|shift_result\(16))) # (!\dut_encorder|state.IDLE~q\ & ((\dut_alu|result_d\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|shift_result\(16),
	datab => \dut_alu|result_d\(20),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~9_combout\);

-- Location: FF_X91_Y47_N29
\dut_encorder|shift_result[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~9_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(20));

-- Location: LCCOMB_X95_Y46_N2
\dut_alu|dut_mul_s|result[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|dut_mul_s|result[24]~feeder_combout\ = \dut_alu|dut_mul_s|A\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_alu|dut_mul_s|A\(8),
	combout => \dut_alu|dut_mul_s|result[24]~feeder_combout\);

-- Location: FF_X95_Y46_N3
\dut_alu|dut_mul_s|result[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|dut_mul_s|result[24]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(24));

-- Location: FF_X95_Y46_N29
\dut_alu|dut_mul_u|result[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(8),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(24));

-- Location: LCCOMB_X95_Y46_N28
\dut_alu|result_d~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~44_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_s|result\(24)) # ((\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d[17]~31_combout\ & (((\dut_alu|dut_mul_u|result\(24) & 
-- !\dut_alu|result_d[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_mul_s|result\(24),
	datac => \dut_alu|dut_mul_u|result\(24),
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~44_combout\);

-- Location: LCCOMB_X95_Y46_N6
\dut_alu|result_d~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~45_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d~44_combout\ & (\dut_alu|dut_divider_u|q\(8))) # (!\dut_alu|result_d~44_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\))))) # 
-- (!\dut_alu|result_d[17]~30_combout\ & (\dut_alu|result_d~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|result_d~44_combout\,
	datac => \dut_alu|dut_divider_u|q\(8),
	datad => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\,
	combout => \dut_alu|result_d~45_combout\);

-- Location: LCCOMB_X95_Y50_N0
\dut_alu|result_d[24]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[24]~4_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|always2~2_combout\,
	datad => \dut_alu|result_d~45_combout\,
	combout => \dut_alu|result_d[24]~4_combout\);

-- Location: FF_X95_Y50_N1
\dut_alu|result_d[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[24]~4_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(24));

-- Location: LCCOMB_X91_Y47_N6
\dut_encorder|shift_result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~5_combout\ = (\dut_encorder|state.IDLE~q\ & (\dut_encorder|shift_result\(20))) # (!\dut_encorder|state.IDLE~q\ & ((\dut_alu|result_d\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut_encorder|shift_result\(20),
	datac => \dut_alu|result_d\(24),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~5_combout\);

-- Location: FF_X91_Y47_N7
\dut_encorder|shift_result[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(24));

-- Location: FF_X95_Y46_N9
\dut_alu|dut_mul_s|result[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_s|A\(12),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_s|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_s|result\(28));

-- Location: FF_X95_Y46_N27
\dut_alu|dut_mul_u|result[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dut_alu|dut_mul_u|A\(12),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \dut_alu|dut_mul_u|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|dut_mul_u|result\(28));

-- Location: LCCOMB_X95_Y46_N26
\dut_alu|result_d~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~32_combout\ = (\dut_alu|result_d[17]~31_combout\ & ((\dut_alu|dut_mul_s|result\(28)) # ((\dut_alu|result_d[17]~30_combout\)))) # (!\dut_alu|result_d[17]~31_combout\ & (((\dut_alu|dut_mul_u|result\(28) & 
-- !\dut_alu|result_d[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~31_combout\,
	datab => \dut_alu|dut_mul_s|result\(28),
	datac => \dut_alu|dut_mul_u|result\(28),
	datad => \dut_alu|result_d[17]~30_combout\,
	combout => \dut_alu|result_d~32_combout\);

-- Location: LCCOMB_X95_Y46_N20
\dut_alu|result_d~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d~33_combout\ = (\dut_alu|result_d[17]~30_combout\ & ((\dut_alu|result_d~32_combout\ & (\dut_alu|dut_divider_u|q\(12))) # (!\dut_alu|result_d~32_combout\ & ((\dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\))))) # 
-- (!\dut_alu|result_d[17]~30_combout\ & (((\dut_alu|result_d~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|result_d[17]~30_combout\,
	datab => \dut_alu|dut_divider_u|q\(12),
	datac => \dut_alu|result_d~32_combout\,
	datad => \dut_alu|dut_cla_32bit_s_s|CLA01|CLA01|CLA01|f00|sum~combout\,
	combout => \dut_alu|result_d~33_combout\);

-- Location: LCCOMB_X95_Y50_N16
\dut_alu|result_d[28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_alu|result_d[28]~0_combout\ = (\dut_alu|always2~2_combout\ & (\dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\)) # (!\dut_alu|always2~2_combout\ & ((\dut_alu|result_d~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_alu|dut_cla_32bit_a_s|CLA01|CLA01|CLA01|f00|sum~0_combout\,
	datab => \dut_alu|always2~2_combout\,
	datad => \dut_alu|result_d~33_combout\,
	combout => \dut_alu|result_d[28]~0_combout\);

-- Location: FF_X95_Y50_N17
\dut_alu|result_d[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_alu|result_d[28]~0_combout\,
	asdata => \dut_alu|LessThan0~30_wirecell_combout\,
	clrn => \n_rst~input_o\,
	sclr => \dut_alu|always2~3_combout\,
	sload => \dut_alu|always2~4_combout\,
	ena => \dut_alu|result_d[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_alu|result_d\(28));

-- Location: LCCOMB_X91_Y47_N16
\dut_encorder|shift_result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|shift_result~0_combout\ = (\dut_encorder|state.IDLE~q\ & (\dut_encorder|shift_result\(24))) # (!\dut_encorder|state.IDLE~q\ & ((\dut_alu|result_d\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|shift_result\(24),
	datab => \dut_alu|result_d\(28),
	datad => \dut_encorder|state.IDLE~q\,
	combout => \dut_encorder|shift_result~0_combout\);

-- Location: FF_X91_Y47_N17
\dut_encorder|shift_result[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|shift_result~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|shift_result[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|shift_result\(28));

-- Location: LCCOMB_X97_Y45_N8
\dut_encorder|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|data[0]~feeder_combout\ = \dut_encorder|shift_result\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut_encorder|shift_result\(28),
	combout => \dut_encorder|data[0]~feeder_combout\);

-- Location: FF_X97_Y45_N9
\dut_encorder|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|data[0]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|state.UART_SHIFT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|data\(0));

-- Location: LCCOMB_X96_Y51_N22
\dut_encorder|uart_out_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|uart_out_d~0_combout\ = \dut_encorder|data\(0) $ (((\dut_encorder|data\(3) & ((\dut_encorder|data\(1)) # (\dut_encorder|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|data\(1),
	datab => \dut_encorder|data\(2),
	datac => \dut_encorder|data\(3),
	datad => \dut_encorder|data\(0),
	combout => \dut_encorder|uart_out_d~0_combout\);

-- Location: FF_X96_Y51_N23
\dut_encorder|uart_out_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|uart_out_d~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|state.UART_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|uart_out_d\(0));

-- Location: LCCOMB_X96_Y51_N0
\dut_uart|dut_tx|always3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|always3~0_combout\ = (!\dut_encorder|dut_gen_en|Equal0~2_combout\ & \dut_uart|dut_tx|tx_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	datac => \dut_uart|dut_tx|tx_state.DATA~q\,
	combout => \dut_uart|dut_tx|always3~0_combout\);

-- Location: LCCOMB_X96_Y51_N4
\dut_encorder|uart_out_d~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|uart_out_d~1_combout\ = (\dut_encorder|data\(1) & (((\dut_encorder|data\(0)) # (!\dut_encorder|data\(3))))) # (!\dut_encorder|data\(1) & (\dut_encorder|data\(2) & (\dut_encorder|data\(3) & !\dut_encorder|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|data\(1),
	datab => \dut_encorder|data\(2),
	datac => \dut_encorder|data\(3),
	datad => \dut_encorder|data\(0),
	combout => \dut_encorder|uart_out_d~1_combout\);

-- Location: FF_X96_Y51_N5
\dut_encorder|uart_out_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|uart_out_d~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|state.UART_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|uart_out_d\(1));

-- Location: LCCOMB_X96_Y51_N8
\dut_encorder|uart_out_d~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|uart_out_d~4_combout\ = ((!\dut_encorder|data\(1) & !\dut_encorder|data\(2))) # (!\dut_encorder|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|data\(1),
	datab => \dut_encorder|data\(2),
	datac => \dut_encorder|data\(3),
	combout => \dut_encorder|uart_out_d~4_combout\);

-- Location: FF_X96_Y51_N9
\dut_encorder|uart_out_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|uart_out_d~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|state.UART_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|uart_out_d\(4));

-- Location: LCCOMB_X96_Y51_N30
\dut_encorder|uart_out_d[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|uart_out_d[6]~5_combout\ = !\dut_encorder|uart_out_d~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut_encorder|uart_out_d~4_combout\,
	combout => \dut_encorder|uart_out_d[6]~5_combout\);

-- Location: FF_X96_Y51_N31
\dut_encorder|uart_out_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|uart_out_d[6]~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|state.UART_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|uart_out_d\(6));

-- Location: LCCOMB_X95_Y43_N2
\dut_uart|dut_tx|txd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|txd~1_combout\ = (\dut_uart|dut_tx|tx_state.STOP~q\) # ((!\dut_encorder|dut_gen_en|Equal0~2_combout\ & ((\dut_uart|dut_tx|tx_state.START~q\) # (\dut_uart|dut_tx|tx_state.DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_state.START~q\,
	datab => \dut_uart|dut_tx|tx_state.STOP~q\,
	datac => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	datad => \dut_uart|dut_tx|tx_state.DATA~q\,
	combout => \dut_uart|dut_tx|txd~1_combout\);

-- Location: FF_X96_Y51_N1
\dut_uart|dut_tx|shift_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|always3~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_tx|txd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(7));

-- Location: LCCOMB_X96_Y51_N10
\dut_uart|dut_tx|shift_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~6_combout\ = (!\dut_uart|dut_tx|tx_state.STOP~q\ & ((\dut_uart|dut_tx|always3~0_combout\ & ((\dut_uart|dut_tx|shift_data\(7)))) # (!\dut_uart|dut_tx|always3~0_combout\ & (\dut_encorder|uart_out_d\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|uart_out_d\(6),
	datab => \dut_uart|dut_tx|always3~0_combout\,
	datac => \dut_uart|dut_tx|tx_state.STOP~q\,
	datad => \dut_uart|dut_tx|shift_data\(7),
	combout => \dut_uart|dut_tx|shift_data~6_combout\);

-- Location: FF_X96_Y51_N11
\dut_uart|dut_tx|shift_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_tx|txd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(6));

-- Location: LCCOMB_X96_Y51_N28
\dut_encorder|uart_out_d[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|uart_out_d[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dut_encorder|uart_out_d[5]~feeder_combout\);

-- Location: FF_X96_Y51_N29
\dut_encorder|uart_out_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|uart_out_d[5]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|state.UART_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|uart_out_d\(5));

-- Location: LCCOMB_X96_Y51_N14
\dut_uart|dut_tx|shift_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~5_combout\ = (!\dut_uart|dut_tx|tx_state.STOP~q\ & ((\dut_uart|dut_tx|always3~0_combout\ & (\dut_uart|dut_tx|shift_data\(6))) # (!\dut_uart|dut_tx|always3~0_combout\ & ((\dut_encorder|uart_out_d\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|shift_data\(6),
	datab => \dut_uart|dut_tx|always3~0_combout\,
	datac => \dut_uart|dut_tx|tx_state.STOP~q\,
	datad => \dut_encorder|uart_out_d\(5),
	combout => \dut_uart|dut_tx|shift_data~5_combout\);

-- Location: FF_X96_Y51_N15
\dut_uart|dut_tx|shift_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_tx|txd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(5));

-- Location: LCCOMB_X96_Y51_N26
\dut_uart|dut_tx|shift_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~4_combout\ = (!\dut_uart|dut_tx|tx_state.STOP~q\ & ((\dut_uart|dut_tx|always3~0_combout\ & ((\dut_uart|dut_tx|shift_data\(5)))) # (!\dut_uart|dut_tx|always3~0_combout\ & (\dut_encorder|uart_out_d\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|uart_out_d\(4),
	datab => \dut_uart|dut_tx|shift_data\(5),
	datac => \dut_uart|dut_tx|always3~0_combout\,
	datad => \dut_uart|dut_tx|tx_state.STOP~q\,
	combout => \dut_uart|dut_tx|shift_data~4_combout\);

-- Location: FF_X96_Y51_N27
\dut_uart|dut_tx|shift_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_tx|txd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(4));

-- Location: LCCOMB_X96_Y51_N20
\dut_encorder|uart_out_d~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|uart_out_d~3_combout\ = (!\dut_encorder|data\(1) & (!\dut_encorder|data\(2) & \dut_encorder|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|data\(1),
	datab => \dut_encorder|data\(2),
	datac => \dut_encorder|data\(3),
	combout => \dut_encorder|uart_out_d~3_combout\);

-- Location: FF_X96_Y51_N21
\dut_encorder|uart_out_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|uart_out_d~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|state.UART_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|uart_out_d\(3));

-- Location: LCCOMB_X96_Y51_N6
\dut_uart|dut_tx|shift_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~3_combout\ = (!\dut_uart|dut_tx|tx_state.STOP~q\ & ((\dut_uart|dut_tx|always3~0_combout\ & (\dut_uart|dut_tx|shift_data\(4))) # (!\dut_uart|dut_tx|always3~0_combout\ & ((\dut_encorder|uart_out_d\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|shift_data\(4),
	datab => \dut_uart|dut_tx|always3~0_combout\,
	datac => \dut_uart|dut_tx|tx_state.STOP~q\,
	datad => \dut_encorder|uart_out_d\(3),
	combout => \dut_uart|dut_tx|shift_data~3_combout\);

-- Location: FF_X96_Y51_N7
\dut_uart|dut_tx|shift_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_tx|txd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(3));

-- Location: LCCOMB_X96_Y51_N16
\dut_encorder|uart_out_d~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_encorder|uart_out_d~2_combout\ = (\dut_encorder|data\(2) & ((\dut_encorder|data\(1)) # ((\dut_encorder|data\(0)) # (!\dut_encorder|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|data\(1),
	datab => \dut_encorder|data\(2),
	datac => \dut_encorder|data\(3),
	datad => \dut_encorder|data\(0),
	combout => \dut_encorder|uart_out_d~2_combout\);

-- Location: FF_X96_Y51_N17
\dut_encorder|uart_out_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_encorder|uart_out_d~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_encorder|state.UART_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_encorder|uart_out_d\(2));

-- Location: LCCOMB_X96_Y51_N2
\dut_uart|dut_tx|shift_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~2_combout\ = (!\dut_uart|dut_tx|tx_state.STOP~q\ & ((\dut_uart|dut_tx|always3~0_combout\ & (\dut_uart|dut_tx|shift_data\(3))) # (!\dut_uart|dut_tx|always3~0_combout\ & ((\dut_encorder|uart_out_d\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|shift_data\(3),
	datab => \dut_uart|dut_tx|always3~0_combout\,
	datac => \dut_uart|dut_tx|tx_state.STOP~q\,
	datad => \dut_encorder|uart_out_d\(2),
	combout => \dut_uart|dut_tx|shift_data~2_combout\);

-- Location: FF_X96_Y51_N3
\dut_uart|dut_tx|shift_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_tx|txd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(2));

-- Location: LCCOMB_X96_Y51_N12
\dut_uart|dut_tx|shift_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~1_combout\ = (!\dut_uart|dut_tx|tx_state.STOP~q\ & ((\dut_uart|dut_tx|always3~0_combout\ & ((\dut_uart|dut_tx|shift_data\(2)))) # (!\dut_uart|dut_tx|always3~0_combout\ & (\dut_encorder|uart_out_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_uart|dut_tx|tx_state.STOP~q\,
	datab => \dut_uart|dut_tx|always3~0_combout\,
	datac => \dut_encorder|uart_out_d\(1),
	datad => \dut_uart|dut_tx|shift_data\(2),
	combout => \dut_uart|dut_tx|shift_data~1_combout\);

-- Location: FF_X96_Y51_N13
\dut_uart|dut_tx|shift_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_tx|txd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(1));

-- Location: LCCOMB_X96_Y51_N18
\dut_uart|dut_tx|shift_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|shift_data~0_combout\ = (!\dut_uart|dut_tx|tx_state.STOP~q\ & ((\dut_uart|dut_tx|always3~0_combout\ & ((\dut_uart|dut_tx|shift_data\(1)))) # (!\dut_uart|dut_tx|always3~0_combout\ & (\dut_encorder|uart_out_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|uart_out_d\(0),
	datab => \dut_uart|dut_tx|always3~0_combout\,
	datac => \dut_uart|dut_tx|tx_state.STOP~q\,
	datad => \dut_uart|dut_tx|shift_data\(1),
	combout => \dut_uart|dut_tx|shift_data~0_combout\);

-- Location: FF_X96_Y51_N19
\dut_uart|dut_tx|shift_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|shift_data~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_tx|txd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|shift_data\(0));

-- Location: LCCOMB_X96_Y51_N24
\dut_uart|dut_tx|txd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut_uart|dut_tx|txd~0_combout\ = (!\dut_uart|dut_tx|tx_state.STOP~q\ & ((\dut_encorder|dut_gen_en|Equal0~2_combout\) # ((!\dut_uart|dut_tx|shift_data\(0)) # (!\dut_uart|dut_tx|tx_state.DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut_encorder|dut_gen_en|Equal0~2_combout\,
	datab => \dut_uart|dut_tx|tx_state.DATA~q\,
	datac => \dut_uart|dut_tx|tx_state.STOP~q\,
	datad => \dut_uart|dut_tx|shift_data\(0),
	combout => \dut_uart|dut_tx|txd~0_combout\);

-- Location: FF_X96_Y51_N25
\dut_uart|dut_tx|txd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut_uart|dut_tx|txd~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \dut_uart|dut_tx|txd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut_uart|dut_tx|txd~q\);

ww_txd <= \txd~output_o\;
END structure;


