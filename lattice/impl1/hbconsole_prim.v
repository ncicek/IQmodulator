// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Wed Jan 13 20:52:30 2021
//
// Verilog Description of module hbconsole
//

module hbconsole (i_clk, i_rx_stb, i_rx_byte, o_wb_cyc, o_wb_stb, 
            o_wb_we, o_wb_addr, o_wb_data, o_wb_sel, i_wb_ack, i_wb_stall, 
            i_wb_err, i_wb_data, i_interrupt, o_tx_stb, o_tx_data, 
            i_tx_busy, i_console_stb, i_console_data, o_console_busy, 
            o_console_stb, o_console_data) /* synthesis syn_module_defined=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(47[8:17])
    input i_clk;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(57[14:19])
    input i_rx_stb;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(58[14:22])
    input [7:0]i_rx_byte;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(59[19:28])
    output o_wb_cyc;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(60[15:23])
    output o_wb_stb;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(60[25:33])
    output o_wb_we;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(60[35:42])
    output [29:0]o_wb_addr;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    output [31:0]o_wb_data;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    output [3:0]o_wb_sel;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(63[20:28])
    input i_wb_ack;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(64[14:22])
    input i_wb_stall;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(64[24:34])
    input i_wb_err;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(64[36:44])
    input [31:0]i_wb_data;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    input i_interrupt;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(66[14:25])
    output o_tx_stb;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(67[15:23])
    output [7:0]o_tx_data;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(68[20:29])
    input i_tx_busy;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(69[14:23])
    input i_console_stb;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(71[14:27])
    input [6:0]i_console_data;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(72[19:33])
    output o_console_busy;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(73[15:29])
    output o_console_stb;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(75[14:27])
    output [6:0]o_console_data;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(76[19:33])
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(57[14:19])
    
    wire GND_net, VCC_net, i_rx_stb_c, i_rx_byte_c_7, i_rx_byte_c_6, 
        i_rx_byte_c_5, i_rx_byte_c_4, i_rx_byte_c_3, i_rx_byte_c_2, 
        i_rx_byte_c_1, i_rx_byte_c_0, o_wb_cyc_c, o_wb_stb_c, o_wb_we_c, 
        o_wb_addr_c_29, o_wb_addr_c_28, o_wb_addr_c_27, o_wb_addr_c_26, 
        o_wb_addr_c_25, o_wb_addr_c_24, o_wb_addr_c_23, o_wb_addr_c_22, 
        o_wb_addr_c_21, o_wb_addr_c_20, o_wb_addr_c_19, o_wb_addr_c_18, 
        o_wb_addr_c_17, o_wb_addr_c_16, o_wb_addr_c_15, o_wb_addr_c_14, 
        o_wb_addr_c_13, o_wb_addr_c_12, o_wb_addr_c_11, o_wb_addr_c_10, 
        o_wb_addr_c_9, o_wb_addr_c_8, o_wb_addr_c_7, o_wb_addr_c_6, 
        o_wb_addr_c_5, o_wb_addr_c_4, o_wb_addr_c_3, o_wb_addr_c_2, 
        o_wb_addr_c_1, o_wb_addr_c_0, o_wb_data_c_31, o_wb_data_c_30, 
        o_wb_data_c_29, o_wb_data_c_28, o_wb_data_c_27, o_wb_data_c_26, 
        o_wb_data_c_25, o_wb_data_c_24, o_wb_data_c_23, o_wb_data_c_22, 
        o_wb_data_c_21, o_wb_data_c_20, o_wb_data_c_19, o_wb_data_c_18, 
        o_wb_data_c_17, o_wb_data_c_16, o_wb_data_c_15, o_wb_data_c_14, 
        o_wb_data_c_13, o_wb_data_c_12, o_wb_data_c_11, o_wb_data_c_10, 
        o_wb_data_c_9, o_wb_data_c_8, o_wb_data_c_7, o_wb_data_c_6, 
        o_wb_data_c_5, o_wb_data_c_4, o_wb_data_c_3, o_wb_data_c_2, 
        o_wb_data_c_1, o_wb_data_c_0, i_wb_ack_c, i_wb_stall_c, i_wb_err_c, 
        i_wb_data_c_31, i_wb_data_c_30, i_wb_data_c_29, i_wb_data_c_28, 
        i_wb_data_c_27, i_wb_data_c_26, i_wb_data_c_25, i_wb_data_c_24, 
        i_wb_data_c_23, i_wb_data_c_22, i_wb_data_c_21, i_wb_data_c_20, 
        i_wb_data_c_19, i_wb_data_c_18, i_wb_data_c_17, i_wb_data_c_16, 
        i_wb_data_c_15, i_wb_data_c_14, i_wb_data_c_13, i_wb_data_c_12, 
        i_wb_data_c_11, i_wb_data_c_10, i_wb_data_c_9, i_wb_data_c_8, 
        i_wb_data_c_7, i_wb_data_c_6, i_wb_data_c_5, i_wb_data_c_4, 
        i_wb_data_c_3, i_wb_data_c_2, i_wb_data_c_1, i_wb_data_c_0, 
        i_interrupt_c, o_tx_stb_c, o_tx_data_c_7, o_tx_data_c_6, o_tx_data_c_5, 
        o_tx_data_c_4, o_tx_data_c_3, o_tx_data_c_2, o_tx_data_c_1, 
        o_tx_data_c_0, i_tx_busy_c, i_console_stb_c, i_console_data_c_6, 
        i_console_data_c_5, i_console_data_c_4, i_console_data_c_3, i_console_data_c_2, 
        i_console_data_c_1, i_console_data_c_0, o_console_busy_c, o_console_stb_c, 
        o_console_data_c_6, o_console_data_c_5, o_console_data_c_4, o_console_data_c_3, 
        o_console_data_c_2, o_console_data_c_1, o_console_data_c_0, w_reset;
    wire [4:0]dec_bits;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(82[13:21])
    
    wire iw_stb;
    wire [33:0]iw_word;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(84[14:21])
    
    wire ow_stb;
    wire [33:0]ow_word;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(89[14:21])
    
    wire int_stb;
    wire [33:0]int_word;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(94[14:22])
    
    wire hb_busy, idl_stb;
    wire [33:0]idl_word;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(96[14:22])
    wire [4:0]hb_bits;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(98[13:20])
    
    wire hx_stb, nl_busy, i_clk_c_enable_107, fnl_stb;
    wire [6:0]fnl_byte;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(102[13:21])
    
    wire o_console_stb_N_34, i_clk_c_enable_142, n3800;
    wire [7:0]o_tx_data_7__N_1;
    
    wire cmd_loaded, cmd_loaded_N_209, o_pck_stb_N_206, n45, n46, 
        n3465, i_clk_c_enable_213, n3462, n3750, n3799, n3797, n3749, 
        n2335, i_clk_c_enable_18, n1418, n6, n3449, n1407, n3763;
    wire [7:0]w_gx_char;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbgenhex.v(80[12:21])
    
    wire n3762, i_clk_c_enable_175, n3761, n1411, n905, i_clk_c_enable_218, 
        i_clk_c_enable_216, i_clk_c_enable_233, i_clk_c_enable_31, i_clk_c_enable_173, 
        n3801, n3461;
    
    VHI i2 (.Z(VCC_net));
    hbexec wbexec (.o_wb_addr_c_22(o_wb_addr_c_22), .i_wb_data_c_24(i_wb_data_c_24), 
           .o_wb_cyc_c(o_wb_cyc_c), .o_wb_we_c(o_wb_we_c), .iw_stb(iw_stb), 
           .iw_word({iw_word}), .o_wb_stb_c(o_wb_stb_c), .n3449(n3449), 
           .i_wb_stall_c(i_wb_stall_c), .n3465(n3465), .o_wb_addr_c_23(o_wb_addr_c_23), 
           .i_wb_data_c_25(i_wb_data_c_25), .ow_word({ow_word}), .i_clk_c(i_clk_c), 
           .n1411(n1411), .ow_stb(ow_stb), .n905(n905), .o_wb_addr_c_24(o_wb_addr_c_24), 
           .i_wb_data_c_26(i_wb_data_c_26), .n3800(n3800), .i_wb_err_c(i_wb_err_c), 
           .n3801(n3801), .o_wb_addr_c_25(o_wb_addr_c_25), .i_wb_data_c_27(i_wb_data_c_27), 
           .o_wb_addr_c_26(o_wb_addr_c_26), .i_wb_data_c_28(i_wb_data_c_28), 
           .o_wb_data_c_0(o_wb_data_c_0), .n3462(n3462), .o_wb_addr_c_0(o_wb_addr_c_0), 
           .o_wb_addr_c_27(o_wb_addr_c_27), .o_wb_addr_c_17(o_wb_addr_c_17), 
           .i_wb_data_c_19(i_wb_data_c_19), .i_wb_data_c_29(i_wb_data_c_29), 
           .i_wb_ack_c(i_wb_ack_c), .o_wb_addr_c_28(o_wb_addr_c_28), .i_wb_data_c_30(i_wb_data_c_30), 
           .o_wb_addr_c_29(o_wb_addr_c_29), .i_wb_data_c_31(i_wb_data_c_31), 
           .o_wb_addr_c_18(o_wb_addr_c_18), .i_wb_data_c_20(i_wb_data_c_20), 
           .o_wb_addr_c_19(o_wb_addr_c_19), .i_wb_data_c_21(i_wb_data_c_21), 
           .o_wb_addr_c_20(o_wb_addr_c_20), .i_wb_data_c_22(i_wb_data_c_22), 
           .i_wb_data_c_0(i_wb_data_c_0), .i_wb_data_c_2(i_wb_data_c_2), 
           .o_wb_addr_c_1(o_wb_addr_c_1), .i_wb_data_c_3(i_wb_data_c_3), 
           .o_wb_addr_c_21(o_wb_addr_c_21), .i_wb_data_c_23(i_wb_data_c_23), 
           .o_wb_addr_c_2(o_wb_addr_c_2), .i_wb_data_c_4(i_wb_data_c_4), 
           .o_wb_addr_c_3(o_wb_addr_c_3), .i_wb_data_c_5(i_wb_data_c_5), 
           .o_wb_addr_c_4(o_wb_addr_c_4), .i_wb_data_c_6(i_wb_data_c_6), 
           .o_wb_addr_c_5(o_wb_addr_c_5), .i_wb_data_c_7(i_wb_data_c_7), 
           .o_wb_addr_c_6(o_wb_addr_c_6), .i_wb_data_c_8(i_wb_data_c_8), 
           .o_wb_addr_c_7(o_wb_addr_c_7), .i_wb_data_c_9(i_wb_data_c_9), 
           .o_wb_data_c_1(o_wb_data_c_1), .o_wb_data_c_2(o_wb_data_c_2), 
           .o_wb_data_c_3(o_wb_data_c_3), .o_wb_data_c_4(o_wb_data_c_4), 
           .o_wb_data_c_5(o_wb_data_c_5), .o_wb_data_c_6(o_wb_data_c_6), 
           .o_wb_data_c_7(o_wb_data_c_7), .o_wb_data_c_8(o_wb_data_c_8), 
           .o_wb_data_c_9(o_wb_data_c_9), .o_wb_data_c_10(o_wb_data_c_10), 
           .o_wb_data_c_11(o_wb_data_c_11), .o_wb_data_c_12(o_wb_data_c_12), 
           .o_wb_data_c_13(o_wb_data_c_13), .o_wb_data_c_14(o_wb_data_c_14), 
           .o_wb_data_c_15(o_wb_data_c_15), .o_wb_data_c_16(o_wb_data_c_16), 
           .o_wb_data_c_17(o_wb_data_c_17), .o_wb_data_c_18(o_wb_data_c_18), 
           .o_wb_data_c_19(o_wb_data_c_19), .o_wb_data_c_20(o_wb_data_c_20), 
           .o_wb_data_c_21(o_wb_data_c_21), .o_wb_data_c_22(o_wb_data_c_22), 
           .o_wb_data_c_23(o_wb_data_c_23), .o_wb_data_c_24(o_wb_data_c_24), 
           .o_wb_data_c_25(o_wb_data_c_25), .o_wb_data_c_26(o_wb_data_c_26), 
           .o_wb_data_c_27(o_wb_data_c_27), .o_wb_data_c_28(o_wb_data_c_28), 
           .o_wb_data_c_29(o_wb_data_c_29), .o_wb_data_c_30(o_wb_data_c_30), 
           .o_wb_data_c_31(o_wb_data_c_31), .o_wb_addr_c_8(o_wb_addr_c_8), 
           .o_wb_addr_c_9(o_wb_addr_c_9), .o_wb_addr_c_10(o_wb_addr_c_10), 
           .o_wb_addr_c_11(o_wb_addr_c_11), .o_wb_addr_c_12(o_wb_addr_c_12), 
           .o_wb_addr_c_13(o_wb_addr_c_13), .o_wb_addr_c_14(o_wb_addr_c_14), 
           .o_wb_addr_c_15(o_wb_addr_c_15), .o_wb_addr_c_16(o_wb_addr_c_16), 
           .i_wb_data_c_10(i_wb_data_c_10), .GND_net(GND_net), .i_wb_data_c_11(i_wb_data_c_11), 
           .i_wb_data_c_12(i_wb_data_c_12), .i_wb_data_c_13(i_wb_data_c_13), 
           .i_wb_data_c_14(i_wb_data_c_14), .i_clk_c_enable_213(i_clk_c_enable_213), 
           .n3461(n3461), .i_wb_data_c_15(i_wb_data_c_15), .i_wb_data_c_16(i_wb_data_c_16), 
           .n6(n6), .i_wb_data_c_17(i_wb_data_c_17), .i_wb_data_c_18(i_wb_data_c_18)) /* synthesis syn_module_defined=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(131[9] 135[15])
    FD1S3AX o_console_stb_22 (.D(o_console_stb_N_34), .CK(i_clk_c), .Q(o_console_stb_c));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(106[9] 107[55])
    defparam o_console_stb_22.GSR = "ENABLED";
    OB o_console_data_pad_5 (.I(o_console_data_c_5), .O(o_console_data[5]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(76[19:33])
    OB o_wb_data_pad_2 (.I(o_wb_data_c_2), .O(o_wb_data[2]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_console_data_pad_6 (.I(o_console_data_c_6), .O(o_console_data[6]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(76[19:33])
    OB o_wb_data_pad_3 (.I(o_wb_data_c_3), .O(o_wb_data[3]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_console_stb_pad (.I(o_console_stb_c), .O(o_console_stb));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(75[14:27])
    OB o_wb_data_pad_4 (.I(o_wb_data_c_4), .O(o_wb_data[4]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_console_busy_pad (.I(o_console_busy_c), .O(o_console_busy));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(73[15:29])
    OB o_wb_data_pad_5 (.I(o_wb_data_c_5), .O(o_wb_data[5]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_6 (.I(o_wb_data_c_6), .O(o_wb_data[6]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_tx_data_pad_0 (.I(o_tx_data_c_0), .O(o_tx_data[0]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(68[20:29])
    OB o_wb_data_pad_7 (.I(o_wb_data_c_7), .O(o_wb_data[7]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_tx_data_pad_1 (.I(o_tx_data_c_1), .O(o_tx_data[1]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(68[20:29])
    OB o_wb_data_pad_8 (.I(o_wb_data_c_8), .O(o_wb_data[8]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_tx_data_pad_2 (.I(o_tx_data_c_2), .O(o_tx_data[2]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(68[20:29])
    OB o_tx_data_pad_3 (.I(o_tx_data_c_3), .O(o_tx_data[3]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(68[20:29])
    OB o_wb_data_pad_9 (.I(o_wb_data_c_9), .O(o_wb_data[9]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_10 (.I(o_wb_data_c_10), .O(o_wb_data[10]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_11 (.I(o_wb_data_c_11), .O(o_wb_data[11]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_tx_data_pad_4 (.I(o_tx_data_c_4), .O(o_tx_data[4]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(68[20:29])
    OB o_tx_data_pad_5 (.I(o_tx_data_c_5), .O(o_tx_data[5]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(68[20:29])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB o_wb_sel_pad_2 (.I(VCC_net), .O(o_wb_sel[2]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(63[20:28])
    OB o_tx_data_pad_6 (.I(o_tx_data_c_6), .O(o_tx_data[6]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(68[20:29])
    FD1P3AX ps_data_i1 (.D(o_tx_data_7__N_1[0]), .SP(i_clk_c_enable_31), 
            .CK(i_clk_c), .Q(o_tx_data_c_0));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(171[9] 187[6])
    defparam ps_data_i1.GSR = "ENABLED";
    OB o_wb_sel_pad_3 (.I(VCC_net), .O(o_wb_sel[3]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(63[20:28])
    OB o_tx_data_pad_7 (.I(o_tx_data_c_7), .O(o_tx_data[7]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(68[20:29])
    OB o_tx_stb_pad (.I(o_tx_stb_c), .O(o_tx_stb));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(67[15:23])
    OB o_wb_sel_pad_0 (.I(VCC_net), .O(o_wb_sel[0]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(63[20:28])
    OB o_wb_data_pad_12 (.I(o_wb_data_c_12), .O(o_wb_data[12]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    LUT4 o_tx_data_7__I_0_i1_3_lut (.A(i_console_data_c_0), .B(fnl_byte[0]), 
         .C(n3797), .Z(o_tx_data_7__N_1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(183[12] 187[6])
    defparam o_tx_data_7__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i_rx_stb_I_0_2_lut (.A(i_rx_stb_c), .B(i_rx_byte_c_7), .Z(o_console_stb_N_34)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(107[20:54])
    defparam i_rx_stb_I_0_2_lut.init = 16'h2222;
    OB o_wb_data_pad_13 (.I(o_wb_data_c_13), .O(o_wb_data[13]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_sel_pad_1 (.I(VCC_net), .O(o_wb_sel[1]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(63[20:28])
    OB o_wb_data_pad_14 (.I(o_wb_data_c_14), .O(o_wb_data[14]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_15 (.I(o_wb_data_c_15), .O(o_wb_data[15]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_16 (.I(o_wb_data_c_16), .O(o_wb_data[16]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_cyc_pad (.I(o_wb_cyc_c), .O(o_wb_cyc));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(60[15:23])
    OB o_wb_data_pad_17 (.I(o_wb_data_c_17), .O(o_wb_data[17]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_18 (.I(o_wb_data_c_18), .O(o_wb_data[18]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_19 (.I(o_wb_data_c_19), .O(o_wb_data[19]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_20 (.I(o_wb_data_c_20), .O(o_wb_data[20]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    IB i_console_data_pad_0 (.I(i_console_data[0]), .O(i_console_data_c_0));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(72[19:33])
    OB o_wb_data_pad_21 (.I(o_wb_data_c_21), .O(o_wb_data[21]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_22 (.I(o_wb_data_c_22), .O(o_wb_data[22]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    IB i_console_data_pad_1 (.I(i_console_data[1]), .O(i_console_data_c_1));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(72[19:33])
    OB o_wb_data_pad_23 (.I(o_wb_data_c_23), .O(o_wb_data[23]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_24 (.I(o_wb_data_c_24), .O(o_wb_data[24]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_25 (.I(o_wb_data_c_25), .O(o_wb_data[25]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_26 (.I(o_wb_data_c_26), .O(o_wb_data[26]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_27 (.I(o_wb_data_c_27), .O(o_wb_data[27]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    IB i_console_data_pad_2 (.I(i_console_data[2]), .O(i_console_data_c_2));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(72[19:33])
    IB i_console_data_pad_3 (.I(i_console_data[3]), .O(i_console_data_c_3));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(72[19:33])
    OB o_wb_data_pad_28 (.I(o_wb_data_c_28), .O(o_wb_data[28]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_29 (.I(o_wb_data_c_29), .O(o_wb_data[29]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    IB i_console_data_pad_4 (.I(i_console_data[4]), .O(i_console_data_c_4));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(72[19:33])
    IB i_console_data_pad_5 (.I(i_console_data[5]), .O(i_console_data_c_5));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(72[19:33])
    OB o_wb_data_pad_30 (.I(o_wb_data_c_30), .O(o_wb_data[30]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_data_pad_31 (.I(o_wb_data_c_31), .O(o_wb_data[31]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_wb_addr_pad_0 (.I(o_wb_addr_c_0), .O(o_wb_addr[0]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_1 (.I(o_wb_addr_c_1), .O(o_wb_addr[1]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_2 (.I(o_wb_addr_c_2), .O(o_wb_addr[2]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    IB i_console_data_pad_6 (.I(i_console_data[6]), .O(i_console_data_c_6));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(72[19:33])
    OB o_wb_addr_pad_3 (.I(o_wb_addr_c_3), .O(o_wb_addr[3]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_4 (.I(o_wb_addr_c_4), .O(o_wb_addr[4]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    IB i_console_stb_pad (.I(i_console_stb), .O(i_console_stb_c));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(71[14:27])
    IB i_tx_busy_pad (.I(i_tx_busy), .O(i_tx_busy_c));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(69[14:23])
    OB o_wb_addr_pad_5 (.I(o_wb_addr_c_5), .O(o_wb_addr[5]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_6 (.I(o_wb_addr_c_6), .O(o_wb_addr[6]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_7 (.I(o_wb_addr_c_7), .O(o_wb_addr[7]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_8 (.I(o_wb_addr_c_8), .O(o_wb_addr[8]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_9 (.I(o_wb_addr_c_9), .O(o_wb_addr[9]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_10 (.I(o_wb_addr_c_10), .O(o_wb_addr[10]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    IB i_interrupt_pad (.I(i_interrupt), .O(i_interrupt_c));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(66[14:25])
    OB o_wb_addr_pad_11 (.I(o_wb_addr_c_11), .O(o_wb_addr[11]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_12 (.I(o_wb_addr_c_12), .O(o_wb_addr[12]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    IB i_wb_data_pad_0 (.I(i_wb_data[0]), .O(i_wb_data_c_0));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    OB o_wb_addr_pad_13 (.I(o_wb_addr_c_13), .O(o_wb_addr[13]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_14 (.I(o_wb_addr_c_14), .O(o_wb_addr[14]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_15 (.I(o_wb_addr_c_15), .O(o_wb_addr[15]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_16 (.I(o_wb_addr_c_16), .O(o_wb_addr[16]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_17 (.I(o_wb_addr_c_17), .O(o_wb_addr[17]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_18 (.I(o_wb_addr_c_18), .O(o_wb_addr[18]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    IB i_wb_data_pad_1 (.I(i_wb_data[1]), .O(i_wb_data_c_1));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    OB o_wb_addr_pad_19 (.I(o_wb_addr_c_19), .O(o_wb_addr[19]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_20 (.I(o_wb_addr_c_20), .O(o_wb_addr[20]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    IB i_wb_data_pad_2 (.I(i_wb_data[2]), .O(i_wb_data_c_2));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    OB o_wb_addr_pad_21 (.I(o_wb_addr_c_21), .O(o_wb_addr[21]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_22 (.I(o_wb_addr_c_22), .O(o_wb_addr[22]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_23 (.I(o_wb_addr_c_23), .O(o_wb_addr[23]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_24 (.I(o_wb_addr_c_24), .O(o_wb_addr[24]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_25 (.I(o_wb_addr_c_25), .O(o_wb_addr[25]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    IB i_wb_data_pad_3 (.I(i_wb_data[3]), .O(i_wb_data_c_3));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    OB o_wb_addr_pad_26 (.I(o_wb_addr_c_26), .O(o_wb_addr[26]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_addr_pad_27 (.I(o_wb_addr_c_27), .O(o_wb_addr[27]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    IB i_wb_data_pad_4 (.I(i_wb_data[4]), .O(i_wb_data_c_4));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_5 (.I(i_wb_data[5]), .O(i_wb_data_c_5));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    OB o_wb_addr_pad_28 (.I(o_wb_addr_c_28), .O(o_wb_addr[28]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    FD1S3JX ps_data_i8 (.D(n1407), .CK(i_clk_c), .PD(n3797), .Q(o_tx_data_c_7));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(171[9] 187[6])
    defparam ps_data_i8.GSR = "ENABLED";
    OB o_wb_addr_pad_29 (.I(o_wb_addr_c_29), .O(o_wb_addr[29]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(61[21:30])
    OB o_wb_we_pad (.I(o_wb_we_c), .O(o_wb_we));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(60[35:42])
    IB i_wb_data_pad_6 (.I(i_wb_data[6]), .O(i_wb_data_c_6));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    FD1P3AX ps_data_i7 (.D(o_tx_data_7__N_1[6]), .SP(i_clk_c_enable_31), 
            .CK(i_clk_c), .Q(o_tx_data_c_6));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(171[9] 187[6])
    defparam ps_data_i7.GSR = "ENABLED";
    IB i_wb_data_pad_7 (.I(i_wb_data[7]), .O(i_wb_data_c_7));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_8 (.I(i_wb_data[8]), .O(i_wb_data_c_8));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    FD1P3AX ps_data_i6 (.D(o_tx_data_7__N_1[5]), .SP(i_clk_c_enable_31), 
            .CK(i_clk_c), .Q(o_tx_data_c_5));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(171[9] 187[6])
    defparam ps_data_i6.GSR = "ENABLED";
    FD1P3AX ps_data_i5 (.D(o_tx_data_7__N_1[4]), .SP(i_clk_c_enable_31), 
            .CK(i_clk_c), .Q(o_tx_data_c_4));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(171[9] 187[6])
    defparam ps_data_i5.GSR = "ENABLED";
    IB i_wb_data_pad_9 (.I(i_wb_data[9]), .O(i_wb_data_c_9));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    FD1P3AX ps_data_i4 (.D(o_tx_data_7__N_1[3]), .SP(i_clk_c_enable_31), 
            .CK(i_clk_c), .Q(o_tx_data_c_3));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(171[9] 187[6])
    defparam ps_data_i4.GSR = "ENABLED";
    FD1P3AX ps_data_i3 (.D(o_tx_data_7__N_1[2]), .SP(i_clk_c_enable_31), 
            .CK(i_clk_c), .Q(o_tx_data_c_2));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(171[9] 187[6])
    defparam ps_data_i3.GSR = "ENABLED";
    FD1P3AX ps_data_i2 (.D(o_tx_data_7__N_1[1]), .SP(i_clk_c_enable_31), 
            .CK(i_clk_c), .Q(o_tx_data_c_1));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(171[9] 187[6])
    defparam ps_data_i2.GSR = "ENABLED";
    IB i_wb_data_pad_10 (.I(i_wb_data[10]), .O(i_wb_data_c_10));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_11 (.I(i_wb_data[11]), .O(i_wb_data_c_11));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    FD1S3AX o_console_data_i7 (.D(i_rx_byte_c_6), .CK(i_clk_c), .Q(o_console_data_c_6));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(108[9] 109[36])
    defparam o_console_data_i7.GSR = "ENABLED";
    IB i_wb_data_pad_12 (.I(i_wb_data[12]), .O(i_wb_data_c_12));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_13 (.I(i_wb_data[13]), .O(i_wb_data_c_13));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_14 (.I(i_wb_data[14]), .O(i_wb_data_c_14));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_15 (.I(i_wb_data[15]), .O(i_wb_data_c_15));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_16 (.I(i_wb_data[16]), .O(i_wb_data_c_16));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_17 (.I(i_wb_data[17]), .O(i_wb_data_c_17));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    FD1S3AX o_console_data_i6 (.D(i_rx_byte_c_5), .CK(i_clk_c), .Q(o_console_data_c_5));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(108[9] 109[36])
    defparam o_console_data_i6.GSR = "ENABLED";
    IB i_wb_data_pad_18 (.I(i_wb_data[18]), .O(i_wb_data_c_18));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_19 (.I(i_wb_data[19]), .O(i_wb_data_c_19));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_20 (.I(i_wb_data[20]), .O(i_wb_data_c_20));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    FD1S3AX o_console_data_i5 (.D(i_rx_byte_c_4), .CK(i_clk_c), .Q(o_console_data_c_4));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(108[9] 109[36])
    defparam o_console_data_i5.GSR = "ENABLED";
    FD1S3AX o_console_data_i4 (.D(i_rx_byte_c_3), .CK(i_clk_c), .Q(o_console_data_c_3));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(108[9] 109[36])
    defparam o_console_data_i4.GSR = "ENABLED";
    IB i_wb_data_pad_21 (.I(i_wb_data[21]), .O(i_wb_data_c_21));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    FD1S3AX o_console_data_i3 (.D(i_rx_byte_c_2), .CK(i_clk_c), .Q(o_console_data_c_2));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(108[9] 109[36])
    defparam o_console_data_i3.GSR = "ENABLED";
    IB i_wb_data_pad_22 (.I(i_wb_data[22]), .O(i_wb_data_c_22));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_23 (.I(i_wb_data[23]), .O(i_wb_data_c_23));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_24 (.I(i_wb_data[24]), .O(i_wb_data_c_24));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_25 (.I(i_wb_data[25]), .O(i_wb_data_c_25));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_26 (.I(i_wb_data[26]), .O(i_wb_data_c_26));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_27 (.I(i_wb_data[27]), .O(i_wb_data_c_27));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_28 (.I(i_wb_data[28]), .O(i_wb_data_c_28));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_29 (.I(i_wb_data[29]), .O(i_wb_data_c_29));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_30 (.I(i_wb_data[30]), .O(i_wb_data_c_30));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    IB i_wb_data_pad_31 (.I(i_wb_data[31]), .O(i_wb_data_c_31));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    FD1S3AX o_console_data_i2 (.D(i_rx_byte_c_1), .CK(i_clk_c), .Q(o_console_data_c_1));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(108[9] 109[36])
    defparam o_console_data_i2.GSR = "ENABLED";
    IB i_wb_err_pad (.I(i_wb_err), .O(i_wb_err_c));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(64[36:44])
    IB i_wb_stall_pad (.I(i_wb_stall), .O(i_wb_stall_c));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(64[24:34])
    IB i_wb_ack_pad (.I(i_wb_ack), .O(i_wb_ack_c));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(64[14:22])
    IB i_rx_byte_pad_0 (.I(i_rx_byte[0]), .O(i_rx_byte_c_0));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(59[19:28])
    IB i_rx_byte_pad_1 (.I(i_rx_byte[1]), .O(i_rx_byte_c_1));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(59[19:28])
    IB i_rx_byte_pad_2 (.I(i_rx_byte[2]), .O(i_rx_byte_c_2));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(59[19:28])
    IB i_rx_byte_pad_3 (.I(i_rx_byte[3]), .O(i_rx_byte_c_3));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(59[19:28])
    IB i_rx_byte_pad_4 (.I(i_rx_byte[4]), .O(i_rx_byte_c_4));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(59[19:28])
    IB i_rx_byte_pad_5 (.I(i_rx_byte[5]), .O(i_rx_byte_c_5));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(59[19:28])
    IB i_rx_byte_pad_6 (.I(i_rx_byte[6]), .O(i_rx_byte_c_6));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(59[19:28])
    IB i_rx_byte_pad_7 (.I(i_rx_byte[7]), .O(i_rx_byte_c_7));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(59[19:28])
    LUT4 i136_3_lut_rep_122 (.A(fnl_stb), .B(i_tx_busy_c), .C(o_tx_stb_c), 
         .Z(n3797)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(183[12] 187[6])
    defparam i136_3_lut_rep_122.init = 16'h3a3a;
    IB i_rx_stb_pad (.I(i_rx_stb), .O(i_rx_stb_c));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(58[14:22])
    IB i_clk_pad (.I(i_clk), .O(i_clk_c));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(57[14:19])
    FD1S3AX o_console_data_i1 (.D(i_rx_byte_c_0), .CK(i_clk_c), .Q(o_console_data_c_0));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(108[9] 109[36])
    defparam o_console_data_i1.GSR = "ENABLED";
    OB o_console_data_pad_0 (.I(o_console_data_c_0), .O(o_console_data[0]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(76[19:33])
    LUT4 i11_3_lut_4_lut (.A(i_console_stb_c), .B(fnl_stb), .C(o_tx_stb_c), 
         .D(i_tx_busy_c), .Z(i_clk_c_enable_216)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(178[13] 182[7])
    defparam i11_3_lut_4_lut.init = 16'h0efe;
    OB o_wb_data_pad_0 (.I(o_wb_data_c_0), .O(o_wb_data[0]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_console_data_pad_1 (.I(o_console_data_c_1), .O(o_console_data[1]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(76[19:33])
    OB o_wb_data_pad_1 (.I(o_wb_data_c_1), .O(o_wb_data[1]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(62[21:30])
    OB o_console_data_pad_2 (.I(o_console_data_c_2), .O(o_console_data[2]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(76[19:33])
    OB o_console_data_pad_3 (.I(o_console_data_c_3), .O(o_console_data[3]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(76[19:33])
    OB o_console_data_pad_4 (.I(o_console_data_c_4), .O(o_console_data[4]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(76[19:33])
    OB o_wb_stb_pad (.I(o_wb_stb_c), .O(o_wb_stb));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(60[25:33])
    LUT4 i1811_2_lut_3_lut (.A(i_console_stb_c), .B(fnl_stb), .C(o_tx_stb_c), 
         .Z(n2335)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(178[13] 182[7])
    defparam i1811_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(fnl_stb), .B(i_tx_busy_c), .C(o_tx_stb_c), 
         .D(i_console_stb_c), .Z(i_clk_c_enable_31)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(183[12] 187[6])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h3f3a;
    LUT4 i884_1_lut (.A(i_wb_data_c_1), .Z(n1411)) /* synthesis lut_function=(!(A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(65[20:29])
    defparam i884_1_lut.init = 16'h5555;
    LUT4 i_tx_busy_I_0_27_2_lut_rep_121 (.A(i_tx_busy_c), .B(o_tx_stb_c), 
         .Z(n3763)) /* synthesis lut_function=(A (B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(165[23:45])
    defparam i_tx_busy_I_0_27_2_lut_rep_121.init = 16'h8888;
    LUT4 i880_2_lut_3_lut_4_lut (.A(i_tx_busy_c), .B(o_tx_stb_c), .C(o_tx_data_c_7), 
         .D(i_console_stb_c), .Z(n1407)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(165[23:45])
    defparam i880_2_lut_3_lut_4_lut.init = 16'h80f0;
    LUT4 m1_lut (.Z(n3799)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 o_tx_data_7__I_0_i7_3_lut (.A(i_console_data_c_6), .B(fnl_byte[6]), 
         .C(n3797), .Z(o_tx_data_7__N_1[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(183[12] 187[6])
    defparam o_tx_data_7__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 o_tx_data_7__I_0_i6_3_lut (.A(i_console_data_c_5), .B(fnl_byte[5]), 
         .C(n3797), .Z(o_tx_data_7__N_1[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(183[12] 187[6])
    defparam o_tx_data_7__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 o_tx_data_7__I_0_i5_3_lut (.A(i_console_data_c_4), .B(fnl_byte[4]), 
         .C(n3797), .Z(o_tx_data_7__N_1[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(183[12] 187[6])
    defparam o_tx_data_7__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 o_tx_data_7__I_0_i4_3_lut (.A(i_console_data_c_3), .B(fnl_byte[3]), 
         .C(n3797), .Z(o_tx_data_7__N_1[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(183[12] 187[6])
    defparam o_tx_data_7__I_0_i4_3_lut.init = 16'hcaca;
    FD1P3JX ps_full_24 (.D(fnl_stb), .SP(i_clk_c_enable_216), .PD(n2335), 
            .CK(i_clk_c), .Q(o_tx_stb_c)) /* synthesis lse_init_val=0 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(171[9] 187[6])
    defparam ps_full_24.GSR = "ENABLED";
    LUT4 o_tx_data_7__I_0_i3_3_lut (.A(i_console_data_c_2), .B(fnl_byte[2]), 
         .C(n3797), .Z(o_tx_data_7__N_1[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(183[12] 187[6])
    defparam o_tx_data_7__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 o_tx_data_7__I_0_i2_3_lut (.A(i_console_data_c_1), .B(fnl_byte[1]), 
         .C(n3797), .Z(o_tx_data_7__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(183[12] 187[6])
    defparam o_tx_data_7__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 fnl_stb_I_0_2_lut (.A(fnl_stb), .B(o_tx_stb_c), .Z(o_console_busy_c)) /* synthesis lut_function=(A+(B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(191[26:46])
    defparam fnl_stb_I_0_2_lut.init = 16'heeee;
    hbnewline fnl_byte_6__I_0 (.hx_stb(hx_stb), .nl_busy(nl_busy), .\w_gx_char[2] (w_gx_char[2]), 
            .\w_gx_char[1] (w_gx_char[1]), .fnl_stb(fnl_stb), .i_clk_c(i_clk_c), 
            .w_reset(w_reset), .n3801(n3801), .n3763(n3763), .n3800(n3800), 
            .\w_gx_char[0] (w_gx_char[0]), .\w_gx_char[4] (w_gx_char[4]), 
            .\w_gx_char[5] (w_gx_char[5]), .\w_gx_char[3] (w_gx_char[3]), 
            .\w_gx_char[6] (w_gx_char[6]), .i_tx_busy_c(i_tx_busy_c), .o_tx_stb_c(o_tx_stb_c), 
            .fnl_byte({fnl_byte})) /* synthesis syn_module_defined=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(164[12] 165[46])
    hbgenhex genhex (.hb_bits({hb_bits}), .\w_gx_char[0] (w_gx_char[0]), 
            .\w_gx_char[1] (w_gx_char[1]), .\w_gx_char[2] (w_gx_char[2]), 
            .\w_gx_char[3] (w_gx_char[3]), .\w_gx_char[4] (w_gx_char[4]), 
            .\w_gx_char[5] (w_gx_char[5]), .\w_gx_char[6] (w_gx_char[6]), 
            .i_clk_c(i_clk_c), .i_clk_c_enable_142(i_clk_c_enable_142), 
            .GND_net(GND_net), .VCC_net(VCC_net), .hx_stb(hx_stb), .w_reset(w_reset), 
            .hb_busy(hb_busy), .nl_busy(nl_busy), .n3800(n3800), .n3750(n3750), 
            .i_clk_c_enable_218(i_clk_c_enable_218)) /* synthesis syn_module_defined=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(158[11] 159[29])
    hbints addints (.int_word({int_word}), .i_clk_c(i_clk_c), .i_clk_c_enable_107(i_clk_c_enable_107), 
           .n1418(n1418), .ow_word({ow_word}), .i_clk_c_enable_18(i_clk_c_enable_18), 
           .n3762(n3762), .n3799(n3799), .i_interrupt_c(i_interrupt_c), 
           .n3800(n3800), .n3761(n3761), .n3749(n3749), .ow_stb(ow_stb), 
           .int_stb(int_stb), .w_reset(w_reset)) /* synthesis syn_module_defined=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(140[9] 142[32])
    hbdeword unpackx (.hb_busy(hb_busy), .i_clk_c(i_clk_c), .i_clk_c_enable_218(i_clk_c_enable_218), 
            .w_reset(w_reset), .hb_bits({hb_bits}), .i_clk_c_enable_142(i_clk_c_enable_142), 
            .n3750(n3750), .idl_word({idl_word}), .idl_stb(idl_stb), .nl_busy(nl_busy), 
            .hx_stb(hx_stb), .n3801(n3801), .n3799(n3799), .n3800(n3800)) /* synthesis syn_module_defined=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(153[11] 155[29])
    VLO i1 (.Z(GND_net));
    hbpack packxi (.\dec_bits[4] (dec_bits[4]), .iw_stb(iw_stb), .i_clk_c(i_clk_c), 
           .w_reset(w_reset), .o_pck_stb_N_206(o_pck_stb_N_206), .iw_word({iw_word}), 
           .i_clk_c_enable_173(i_clk_c_enable_173), .n3801(n3801), .n46(n46), 
           .n45(n45), .i_clk_c_enable_175(i_clk_c_enable_175), .\dec_bits[0] (dec_bits[0]), 
           .\dec_bits[1] (dec_bits[1]), .cmd_loaded(cmd_loaded), .i_clk_c_enable_233(i_clk_c_enable_233), 
           .cmd_loaded_N_209(cmd_loaded_N_209)) /* synthesis syn_module_defined=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(124[9] 125[38])
    TSALL TSALL_INST (.TSALL(GND_net));
    hbdechex dechxi (.i_rx_byte_c_2(i_rx_byte_c_2), .i_rx_byte_c_1(i_rx_byte_c_1), 
            .i_clk_c(i_clk_c), .dec_bits({dec_bits[4], Open_0, Open_1, 
            Open_2, dec_bits[0]}), .w_reset(w_reset), .i_rx_byte_c_3(i_rx_byte_c_3), 
            .i_rx_byte_c_4(i_rx_byte_c_4), .i_rx_byte_c_5(i_rx_byte_c_5), 
            .n3800(n3800), .o_wb_stb_c(o_wb_stb_c), .o_wb_cyc_c(o_wb_cyc_c), 
            .i_wb_err_c(i_wb_err_c), .n3462(n3462), .i_rx_byte_c_0(i_rx_byte_c_0), 
            .n3461(n3461), .i_clk_c_enable_173(i_clk_c_enable_173), .i_clk_c_enable_175(i_clk_c_enable_175), 
            .cmd_loaded(cmd_loaded), .o_pck_stb_N_206(o_pck_stb_N_206), 
            .i_clk_c_enable_233(i_clk_c_enable_233), .cmd_loaded_N_209(cmd_loaded_N_209), 
            .i_rx_stb_c(i_rx_stb_c), .i_rx_byte_c_6(i_rx_byte_c_6), .\dec_bits[1] (dec_bits[1]), 
            .n905(n905), .n3801(n3801), .n3449(n3449), .n3465(n3465), 
            .n46(n46), .n45(n45), .i_wb_ack_c(i_wb_ack_c), .n6(n6), 
            .i_clk_c_enable_213(i_clk_c_enable_213)) /* synthesis syn_module_defined=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(118[11] 120[30])
    hbidle addidles (.idl_stb(idl_stb), .i_clk_c(i_clk_c), .w_reset(w_reset), 
           .n3749(n3749), .idl_word({idl_word}), .int_word({int_word}), 
           .hb_busy(hb_busy), .n3761(n3761), .int_stb(int_stb), .n3762(n3762), 
           .i_clk_c_enable_107(i_clk_c_enable_107), .n1418(n1418), .i_clk_c_enable_18(i_clk_c_enable_18), 
           .n3800(n3800)) /* synthesis syn_module_defined=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(147[9] 149[31])
    
endmodule
//
// Verilog Description of module hbexec
//

module hbexec (o_wb_addr_c_22, i_wb_data_c_24, o_wb_cyc_c, o_wb_we_c, 
            iw_stb, iw_word, o_wb_stb_c, n3449, i_wb_stall_c, n3465, 
            o_wb_addr_c_23, i_wb_data_c_25, ow_word, i_clk_c, n1411, 
            ow_stb, n905, o_wb_addr_c_24, i_wb_data_c_26, n3800, i_wb_err_c, 
            n3801, o_wb_addr_c_25, i_wb_data_c_27, o_wb_addr_c_26, i_wb_data_c_28, 
            o_wb_data_c_0, n3462, o_wb_addr_c_0, o_wb_addr_c_27, o_wb_addr_c_17, 
            i_wb_data_c_19, i_wb_data_c_29, i_wb_ack_c, o_wb_addr_c_28, 
            i_wb_data_c_30, o_wb_addr_c_29, i_wb_data_c_31, o_wb_addr_c_18, 
            i_wb_data_c_20, o_wb_addr_c_19, i_wb_data_c_21, o_wb_addr_c_20, 
            i_wb_data_c_22, i_wb_data_c_0, i_wb_data_c_2, o_wb_addr_c_1, 
            i_wb_data_c_3, o_wb_addr_c_21, i_wb_data_c_23, o_wb_addr_c_2, 
            i_wb_data_c_4, o_wb_addr_c_3, i_wb_data_c_5, o_wb_addr_c_4, 
            i_wb_data_c_6, o_wb_addr_c_5, i_wb_data_c_7, o_wb_addr_c_6, 
            i_wb_data_c_8, o_wb_addr_c_7, i_wb_data_c_9, o_wb_data_c_1, 
            o_wb_data_c_2, o_wb_data_c_3, o_wb_data_c_4, o_wb_data_c_5, 
            o_wb_data_c_6, o_wb_data_c_7, o_wb_data_c_8, o_wb_data_c_9, 
            o_wb_data_c_10, o_wb_data_c_11, o_wb_data_c_12, o_wb_data_c_13, 
            o_wb_data_c_14, o_wb_data_c_15, o_wb_data_c_16, o_wb_data_c_17, 
            o_wb_data_c_18, o_wb_data_c_19, o_wb_data_c_20, o_wb_data_c_21, 
            o_wb_data_c_22, o_wb_data_c_23, o_wb_data_c_24, o_wb_data_c_25, 
            o_wb_data_c_26, o_wb_data_c_27, o_wb_data_c_28, o_wb_data_c_29, 
            o_wb_data_c_30, o_wb_data_c_31, o_wb_addr_c_8, o_wb_addr_c_9, 
            o_wb_addr_c_10, o_wb_addr_c_11, o_wb_addr_c_12, o_wb_addr_c_13, 
            o_wb_addr_c_14, o_wb_addr_c_15, o_wb_addr_c_16, i_wb_data_c_10, 
            GND_net, i_wb_data_c_11, i_wb_data_c_12, i_wb_data_c_13, 
            i_wb_data_c_14, i_clk_c_enable_213, n3461, i_wb_data_c_15, 
            i_wb_data_c_16, n6, i_wb_data_c_17, i_wb_data_c_18) /* synthesis syn_module_defined=1 */ ;
    output o_wb_addr_c_22;
    input i_wb_data_c_24;
    output o_wb_cyc_c;
    output o_wb_we_c;
    input iw_stb;
    input [33:0]iw_word;
    output o_wb_stb_c;
    output n3449;
    input i_wb_stall_c;
    input n3465;
    output o_wb_addr_c_23;
    input i_wb_data_c_25;
    output [33:0]ow_word;
    input i_clk_c;
    input n1411;
    output ow_stb;
    input n905;
    output o_wb_addr_c_24;
    input i_wb_data_c_26;
    input n3800;
    input i_wb_err_c;
    input n3801;
    output o_wb_addr_c_25;
    input i_wb_data_c_27;
    output o_wb_addr_c_26;
    input i_wb_data_c_28;
    output o_wb_data_c_0;
    input n3462;
    output o_wb_addr_c_0;
    output o_wb_addr_c_27;
    output o_wb_addr_c_17;
    input i_wb_data_c_19;
    input i_wb_data_c_29;
    input i_wb_ack_c;
    output o_wb_addr_c_28;
    input i_wb_data_c_30;
    output o_wb_addr_c_29;
    input i_wb_data_c_31;
    output o_wb_addr_c_18;
    input i_wb_data_c_20;
    output o_wb_addr_c_19;
    input i_wb_data_c_21;
    output o_wb_addr_c_20;
    input i_wb_data_c_22;
    input i_wb_data_c_0;
    input i_wb_data_c_2;
    output o_wb_addr_c_1;
    input i_wb_data_c_3;
    output o_wb_addr_c_21;
    input i_wb_data_c_23;
    output o_wb_addr_c_2;
    input i_wb_data_c_4;
    output o_wb_addr_c_3;
    input i_wb_data_c_5;
    output o_wb_addr_c_4;
    input i_wb_data_c_6;
    output o_wb_addr_c_5;
    input i_wb_data_c_7;
    output o_wb_addr_c_6;
    input i_wb_data_c_8;
    output o_wb_addr_c_7;
    input i_wb_data_c_9;
    output o_wb_data_c_1;
    output o_wb_data_c_2;
    output o_wb_data_c_3;
    output o_wb_data_c_4;
    output o_wb_data_c_5;
    output o_wb_data_c_6;
    output o_wb_data_c_7;
    output o_wb_data_c_8;
    output o_wb_data_c_9;
    output o_wb_data_c_10;
    output o_wb_data_c_11;
    output o_wb_data_c_12;
    output o_wb_data_c_13;
    output o_wb_data_c_14;
    output o_wb_data_c_15;
    output o_wb_data_c_16;
    output o_wb_data_c_17;
    output o_wb_data_c_18;
    output o_wb_data_c_19;
    output o_wb_data_c_20;
    output o_wb_data_c_21;
    output o_wb_data_c_22;
    output o_wb_data_c_23;
    output o_wb_data_c_24;
    output o_wb_data_c_25;
    output o_wb_data_c_26;
    output o_wb_data_c_27;
    output o_wb_data_c_28;
    output o_wb_data_c_29;
    output o_wb_data_c_30;
    output o_wb_data_c_31;
    output o_wb_addr_c_8;
    output o_wb_addr_c_9;
    output o_wb_addr_c_10;
    output o_wb_addr_c_11;
    output o_wb_addr_c_12;
    output o_wb_addr_c_13;
    output o_wb_addr_c_14;
    output o_wb_addr_c_15;
    output o_wb_addr_c_16;
    input i_wb_data_c_10;
    input GND_net;
    input i_wb_data_c_11;
    input i_wb_data_c_12;
    input i_wb_data_c_13;
    input i_wb_data_c_14;
    input i_clk_c_enable_213;
    input n3461;
    input i_wb_data_c_15;
    input i_wb_data_c_16;
    output n6;
    input i_wb_data_c_17;
    input i_wb_data_c_18;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(57[14:19])
    wire [33:0]n338;
    
    wire i_cmd_wr, i_clk_c_enable_19, n3329, o_rsp_stb_N_428;
    wire [33:0]o_rsp_word_33__N_392;
    
    wire i_clk_c_enable_39, n3758, newaddr_N_431, newaddr, n3746, 
        i_clk_c_enable_25, o_wb_data_31__N_384, i_clk_c_enable_204, inc;
    wire [29:0]n609;
    wire [29:0]n125;
    
    wire i_cmd_word_0__N_436, n38, n3, n3262, n3261, n3260, n3259, 
        n3258, n3257, n3256, n3255, n3254, n3253, n3252, n3251, 
        n3250, n3249, n3248;
    
    LUT4 mux_59_i25_4_lut (.A(o_wb_addr_c_22), .B(i_wb_data_c_24), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[24])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i25_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_3_lut (.A(iw_stb), .B(iw_word[33]), .C(o_wb_stb_c), 
         .Z(n3449)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(121[9] 168[5])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_adj_51 (.A(iw_stb), .B(iw_word[33]), .C(iw_word[32]), 
         .Z(i_cmd_wr)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(121[9] 168[5])
    defparam i1_2_lut_3_lut_adj_51.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_52 (.A(o_wb_stb_c), .B(i_wb_stall_c), .C(n3465), 
         .Z(i_clk_c_enable_19)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(121[9] 168[5])
    defparam i1_2_lut_3_lut_adj_52.init = 16'hf2f2;
    LUT4 mux_59_i26_4_lut (.A(o_wb_addr_c_23), .B(i_wb_data_c_25), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[25])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i26_4_lut.init = 16'h0aca;
    FD1S3IX o_rsp_word_i1 (.D(n3329), .CK(i_clk_c), .CD(n1411), .Q(ow_word[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i1.GSR = "ENABLED";
    FD1S3JX o_rsp_stb_74 (.D(o_rsp_stb_N_428), .CK(i_clk_c), .PD(n905), 
            .Q(ow_stb)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_stb_74.GSR = "ENABLED";
    LUT4 mux_59_i27_4_lut (.A(o_wb_addr_c_24), .B(i_wb_data_c_26), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[26])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i27_4_lut.init = 16'h0aca;
    FD1S3IX o_rsp_word_i0 (.D(n338[0]), .CK(i_clk_c), .CD(n905), .Q(ow_word[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i0.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(o_wb_we_c), .B(o_wb_cyc_c), .C(n3800), .D(i_wb_err_c), 
         .Z(n3329)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0004;
    FD1S3IX o_rsp_word_i2 (.D(n338[2]), .CK(i_clk_c), .CD(n905), .Q(ow_word[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i2.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i3 (.D(n338[3]), .CK(i_clk_c), .CD(n905), .Q(ow_word[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i3.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i4 (.D(n338[4]), .CK(i_clk_c), .CD(n905), .Q(ow_word[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i4.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i5 (.D(n338[5]), .CK(i_clk_c), .CD(n905), .Q(ow_word[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i5.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i6 (.D(n338[6]), .CK(i_clk_c), .CD(n905), .Q(ow_word[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i6.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i7 (.D(n338[7]), .CK(i_clk_c), .CD(n905), .Q(ow_word[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i7.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i8 (.D(n338[8]), .CK(i_clk_c), .CD(n905), .Q(ow_word[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i8.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i9 (.D(n338[9]), .CK(i_clk_c), .CD(n905), .Q(ow_word[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i9.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i10 (.D(n338[10]), .CK(i_clk_c), .CD(n905), .Q(ow_word[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i10.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i11 (.D(n338[11]), .CK(i_clk_c), .CD(n905), .Q(ow_word[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i11.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i12 (.D(n338[12]), .CK(i_clk_c), .CD(n905), .Q(ow_word[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i12.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i13 (.D(n338[13]), .CK(i_clk_c), .CD(n905), .Q(ow_word[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i13.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i14 (.D(n338[14]), .CK(i_clk_c), .CD(n905), .Q(ow_word[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i14.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i15 (.D(n338[15]), .CK(i_clk_c), .CD(n905), .Q(ow_word[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i15.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i16 (.D(n338[16]), .CK(i_clk_c), .CD(n905), .Q(ow_word[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i16.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i17 (.D(n338[17]), .CK(i_clk_c), .CD(n905), .Q(ow_word[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i17.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i18 (.D(n338[18]), .CK(i_clk_c), .CD(n905), .Q(ow_word[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i18.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i19 (.D(n338[19]), .CK(i_clk_c), .CD(n905), .Q(ow_word[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i19.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i20 (.D(n338[20]), .CK(i_clk_c), .CD(n905), .Q(ow_word[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i20.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i21 (.D(n338[21]), .CK(i_clk_c), .CD(n905), .Q(ow_word[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i21.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i22 (.D(n338[22]), .CK(i_clk_c), .CD(n905), .Q(ow_word[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i22.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i23 (.D(n338[23]), .CK(i_clk_c), .CD(n905), .Q(ow_word[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i23.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i24 (.D(n338[24]), .CK(i_clk_c), .CD(n905), .Q(ow_word[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i24.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i25 (.D(n338[25]), .CK(i_clk_c), .CD(n905), .Q(ow_word[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i25.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i26 (.D(n338[26]), .CK(i_clk_c), .CD(n905), .Q(ow_word[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i26.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i27 (.D(n338[27]), .CK(i_clk_c), .CD(n905), .Q(ow_word[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i27.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i28 (.D(n338[28]), .CK(i_clk_c), .CD(n905), .Q(ow_word[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i28.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i29 (.D(o_rsp_word_33__N_392[29]), .CK(i_clk_c), 
            .CD(n3801), .Q(ow_word[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i29.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i30 (.D(n338[30]), .CK(i_clk_c), .CD(n905), .Q(ow_word[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i30.GSR = "ENABLED";
    FD1S3IX o_rsp_word_i31 (.D(n338[31]), .CK(i_clk_c), .CD(n905), .Q(ow_word[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i31.GSR = "ENABLED";
    FD1S3JX o_rsp_word_i32 (.D(n338[32]), .CK(i_clk_c), .PD(n905), .Q(ow_word[32])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i32.GSR = "ENABLED";
    FD1S3JX o_rsp_word_i33 (.D(i_clk_c_enable_39), .CK(i_clk_c), .PD(n905), 
            .Q(ow_word[33])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(278[9] 309[5])
    defparam o_rsp_word_i33.GSR = "ENABLED";
    LUT4 mux_59_i28_4_lut (.A(o_wb_addr_c_25), .B(i_wb_data_c_27), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[27])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i28_4_lut.init = 16'h0aca;
    LUT4 i2930_3_lut_rep_116 (.A(iw_word[33]), .B(iw_stb), .C(iw_word[32]), 
         .Z(n3758)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2930_3_lut_rep_116.init = 16'h0808;
    LUT4 i1_2_lut_4_lut (.A(iw_word[33]), .B(iw_stb), .C(iw_word[32]), 
         .D(n3800), .Z(newaddr_N_431)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0008;
    LUT4 mux_59_i29_4_lut (.A(o_wb_addr_c_26), .B(i_wb_data_c_28), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[28])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i29_4_lut.init = 16'h0aca;
    FD1S3IX newaddr_72 (.D(newaddr_N_431), .CK(i_clk_c), .CD(o_wb_cyc_c), 
            .Q(newaddr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(192[9] 236[5])
    defparam newaddr_72.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_104_4_lut (.A(iw_word[33]), .B(iw_stb), .C(iw_word[32]), 
         .D(iw_word[1]), .Z(n3746)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_104_4_lut.init = 16'hfff7;
    LUT4 o_cmd_busy_I_0_1_lut_rep_117 (.A(o_wb_cyc_c), .Z(i_clk_c_enable_39)) /* synthesis lut_function=(!(A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(194[21:34])
    defparam o_cmd_busy_I_0_1_lut_rep_117.init = 16'h5555;
    LUT4 i1_2_lut_rep_103_4_lut_4_lut (.A(o_wb_cyc_c), .B(iw_word[32]), 
         .C(iw_stb), .D(iw_word[33]), .Z(i_clk_c_enable_25)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(194[21:34])
    defparam i1_2_lut_rep_103_4_lut_4_lut.init = 16'h1000;
    FD1P3AX o_wb_data_i0_i1 (.D(iw_word[0]), .SP(o_wb_data_31__N_384), .CK(i_clk_c), 
            .Q(o_wb_data_c_0)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(o_wb_cyc_c), .B(n3758), .C(i_wb_stall_c), 
         .D(o_wb_stb_c), .Z(i_clk_c_enable_204)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(194[21:34])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4f44;
    FD1P3AX o_wb_stb_68 (.D(n3462), .SP(i_clk_c_enable_19), .CK(i_clk_c), 
            .Q(o_wb_stb_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(121[9] 168[5])
    defparam o_wb_stb_68.GSR = "ENABLED";
    LUT4 mux_123_i1_3_lut_4_lut_4_lut (.A(o_wb_cyc_c), .B(inc), .C(iw_word[2]), 
         .D(n3758), .Z(n609[0])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(194[21:34])
    defparam mux_123_i1_3_lut_4_lut_4_lut.init = 16'hd8cc;
    FD1P3AX o_wb_addr_176__i1 (.D(n125[0]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_0)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i1.GSR = "ENABLED";
    FD1P3AX inc_71 (.D(i_cmd_word_0__N_436), .SP(i_clk_c_enable_25), .CK(i_clk_c), 
            .Q(inc)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(192[9] 236[5])
    defparam inc_71.GSR = "ENABLED";
    FD1P3AX o_wb_we_69 (.D(i_cmd_wr), .SP(i_clk_c_enable_39), .CK(i_clk_c), 
            .Q(o_wb_we_c)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(184[9] 186[26])
    defparam o_wb_we_69.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(i_wb_err_c), .B(o_wb_addr_c_27), .C(n38), .D(o_wb_cyc_c), 
         .Z(o_rsp_word_33__N_392[29])) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(60[15:23])
    defparam i1_4_lut.init = 16'hfaee;
    LUT4 mux_59_i20_4_lut (.A(o_wb_addr_c_17), .B(i_wb_data_c_19), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[19])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i20_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut (.A(o_wb_we_c), .B(i_wb_data_c_29), .Z(n38)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(60[35:42])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i1279_3_lut (.A(newaddr), .B(i_wb_ack_c), .C(o_wb_cyc_c), .Z(o_rsp_stb_N_428)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(60[15:23])
    defparam i1279_3_lut.init = 16'hcaca;
    LUT4 mux_59_i31_4_lut (.A(o_wb_addr_c_28), .B(i_wb_data_c_30), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[30])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i31_4_lut.init = 16'h0aca;
    LUT4 mux_59_i32_4_lut (.A(o_wb_addr_c_29), .B(i_wb_data_c_31), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[31])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i32_4_lut.init = 16'h0aca;
    LUT4 mux_59_i21_4_lut (.A(o_wb_addr_c_18), .B(i_wb_data_c_20), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[20])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i21_4_lut.init = 16'h0aca;
    LUT4 mux_59_i22_4_lut (.A(o_wb_addr_c_19), .B(i_wb_data_c_21), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[21])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i22_4_lut.init = 16'h0aca;
    LUT4 i1756_2_lut (.A(o_wb_we_c), .B(o_wb_cyc_c), .Z(n338[32])) /* synthesis lut_function=(A (B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam i1756_2_lut.init = 16'h8888;
    LUT4 mux_59_i23_4_lut (.A(o_wb_addr_c_20), .B(i_wb_data_c_22), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[22])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i23_4_lut.init = 16'h0aca;
    LUT4 mux_59_i1_4_lut (.A(inc), .B(i_wb_data_c_0), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[0])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i1_4_lut.init = 16'h05c5;
    LUT4 mux_59_i3_4_lut (.A(o_wb_addr_c_0), .B(i_wb_data_c_2), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i3_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_3_lut_adj_53 (.A(iw_word[1]), .B(n3758), .C(o_wb_cyc_c), 
         .Z(n3)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(121[9] 168[5])
    defparam i1_2_lut_3_lut_adj_53.init = 16'hfbfb;
    LUT4 mux_59_i4_4_lut (.A(o_wb_addr_c_1), .B(i_wb_data_c_3), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i4_4_lut.init = 16'h0aca;
    LUT4 mux_59_i24_4_lut (.A(o_wb_addr_c_21), .B(i_wb_data_c_23), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[23])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i24_4_lut.init = 16'h0aca;
    LUT4 mux_59_i5_4_lut (.A(o_wb_addr_c_2), .B(i_wb_data_c_4), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i5_4_lut.init = 16'h0aca;
    LUT4 i2997_2_lut (.A(o_wb_stb_c), .B(i_wb_stall_c), .Z(o_wb_data_31__N_384)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2997_2_lut.init = 16'h7777;
    LUT4 mux_59_i6_4_lut (.A(o_wb_addr_c_3), .B(i_wb_data_c_5), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[5])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i6_4_lut.init = 16'h0aca;
    LUT4 mux_59_i7_4_lut (.A(o_wb_addr_c_4), .B(i_wb_data_c_6), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i7_4_lut.init = 16'h0aca;
    LUT4 mux_59_i8_4_lut (.A(o_wb_addr_c_5), .B(i_wb_data_c_7), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i8_4_lut.init = 16'h0aca;
    LUT4 mux_59_i9_4_lut (.A(o_wb_addr_c_6), .B(i_wb_data_c_8), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[8])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i9_4_lut.init = 16'h0aca;
    LUT4 mux_59_i10_4_lut (.A(o_wb_addr_c_7), .B(i_wb_data_c_9), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[9])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i10_4_lut.init = 16'h0aca;
    FD1P3AX o_wb_data_i0_i2 (.D(iw_word[1]), .SP(o_wb_data_31__N_384), .CK(i_clk_c), 
            .Q(o_wb_data_c_1)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i2.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i3 (.D(iw_word[2]), .SP(o_wb_data_31__N_384), .CK(i_clk_c), 
            .Q(o_wb_data_c_2)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i3.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i4 (.D(iw_word[3]), .SP(o_wb_data_31__N_384), .CK(i_clk_c), 
            .Q(o_wb_data_c_3)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i4.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i5 (.D(iw_word[4]), .SP(o_wb_data_31__N_384), .CK(i_clk_c), 
            .Q(o_wb_data_c_4)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i5.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i6 (.D(iw_word[5]), .SP(o_wb_data_31__N_384), .CK(i_clk_c), 
            .Q(o_wb_data_c_5)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i6.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i7 (.D(iw_word[6]), .SP(o_wb_data_31__N_384), .CK(i_clk_c), 
            .Q(o_wb_data_c_6)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i7.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i8 (.D(iw_word[7]), .SP(o_wb_data_31__N_384), .CK(i_clk_c), 
            .Q(o_wb_data_c_7)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i8.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i9 (.D(iw_word[8]), .SP(o_wb_data_31__N_384), .CK(i_clk_c), 
            .Q(o_wb_data_c_8)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i9.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i10 (.D(iw_word[9]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_9)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i10.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i11 (.D(iw_word[10]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_10)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i11.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i12 (.D(iw_word[11]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_11)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i12.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i13 (.D(iw_word[12]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_12)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i13.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i14 (.D(iw_word[13]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_13)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i14.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i15 (.D(iw_word[14]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_14)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i15.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i16 (.D(iw_word[15]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_15)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i16.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i17 (.D(iw_word[16]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_16)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i17.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i18 (.D(iw_word[17]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_17)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i18.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i19 (.D(iw_word[18]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_18)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i19.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i20 (.D(iw_word[19]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_19)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i20.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i21 (.D(iw_word[20]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_20)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i21.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i22 (.D(iw_word[21]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_21)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i22.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i23 (.D(iw_word[22]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_22)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i23.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i24 (.D(iw_word[23]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_23)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i24.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i25 (.D(iw_word[24]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_24)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i25.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i26 (.D(iw_word[25]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_25)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i26.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i27 (.D(iw_word[26]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_26)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i27.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i28 (.D(iw_word[27]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_27)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i28.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i29 (.D(iw_word[28]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_28)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i29.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i30 (.D(iw_word[29]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_29)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i30.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i31 (.D(iw_word[30]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_30)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i31.GSR = "ENABLED";
    FD1P3AX o_wb_data_i0_i32 (.D(iw_word[31]), .SP(o_wb_data_31__N_384), 
            .CK(i_clk_c), .Q(o_wb_data_c_31)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(241[9] 261[5])
    defparam o_wb_data_i0_i32.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i2 (.D(n125[1]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_1)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i2.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i3 (.D(n125[2]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_2)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i3.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i4 (.D(n125[3]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_3)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i4.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i5 (.D(n125[4]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_4)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i5.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i6 (.D(n125[5]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_5)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i6.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i7 (.D(n125[6]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_6)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i7.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i8 (.D(n125[7]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_7)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i8.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i9 (.D(n125[8]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_8)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i9.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i10 (.D(n125[9]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_9)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i10.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i11 (.D(n125[10]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_10)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i11.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i12 (.D(n125[11]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_11)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i12.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i13 (.D(n125[12]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_12)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i13.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i14 (.D(n125[13]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_13)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i14.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i15 (.D(n125[14]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_14)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i15.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i16 (.D(n125[15]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_15)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i16.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i17 (.D(n125[16]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_16)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i17.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i18 (.D(n125[17]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_17)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i18.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i19 (.D(n125[18]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_18)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i19.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i20 (.D(n125[19]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_19)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i20.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i21 (.D(n125[20]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_20)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i21.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i22 (.D(n125[21]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_21)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i22.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i23 (.D(n125[22]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_22)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i23.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i24 (.D(n125[23]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_23)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i24.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i25 (.D(n125[24]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_24)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i25.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i26 (.D(n125[25]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_25)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i26.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i27 (.D(n125[26]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_26)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i27.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i28 (.D(n125[27]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_27)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i28.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i29 (.D(n125[28]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_28)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i29.GSR = "ENABLED";
    FD1P3AX o_wb_addr_176__i30 (.D(n125[29]), .SP(i_clk_c_enable_204), .CK(i_clk_c), 
            .Q(o_wb_addr_c_29)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176__i30.GSR = "ENABLED";
    LUT4 mux_59_i11_4_lut (.A(o_wb_addr_c_8), .B(i_wb_data_c_10), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[10])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i11_4_lut.init = 16'h0aca;
    CCU2D o_wb_addr_176_add_4_31 (.A0(o_wb_addr_c_28), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[30]), .A1(o_wb_addr_c_29), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[31]), .CIN(n3262), .S0(n125[28]), .S1(n125[29]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_31.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_31.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_31.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_31.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_29 (.A0(o_wb_addr_c_26), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[28]), .A1(o_wb_addr_c_27), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[29]), .CIN(n3261), .COUT(n3262), .S0(n125[26]), 
          .S1(n125[27]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_29.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_29.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_29.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_29.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_27 (.A0(o_wb_addr_c_24), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[26]), .A1(o_wb_addr_c_25), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[27]), .CIN(n3260), .COUT(n3261), .S0(n125[24]), 
          .S1(n125[25]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_27.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_27.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_27.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_27.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_25 (.A0(o_wb_addr_c_22), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[24]), .A1(o_wb_addr_c_23), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[25]), .CIN(n3259), .COUT(n3260), .S0(n125[22]), 
          .S1(n125[23]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_25.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_25.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_25.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_25.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_23 (.A0(o_wb_addr_c_20), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[22]), .A1(o_wb_addr_c_21), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[23]), .CIN(n3258), .COUT(n3259), .S0(n125[20]), 
          .S1(n125[21]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_23.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_23.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_23.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_23.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_21 (.A0(o_wb_addr_c_18), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[20]), .A1(o_wb_addr_c_19), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[21]), .CIN(n3257), .COUT(n3258), .S0(n125[18]), 
          .S1(n125[19]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_21.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_21.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_21.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_21.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_19 (.A0(o_wb_addr_c_16), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[18]), .A1(o_wb_addr_c_17), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[19]), .CIN(n3256), .COUT(n3257), .S0(n125[16]), 
          .S1(n125[17]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_19.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_19.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_19.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_19.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_17 (.A0(o_wb_addr_c_14), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[16]), .A1(o_wb_addr_c_15), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[17]), .CIN(n3255), .COUT(n3256), .S0(n125[14]), 
          .S1(n125[15]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_17.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_17.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_17.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_17.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_15 (.A0(o_wb_addr_c_12), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[14]), .A1(o_wb_addr_c_13), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[15]), .CIN(n3254), .COUT(n3255), .S0(n125[12]), 
          .S1(n125[13]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_15.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_15.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_15.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_15.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_13 (.A0(o_wb_addr_c_10), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[12]), .A1(o_wb_addr_c_11), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[13]), .CIN(n3253), .COUT(n3254), .S0(n125[10]), 
          .S1(n125[11]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_13.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_13.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_13.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_13.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_11 (.A0(o_wb_addr_c_8), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[10]), .A1(o_wb_addr_c_9), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[11]), .CIN(n3252), .COUT(n3253), .S0(n125[8]), 
          .S1(n125[9]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_11.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_11.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_11.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_11.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_9 (.A0(o_wb_addr_c_6), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[8]), .A1(o_wb_addr_c_7), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[9]), .CIN(n3251), .COUT(n3252), .S0(n125[6]), 
          .S1(n125[7]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_9.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_9.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_9.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_9.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_7 (.A0(o_wb_addr_c_4), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[6]), .A1(o_wb_addr_c_5), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[7]), .CIN(n3250), .COUT(n3251), .S0(n125[4]), 
          .S1(n125[5]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_7.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_7.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_7.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_7.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_5 (.A0(o_wb_addr_c_2), .B0(n3), .C0(i_clk_c_enable_25), 
          .D0(iw_word[4]), .A1(o_wb_addr_c_3), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[5]), .CIN(n3249), .COUT(n3250), .S0(n125[2]), 
          .S1(n125[3]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_5.INIT0 = 16'h7b88;
    defparam o_wb_addr_176_add_4_5.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_5.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_5.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_3 (.A0(o_wb_addr_c_0), .B0(n3), .C0(iw_word[2]), 
          .D0(n609[0]), .A1(o_wb_addr_c_1), .B1(n3), .C1(i_clk_c_enable_25), 
          .D1(iw_word[3]), .CIN(n3248), .COUT(n3249), .S0(n125[0]), 
          .S1(n125[1]));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_3.INIT0 = 16'h74b8;
    defparam o_wb_addr_176_add_4_3.INIT1 = 16'h7b88;
    defparam o_wb_addr_176_add_4_3.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_3.INJECT1_1 = "NO";
    CCU2D o_wb_addr_176_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_wb_cyc_c), .B1(n3746), .C1(GND_net), .D1(GND_net), 
          .COUT(n3248));   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(215[12] 222[51])
    defparam o_wb_addr_176_add_4_1.INIT0 = 16'hF000;
    defparam o_wb_addr_176_add_4_1.INIT1 = 16'hffff;
    defparam o_wb_addr_176_add_4_1.INJECT1_0 = "NO";
    defparam o_wb_addr_176_add_4_1.INJECT1_1 = "NO";
    LUT4 i_cmd_word_0__I_0_1_lut (.A(iw_word[0]), .Z(i_cmd_word_0__N_436)) /* synthesis lut_function=(!(A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(214[11:25])
    defparam i_cmd_word_0__I_0_1_lut.init = 16'h5555;
    LUT4 mux_59_i12_4_lut (.A(o_wb_addr_c_9), .B(i_wb_data_c_11), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[11])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i12_4_lut.init = 16'h0aca;
    LUT4 mux_59_i13_4_lut (.A(o_wb_addr_c_10), .B(i_wb_data_c_12), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[12])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i13_4_lut.init = 16'h0aca;
    LUT4 mux_59_i14_4_lut (.A(o_wb_addr_c_11), .B(i_wb_data_c_13), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[13])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i14_4_lut.init = 16'h0aca;
    LUT4 mux_59_i15_4_lut (.A(o_wb_addr_c_12), .B(i_wb_data_c_14), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[14])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i15_4_lut.init = 16'h0aca;
    FD1P3AX o_wb_cyc_67 (.D(n3461), .SP(i_clk_c_enable_213), .CK(i_clk_c), 
            .Q(o_wb_cyc_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=15, LSE_LLINE=131, LSE_RLINE=135 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(121[9] 168[5])
    defparam o_wb_cyc_67.GSR = "ENABLED";
    LUT4 mux_59_i16_4_lut (.A(o_wb_addr_c_13), .B(i_wb_data_c_15), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[15])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i16_4_lut.init = 16'h0aca;
    LUT4 mux_59_i17_4_lut (.A(o_wb_addr_c_14), .B(i_wb_data_c_16), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[16])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i17_4_lut.init = 16'h0aca;
    LUT4 i17_3_lut (.A(o_wb_cyc_c), .B(i_wb_stall_c), .C(o_wb_stb_c), 
         .Z(n6)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(121[9] 168[5])
    defparam i17_3_lut.init = 16'h3a3a;
    LUT4 mux_59_i18_4_lut (.A(o_wb_addr_c_15), .B(i_wb_data_c_17), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[17])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i18_4_lut.init = 16'h0aca;
    LUT4 mux_59_i19_4_lut (.A(o_wb_addr_c_16), .B(i_wb_data_c_18), .C(o_wb_cyc_c), 
         .D(o_wb_we_c), .Z(n338[18])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbexec.v(300[11] 309[5])
    defparam mux_59_i19_4_lut.init = 16'h0aca;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module hbnewline
//

module hbnewline (hx_stb, nl_busy, \w_gx_char[2] , \w_gx_char[1] , fnl_stb, 
            i_clk_c, w_reset, n3801, n3763, n3800, \w_gx_char[0] , 
            \w_gx_char[4] , \w_gx_char[5] , \w_gx_char[3] , \w_gx_char[6] , 
            i_tx_busy_c, o_tx_stb_c, fnl_byte) /* synthesis syn_module_defined=1 */ ;
    input hx_stb;
    output nl_busy;
    input \w_gx_char[2] ;
    input \w_gx_char[1] ;
    output fnl_stb;
    input i_clk_c;
    input w_reset;
    input n3801;
    input n3763;
    input n3800;
    input \w_gx_char[0] ;
    input \w_gx_char[4] ;
    input \w_gx_char[5] ;
    input \w_gx_char[3] ;
    input \w_gx_char[6] ;
    input i_tx_busy_c;
    input o_tx_stb_c;
    output [6:0]fnl_byte;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(57[14:19])
    
    wire n1059, last_cr, cr_state_N_772, n3752;
    wire [6:0]o_nl_byte_6__N_743;
    
    wire cr_state, n3727, o_nl_stb_N_756, last_cr_N_764, loaded;
    wire [6:0]n32;
    
    wire n3726, i_clk_c_enable_236, loaded_N_775, n3506, n6, n3765, 
        n3764;
    wire [6:0]o_nl_byte_6__N_736;
    
    LUT4 cr_state_I_32_3_lut_4_lut (.A(hx_stb), .B(nl_busy), .C(n1059), 
         .D(last_cr), .Z(cr_state_N_772)) /* synthesis lut_function=(!(A (B (D)+!B (C))+!A (D))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(90[16:37])
    defparam cr_state_I_32_3_lut_4_lut.init = 16'h02df;
    LUT4 mux_24_i3_3_lut_4_lut (.A(hx_stb), .B(nl_busy), .C(\w_gx_char[2] ), 
         .D(n3752), .Z(o_nl_byte_6__N_743[2])) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (D))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(90[16:37])
    defparam mux_24_i3_3_lut_4_lut.init = 16'h20fd;
    LUT4 mux_24_i2_3_lut_4_lut (.A(hx_stb), .B(nl_busy), .C(\w_gx_char[1] ), 
         .D(last_cr), .Z(o_nl_byte_6__N_743[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(90[16:37])
    defparam mux_24_i2_3_lut_4_lut.init = 16'hfd20;
    LUT4 fnl_byte_6__N_9_bdd_3_lut (.A(hx_stb), .B(last_cr), .C(cr_state), 
         .Z(n3727)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;
    defparam fnl_byte_6__N_9_bdd_3_lut.init = 16'hdbdb;
    FD1S3IX o_nl_stb_46 (.D(o_nl_stb_N_756), .CK(i_clk_c), .CD(w_reset), 
            .Q(fnl_stb)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=12, LSE_RCOL=46, LSE_LLINE=164, LSE_RLINE=165 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(82[9] 120[6])
    defparam o_nl_stb_46.GSR = "ENABLED";
    FD1S3JX last_cr_45 (.D(last_cr_N_764), .CK(i_clk_c), .PD(n3801), .Q(last_cr)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=12, LSE_RCOL=46, LSE_LLINE=164, LSE_RLINE=165 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(82[9] 120[6])
    defparam last_cr_45.GSR = "ENABLED";
    LUT4 i22_4_lut (.A(cr_state), .B(fnl_stb), .C(n3763), .D(loaded), 
         .Z(nl_busy)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(90[16:37])
    defparam i22_4_lut.init = 16'hca0a;
    LUT4 i1759_2_lut (.A(cr_state), .B(last_cr), .Z(n32[6])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(108[13] 119[7])
    defparam i1759_2_lut.init = 16'h4444;
    LUT4 fnl_byte_6__N_9_bdd_2_lut (.A(hx_stb), .B(fnl_stb), .Z(n3726)) /* synthesis lut_function=(A+(B)) */ ;
    defparam fnl_byte_6__N_9_bdd_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(hx_stb), .B(nl_busy), .C(n3763), .D(n3800), 
         .Z(i_clk_c_enable_236)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((D)+!C)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(90[16:37])
    defparam i2_3_lut_4_lut.init = 16'hff2f;
    LUT4 i1663_2_lut_rep_110 (.A(cr_state), .B(last_cr), .Z(n3752)) /* synthesis lut_function=(A (B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(108[13] 119[7])
    defparam i1663_2_lut_rep_110.init = 16'h8888;
    LUT4 i1664_2_lut_3_lut_4_lut (.A(cr_state), .B(last_cr), .C(nl_busy), 
         .D(hx_stb), .Z(loaded_N_775)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A !(C+!(D))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(108[13] 119[7])
    defparam i1664_2_lut_3_lut_4_lut.init = 16'h8f88;
    LUT4 mux_24_i1_3_lut_4_lut (.A(hx_stb), .B(nl_busy), .C(\w_gx_char[0] ), 
         .D(n3752), .Z(o_nl_byte_6__N_743[0])) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (D))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(90[16:37])
    defparam mux_24_i1_3_lut_4_lut.init = 16'h20fd;
    LUT4 mux_24_i5_3_lut_4_lut (.A(hx_stb), .B(nl_busy), .C(\w_gx_char[4] ), 
         .D(n32[6]), .Z(o_nl_byte_6__N_743[4])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(90[16:37])
    defparam mux_24_i5_3_lut_4_lut.init = 16'hfd20;
    LUT4 i4_4_lut (.A(\w_gx_char[1] ), .B(n3506), .C(\w_gx_char[5] ), 
         .D(n6), .Z(n1059)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i2956_3_lut (.A(\w_gx_char[0] ), .B(\w_gx_char[2] ), .C(\w_gx_char[3] ), 
         .Z(n3506)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2956_3_lut.init = 16'h8080;
    LUT4 mux_24_i6_3_lut_4_lut (.A(hx_stb), .B(nl_busy), .C(\w_gx_char[5] ), 
         .D(n32[6]), .Z(o_nl_byte_6__N_743[5])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(90[16:37])
    defparam mux_24_i6_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i7_3_lut_4_lut (.A(hx_stb), .B(nl_busy), .C(\w_gx_char[6] ), 
         .D(n32[6]), .Z(o_nl_byte_6__N_743[6])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(90[16:37])
    defparam mux_24_i7_3_lut_4_lut.init = 16'hfd20;
    LUT4 last_cr_I_30_4_lut_then_3_lut (.A(n1059), .B(nl_busy), .C(last_cr), 
         .Z(n3765)) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(97[12] 120[6])
    defparam last_cr_I_30_4_lut_then_3_lut.init = 16'hd1d1;
    LUT4 i1_2_lut (.A(\w_gx_char[4] ), .B(\w_gx_char[6] ), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 last_cr_I_30_4_lut_else_3_lut (.A(i_tx_busy_c), .B(last_cr), .C(o_tx_stb_c), 
         .Z(n3764)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(97[12] 120[6])
    defparam last_cr_I_30_4_lut_else_3_lut.init = 16'hdfdf;
    FD1P3IX cr_state_44 (.D(cr_state_N_772), .SP(i_clk_c_enable_236), .CD(n3801), 
            .CK(i_clk_c), .Q(cr_state)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=12, LSE_RCOL=46, LSE_LLINE=164, LSE_RLINE=165 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(82[9] 120[6])
    defparam cr_state_44.GSR = "ENABLED";
    PFUMX i3044 (.BLUT(n3727), .ALUT(n3726), .C0(n3763), .Z(o_nl_stb_N_756));
    FD1P3IX loaded_47 (.D(loaded_N_775), .SP(i_clk_c_enable_236), .CD(w_reset), 
            .CK(i_clk_c), .Q(loaded)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=12, LSE_RCOL=46, LSE_LLINE=164, LSE_RLINE=165 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(82[9] 120[6])
    defparam loaded_47.GSR = "ENABLED";
    FD1P3JX o_nl_byte_i6 (.D(o_nl_byte_6__N_743[6]), .SP(i_clk_c_enable_236), 
            .PD(n3801), .CK(i_clk_c), .Q(fnl_byte[6])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=12, LSE_RCOL=46, LSE_LLINE=164, LSE_RLINE=165 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(82[9] 120[6])
    defparam o_nl_byte_i6.GSR = "ENABLED";
    FD1P3JX o_nl_byte_i5 (.D(o_nl_byte_6__N_743[5]), .SP(i_clk_c_enable_236), 
            .PD(n3801), .CK(i_clk_c), .Q(fnl_byte[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=12, LSE_RCOL=46, LSE_LLINE=164, LSE_RLINE=165 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(82[9] 120[6])
    defparam o_nl_byte_i5.GSR = "ENABLED";
    FD1P3JX o_nl_byte_i4 (.D(o_nl_byte_6__N_743[4]), .SP(i_clk_c_enable_236), 
            .PD(n3801), .CK(i_clk_c), .Q(fnl_byte[4])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=12, LSE_RCOL=46, LSE_LLINE=164, LSE_RLINE=165 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(82[9] 120[6])
    defparam o_nl_byte_i4.GSR = "ENABLED";
    FD1P3AY o_nl_byte_i3 (.D(o_nl_byte_6__N_736[3]), .SP(i_clk_c_enable_236), 
            .CK(i_clk_c), .Q(fnl_byte[3])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=12, LSE_RCOL=46, LSE_LLINE=164, LSE_RLINE=165 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(82[9] 120[6])
    defparam o_nl_byte_i3.GSR = "ENABLED";
    FD1P3JX o_nl_byte_i2 (.D(o_nl_byte_6__N_743[2]), .SP(i_clk_c_enable_236), 
            .PD(n3801), .CK(i_clk_c), .Q(fnl_byte[2])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=12, LSE_RCOL=46, LSE_LLINE=164, LSE_RLINE=165 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(82[9] 120[6])
    defparam o_nl_byte_i2.GSR = "ENABLED";
    FD1P3JX o_nl_byte_i1 (.D(o_nl_byte_6__N_743[1]), .SP(i_clk_c_enable_236), 
            .PD(n3801), .CK(i_clk_c), .Q(fnl_byte[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=12, LSE_RCOL=46, LSE_LLINE=164, LSE_RLINE=165 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(82[9] 120[6])
    defparam o_nl_byte_i1.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_50 (.A(hx_stb), .B(nl_busy), .C(n3800), .D(\w_gx_char[3] ), 
         .Z(o_nl_byte_6__N_736[3])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(90[16:37])
    defparam i2_3_lut_4_lut_adj_50.init = 16'hfffd;
    PFUMX i3047 (.BLUT(n3764), .ALUT(n3765), .C0(hx_stb), .Z(last_cr_N_764));
    FD1P3JX o_nl_byte_i0 (.D(o_nl_byte_6__N_743[0]), .SP(i_clk_c_enable_236), 
            .PD(w_reset), .CK(i_clk_c), .Q(fnl_byte[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=12, LSE_RCOL=46, LSE_LLINE=164, LSE_RLINE=165 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbnewline.v(82[9] 120[6])
    defparam o_nl_byte_i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module hbgenhex
//

module hbgenhex (hb_bits, \w_gx_char[0] , \w_gx_char[1] , \w_gx_char[2] , 
            \w_gx_char[3] , \w_gx_char[4] , \w_gx_char[5] , \w_gx_char[6] , 
            i_clk_c, i_clk_c_enable_142, GND_net, VCC_net, hx_stb, 
            w_reset, hb_busy, nl_busy, n3800, n3750, i_clk_c_enable_218) /* synthesis syn_module_defined=1 */ ;
    input [4:0]hb_bits;
    output \w_gx_char[0] ;
    output \w_gx_char[1] ;
    output \w_gx_char[2] ;
    output \w_gx_char[3] ;
    output \w_gx_char[4] ;
    output \w_gx_char[5] ;
    output \w_gx_char[6] ;
    input i_clk_c;
    output i_clk_c_enable_142;
    input GND_net;
    input VCC_net;
    output hx_stb;
    input w_reset;
    input hb_busy;
    input nl_busy;
    input n3800;
    input n3750;
    output i_clk_c_enable_218;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(57[14:19])
    
    wire i_clk_c_enable_17;
    
    SP8KC mux_32 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
          .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
          .DI8(GND_net), .AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
          .AD3(hb_bits[0]), .AD4(hb_bits[1]), .AD5(hb_bits[2]), .AD6(hb_bits[3]), 
          .AD7(hb_bits[4]), .AD8(GND_net), .AD9(GND_net), .AD10(GND_net), 
          .AD11(GND_net), .AD12(GND_net), .CE(i_clk_c_enable_142), .OCE(VCC_net), 
          .CLK(i_clk_c), .WE(GND_net), .CS0(GND_net), .CS1(GND_net), 
          .CS2(GND_net), .RST(GND_net), .DO0(\w_gx_char[0] ), .DO1(\w_gx_char[1] ), 
          .DO2(\w_gx_char[2] ), .DO3(\w_gx_char[3] ), .DO4(\w_gx_char[4] ), 
          .DO5(\w_gx_char[5] ), .DO6(\w_gx_char[6] ));
    defparam mux_32.DATA_WIDTH = 9;
    defparam mux_32.REGMODE = "NOREG";
    defparam mux_32.CSDECODE = "0b000";
    defparam mux_32.WRITEMODE = "NORMAL";
    defparam mux_32.GSR = "DISABLED";
    defparam mux_32.RESETMODE = "ASYNC";
    defparam mux_32.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_32.INIT_DATA = "STATIC";
    defparam mux_32.INITVAL_00 = "0x01A0D01A0D0B44908A5401A0D01A0D0A641096520CC650C8630C4610723806E3606A340663206230";
    defparam mux_32.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_32.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1P3IX o_gx_stb_13 (.D(hb_busy), .SP(i_clk_c_enable_17), .CD(w_reset), 
            .CK(i_clk_c), .Q(hx_stb)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=158, LSE_RLINE=159 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbgenhex.v(74[9] 78[21])
    defparam o_gx_stb_13.GSR = "ENABLED";
    LUT4 i2985_2_lut_rep_101 (.A(hx_stb), .B(nl_busy), .Z(i_clk_c_enable_142)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(76[16:26])
    defparam i2985_2_lut_rep_101.init = 16'h7777;
    LUT4 i191_2_lut_rep_98_3_lut (.A(hx_stb), .B(nl_busy), .C(n3800), 
         .Z(i_clk_c_enable_17)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(76[16:26])
    defparam i191_2_lut_rep_98_3_lut.init = 16'hf7f7;
    LUT4 i2_2_lut_3_lut_4_lut (.A(hx_stb), .B(nl_busy), .C(n3750), .D(n3800), 
         .Z(i_clk_c_enable_218)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(76[16:26])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfff7;
    
endmodule
//
// Verilog Description of module hbints
//

module hbints (int_word, i_clk_c, i_clk_c_enable_107, n1418, ow_word, 
            i_clk_c_enable_18, n3762, n3799, i_interrupt_c, n3800, 
            n3761, n3749, ow_stb, int_stb, w_reset) /* synthesis syn_module_defined=1 */ ;
    output [33:0]int_word;
    input i_clk_c;
    input i_clk_c_enable_107;
    input n1418;
    input [33:0]ow_word;
    input i_clk_c_enable_18;
    output n3762;
    input n3799;
    input i_interrupt_c;
    input n3800;
    input n3761;
    input n3749;
    input ow_stb;
    output int_stb;
    input w_reset;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(57[14:19])
    
    wire int_loaded, pending_interrupt, i_clk_c_enable_21, n739, int_state, 
        i_clk_c_enable_23, n3754, loaded, n3500, i_clk_c_enable_237, 
        o_int_stb_N_513, i_clk_c_enable_217;
    
    FD1P3IX o_int_word_i3 (.D(ow_word[3]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i3.GSR = "ENABLED";
    FD1P3IX o_int_word_i2 (.D(ow_word[2]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i2.GSR = "ENABLED";
    FD1P3IX o_int_word_i1 (.D(ow_word[1]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i1.GSR = "ENABLED";
    FD1P3IX o_int_word_i0 (.D(ow_word[0]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i0.GSR = "ENABLED";
    FD1P3IX int_loaded_59 (.D(n3799), .SP(i_clk_c_enable_18), .CD(n3762), 
            .CK(i_clk_c), .Q(int_loaded)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam int_loaded_59.GSR = "ENABLED";
    FD1P3AX pending_interrupt_56 (.D(n739), .SP(i_clk_c_enable_21), .CK(i_clk_c), 
            .Q(pending_interrupt)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(72[9] 78[30])
    defparam pending_interrupt_56.GSR = "ENABLED";
    FD1P3AX int_state_55 (.D(n739), .SP(i_clk_c_enable_23), .CK(i_clk_c), 
            .Q(int_state)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(63[9] 69[22])
    defparam int_state_55.GSR = "ENABLED";
    LUT4 i_interrupt_I_0_72_2_lut_rep_112 (.A(i_interrupt_c), .B(int_state), 
         .Z(n3754)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(75[12:39])
    defparam i_interrupt_I_0_72_2_lut_rep_112.init = 16'h2222;
    LUT4 i2969_4_lut (.A(n3800), .B(n3761), .C(loaded), .D(n3500), .Z(i_clk_c_enable_237)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i2969_4_lut.init = 16'hffbf;
    LUT4 i1_3_lut_4_lut (.A(n3800), .B(n3754), .C(int_loaded), .D(n3749), 
         .Z(i_clk_c_enable_21)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut_3_lut (.A(i_interrupt_c), .B(int_state), .C(n3800), 
         .Z(n739)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(75[12:39])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_3_lut_4_lut_4_lut (.A(i_interrupt_c), .B(int_state), .C(pending_interrupt), 
         .D(n3800), .Z(i_clk_c_enable_23)) /* synthesis lut_function=(A ((D)+!B)+!A ((D)+!C)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(75[12:39])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hff27;
    LUT4 i_stb_I_0_3_lut_rep_120 (.A(ow_stb), .B(int_stb), .C(loaded), 
         .Z(n3762)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(93[12:34])
    defparam i_stb_I_0_3_lut_rep_120.init = 16'h2a2a;
    LUT4 i2950_2_lut_4_lut (.A(ow_stb), .B(int_stb), .C(loaded), .D(pending_interrupt), 
         .Z(n3500)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(93[12:34])
    defparam i2950_2_lut_4_lut.init = 16'hff2a;
    LUT4 i383_4_lut (.A(pending_interrupt), .B(n3762), .C(int_loaded), 
         .D(n3761), .Z(o_int_stb_N_513)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(95[8] 98[22])
    defparam i383_4_lut.init = 16'heece;
    FD1P3JX o_int_word_i33 (.D(ow_word[33]), .SP(i_clk_c_enable_107), .PD(n1418), 
            .CK(i_clk_c), .Q(int_word[33])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i33.GSR = "ENABLED";
    FD1P3JX o_int_word_i32 (.D(ow_word[32]), .SP(i_clk_c_enable_107), .PD(n1418), 
            .CK(i_clk_c), .Q(int_word[32])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i32.GSR = "ENABLED";
    FD1P3IX o_int_word_i31 (.D(ow_word[31]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i31.GSR = "ENABLED";
    FD1P3JX o_int_word_i30 (.D(ow_word[30]), .SP(i_clk_c_enable_107), .PD(n1418), 
            .CK(i_clk_c), .Q(int_word[30])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i30.GSR = "ENABLED";
    FD1P3IX o_int_word_i29 (.D(ow_word[29]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i29.GSR = "ENABLED";
    FD1P3IX o_int_word_i28 (.D(ow_word[28]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i28.GSR = "ENABLED";
    FD1P3IX o_int_word_i27 (.D(ow_word[27]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i27.GSR = "ENABLED";
    FD1P3IX o_int_word_i26 (.D(ow_word[26]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i26.GSR = "ENABLED";
    FD1P3IX o_int_word_i25 (.D(ow_word[25]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i25.GSR = "ENABLED";
    FD1P3IX o_int_word_i24 (.D(ow_word[24]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i24.GSR = "ENABLED";
    FD1P3IX o_int_word_i23 (.D(ow_word[23]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i23.GSR = "ENABLED";
    FD1P3IX o_int_word_i22 (.D(ow_word[22]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i22.GSR = "ENABLED";
    FD1P3IX o_int_word_i21 (.D(ow_word[21]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i21.GSR = "ENABLED";
    FD1P3IX o_int_word_i20 (.D(ow_word[20]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i20.GSR = "ENABLED";
    FD1P3IX o_int_word_i19 (.D(ow_word[19]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i19.GSR = "ENABLED";
    FD1P3IX o_int_word_i18 (.D(ow_word[18]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i18.GSR = "ENABLED";
    FD1P3IX o_int_word_i17 (.D(ow_word[17]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i17.GSR = "ENABLED";
    FD1P3IX o_int_word_i16 (.D(ow_word[16]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i16.GSR = "ENABLED";
    FD1P3IX o_int_word_i15 (.D(ow_word[15]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i15.GSR = "ENABLED";
    FD1P3IX o_int_word_i14 (.D(ow_word[14]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i14.GSR = "ENABLED";
    FD1P3IX o_int_word_i13 (.D(ow_word[13]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i13.GSR = "ENABLED";
    FD1P3IX o_int_word_i12 (.D(ow_word[12]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i12.GSR = "ENABLED";
    FD1P3IX o_int_word_i11 (.D(ow_word[11]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i11.GSR = "ENABLED";
    FD1P3IX o_int_word_i10 (.D(ow_word[10]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i10.GSR = "ENABLED";
    FD1P3IX o_int_word_i9 (.D(ow_word[9]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i9.GSR = "ENABLED";
    FD1P3IX o_int_word_i8 (.D(ow_word[8]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i8.GSR = "ENABLED";
    FD1P3IX o_int_word_i7 (.D(ow_word[7]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i7.GSR = "ENABLED";
    FD1P3IX o_int_word_i6 (.D(ow_word[6]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i6.GSR = "ENABLED";
    FD1P3IX o_int_word_i5 (.D(ow_word[5]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i5.GSR = "ENABLED";
    FD1P3IX o_int_word_i4 (.D(ow_word[4]), .SP(i_clk_c_enable_107), .CD(n1418), 
            .CK(i_clk_c), .Q(int_word[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(102[9] 112[6])
    defparam o_int_word_i4.GSR = "ENABLED";
    FD1P3IX loaded_57 (.D(n3762), .SP(i_clk_c_enable_217), .CD(w_reset), 
            .CK(i_clk_c), .Q(loaded)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(81[9] 87[19])
    defparam loaded_57.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(int_stb), .B(n3761), .C(n3762), .D(n3800), 
         .Z(i_clk_c_enable_217)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(77[12:34])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfff2;
    FD1P3IX o_int_stb_58 (.D(o_int_stb_N_513), .SP(i_clk_c_enable_237), 
            .CD(w_reset), .CK(i_clk_c), .Q(int_stb)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=32, LSE_LLINE=140, LSE_RLINE=142 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbints.v(90[9] 98[22])
    defparam o_int_stb_58.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module hbdeword
//

module hbdeword (hb_busy, i_clk_c, i_clk_c_enable_218, w_reset, hb_bits, 
            i_clk_c_enable_142, n3750, idl_word, idl_stb, nl_busy, 
            hx_stb, n3801, n3799, n3800) /* synthesis syn_module_defined=1 */ ;
    output hb_busy;
    input i_clk_c;
    input i_clk_c_enable_218;
    input w_reset;
    output [4:0]hb_bits;
    input i_clk_c_enable_142;
    output n3750;
    input [33:0]idl_word;
    input idl_stb;
    input nl_busy;
    input hx_stb;
    input n3801;
    input n3799;
    input n3800;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(57[14:19])
    
    wire o_dw_busy_N_710, i_clk_c_enable_235;
    wire [4:0]o_dw_bits_4__N_629;
    wire [3:0]r_len;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(58[12:17])
    
    wire n919;
    wire [3:0]n13;
    wire [4:0]o_dw_bits_4__N_720;
    
    wire n6;
    wire [3:0]r_len_3__N_670;
    
    wire n3681, n1009, n3688, n3751, n1494;
    wire [31:0]r_word;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(59[13:19])
    wire [31:0]r_word_31__N_638;
    
    wire n1011;
    
    FD1P3IX o_dw_stb_36 (.D(o_dw_busy_N_710), .SP(i_clk_c_enable_218), .CD(w_reset), 
            .CK(i_clk_c), .Q(hb_busy)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(64[9] 81[6])
    defparam o_dw_stb_36.GSR = "ENABLED";
    FD1P3AX o_dw_bits_i0 (.D(o_dw_bits_4__N_629[0]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(hb_bits[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(95[9] 103[41])
    defparam o_dw_bits_i0.GSR = "ENABLED";
    FD1P3IX r_len__i0 (.D(n13[0]), .SP(i_clk_c_enable_142), .CD(n919), 
            .CK(i_clk_c), .Q(r_len[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(64[9] 81[6])
    defparam r_len__i0.GSR = "ENABLED";
    LUT4 mux_15_i4_4_lut (.A(r_len[3]), .B(o_dw_bits_4__N_720[3]), .C(n3750), 
         .D(n6), .Z(r_len_3__N_670[3])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(76[12] 81[6])
    defparam mux_15_i4_4_lut.init = 16'h3a35;
    LUT4 r_word_29__bdd_3_lut_3020 (.A(idl_word[30]), .B(idl_word[33]), 
         .C(idl_word[32]), .Z(n3681)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam r_word_29__bdd_3_lut_3020.init = 16'h8c8c;
    LUT4 i1_2_lut_4_lut (.A(r_len[0]), .B(r_len[2]), .C(r_len[1]), .D(r_len[3]), 
         .Z(n13[0])) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(78[16:31])
    defparam i1_2_lut_4_lut.init = 16'h5554;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(r_len[0]), .B(r_len[2]), .C(r_len[1]), 
         .D(r_len[3]), .Z(n1009)) /* synthesis lut_function=(A (B)+!A (B (C)+!B !(C+!(D)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(78[16:31])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hc9c8;
    LUT4 r_word_28__bdd_3_lut_3021 (.A(idl_word[29]), .B(idl_word[32]), 
         .C(idl_word[33]), .Z(n3688)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam r_word_28__bdd_3_lut_3021.init = 16'h8c8c;
    LUT4 i1717_2_lut (.A(idl_word[32]), .B(idl_word[33]), .Z(o_dw_bits_4__N_720[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1717_2_lut.init = 16'h8888;
    LUT4 i_stb_I_0_2_lut_rep_108 (.A(idl_stb), .B(hb_busy), .Z(n3750)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam i_stb_I_0_2_lut_rep_108.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(nl_busy), 
         .D(hx_stb), .Z(i_clk_c_enable_235)) /* synthesis lut_function=(!(A (B (C (D)))+!A (C (D)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2fff;
    LUT4 i1660_2_lut_3_lut (.A(idl_stb), .B(hb_busy), .C(n3751), .Z(o_dw_busy_N_710)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam i1660_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i2992_2_lut_3_lut_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(hx_stb), 
         .D(nl_busy), .Z(n1494)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A (C (D)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam i2992_2_lut_3_lut_3_lut_4_lut.init = 16'h0ddd;
    LUT4 r_word_29__bdd_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(n3681), 
         .D(r_word[29]), .Z(o_dw_bits_4__N_629[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_29__bdd_3_lut_4_lut.init = 16'hfd20;
    FD1P3AX r_word_i4 (.D(r_word_31__N_638[4]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i4.GSR = "ENABLED";
    FD1P3AX r_word_i5 (.D(r_word_31__N_638[5]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i5.GSR = "ENABLED";
    FD1P3AX r_word_i6 (.D(r_word_31__N_638[6]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i6.GSR = "ENABLED";
    FD1P3AX r_word_i7 (.D(r_word_31__N_638[7]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i7.GSR = "ENABLED";
    FD1P3AX r_word_i8 (.D(r_word_31__N_638[8]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i8.GSR = "ENABLED";
    FD1P3AX r_word_i9 (.D(r_word_31__N_638[9]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i9.GSR = "ENABLED";
    FD1P3AX r_word_i10 (.D(r_word_31__N_638[10]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i10.GSR = "ENABLED";
    FD1P3AX r_word_i11 (.D(r_word_31__N_638[11]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i11.GSR = "ENABLED";
    FD1P3AX r_word_i12 (.D(r_word_31__N_638[12]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[12])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i12.GSR = "ENABLED";
    FD1P3AX r_word_i13 (.D(r_word_31__N_638[13]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[13])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i13.GSR = "ENABLED";
    FD1P3AX r_word_i14 (.D(r_word_31__N_638[14]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[14])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i14.GSR = "ENABLED";
    FD1P3AX r_word_i15 (.D(r_word_31__N_638[15]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[15])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i15.GSR = "ENABLED";
    FD1P3AX r_word_i16 (.D(r_word_31__N_638[16]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[16])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i16.GSR = "ENABLED";
    FD1P3AX r_word_i17 (.D(r_word_31__N_638[17]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[17])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i17.GSR = "ENABLED";
    FD1P3AX r_word_i18 (.D(r_word_31__N_638[18]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[18])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i18.GSR = "ENABLED";
    FD1P3AX r_word_i19 (.D(r_word_31__N_638[19]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[19])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i19.GSR = "ENABLED";
    FD1P3AX r_word_i20 (.D(r_word_31__N_638[20]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[20])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i20.GSR = "ENABLED";
    FD1P3AX r_word_i21 (.D(r_word_31__N_638[21]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[21])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i21.GSR = "ENABLED";
    FD1P3AX r_word_i22 (.D(r_word_31__N_638[22]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[22])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i22.GSR = "ENABLED";
    FD1P3AX r_word_i23 (.D(r_word_31__N_638[23]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[23])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i23.GSR = "ENABLED";
    FD1P3AX r_word_i24 (.D(r_word_31__N_638[24]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[24])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i24.GSR = "ENABLED";
    FD1P3AX r_word_i25 (.D(r_word_31__N_638[25]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[25])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i25.GSR = "ENABLED";
    FD1P3AX r_word_i26 (.D(r_word_31__N_638[26]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[26])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i26.GSR = "ENABLED";
    FD1P3AX r_word_i27 (.D(r_word_31__N_638[27]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[27])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i27.GSR = "ENABLED";
    FD1P3AX r_word_i28 (.D(r_word_31__N_638[28]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[28])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i28.GSR = "ENABLED";
    FD1P3AX r_word_i29 (.D(r_word_31__N_638[29]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[29])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i29.GSR = "ENABLED";
    FD1P3AX r_word_i30 (.D(r_word_31__N_638[30]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[30])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i30.GSR = "ENABLED";
    FD1P3AX r_word_i31 (.D(r_word_31__N_638[31]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(r_word[31])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i31.GSR = "ENABLED";
    FD1P3AX o_dw_bits_i1 (.D(o_dw_bits_4__N_629[1]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(hb_bits[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(95[9] 103[41])
    defparam o_dw_bits_i1.GSR = "ENABLED";
    FD1P3AX o_dw_bits_i2 (.D(o_dw_bits_4__N_629[2]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(hb_bits[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(95[9] 103[41])
    defparam o_dw_bits_i2.GSR = "ENABLED";
    FD1P3AX o_dw_bits_i3 (.D(o_dw_bits_4__N_629[3]), .SP(i_clk_c_enable_235), 
            .CK(i_clk_c), .Q(hb_bits[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(95[9] 103[41])
    defparam o_dw_bits_i3.GSR = "ENABLED";
    LUT4 r_word_28__bdd_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(n3688), 
         .D(r_word[28]), .Z(o_dw_bits_4__N_629[0])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_28__bdd_3_lut_4_lut.init = 16'hfd20;
    LUT4 o_dw_bits_4__I_0_i3_4_lut (.A(r_word[30]), .B(idl_word[31]), .C(n3750), 
         .D(o_dw_bits_4__N_720[3]), .Z(o_dw_bits_4__N_629[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(102[12] 103[41])
    defparam o_dw_bits_4__I_0_i3_4_lut.init = 16'hca0a;
    LUT4 o_dw_bits_4__I_0_i4_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(o_dw_bits_4__N_720[3]), 
         .D(r_word[31]), .Z(o_dw_bits_4__N_629[3])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam o_dw_bits_4__I_0_i4_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i32_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[31]), 
         .D(r_word[27]), .Z(r_word_31__N_638[31])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i32_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i31_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[30]), 
         .D(r_word[26]), .Z(r_word_31__N_638[30])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i31_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i30_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[29]), 
         .D(r_word[25]), .Z(r_word_31__N_638[29])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i30_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i29_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[28]), 
         .D(r_word[24]), .Z(r_word_31__N_638[28])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i29_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i28_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[27]), 
         .D(r_word[23]), .Z(r_word_31__N_638[27])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i28_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i27_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[26]), 
         .D(r_word[22]), .Z(r_word_31__N_638[26])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i27_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i26_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[25]), 
         .D(r_word[21]), .Z(r_word_31__N_638[25])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i26_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i25_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[24]), 
         .D(r_word[20]), .Z(r_word_31__N_638[24])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i25_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i24_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[23]), 
         .D(r_word[19]), .Z(r_word_31__N_638[23])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i24_3_lut_4_lut.init = 16'hfd20;
    FD1P3IX r_len__i1 (.D(n1011), .SP(i_clk_c_enable_142), .CD(n919), 
            .CK(i_clk_c), .Q(r_len[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(64[9] 81[6])
    defparam r_len__i1.GSR = "ENABLED";
    FD1P3IX r_len__i2 (.D(n1009), .SP(i_clk_c_enable_142), .CD(n919), 
            .CK(i_clk_c), .Q(r_len[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(64[9] 81[6])
    defparam r_len__i2.GSR = "ENABLED";
    LUT4 r_word_31__I_0_i23_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[22]), 
         .D(r_word[18]), .Z(r_word_31__N_638[22])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i23_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i22_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[21]), 
         .D(r_word[17]), .Z(r_word_31__N_638[21])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i22_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i21_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[20]), 
         .D(r_word[16]), .Z(r_word_31__N_638[20])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i21_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i20_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[19]), 
         .D(r_word[15]), .Z(r_word_31__N_638[19])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i20_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i19_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[18]), 
         .D(r_word[14]), .Z(r_word_31__N_638[18])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i19_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i18_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[17]), 
         .D(r_word[13]), .Z(r_word_31__N_638[17])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i18_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i17_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[16]), 
         .D(r_word[12]), .Z(r_word_31__N_638[16])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i17_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i16_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[15]), 
         .D(r_word[11]), .Z(r_word_31__N_638[15])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i16_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i15_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[14]), 
         .D(r_word[10]), .Z(r_word_31__N_638[14])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i15_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i14_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[13]), 
         .D(r_word[9]), .Z(r_word_31__N_638[13])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i14_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i13_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[12]), 
         .D(r_word[8]), .Z(r_word_31__N_638[12])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i13_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i12_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[11]), 
         .D(r_word[7]), .Z(r_word_31__N_638[11])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i12_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i11_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[10]), 
         .D(r_word[6]), .Z(r_word_31__N_638[10])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i11_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i10_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[9]), 
         .D(r_word[5]), .Z(r_word_31__N_638[9])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i10_3_lut_4_lut.init = 16'hfd20;
    FD1P3IX r_word_i1 (.D(idl_word[1]), .SP(i_clk_c_enable_235), .CD(n1494), 
            .CK(i_clk_c), .Q(r_word[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i1.GSR = "ENABLED";
    LUT4 r_word_31__I_0_i9_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[8]), 
         .D(r_word[4]), .Z(r_word_31__N_638[8])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i9_3_lut_4_lut.init = 16'hfd20;
    FD1P3IX r_word_i0 (.D(idl_word[0]), .SP(i_clk_c_enable_235), .CD(n1494), 
            .CK(i_clk_c), .Q(r_word[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i0.GSR = "ENABLED";
    FD1P3IX r_len__i3 (.D(r_len_3__N_670[3]), .SP(i_clk_c_enable_218), .CD(n3801), 
            .CK(i_clk_c), .Q(r_len[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(64[9] 81[6])
    defparam r_len__i3.GSR = "ENABLED";
    LUT4 r_word_31__I_0_i8_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[7]), 
         .D(r_word[3]), .Z(r_word_31__N_638[7])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i8_3_lut_4_lut.init = 16'hfd20;
    FD1P3IX o_dw_bits_i4 (.D(n3799), .SP(i_clk_c_enable_235), .CD(n1494), 
            .CK(i_clk_c), .Q(hb_bits[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(95[9] 103[41])
    defparam o_dw_bits_i4.GSR = "ENABLED";
    FD1P3IX r_word_i3 (.D(idl_word[3]), .SP(i_clk_c_enable_235), .CD(n1494), 
            .CK(i_clk_c), .Q(r_word[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i3.GSR = "ENABLED";
    LUT4 r_word_31__I_0_i7_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[6]), 
         .D(r_word[2]), .Z(r_word_31__N_638[6])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i7_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i6_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[5]), 
         .D(r_word[1]), .Z(r_word_31__N_638[5])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i6_3_lut_4_lut.init = 16'hfd20;
    LUT4 r_word_31__I_0_i5_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(idl_word[4]), 
         .D(r_word[0]), .Z(r_word_31__N_638[4])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam r_word_31__I_0_i5_3_lut_4_lut.init = 16'hfd20;
    LUT4 i393_2_lut_3_lut (.A(idl_stb), .B(hb_busy), .C(n3800), .Z(n919)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(69[16:37])
    defparam i393_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i3_4_lut_rep_109 (.A(r_len[0]), .B(r_len[2]), .C(r_len[1]), .D(r_len[3]), 
         .Z(n3751)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(78[16:31])
    defparam i3_4_lut_rep_109.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_49 (.A(r_len[0]), .B(r_len[2]), .C(r_len[1]), 
         .D(r_len[3]), .Z(n1011)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B (C+!(D)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(78[16:31])
    defparam i1_2_lut_3_lut_4_lut_adj_49.init = 16'ha5a4;
    LUT4 i266_2_lut_3_lut_4_lut_4_lut (.A(r_len[0]), .B(r_len[2]), .C(r_len[1]), 
         .D(r_len[3]), .Z(n6)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(78[16:31])
    defparam i266_2_lut_3_lut_4_lut_4_lut.init = 16'hfeff;
    FD1P3IX r_word_i2 (.D(idl_word[2]), .SP(i_clk_c_enable_235), .CD(n1494), 
            .CK(i_clk_c), .Q(r_word[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=29, LSE_LLINE=153, LSE_RLINE=155 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdeword.v(83[9] 93[37])
    defparam r_word_i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module hbpack
//

module hbpack (\dec_bits[4] , iw_stb, i_clk_c, w_reset, o_pck_stb_N_206, 
            iw_word, i_clk_c_enable_173, n3801, n46, n45, i_clk_c_enable_175, 
            \dec_bits[0] , \dec_bits[1] , cmd_loaded, i_clk_c_enable_233, 
            cmd_loaded_N_209) /* synthesis syn_module_defined=1 */ ;
    input \dec_bits[4] ;
    output iw_stb;
    input i_clk_c;
    input w_reset;
    input o_pck_stb_N_206;
    output [33:0]iw_word;
    input i_clk_c_enable_173;
    input n3801;
    input n46;
    input n45;
    input i_clk_c_enable_175;
    input \dec_bits[0] ;
    input \dec_bits[1] ;
    output cmd_loaded;
    input i_clk_c_enable_233;
    input cmd_loaded_N_209;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(57[14:19])
    wire [33:0]r_word;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(71[13:19])
    wire [33:0]n14;
    
    LUT4 i1736_2_lut (.A(r_word[9]), .B(\dec_bits[4] ), .Z(n14[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1736_2_lut.init = 16'h2222;
    LUT4 i1737_2_lut (.A(r_word[10]), .B(\dec_bits[4] ), .Z(n14[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1737_2_lut.init = 16'h2222;
    FD1S3IX o_pck_stb_24 (.D(o_pck_stb_N_206), .CK(i_clk_c), .CD(w_reset), 
            .Q(iw_stb)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(83[9] 84[65])
    defparam o_pck_stb_24.GSR = "ENABLED";
    FD1P3IX o_pck_word__i0 (.D(r_word[0]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(iw_word[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i0.GSR = "ENABLED";
    LUT4 i1738_2_lut (.A(r_word[11]), .B(\dec_bits[4] ), .Z(n14[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1738_2_lut.init = 16'h2222;
    LUT4 i1739_2_lut (.A(r_word[12]), .B(\dec_bits[4] ), .Z(n14[16])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1739_2_lut.init = 16'h2222;
    FD1P3IX r_word__i0 (.D(n14[0]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i0.GSR = "ENABLED";
    LUT4 i1732_2_lut (.A(r_word[5]), .B(\dec_bits[4] ), .Z(n14[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1732_2_lut.init = 16'h2222;
    LUT4 i1733_2_lut (.A(r_word[6]), .B(\dec_bits[4] ), .Z(n14[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1733_2_lut.init = 16'h2222;
    LUT4 i1734_2_lut (.A(r_word[7]), .B(\dec_bits[4] ), .Z(n14[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1734_2_lut.init = 16'h2222;
    LUT4 i1740_2_lut (.A(r_word[13]), .B(\dec_bits[4] ), .Z(n14[17])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1740_2_lut.init = 16'h2222;
    LUT4 i1741_2_lut (.A(r_word[14]), .B(\dec_bits[4] ), .Z(n14[18])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1741_2_lut.init = 16'h2222;
    LUT4 i1742_2_lut (.A(r_word[15]), .B(\dec_bits[4] ), .Z(n14[19])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1742_2_lut.init = 16'h2222;
    LUT4 i1743_2_lut (.A(r_word[16]), .B(\dec_bits[4] ), .Z(n14[20])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1743_2_lut.init = 16'h2222;
    LUT4 i1744_2_lut (.A(r_word[17]), .B(\dec_bits[4] ), .Z(n14[21])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1744_2_lut.init = 16'h2222;
    LUT4 i1735_2_lut (.A(r_word[8]), .B(\dec_bits[4] ), .Z(n14[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1735_2_lut.init = 16'h2222;
    LUT4 i1745_2_lut (.A(r_word[18]), .B(\dec_bits[4] ), .Z(n14[22])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1745_2_lut.init = 16'h2222;
    LUT4 i1746_2_lut (.A(r_word[19]), .B(\dec_bits[4] ), .Z(n14[23])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1746_2_lut.init = 16'h2222;
    LUT4 i1747_2_lut (.A(r_word[20]), .B(\dec_bits[4] ), .Z(n14[24])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1747_2_lut.init = 16'h2222;
    LUT4 i1748_2_lut (.A(r_word[21]), .B(\dec_bits[4] ), .Z(n14[25])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1748_2_lut.init = 16'h2222;
    LUT4 i1749_2_lut (.A(r_word[22]), .B(\dec_bits[4] ), .Z(n14[26])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1749_2_lut.init = 16'h2222;
    FD1P3IX o_pck_word__i1 (.D(r_word[1]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(iw_word[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i1.GSR = "ENABLED";
    LUT4 i1750_2_lut (.A(r_word[23]), .B(\dec_bits[4] ), .Z(n14[27])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1750_2_lut.init = 16'h2222;
    LUT4 i1751_2_lut (.A(r_word[24]), .B(\dec_bits[4] ), .Z(n14[28])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1751_2_lut.init = 16'h2222;
    FD1P3IX o_pck_word__i2 (.D(r_word[2]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(iw_word[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i2.GSR = "ENABLED";
    FD1P3IX o_pck_word__i3 (.D(r_word[3]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(iw_word[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i3.GSR = "ENABLED";
    FD1P3IX o_pck_word__i4 (.D(r_word[4]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(iw_word[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i4.GSR = "ENABLED";
    FD1P3IX o_pck_word__i5 (.D(r_word[5]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i5.GSR = "ENABLED";
    FD1P3IX o_pck_word__i6 (.D(r_word[6]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i6.GSR = "ENABLED";
    FD1P3IX o_pck_word__i7 (.D(r_word[7]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i7.GSR = "ENABLED";
    FD1P3IX o_pck_word__i8 (.D(r_word[8]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i8.GSR = "ENABLED";
    FD1P3IX o_pck_word__i9 (.D(r_word[9]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i9.GSR = "ENABLED";
    FD1P3IX o_pck_word__i10 (.D(r_word[10]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i10.GSR = "ENABLED";
    FD1P3IX o_pck_word__i11 (.D(r_word[11]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i11.GSR = "ENABLED";
    FD1P3IX o_pck_word__i12 (.D(r_word[12]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i12.GSR = "ENABLED";
    FD1P3IX o_pck_word__i13 (.D(r_word[13]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i13.GSR = "ENABLED";
    FD1P3IX o_pck_word__i14 (.D(r_word[14]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i14.GSR = "ENABLED";
    FD1P3IX o_pck_word__i15 (.D(r_word[15]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i15.GSR = "ENABLED";
    FD1P3IX o_pck_word__i16 (.D(r_word[16]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i16.GSR = "ENABLED";
    FD1P3IX o_pck_word__i17 (.D(r_word[17]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i17.GSR = "ENABLED";
    FD1P3IX o_pck_word__i18 (.D(r_word[18]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i18.GSR = "ENABLED";
    FD1P3IX o_pck_word__i19 (.D(r_word[19]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i19.GSR = "ENABLED";
    FD1P3IX o_pck_word__i20 (.D(r_word[20]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i20.GSR = "ENABLED";
    FD1P3IX o_pck_word__i21 (.D(r_word[21]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i21.GSR = "ENABLED";
    FD1P3IX o_pck_word__i22 (.D(r_word[22]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i22.GSR = "ENABLED";
    FD1P3IX o_pck_word__i23 (.D(r_word[23]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i23.GSR = "ENABLED";
    FD1P3IX o_pck_word__i24 (.D(r_word[24]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i24.GSR = "ENABLED";
    FD1P3IX o_pck_word__i25 (.D(r_word[25]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i25.GSR = "ENABLED";
    FD1P3IX o_pck_word__i26 (.D(r_word[26]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i26.GSR = "ENABLED";
    FD1P3IX o_pck_word__i27 (.D(r_word[27]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i27.GSR = "ENABLED";
    FD1P3IX o_pck_word__i28 (.D(r_word[28]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i28.GSR = "ENABLED";
    FD1P3IX o_pck_word__i29 (.D(r_word[29]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i29.GSR = "ENABLED";
    FD1P3IX o_pck_word__i30 (.D(r_word[30]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i30.GSR = "ENABLED";
    FD1P3IX o_pck_word__i31 (.D(r_word[31]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i31.GSR = "ENABLED";
    FD1P3IX o_pck_word__i32 (.D(r_word[32]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[32])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i32.GSR = "ENABLED";
    FD1P3IX o_pck_word__i33 (.D(r_word[33]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(iw_word[33])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(106[9] 110[25])
    defparam o_pck_word__i33.GSR = "ENABLED";
    LUT4 i1752_2_lut (.A(r_word[25]), .B(\dec_bits[4] ), .Z(n14[29])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1752_2_lut.init = 16'h2222;
    LUT4 i1753_2_lut (.A(r_word[26]), .B(\dec_bits[4] ), .Z(n14[30])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1753_2_lut.init = 16'h2222;
    LUT4 i1754_2_lut (.A(r_word[27]), .B(\dec_bits[4] ), .Z(n14[31])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1754_2_lut.init = 16'h2222;
    FD1P3IX r_word__i1 (.D(n14[1]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(r_word[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i1.GSR = "ENABLED";
    FD1P3IX r_word__i2 (.D(n46), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(r_word[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i2.GSR = "ENABLED";
    FD1P3IX r_word__i3 (.D(n45), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(r_word[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i3.GSR = "ENABLED";
    FD1P3IX r_word__i4 (.D(n14[4]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(r_word[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i4.GSR = "ENABLED";
    FD1P3IX r_word__i5 (.D(n14[5]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(r_word[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i5.GSR = "ENABLED";
    FD1P3IX r_word__i6 (.D(n14[6]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(r_word[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i6.GSR = "ENABLED";
    FD1P3IX r_word__i7 (.D(n14[7]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(r_word[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i7.GSR = "ENABLED";
    FD1P3IX r_word__i8 (.D(n14[8]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(r_word[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i8.GSR = "ENABLED";
    FD1P3IX r_word__i9 (.D(n14[9]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(r_word[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i9.GSR = "ENABLED";
    FD1P3IX r_word__i10 (.D(n14[10]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(r_word[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i10.GSR = "ENABLED";
    FD1P3IX r_word__i11 (.D(n14[11]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(r_word[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i11.GSR = "ENABLED";
    FD1P3IX r_word__i12 (.D(n14[12]), .SP(i_clk_c_enable_173), .CD(n3801), 
            .CK(i_clk_c), .Q(r_word[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i12.GSR = "ENABLED";
    FD1P3IX r_word__i13 (.D(n14[13]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i13.GSR = "ENABLED";
    FD1P3IX r_word__i14 (.D(n14[14]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i14.GSR = "ENABLED";
    FD1P3IX r_word__i15 (.D(n14[15]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i15.GSR = "ENABLED";
    FD1P3IX r_word__i16 (.D(n14[16]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i16.GSR = "ENABLED";
    FD1P3IX r_word__i17 (.D(n14[17]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i17.GSR = "ENABLED";
    FD1P3IX r_word__i18 (.D(n14[18]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i18.GSR = "ENABLED";
    FD1P3IX r_word__i19 (.D(n14[19]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i19.GSR = "ENABLED";
    FD1P3IX r_word__i20 (.D(n14[20]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i20.GSR = "ENABLED";
    FD1P3IX r_word__i21 (.D(n14[21]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i21.GSR = "ENABLED";
    FD1P3IX r_word__i22 (.D(n14[22]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i22.GSR = "ENABLED";
    FD1P3IX r_word__i23 (.D(n14[23]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i23.GSR = "ENABLED";
    FD1P3IX r_word__i24 (.D(n14[24]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i24.GSR = "ENABLED";
    FD1P3IX r_word__i25 (.D(n14[25]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i25.GSR = "ENABLED";
    FD1P3IX r_word__i26 (.D(n14[26]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i26.GSR = "ENABLED";
    FD1P3IX r_word__i27 (.D(n14[27]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i27.GSR = "ENABLED";
    FD1P3IX r_word__i28 (.D(n14[28]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i28.GSR = "ENABLED";
    FD1P3IX r_word__i29 (.D(n14[29]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i29.GSR = "ENABLED";
    FD1P3IX r_word__i30 (.D(n14[30]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i30.GSR = "ENABLED";
    FD1P3IX r_word__i31 (.D(n14[31]), .SP(i_clk_c_enable_173), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i31.GSR = "ENABLED";
    FD1P3IX r_word__i32 (.D(\dec_bits[0] ), .SP(i_clk_c_enable_175), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[32])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i32.GSR = "ENABLED";
    FD1P3IX r_word__i33 (.D(\dec_bits[1] ), .SP(i_clk_c_enable_175), .CD(w_reset), 
            .CK(i_clk_c), .Q(r_word[33])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(87[9] 103[6])
    defparam r_word__i33.GSR = "ENABLED";
    LUT4 i1650_2_lut (.A(\dec_bits[0] ), .B(\dec_bits[4] ), .Z(n14[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1650_2_lut.init = 16'h2222;
    LUT4 i1677_2_lut (.A(\dec_bits[1] ), .B(\dec_bits[4] ), .Z(n14[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1677_2_lut.init = 16'h2222;
    LUT4 i1665_2_lut (.A(r_word[0]), .B(\dec_bits[4] ), .Z(n14[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1665_2_lut.init = 16'h2222;
    LUT4 i1728_2_lut (.A(r_word[1]), .B(\dec_bits[4] ), .Z(n14[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1728_2_lut.init = 16'h2222;
    LUT4 i1729_2_lut (.A(r_word[2]), .B(\dec_bits[4] ), .Z(n14[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1729_2_lut.init = 16'h2222;
    LUT4 i1730_2_lut (.A(r_word[3]), .B(\dec_bits[4] ), .Z(n14[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1730_2_lut.init = 16'h2222;
    LUT4 i1731_2_lut (.A(r_word[4]), .B(\dec_bits[4] ), .Z(n14[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(102[5:51])
    defparam i1731_2_lut.init = 16'h2222;
    FD1P3IX cmd_loaded_23 (.D(cmd_loaded_N_209), .SP(i_clk_c_enable_233), 
            .CD(w_reset), .CK(i_clk_c), .Q(cmd_loaded)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=125 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbpack.v(74[9] 80[23])
    defparam cmd_loaded_23.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module hbdechex
//

module hbdechex (i_rx_byte_c_2, i_rx_byte_c_1, i_clk_c, dec_bits, w_reset, 
            i_rx_byte_c_3, i_rx_byte_c_4, i_rx_byte_c_5, n3800, o_wb_stb_c, 
            o_wb_cyc_c, i_wb_err_c, n3462, i_rx_byte_c_0, n3461, i_clk_c_enable_173, 
            i_clk_c_enable_175, cmd_loaded, o_pck_stb_N_206, i_clk_c_enable_233, 
            cmd_loaded_N_209, i_rx_stb_c, i_rx_byte_c_6, \dec_bits[1] , 
            n905, n3801, n3449, n3465, n46, n45, i_wb_ack_c, n6, 
            i_clk_c_enable_213) /* synthesis syn_module_defined=1 */ ;
    input i_rx_byte_c_2;
    input i_rx_byte_c_1;
    input i_clk_c;
    output [4:0]dec_bits;
    output w_reset;
    input i_rx_byte_c_3;
    input i_rx_byte_c_4;
    input i_rx_byte_c_5;
    output n3800;
    input o_wb_stb_c;
    input o_wb_cyc_c;
    input i_wb_err_c;
    output n3462;
    input i_rx_byte_c_0;
    output n3461;
    output i_clk_c_enable_173;
    output i_clk_c_enable_175;
    input cmd_loaded;
    output o_pck_stb_N_206;
    output i_clk_c_enable_233;
    output cmd_loaded_N_209;
    input i_rx_stb_c;
    input i_rx_byte_c_6;
    output \dec_bits[1] ;
    output n905;
    output n3801;
    input n3449;
    output n3465;
    output n46;
    output n45;
    input i_wb_ack_c;
    input n6;
    output i_clk_c_enable_213;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(57[14:19])
    
    wire n3756, dec_stb, o_dh_stb_N_64;
    wire [4:0]o_dh_bits_4__N_37;
    
    wire o_reset_N_66, n3464, n12, n3719, n3720, n3268, n64, n3747, 
        n53;
    wire [4:0]dec_bits_c;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(82[13:21])
    
    wire n2242, n6_c, n3760, n28, n10, n80, n12_adj_778, n31, 
        n42, n8, n3447, n3686, n47, n3502, n3744, n9, n3655, 
        n36, n3753, n41, n3657, n3741, n3660, n3659, n3739, 
        n3721, n3663, n3664, n55, n60;
    
    LUT4 i1_2_lut_rep_114 (.A(i_rx_byte_c_2), .B(i_rx_byte_c_1), .Z(n3756)) /* synthesis lut_function=(A+(B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(65[3] 99[10])
    defparam i1_2_lut_rep_114.init = 16'heeee;
    FD1S3AX o_dh_stb_35 (.D(o_dh_stb_N_64), .CK(i_clk_c), .Q(dec_stb)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=118, LSE_RLINE=120 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(57[9] 58[47])
    defparam o_dh_stb_35.GSR = "ENABLED";
    FD1S3AX o_dh_bits_i0 (.D(o_dh_bits_4__N_37[0]), .CK(i_clk_c), .Q(dec_bits[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=118, LSE_RLINE=120 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(60[9] 100[5])
    defparam o_dh_bits_i0.GSR = "ENABLED";
    FD1S3AY o_reset_34 (.D(o_reset_N_66), .CK(i_clk_c), .Q(w_reset)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=118, LSE_RLINE=120 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(53[9] 54[46])
    defparam o_reset_34.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(i_rx_byte_c_3), .B(n3756), .C(i_rx_byte_c_4), 
         .D(i_rx_byte_c_5), .Z(n3464)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(C (D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8fff;
    LUT4 i3003_3_lut_4_lut (.A(n3800), .B(o_wb_stb_c), .C(o_wb_cyc_c), 
         .D(i_wb_err_c), .Z(n3462)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i3003_3_lut_4_lut.init = 16'h0111;
    LUT4 n12_bdd_2_lut (.A(n12), .B(i_rx_byte_c_2), .Z(n3719)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n12_bdd_2_lut.init = 16'h4444;
    LUT4 n12_bdd_4_lut (.A(n12), .B(i_rx_byte_c_2), .C(i_rx_byte_c_0), 
         .D(i_rx_byte_c_1), .Z(n3720)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(B+(C (D))))) */ ;
    defparam n12_bdd_4_lut.init = 16'h7ccc;
    LUT4 i3000_2_lut_3_lut (.A(n3800), .B(o_wb_stb_c), .C(o_wb_cyc_c), 
         .Z(n3461)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i3000_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_rep_115 (.A(n3800), .B(dec_stb), .Z(i_clk_c_enable_173)) /* synthesis lut_function=(A+(B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(53[9] 54[46])
    defparam i1_2_lut_rep_115.init = 16'heeee;
    LUT4 i389_2_lut_3_lut (.A(n3800), .B(dec_stb), .C(dec_bits[4]), .Z(i_clk_c_enable_175)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(53[9] 54[46])
    defparam i389_2_lut_3_lut.init = 16'he0e0;
    LUT4 i2_3_lut_4_lut (.A(i_rx_byte_c_3), .B(n3756), .C(i_rx_byte_c_4), 
         .D(i_rx_byte_c_5), .Z(n3268)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h7000;
    LUT4 i1_2_lut_3_lut (.A(dec_stb), .B(dec_bits[4]), .C(cmd_loaded), 
         .Z(o_pck_stb_N_206)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(60[9] 100[5])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_34 (.A(dec_stb), .B(dec_bits[4]), .C(n3800), 
         .Z(i_clk_c_enable_233)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(60[9] 100[5])
    defparam i1_2_lut_3_lut_adj_34.init = 16'hf8f8;
    LUT4 i1_4_lut (.A(i_rx_byte_c_3), .B(n64), .C(n3747), .D(i_rx_byte_c_4), 
         .Z(n53)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(65[3] 99[10])
    defparam i1_4_lut.init = 16'h5044;
    LUT4 i1_3_lut_4_lut_adj_35 (.A(dec_stb), .B(dec_bits[4]), .C(dec_bits_c[3]), 
         .D(dec_bits_c[2]), .Z(cmd_loaded_N_209)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(60[9] 100[5])
    defparam i1_3_lut_4_lut_adj_35.init = 16'h0008;
    LUT4 i_stb_I_0_58_4_lut (.A(i_rx_stb_c), .B(n2242), .C(n6_c), .D(i_rx_byte_c_5), 
         .Z(o_dh_stb_N_64)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(58[15:46])
    defparam i_stb_I_0_58_4_lut.init = 16'h2aaa;
    LUT4 i1_2_lut_3_lut_adj_36 (.A(i_rx_byte_c_5), .B(n3760), .C(i_rx_byte_c_6), 
         .Z(n28)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(65[3] 99[10])
    defparam i1_2_lut_3_lut_adj_36.init = 16'hb0b0;
    LUT4 i5_4_lut (.A(i_rx_byte_c_6), .B(n10), .C(n80), .D(n3464), .Z(o_dh_bits_4__N_37[1])) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfdfc;
    LUT4 i1_4_lut_4_lut (.A(i_rx_byte_c_2), .B(i_rx_byte_c_0), .C(i_rx_byte_c_1), 
         .D(n12_adj_778), .Z(n31)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h007e;
    LUT4 i4_4_lut (.A(n42), .B(n8), .C(n12), .D(i_rx_byte_c_1), .Z(n10)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;
    defparam i4_4_lut.init = 16'hefee;
    FD1S3AX o_dh_bits_i4 (.D(o_dh_bits_4__N_37[4]), .CK(i_clk_c), .Q(dec_bits[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=118, LSE_RLINE=120 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(60[9] 100[5])
    defparam o_dh_bits_i4.GSR = "ENABLED";
    LUT4 i82_4_lut (.A(n64), .B(n28), .C(i_rx_byte_c_4), .D(n3447), 
         .Z(n80)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;
    defparam i82_4_lut.init = 16'hf5c5;
    FD1S3AX o_dh_bits_i3 (.D(o_dh_bits_4__N_37[3]), .CK(i_clk_c), .Q(dec_bits_c[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=118, LSE_RLINE=120 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(60[9] 100[5])
    defparam o_dh_bits_i3.GSR = "ENABLED";
    FD1S3AX o_dh_bits_i2 (.D(o_dh_bits_4__N_37[2]), .CK(i_clk_c), .Q(dec_bits_c[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=118, LSE_RLINE=120 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(60[9] 100[5])
    defparam o_dh_bits_i2.GSR = "ENABLED";
    FD1S3AX o_dh_bits_i1 (.D(o_dh_bits_4__N_37[1]), .CK(i_clk_c), .Q(\dec_bits[1] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=118, LSE_RLINE=120 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(60[9] 100[5])
    defparam o_dh_bits_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_37 (.A(i_rx_byte_c_0), .B(i_rx_byte_c_5), .C(i_rx_byte_c_2), 
         .D(i_rx_byte_c_1), .Z(n64)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A !(B (C+(D))))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(65[3] 99[10])
    defparam i1_4_lut_4_lut_adj_37.init = 16'h4cca;
    LUT4 i_rx_byte_c_4_bdd_4_lut_3049 (.A(i_rx_byte_c_4), .B(i_rx_byte_c_5), 
         .C(i_rx_byte_c_0), .D(i_rx_byte_c_2), .Z(n3686)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam i_rx_byte_c_4_bdd_4_lut_3049.init = 16'h0210;
    LUT4 i80_3_lut_rep_118 (.A(i_rx_byte_c_2), .B(i_rx_byte_c_1), .C(i_rx_byte_c_0), 
         .Z(n3760)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(65[3] 99[10])
    defparam i80_3_lut_rep_118.init = 16'hc6c6;
    LUT4 i1_2_lut (.A(n3800), .B(i_wb_err_c), .Z(n905)) /* synthesis lut_function=(A+(B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(53[9] 54[46])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_105_4_lut (.A(i_rx_byte_c_2), .B(i_rx_byte_c_1), .C(i_rx_byte_c_0), 
         .D(i_rx_byte_c_5), .Z(n3747)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A ((D)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(65[3] 99[10])
    defparam i1_2_lut_rep_105_4_lut.init = 16'h00c6;
    LUT4 i1_4_lut_adj_38 (.A(i_rx_byte_c_3), .B(n47), .C(n31), .D(n3502), 
         .Z(o_dh_bits_4__N_37[3])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_38.init = 16'hfeff;
    LUT4 i1_2_lut_adj_39 (.A(i_rx_byte_c_6), .B(i_rx_byte_c_3), .Z(n42)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_39.init = 16'h8888;
    LUT4 i_stb_I_0_2_lut_3_lut_4_lut (.A(n3744), .B(i_rx_byte_c_4), .C(i_rx_stb_c), 
         .D(n9), .Z(o_reset_N_66)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(69[3:8])
    defparam i_stb_I_0_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 n3426_bdd_4_lut_3032 (.A(i_rx_byte_c_2), .B(i_rx_byte_c_4), .C(i_rx_byte_c_1), 
         .D(i_rx_byte_c_0), .Z(n3655)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam n3426_bdd_4_lut_3032.init = 16'hc140;
    LUT4 i52_3_lut (.A(n64), .B(n36), .C(i_rx_byte_c_4), .Z(n47)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam i52_3_lut.init = 16'hc5c5;
    LUT4 i1_2_lut_3_lut_adj_40 (.A(i_rx_byte_c_1), .B(i_rx_byte_c_2), .C(i_rx_byte_c_0), 
         .Z(n9)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(54[23:45])
    defparam i1_2_lut_3_lut_adj_40.init = 16'hfbfb;
    LUT4 o_wb_sel_c_bdd_2_lut_3008_3_lut_4_lut (.A(i_rx_byte_c_5), .B(n3753), 
         .C(n41), .D(n3655), .Z(n3657)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam o_wb_sel_c_bdd_2_lut_3008_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i1_2_lut_rep_111 (.A(i_rx_byte_c_3), .B(i_rx_byte_c_6), .Z(n3753)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(91[3:8])
    defparam i1_2_lut_rep_111.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_102_3_lut (.A(i_rx_byte_c_3), .B(i_rx_byte_c_6), .C(i_rx_byte_c_5), 
         .Z(n3744)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(91[3:8])
    defparam i1_2_lut_rep_102_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_rep_99_3_lut_4_lut (.A(i_rx_byte_c_3), .B(i_rx_byte_c_6), 
         .C(i_rx_byte_c_4), .D(i_rx_byte_c_5), .Z(n3741)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(91[3:8])
    defparam i1_2_lut_rep_99_3_lut_4_lut.init = 16'hffbf;
    LUT4 i2_3_lut_4_lut_adj_41 (.A(i_rx_byte_c_3), .B(i_rx_byte_c_6), .C(i_rx_byte_c_4), 
         .D(i_rx_byte_c_5), .Z(n12_adj_778)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(91[3:8])
    defparam i2_3_lut_4_lut_adj_41.init = 16'hfbff;
    LUT4 n3660_bdd_4_lut (.A(n3660), .B(i_rx_byte_c_3), .C(n3659), .D(i_rx_byte_c_5), 
         .Z(n3739)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n3660_bdd_4_lut.init = 16'hf0ee;
    LUT4 i2952_3_lut (.A(i_rx_byte_c_6), .B(i_rx_byte_c_5), .C(i_rx_byte_c_4), 
         .Z(n3502)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i2952_3_lut.init = 16'heaea;
    LUT4 i54_3_lut (.A(n3760), .B(i_rx_byte_c_6), .C(i_rx_byte_c_5), .Z(n36)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam i54_3_lut.init = 16'hc5c5;
    LUT4 i2_4_lut (.A(i_rx_byte_c_2), .B(i_rx_byte_c_0), .C(i_rx_byte_c_1), 
         .D(i_rx_byte_c_5), .Z(n3447)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_4_lut.init = 16'h0040;
    LUT4 i_rx_byte_c_1_bdd_4_lut_3009 (.A(i_rx_byte_c_1), .B(i_rx_byte_c_2), 
         .C(i_rx_byte_c_3), .D(i_rx_byte_c_6), .Z(n3659)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i_rx_byte_c_1_bdd_4_lut_3009.init = 16'hffe0;
    LUT4 i2_4_lut_4_lut (.A(n3686), .B(i_rx_byte_c_1), .C(i_rx_byte_c_0), 
         .D(n12_adj_778), .Z(n8)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h223e;
    LUT4 i1720_2_lut_3_lut (.A(i_rx_byte_c_2), .B(i_rx_byte_c_1), .C(i_rx_byte_c_0), 
         .Z(n2242)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1720_2_lut_3_lut.init = 16'h8080;
    LUT4 i_rx_byte_c_1_bdd_4_lut_3017 (.A(i_rx_byte_c_1), .B(i_rx_byte_c_2), 
         .C(i_rx_byte_c_6), .D(i_rx_byte_c_0), .Z(n3660)) /* synthesis lut_function=(A (B+((D)+!C))+!A (((D)+!C)+!B)) */ ;
    defparam i_rx_byte_c_1_bdd_4_lut_3017.init = 16'hff9f;
    FD1S3AY o_reset_34_rep_124 (.D(o_reset_N_66), .CK(i_clk_c), .Q(n3801)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=118, LSE_RLINE=120 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(53[9] 54[46])
    defparam o_reset_34_rep_124.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(i_rx_byte_c_3), .B(i_rx_byte_c_6), .C(i_rx_byte_c_4), 
         .Z(n6_c)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_42 (.A(n3800), .B(n3449), .C(i_wb_err_c), .D(o_wb_cyc_c), 
         .Z(n3465)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(53[9] 54[46])
    defparam i1_4_lut_adj_42.init = 16'hfaee;
    LUT4 i2990_3_lut_4_lut (.A(n9), .B(n3741), .C(n41), .D(n3721), .Z(o_dh_bits_4__N_37[2])) /* synthesis lut_function=(A ((D)+!C)+!A (((D)+!C)+!B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(54[23:45])
    defparam i2990_3_lut_4_lut.init = 16'hff1f;
    LUT4 i_rx_byte_c_1_bdd_3_lut_3039 (.A(i_rx_byte_c_3), .B(i_rx_byte_c_6), 
         .C(n64), .Z(n3663)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i_rx_byte_c_1_bdd_3_lut_3039.init = 16'hbfbf;
    FD1S3AY o_reset_34_rep_123 (.D(o_reset_N_66), .CK(i_clk_c), .Q(n3800)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=118, LSE_RLINE=120 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(53[9] 54[46])
    defparam o_reset_34_rep_123.GSR = "ENABLED";
    PFUMX i3040 (.BLUT(n3720), .ALUT(n3719), .C0(n12_adj_778), .Z(n3721));
    PFUMX i83 (.BLUT(n3268), .ALUT(n53), .C0(i_rx_byte_c_6), .Z(n41));
    LUT4 o_wb_sel_c_bdd_2_lut_3013_3_lut_4_lut (.A(n3744), .B(i_rx_byte_c_4), 
         .C(n3657), .D(n9), .Z(o_dh_bits_4__N_37[4])) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(69[3:8])
    defparam o_wb_sel_c_bdd_2_lut_3013_3_lut_4_lut.init = 16'hf0f4;
    LUT4 n3663_bdd_3_lut (.A(n3663), .B(n3739), .C(i_rx_byte_c_4), .Z(n3664)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3663_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_43 (.A(dec_bits[4]), .B(dec_bits_c[2]), .Z(n46)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(60[9] 100[5])
    defparam i1_2_lut_adj_43.init = 16'h4444;
    LUT4 i4_4_lut_adj_44 (.A(n55), .B(n3664), .C(i_rx_byte_c_0), .D(n60), 
         .Z(o_dh_bits_4__N_37[0])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i4_4_lut_adj_44.init = 16'hfeee;
    LUT4 i2_4_lut_adj_45 (.A(i_rx_byte_c_2), .B(i_rx_byte_c_0), .C(i_rx_byte_c_1), 
         .D(n12_adj_778), .Z(n55)) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_45.init = 16'h0032;
    LUT4 i1_2_lut_adj_46 (.A(dec_bits[4]), .B(dec_bits_c[3]), .Z(n45)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(60[9] 100[5])
    defparam i1_2_lut_adj_46.init = 16'h4444;
    LUT4 i1_4_lut_adj_47 (.A(i_rx_byte_c_1), .B(n12), .C(i_rx_byte_c_3), 
         .D(i_rx_byte_c_2), .Z(n60)) /* synthesis lut_function=(!(A (B)+!A (B ((D)+!C)))) */ ;
    defparam i1_4_lut_adj_47.init = 16'h3373;
    LUT4 i1_3_lut (.A(i_wb_ack_c), .B(n3465), .C(n6), .Z(i_clk_c_enable_213)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(53[9] 54[46])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 i2_4_lut_adj_48 (.A(i_rx_byte_c_4), .B(i_rx_byte_c_5), .C(i_rx_byte_c_3), 
         .D(i_rx_byte_c_6), .Z(n12)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbdechex.v(69[3:8])
    defparam i2_4_lut_adj_48.init = 16'hfff7;
    
endmodule
//
// Verilog Description of module hbidle
//

module hbidle (idl_stb, i_clk_c, w_reset, n3749, idl_word, int_word, 
            hb_busy, n3761, int_stb, n3762, i_clk_c_enable_107, n1418, 
            i_clk_c_enable_18, n3800) /* synthesis syn_module_defined=1 */ ;
    output idl_stb;
    input i_clk_c;
    input w_reset;
    output n3749;
    output [33:0]idl_word;
    input [33:0]int_word;
    input hb_busy;
    output n3761;
    input int_stb;
    input n3762;
    output i_clk_c_enable_107;
    output n1418;
    output i_clk_c_enable_18;
    input n3800;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbconsole.v(57[14:19])
    
    wire i_clk_c_enable_1, i_clk_c_enable_234, n1452;
    
    FD1P3IX o_idl_stb_28 (.D(n3749), .SP(i_clk_c_enable_1), .CD(w_reset), 
            .CK(i_clk_c), .Q(idl_stb)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(80[9] 88[22])
    defparam o_idl_stb_28.GSR = "ENABLED";
    FD1P3IX o_idl_word_i17 (.D(int_word[17]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i17.GSR = "ENABLED";
    FD1P3IX o_idl_word_i16 (.D(int_word[16]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i16.GSR = "ENABLED";
    FD1P3IX o_idl_word_i20 (.D(int_word[20]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i20.GSR = "ENABLED";
    FD1P3IX o_idl_word_i15 (.D(int_word[15]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i15.GSR = "ENABLED";
    FD1P3IX o_idl_word_i14 (.D(int_word[14]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i14.GSR = "ENABLED";
    FD1P3IX o_idl_word_i13 (.D(int_word[13]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i13.GSR = "ENABLED";
    FD1P3IX o_idl_word_i12 (.D(int_word[12]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i12.GSR = "ENABLED";
    FD1P3IX o_idl_word_i11 (.D(int_word[11]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i11.GSR = "ENABLED";
    FD1P3IX o_idl_word_i10 (.D(int_word[10]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i10.GSR = "ENABLED";
    FD1P3IX o_idl_word_i9 (.D(int_word[9]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i9.GSR = "ENABLED";
    FD1P3IX o_idl_word_i8 (.D(int_word[8]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i8.GSR = "ENABLED";
    FD1P3IX o_idl_word_i7 (.D(int_word[7]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i7.GSR = "ENABLED";
    FD1P3IX o_idl_word_i6 (.D(int_word[6]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i6.GSR = "ENABLED";
    FD1P3IX o_idl_word_i5 (.D(int_word[5]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i5.GSR = "ENABLED";
    FD1P3IX o_idl_word_i24 (.D(int_word[24]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i24.GSR = "ENABLED";
    FD1P3IX o_idl_word_i4 (.D(int_word[4]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i4.GSR = "ENABLED";
    LUT4 o_idl_stb_I_0_30_2_lut_rep_119 (.A(idl_stb), .B(hb_busy), .Z(n3761)) /* synthesis lut_function=(A (B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(97[22:43])
    defparam o_idl_stb_I_0_30_2_lut_rep_119.init = 16'h8888;
    FD1P3IX o_idl_word_i3 (.D(int_word[3]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i3.GSR = "ENABLED";
    FD1P3IX o_idl_word_i2 (.D(int_word[2]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i2.GSR = "ENABLED";
    LUT4 o_int_stb_I_0_66_2_lut_rep_107_3_lut (.A(idl_stb), .B(hb_busy), 
         .C(int_stb), .Z(n3749)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(97[22:43])
    defparam o_int_stb_I_0_66_2_lut_rep_107_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(n3762), .D(int_stb), 
         .Z(i_clk_c_enable_107)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(97[22:43])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i2978_2_lut_3_lut_3_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(int_stb), 
         .D(n3762), .Z(n1418)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (D))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(97[22:43])
    defparam i2978_2_lut_3_lut_3_lut_4_lut.init = 16'h007f;
    LUT4 i2976_2_lut_rep_106_3_lut (.A(idl_stb), .B(hb_busy), .C(int_stb), 
         .Z(i_clk_c_enable_18)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(97[22:43])
    defparam i2976_2_lut_rep_106_3_lut.init = 16'h7f7f;
    LUT4 i2981_2_lut_3_lut_2_lut (.A(hb_busy), .B(int_stb), .Z(n1452)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(97[22:43])
    defparam i2981_2_lut_3_lut_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_3_lut (.A(idl_stb), .B(hb_busy), .C(int_stb), 
         .Z(i_clk_c_enable_234)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(97[22:43])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h7373;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(idl_stb), .B(hb_busy), .C(n3800), 
         .D(int_stb), .Z(i_clk_c_enable_1)) /* synthesis lut_function=(A ((C)+!B)+!A ((C+(D))+!B)) */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(97[22:43])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hf7f3;
    FD1P3IX o_idl_word_i1 (.D(int_word[1]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i1.GSR = "ENABLED";
    FD1P3IX o_idl_word_i0 (.D(int_word[0]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i0.GSR = "ENABLED";
    FD1P3IX o_idl_word_i19 (.D(int_word[19]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i19.GSR = "ENABLED";
    FD1P3IX o_idl_word_i23 (.D(int_word[23]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i23.GSR = "ENABLED";
    FD1P3IX o_idl_word_i22 (.D(int_word[22]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i22.GSR = "ENABLED";
    FD1P3IX o_idl_word_i31 (.D(int_word[31]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i31.GSR = "ENABLED";
    FD1P3JX o_idl_word_i30 (.D(int_word[30]), .SP(i_clk_c_enable_234), .PD(n1452), 
            .CK(i_clk_c), .Q(idl_word[30])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i30.GSR = "ENABLED";
    FD1P3JX o_idl_word_i29 (.D(int_word[29]), .SP(i_clk_c_enable_234), .PD(n1452), 
            .CK(i_clk_c), .Q(idl_word[29])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i29.GSR = "ENABLED";
    FD1P3IX o_idl_word_i28 (.D(int_word[28]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i28.GSR = "ENABLED";
    FD1P3JX o_idl_word_i33 (.D(int_word[33]), .SP(i_clk_c_enable_234), .PD(n1452), 
            .CK(i_clk_c), .Q(idl_word[33])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i33.GSR = "ENABLED";
    FD1P3JX o_idl_word_i32 (.D(int_word[32]), .SP(i_clk_c_enable_234), .PD(n1452), 
            .CK(i_clk_c), .Q(idl_word[32])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i32.GSR = "ENABLED";
    FD1P3IX o_idl_word_i27 (.D(int_word[27]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i27.GSR = "ENABLED";
    FD1P3IX o_idl_word_i26 (.D(int_word[26]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i26.GSR = "ENABLED";
    FD1P3IX o_idl_word_i21 (.D(int_word[21]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i21.GSR = "ENABLED";
    FD1P3IX o_idl_word_i25 (.D(int_word[25]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i25.GSR = "ENABLED";
    FD1P3IX o_idl_word_i18 (.D(int_word[18]), .SP(i_clk_c_enable_234), .CD(n1452), 
            .CK(i_clk_c), .Q(idl_word[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=31, LSE_LLINE=147, LSE_RLINE=149 */ ;   // d:/documents/git_local/fm_modulator/rtl/debug_bus/hbidle.v(91[9] 95[29])
    defparam o_idl_word_i18.GSR = "ENABLED";
    
endmodule
