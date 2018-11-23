proc getPresetInfo {} {
  return [dict create name {ultra96 preset} description {ultra96 preset}  vlnv xilinx.com:ip:zynq_ultra_ps_e:3.2 display_name {ultra96 preset} ]
}

proc validate_preset {IPINST} { return true }


proc apply_preset {IPINST} {
  return [dict create \
    CONFIG.PSU__PSS_REF_CLK__FREQMHZ {33.3333}  \
    CONFIG.PSU__PSS_ALT_REF_CLK__ENABLE {0}  \
    CONFIG.PSU__DPAUX__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__DPAUX__PERIPHERAL__IO {MIO 27 .. 30}  \
    CONFIG.PSU__ACT_DDR_FREQ_MHZ {524.999451}  \
    CONFIG.PSU__FPGA_PL0_ENABLE {1}  \
    CONFIG.PSU__FPGA_PL1_ENABLE {0}  \
    CONFIG.PSU__FPGA_PL2_ENABLE {0}  \
    CONFIG.PSU__FPGA_PL3_ENABLE {0}  \
    CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__GPIO_EMIO__PERIPHERAL__IO {95}  \
    CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__GPIO0_MIO__IO {MIO 0 .. 25}  \
    CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__GPIO1_MIO__IO {MIO 26 .. 51}  \
    CONFIG.PSU__GPIO2_MIO__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__GPIO2_MIO__IO {MIO 52 .. 77}  \
    CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {0}  \
    CONFIG.PSU__I2C1__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__I2C1__PERIPHERAL__IO {MIO 4 .. 5}  \
    CONFIG.PSU__GT__LINK_SPEED {HBR}  \
    CONFIG.PSU__GT__VLT_SWNG_LVL_4 {0}  \
    CONFIG.PSU__GT__PRE_EMPH_LVL_4 {0}  \
    CONFIG.PSU__USB0__REF_CLK_SEL {Ref Clk0}  \
    CONFIG.PSU__USB0__REF_CLK_FREQ {26}  \
    CONFIG.PSU__USB1__REF_CLK_SEL {Ref Clk0}  \
    CONFIG.PSU__USB1__REF_CLK_FREQ {26}  \
    CONFIG.PSU__DP__REF_CLK_SEL {Ref Clk1}  \
    CONFIG.PSU__DP__REF_CLK_FREQ {27}  \
    CONFIG.PSU__DP__LANE_SEL {Dual Lower}  \
    CONFIG.PSU__PCIE__ACS_VIOLAION {0}  \
    CONFIG.PSU__PROTECTION__MASTERS {USB1:NonSecure;1|USB0:NonSecure;1|S_AXI_LPD:NA;0|S_AXI_HPC1_FPD:NA;0|S_AXI_HPC0_FPD:NA;0|S_AXI_HP3_FPD:NA;0|S_AXI_HP2_FPD:NA;0|S_AXI_HP1_FPD:NA;0|S_AXI_HP0_FPD:NA;0|S_AXI_ACP:NA;0|S_AXI_ACE:NA;0|SD1:NonSecure;1|SD0:NonSecure;1|SATA1:NonSecure;0|SATA0:NonSecure;0|RPU1:Secure;1|RPU0:Secure;1|QSPI:NonSecure;0|PMU:NA;1|PCIe:NonSecure;0|NAND:NonSecure;0|LDMA:NonSecure;1|GPU:NonSecure;1|GEM3:NonSecure;0|GEM2:NonSecure;0|GEM1:NonSecure;0|GEM0:NonSecure;0|FDMA:NonSecure;1|DP:NonSecure;1|DAP:NA;1|Coresight:NA;1|CSU:NA;1|APU:NA;1}  \
    CONFIG.PSU__PROTECTION__SLAVES {LPD;USB3_1_XHCI;FE300000;FE3FFFFF;1|LPD;USB3_1;FF9E0000;FF9EFFFF;1|LPD;USB3_0_XHCI;FE200000;FE2FFFFF;1|LPD;USB3_0;FF9D0000;FF9DFFFF;1|LPD;UART1;FF010000;FF01FFFF;1|LPD;UART0;FF000000;FF00FFFF;1|LPD;TTC3;FF140000;FF14FFFF;1|LPD;TTC2;FF130000;FF13FFFF;0|LPD;TTC1;FF120000;FF12FFFF;0|LPD;TTC0;FF110000;FF11FFFF;1|FPD;SWDT1;FD4D0000;FD4DFFFF;0|LPD;SWDT0;FF150000;FF15FFFF;0|LPD;SPI1;FF050000;FF05FFFF;1|LPD;SPI0;FF040000;FF04FFFF;1|FPD;SMMU_REG;FD5F0000;FD5FFFFF;1|FPD;SMMU;FD800000;FDFFFFFF;1|FPD;SIOU;FD3D0000;FD3DFFFF;1|FPD;SERDES;FD400000;FD47FFFF;1|LPD;SD1;FF170000;FF17FFFF;1|LPD;SD0;FF160000;FF16FFFF;1|FPD;SATA;FD0C0000;FD0CFFFF;0|LPD;RTC;FFA60000;FFA6FFFF;1|LPD;RSA_CORE;FFCE0000;FFCEFFFF;1|LPD;RPU;FF9A0000;FF9AFFFF;1|FPD;RCPU_GIC;F9000000;F900FFFF;1|LPD;R5_TCM_RAM_GLOBAL;FFE00000;FFE3FFFF;1|LPD;R5_1_Instruction_Cache;FFEC0000;FFECFFFF;1|LPD;R5_1_Data_Cache;FFED0000;FFEDFFFF;1|LPD;R5_1_BTCM_GLOBAL;FFEB0000;FFEBFFFF;1|LPD;R5_1_ATCM_GLOBAL;FFE90000;FFE9FFFF;1|LPD;R5_0_Instruction_Cache;FFE40000;FFE4FFFF;1|LPD;R5_0_Data_Cache;FFE50000;FFE5FFFF;1|LPD;R5_0_BTCM_GLOBAL;FFE20000;FFE2FFFF;1|LPD;R5_0_ATCM_GLOBAL;FFE00000;FFE0FFFF;1|LPD;QSPI_Linear_Address;C0000000;DFFFFFFF;1|LPD;QSPI;FF0F0000;FF0FFFFF;0|LPD;PMU_RAM;FFDC0000;FFDDFFFF;1|LPD;PMU_GLOBAL;FFD80000;FFDBFFFF;1|FPD;PCIE_MAIN;FD0E0000;FD0EFFFF;0|FPD;PCIE_LOW;E0000000;EFFFFFFF;0|FPD;PCIE_HIGH2;8000000000;BFFFFFFFFF;0|FPD;PCIE_HIGH1;600000000;7FFFFFFFF;0|FPD;PCIE_DMA;FD0F0000;FD0FFFFF;0|FPD;PCIE_ATTRIB;FD480000;FD48FFFF;0|LPD;OCM_XMPU_CFG;FFA70000;FFA7FFFF;1|LPD;OCM_SLCR;FF960000;FF96FFFF;1|OCM;OCM;FFFC0000;FFFFFFFF;1|LPD;NAND;FF100000;FF10FFFF;0|LPD;MBISTJTAG;FFCF0000;FFCFFFFF;1|LPD;LPD_XPPU_SINK;FF9C0000;FF9CFFFF;1|LPD;LPD_XPPU;FF980000;FF98FFFF;1|LPD;LPD_SLCR_SECURE;FF4B0000;FF4DFFFF;1|LPD;LPD_SLCR;FF410000;FF4AFFFF;1|LPD;LPD_GPV;FE100000;FE1FFFFF;1|LPD;LPD_DMA_7;FFAF0000;FFAFFFFF;1|LPD;LPD_DMA_6;FFAE0000;FFAEFFFF;1|LPD;LPD_DMA_5;FFAD0000;FFADFFFF;1|LPD;LPD_DMA_4;FFAC0000;FFACFFFF;1|LPD;LPD_DMA_3;FFAB0000;FFABFFFF;1|LPD;LPD_DMA_2;FFAA0000;FFAAFFFF;1|LPD;LPD_DMA_1;FFA90000;FFA9FFFF;1|LPD;LPD_DMA_0;FFA80000;FFA8FFFF;1|LPD;IPI_CTRL;FF380000;FF3FFFFF;1|LPD;IOU_SLCR;FF180000;FF23FFFF;1|LPD;IOU_SECURE_SLCR;FF240000;FF24FFFF;1|LPD;IOU_SCNTRS;FF260000;FF26FFFF;1|LPD;IOU_SCNTR;FF250000;FF25FFFF;1|LPD;IOU_GPV;FE000000;FE0FFFFF;1|LPD;I2C1;FF030000;FF03FFFF;1|LPD;I2C0;FF020000;FF02FFFF;0|FPD;GPU;FD4B0000;FD4BFFFF;1|LPD;GPIO;FF0A0000;FF0AFFFF;1|LPD;GEM3;FF0E0000;FF0EFFFF;0|LPD;GEM2;FF0D0000;FF0DFFFF;0|LPD;GEM1;FF0C0000;FF0CFFFF;0|LPD;GEM0;FF0B0000;FF0BFFFF;0|FPD;FPD_XMPU_SINK;FD4F0000;FD4FFFFF;1|FPD;FPD_XMPU_CFG;FD5D0000;FD5DFFFF;1|FPD;FPD_SLCR_SECURE;FD690000;FD6CFFFF;1|FPD;FPD_SLCR;FD610000;FD68FFFF;1|FPD;FPD_GPV;FD700000;FD7FFFFF;1|FPD;FPD_DMA_CH7;FD570000;FD57FFFF;1|FPD;FPD_DMA_CH6;FD560000;FD56FFFF;1|FPD;FPD_DMA_CH5;FD550000;FD55FFFF;1|FPD;FPD_DMA_CH4;FD540000;FD54FFFF;1|FPD;FPD_DMA_CH3;FD530000;FD53FFFF;1|FPD;FPD_DMA_CH2;FD520000;FD52FFFF;1|FPD;FPD_DMA_CH1;FD510000;FD51FFFF;1|FPD;FPD_DMA_CH0;FD500000;FD50FFFF;1|LPD;EFUSE;FFCC0000;FFCCFFFF;1|FPD;Display Port;FD4A0000;FD4AFFFF;1|FPD;DPDMA;FD4C0000;FD4CFFFF;1|FPD;DDR_XMPU5_CFG;FD050000;FD05FFFF;1|FPD;DDR_XMPU4_CFG;FD040000;FD04FFFF;1|FPD;DDR_XMPU3_CFG;FD030000;FD03FFFF;1|FPD;DDR_XMPU2_CFG;FD020000;FD02FFFF;1|FPD;DDR_XMPU1_CFG;FD010000;FD01FFFF;1|FPD;DDR_XMPU0_CFG;FD000000;FD00FFFF;1|FPD;DDR_QOS_CTRL;FD090000;FD09FFFF;1|FPD;DDR_PHY;FD080000;FD08FFFF;1|DDR;DDR_LOW;0;7FFFFFFF;1|DDR;DDR_HIGH;800000000;800000000;0|FPD;DDDR_CTRL;FD070000;FD070FFF;1|LPD;Coresight;FE800000;FEFFFFFF;1|LPD;CSU_DMA;FFC80000;FFC9FFFF;1|LPD;CSU;FFCA0000;FFCAFFFF;0|LPD;CRL_APB;FF5E0000;FF85FFFF;1|FPD;CRF_APB;FD1A0000;FD2DFFFF;1|FPD;CCI_REG;FD5E0000;FD5EFFFF;1|FPD;CCI_GPV;FD6E0000;FD6EFFFF;1|LPD;CAN1;FF070000;FF07FFFF;0|LPD;CAN0;FF060000;FF06FFFF;0|FPD;APU;FD5C0000;FD5CFFFF;1|LPD;APM_INTC_IOU;FFA20000;FFA2FFFF;1|LPD;APM_FPD_LPD;FFA30000;FFA3FFFF;1|FPD;APM_5;FD490000;FD49FFFF;1|FPD;APM_0;FD0B0000;FD0BFFFF;1|LPD;APM2;FFA10000;FFA1FFFF;1|LPD;APM1;FFA00000;FFA0FFFF;1|LPD;AMS;FFA50000;FFA5FFFF;1|FPD;AFI_5;FD3B0000;FD3BFFFF;1|FPD;AFI_4;FD3A0000;FD3AFFFF;1|FPD;AFI_3;FD390000;FD39FFFF;1|FPD;AFI_2;FD380000;FD38FFFF;1|FPD;AFI_1;FD370000;FD37FFFF;1|FPD;AFI_0;FD360000;FD36FFFF;1|LPD;AFIFM6;FF9B0000;FF9BFFFF;1|FPD;ACPU_GIC;F9000000;F907FFFF;1}  \
    CONFIG.SUBPRESET1 {Custom}  \
    CONFIG.PSU_MIO_TREE_PERIPHERALS {UART 1#UART 1#UART 0#UART 0#I2C 1#I2C 1#SPI 1#GPIO0 MIO#GPIO0 MIO#SPI 1#SPI 1#SPI 1#GPIO0 MIO#SD 0#SD 0#SD 0#SD 0#GPIO0 MIO#GPIO0 MIO#GPIO0 MIO#GPIO0 MIO#SD 0#SD 0#GPIO0 MIO#SD 0#GPIO0 MIO#PMU GPI 0#DPAUX#DPAUX#DPAUX#DPAUX#GPIO1 MIO#PMU GPO 0#PMU GPO 1#PMU GPO 2#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#SPI 0#GPIO1 MIO#GPIO1 MIO#SPI 0#SPI 0#SPI 0#GPIO1 MIO#GPIO1 MIO#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#USB 1#GPIO2 MIO#GPIO2 MIO}  \
    CONFIG.PSU_MIO_TREE_SIGNALS {txd#rxd#rxd#txd#scl_out#sda_out#sclk_out#gpio0[7]#gpio0[8]#n_ss_out[0]#miso#mosi#gpio0[12]#sdio0_data_out[0]#sdio0_data_out[1]#sdio0_data_out[2]#sdio0_data_out[3]#gpio0[17]#gpio0[18]#gpio0[19]#gpio0[20]#sdio0_cmd_out#sdio0_clk_out#gpio0[23]#sdio0_cd_n#gpio0[25]#gpi[0]#dp_aux_data_out#dp_hot_plug_detect#dp_aux_data_oe#dp_aux_data_in#gpio1[31]#gpo[0]#gpo[1]#gpo[2]#gpio1[35]#gpio1[36]#gpio1[37]#sclk_out#gpio1[39]#gpio1[40]#n_ss_out[0]#miso#mosi#gpio1[44]#gpio1[45]#sdio1_data_out[0]#sdio1_data_out[1]#sdio1_data_out[2]#sdio1_data_out[3]#sdio1_cmd_out#sdio1_clk_out#ulpi_clk_in#ulpi_dir#ulpi_tx_data[2]#ulpi_nxt#ulpi_tx_data[0]#ulpi_tx_data[1]#ulpi_stp#ulpi_tx_data[3]#ulpi_tx_data[4]#ulpi_tx_data[5]#ulpi_tx_data[6]#ulpi_tx_data[7]#ulpi_clk_in#ulpi_dir#ulpi_tx_data[2]#ulpi_nxt#ulpi_tx_data[0]#ulpi_tx_data[1]#ulpi_stp#ulpi_tx_data[3]#ulpi_tx_data[4]#ulpi_tx_data[5]#ulpi_tx_data[6]#ulpi_tx_data[7]#gpio2[76]#gpio2[77]}  \
    CONFIG.PSU__PJTAG__PERIPHERAL__ENABLE {0}  \
    CONFIG.PSU__PMU__AIBACK__ENABLE {0}  \
    CONFIG.PSU__PMU__PLERROR__ENABLE {0}  \
    CONFIG.PSU__PMU__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__PMU__EMIO_GPI__ENABLE {0}  \
    CONFIG.PSU__PMU__EMIO_GPO__ENABLE {0}  \
    CONFIG.PSU__PMU__GPI0__ENABLE {1}  \
    CONFIG.PSU__PMU__GPI1__ENABLE {0}  \
    CONFIG.PSU__PMU__GPI2__ENABLE {0}  \
    CONFIG.PSU__PMU__GPI3__ENABLE {0}  \
    CONFIG.PSU__PMU__GPI4__ENABLE {0}  \
    CONFIG.PSU__PMU__GPI5__ENABLE {0}  \
    CONFIG.PSU__PMU__GPO0__ENABLE {1}  \
    CONFIG.PSU__PMU__GPO1__ENABLE {1}  \
    CONFIG.PSU__PMU__GPO2__ENABLE {1}  \
    CONFIG.PSU__PMU__GPO3__ENABLE {0}  \
    CONFIG.PSU__PMU__GPO4__ENABLE {0}  \
    CONFIG.PSU__PMU__GPO5__ENABLE {0}  \
    CONFIG.PSU__PMU__GPI0__IO {MIO 26}  \
    CONFIG.PSU__PMU__GPO0__IO {MIO 32}  \
    CONFIG.PSU__PMU__GPO1__IO {MIO 33}  \
    CONFIG.PSU__PMU__GPO2__IO {MIO 34}  \
    CONFIG.PSU__PMU__GPO2__POLARITY {high}  \
    CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {0}  \
    CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {0}  \
    CONFIG.PSU__SD0__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__SD0__PERIPHERAL__IO {MIO 13 .. 16 21 22}  \
    CONFIG.PSU__SD0__GRP_CD__ENABLE {1}  \
    CONFIG.PSU__SD0__GRP_CD__IO {MIO 24}  \
    CONFIG.PSU__SD0__GRP_POW__ENABLE {0}  \
    CONFIG.PSU__SD0__GRP_WP__ENABLE {0}  \
    CONFIG.PSU__SD0__SLOT_TYPE {SD 2.0}  \
    CONFIG.PSU__SD0__RESET__ENABLE {0}  \
    CONFIG.PSU__SD0__DATA_TRANSFER_MODE {4Bit}  \
    CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 46 .. 51}  \
    CONFIG.PSU__SD1__GRP_CD__ENABLE {0}  \
    CONFIG.PSU__SD1__GRP_POW__ENABLE {0}  \
    CONFIG.PSU__SD1__GRP_WP__ENABLE {0}  \
    CONFIG.PSU__SD1__SLOT_TYPE {SD 2.0}  \
    CONFIG.PSU__SD1__RESET__ENABLE {0}  \
    CONFIG.PSU__SD1__DATA_TRANSFER_MODE {4Bit}  \
    CONFIG.PSU__SPI0__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__SPI0__PERIPHERAL__IO {MIO 38 .. 43}  \
    CONFIG.PSU__SPI0__GRP_SS0__ENABLE {1}  \
    CONFIG.PSU__SPI0__GRP_SS0__IO {MIO 41}  \
    CONFIG.PSU__SPI0__GRP_SS1__ENABLE {0}  \
    CONFIG.PSU__SPI0__GRP_SS2__ENABLE {0}  \
    CONFIG.PSU__SPI1__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__SPI1__PERIPHERAL__IO {MIO 6 .. 11}  \
    CONFIG.PSU__SPI1__GRP_SS0__ENABLE {1}  \
    CONFIG.PSU__SPI1__GRP_SS0__IO {MIO 9}  \
    CONFIG.PSU__SPI1__GRP_SS1__ENABLE {0}  \
    CONFIG.PSU__SPI1__GRP_SS2__ENABLE {0}  \
    CONFIG.PSU__UART0__BAUD_RATE {115200}  \
    CONFIG.PSU_SD0_INTERNAL_BUS_WIDTH {4}  \
    CONFIG.PSU__TTC0__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__TTC0__CLOCK__ENABLE {0}  \
    CONFIG.PSU__TTC0__WAVEOUT__ENABLE {0}  \
    CONFIG.PSU__UART1__BAUD_RATE {115200}  \
    CONFIG.PSU__TTC3__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__TTC3__CLOCK__ENABLE {0}  \
    CONFIG.PSU__TTC3__WAVEOUT__ENABLE {0}  \
    CONFIG.PSU__CSUPMU__PERIPHERAL__VALID {1}  \
    CONFIG.PSU__DDRC__AL {0}  \
    CONFIG.PSU__DDRC__BANK_ADDR_COUNT {3}  \
    CONFIG.PSU__DDRC__BUS_WIDTH {32 Bit}  \
    CONFIG.PSU__DDRC__CL {NA}  \
    CONFIG.PSU__DDRC__COL_ADDR_COUNT {10}  \
    CONFIG.PSU__DDRC__RANK_ADDR_COUNT {1}  \
    CONFIG.PSU__DDRC__CWL {NA}  \
    CONFIG.PSU__DDRC__BG_ADDR_COUNT {NA}  \
    CONFIG.PSU__DDRC__DEVICE_CAPACITY {8192 MBits}  \
    CONFIG.PSU__DDRC__DRAM_WIDTH {32 Bits}  \
    CONFIG.PSU__DDRC__ENABLE {1}  \
    CONFIG.PSU__DDRC__MEMORY_TYPE {LPDDR 4}  \
    CONFIG.PSU__DDRC__ROW_ADDR_COUNT {15}  \
    CONFIG.PSU__DDRC__SPEED_BIN {LPDDR4_1066}  \
    CONFIG.PSU__DDRC__T_FAW {40}  \
    CONFIG.PSU__DDRC__T_RAS_MIN {42}  \
    CONFIG.PSU__DDRC__T_RC {64}  \
    CONFIG.PSU__DDRC__T_RCD {10}  \
    CONFIG.PSU__DDRC__T_RP {12}  \
    CONFIG.PSU__DDRC__TRAIN_WRITE_LEVEL {1}  \
    CONFIG.PSU__DDRC__VREF {0}  \
    CONFIG.PSU__DDRC__DIMM_ADDR_MIRROR {NA}  \
    CONFIG.PSU__DDRC__DDR4_MAXPWR_SAVING_EN {NA}  \
    CONFIG.PSU__DDRC__DEEP_PWR_DOWN_EN {0}  \
    CONFIG.PSU__DDRC__DDR4_T_REF_MODE {NA}  \
    CONFIG.PSU__DDRC__DDR4_T_REF_RANGE {NA}  \
    CONFIG.PSU__DDRC__DM_DBI {DM_NO_DBI}  \
    CONFIG.PSU__DDRC__COMPONENTS {Components}  \
    CONFIG.PSU__DDRC__PARITY_ENABLE {NA}  \
    CONFIG.PSU__DDRC__DDR4_CAL_MODE_ENABLE {NA}  \
    CONFIG.PSU__DDRC__DDR4_CRC_CONTROL {NA}  \
    CONFIG.PSU__DDRC__FGRM {NA}  \
    CONFIG.PSU__DDRC__VENDOR_PART {OTHERS}  \
    CONFIG.PSU__DDRC__SB_TARGET {NA}  \
    CONFIG.PSU__DDRC__LP_ASR {NA}  \
    CONFIG.PSU__DDRC__DDR4_ADDR_MAPPING {NA}  \
    CONFIG.PSU__DDRC__SELF_REF_ABORT {NA}  \
    CONFIG.PSU__DDRC__ADDR_MIRROR {1}  \
    CONFIG.PSU__DDRC__ENABLE_DP_SWITCH {1}  \
    CONFIG.PSU__DDRC__ENABLE_LP4_SLOWBOOT {0}  \
    CONFIG.PSU__DDRC__ENABLE_LP4_HAS_ECC_COMP {0}  \
    CONFIG.PSU__DDRC__ENABLE_2T_TIMING {0}  \
    CONFIG.PSU__DDRC__DQMAP_0_3 {0}  \
    CONFIG.PSU__DDRC__DQMAP_4_7 {0}  \
    CONFIG.PSU__DDRC__DQMAP_8_11 {0}  \
    CONFIG.PSU__DDRC__DQMAP_12_15 {0}  \
    CONFIG.PSU__DDRC__DQMAP_16_19 {0}  \
    CONFIG.PSU__DDRC__DQMAP_20_23 {0}  \
    CONFIG.PSU__DDRC__DQMAP_24_27 {0}  \
    CONFIG.PSU__DDRC__DQMAP_28_31 {0}  \
    CONFIG.PSU__DDRC__DQMAP_32_35 {0}  \
    CONFIG.PSU__DDRC__DQMAP_36_39 {0}  \
    CONFIG.PSU__DDRC__DQMAP_40_43 {0}  \
    CONFIG.PSU__DDRC__DQMAP_44_47 {0}  \
    CONFIG.PSU__DDRC__DQMAP_48_51 {0}  \
    CONFIG.PSU__DDRC__DQMAP_52_55 {0}  \
    CONFIG.PSU__DDRC__DQMAP_56_59 {0}  \
    CONFIG.PSU__DDRC__DQMAP_60_63 {0}  \
    CONFIG.PSU__DDRC__DQMAP_64_67 {0}  \
    CONFIG.PSU__DDRC__DQMAP_68_71 {0}  \
    CONFIG.PSU_DDR_RAM_HIGHADDR {0x7FFFFFFF}  \
    CONFIG.PSU_DDR_RAM_HIGHADDR_OFFSET {0x00000002}  \
    CONFIG.PSU_DDR_RAM_LOWADDR_OFFSET {0x80000000}  \
    CONFIG.PSU__DDR_QOS_ENABLE {1}  \
    CONFIG.PSU__DDR_QOS_PORT0_TYPE {Low Latency}  \
    CONFIG.PSU__DDR_QOS_PORT1_VN1_TYPE {Low Latency}  \
    CONFIG.PSU__DDR_QOS_PORT1_VN2_TYPE {Best Effort}  \
    CONFIG.PSU__DDR_QOS_PORT2_VN1_TYPE {Low Latency}  \
    CONFIG.PSU__DDR_QOS_PORT2_VN2_TYPE {Best Effort}  \
    CONFIG.PSU__DDR_QOS_PORT3_TYPE {Video Traffic}  \
    CONFIG.PSU__DDR_QOS_PORT4_TYPE {Best Effort}  \
    CONFIG.PSU__DDR_QOS_PORT5_TYPE {Best Effort}  \
    CONFIG.PSU__DDR_QOS_RD_LPR_THRSHLD {16}  \
    CONFIG.PSU__DDR_QOS_RD_HPR_THRSHLD {0}  \
    CONFIG.PSU__DDR_QOS_WR_THRSHLD {16}  \
    CONFIG.PSU__DDR_QOS_HP0_RDQOS {7}  \
    CONFIG.PSU__DDR_QOS_HP0_WRQOS {15}  \
    CONFIG.PSU__DDR_QOS_HP1_RDQOS {3}  \
    CONFIG.PSU__DDR_QOS_HP1_WRQOS {3}  \
    CONFIG.PSU__DDR_QOS_HP2_RDQOS {3}  \
    CONFIG.PSU__DDR_QOS_HP2_WRQOS {3}  \
    CONFIG.PSU__DDR_QOS_HP3_RDQOS {3}  \
    CONFIG.PSU__DDR_QOS_HP3_WRQOS {3}  \
    CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 2 .. 3}  \
    CONFIG.PSU__UART0__MODEM__ENABLE {1}  \
    CONFIG.PSU__UART1__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__UART1__PERIPHERAL__IO {MIO 0 .. 1}  \
    CONFIG.PSU__UART1__MODEM__ENABLE {0}  \
    CONFIG.PSU__USB0__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__USB0__PERIPHERAL__IO {MIO 52 .. 63}  \
    CONFIG.PSU__USB1__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__USB1__PERIPHERAL__IO {MIO 64 .. 75}  \
    CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__USB3_0__PERIPHERAL__IO {GT Lane2}  \
    CONFIG.PSU__USB3_1__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__USB3_1__PERIPHERAL__IO {GT Lane3}  \
    CONFIG.PSU__USB3_0__EMIO__ENABLE {0}  \
    CONFIG.PSU__USB2_0__EMIO__ENABLE {0}  \
    CONFIG.PSU__USB3_1__EMIO__ENABLE {0}  \
    CONFIG.PSU__USB2_1__EMIO__ENABLE {0}  \
    CONFIG.PSU__USE__M_AXI_GP2 {1}  \
    CONFIG.PSU__MAXIGP2__DATA_WIDTH {32}  \
    CONFIG.PSU__USE__IRQ0 {1}  \
    CONFIG.PSU__DDR_HIGH_ADDRESS_GUI_ENABLE {0}  \
    CONFIG.PSU_MIO_0_INPUT_TYPE {schmitt}  \
    CONFIG.PSU_MIO_0_DIRECTION {out}  \
    CONFIG.PSU_MIO_1_DRIVE_STRENGTH {12}  \
    CONFIG.PSU_MIO_1_SLEW {slow}  \
    CONFIG.PSU_MIO_1_DIRECTION {in}  \
    CONFIG.PSU_MIO_2_DRIVE_STRENGTH {12}  \
    CONFIG.PSU_MIO_2_SLEW {slow}  \
    CONFIG.PSU_MIO_2_DIRECTION {in}  \
    CONFIG.PSU_MIO_3_INPUT_TYPE {schmitt}  \
    CONFIG.PSU_MIO_3_DIRECTION {out}  \
    CONFIG.PSU_MIO_4_DIRECTION {inout}  \
    CONFIG.PSU_MIO_5_DIRECTION {inout}  \
    CONFIG.PSU_MIO_6_DIRECTION {inout}  \
    CONFIG.PSU_MIO_7_DIRECTION {inout}  \
    CONFIG.PSU_MIO_8_DIRECTION {inout}  \
    CONFIG.PSU_MIO_9_DIRECTION {inout}  \
    CONFIG.PSU_MIO_10_DIRECTION {inout}  \
    CONFIG.PSU_MIO_11_DIRECTION {inout}  \
    CONFIG.PSU_MIO_12_DIRECTION {inout}  \
    CONFIG.PSU_MIO_13_DRIVE_STRENGTH {4}  \
    CONFIG.PSU_MIO_13_DIRECTION {inout}  \
    CONFIG.PSU_MIO_14_DRIVE_STRENGTH {4}  \
    CONFIG.PSU_MIO_14_DIRECTION {inout}  \
    CONFIG.PSU_MIO_15_DRIVE_STRENGTH {4}  \
    CONFIG.PSU_MIO_15_DIRECTION {inout}  \
    CONFIG.PSU_MIO_16_DRIVE_STRENGTH {4}  \
    CONFIG.PSU_MIO_16_DIRECTION {inout}  \
    CONFIG.PSU_MIO_17_DIRECTION {inout}  \
    CONFIG.PSU_MIO_18_DIRECTION {inout}  \
    CONFIG.PSU_MIO_19_DIRECTION {inout}  \
    CONFIG.PSU_MIO_20_DIRECTION {inout}  \
    CONFIG.PSU_MIO_21_DRIVE_STRENGTH {4}  \
    CONFIG.PSU_MIO_21_DIRECTION {inout}  \
    CONFIG.PSU_MIO_22_DRIVE_STRENGTH {4}  \
    CONFIG.PSU_MIO_22_INPUT_TYPE {schmitt}  \
    CONFIG.PSU_MIO_22_DIRECTION {out}  \
    CONFIG.PSU_MIO_23_DIRECTION {inout}  \
    CONFIG.PSU_MIO_24_DRIVE_STRENGTH {12}  \
    CONFIG.PSU_MIO_24_SLEW {slow}  \
    CONFIG.PSU_MIO_24_DIRECTION {in}  \
    CONFIG.PSU_MIO_25_DIRECTION {inout}  \
    CONFIG.PSU_MIO_26_DRIVE_STRENGTH {12}  \
    CONFIG.PSU_MIO_26_SLEW {slow}  \
    CONFIG.PSU_MIO_26_DIRECTION {in}  \
    CONFIG.PSU_MIO_27_INPUT_TYPE {schmitt}  \
    CONFIG.PSU_MIO_27_DIRECTION {out}  \
    CONFIG.PSU_MIO_28_DRIVE_STRENGTH {12}  \
    CONFIG.PSU_MIO_28_SLEW {slow}  \
    CONFIG.PSU_MIO_28_DIRECTION {in}  \
    CONFIG.PSU_MIO_29_INPUT_TYPE {schmitt}  \
    CONFIG.PSU_MIO_29_DIRECTION {out}  \
    CONFIG.PSU_MIO_30_DRIVE_STRENGTH {12}  \
    CONFIG.PSU_MIO_30_SLEW {slow}  \
    CONFIG.PSU_MIO_30_DIRECTION {in}  \
    CONFIG.PSU_MIO_31_DIRECTION {inout}  \
    CONFIG.PSU_MIO_32_INPUT_TYPE {schmitt}  \
    CONFIG.PSU_MIO_32_DIRECTION {out}  \
    CONFIG.PSU_MIO_33_INPUT_TYPE {schmitt}  \
    CONFIG.PSU_MIO_33_DIRECTION {out}  \
    CONFIG.PSU_MIO_34_INPUT_TYPE {schmitt}  \
    CONFIG.PSU_MIO_34_DIRECTION {out}  \
    CONFIG.PSU_MIO_35_DIRECTION {inout}  \
    CONFIG.PSU_MIO_36_DIRECTION {inout}  \
    CONFIG.PSU_MIO_37_DIRECTION {inout}  \
    CONFIG.PSU_MIO_38_DIRECTION {inout}  \
    CONFIG.PSU_MIO_39_DIRECTION {inout}  \
    CONFIG.PSU_MIO_40_DIRECTION {inout}  \
    CONFIG.PSU_MIO_41_DIRECTION {inout}  \
    CONFIG.PSU_MIO_42_DIRECTION {inout}  \
    CONFIG.PSU_MIO_43_DIRECTION {inout}  \
    CONFIG.PSU_MIO_44_DIRECTION {inout}  \
    CONFIG.PSU_MIO_45_DIRECTION {inout}  \
    CONFIG.PSU_MIO_46_DIRECTION {inout}  \
    CONFIG.PSU_MIO_47_DIRECTION {inout}  \
    CONFIG.PSU_MIO_48_DIRECTION {inout}  \
    CONFIG.PSU_MIO_49_DIRECTION {inout}  \
    CONFIG.PSU_MIO_50_DIRECTION {inout}  \
    CONFIG.PSU_MIO_51_INPUT_TYPE {schmitt}  \
    CONFIG.PSU_MIO_51_DIRECTION {out}  \
    CONFIG.PSU_MIO_52_DRIVE_STRENGTH {12}  \
    CONFIG.PSU_MIO_52_SLEW {slow}  \
    CONFIG.PSU_MIO_52_DIRECTION {in}  \
    CONFIG.PSU_MIO_53_DRIVE_STRENGTH {12}  \
    CONFIG.PSU_MIO_53_SLEW {slow}  \
    CONFIG.PSU_MIO_53_DIRECTION {in}  \
    CONFIG.PSU_MIO_54_DIRECTION {inout}  \
    CONFIG.PSU_MIO_55_DRIVE_STRENGTH {12}  \
    CONFIG.PSU_MIO_55_SLEW {slow}  \
    CONFIG.PSU_MIO_55_DIRECTION {in}  \
    CONFIG.PSU_MIO_56_DIRECTION {inout}  \
    CONFIG.PSU_MIO_57_DIRECTION {inout}  \
    CONFIG.PSU_MIO_58_INPUT_TYPE {schmitt}  \
    CONFIG.PSU_MIO_58_DIRECTION {out}  \
    CONFIG.PSU_MIO_59_DIRECTION {inout}  \
    CONFIG.PSU_MIO_60_DIRECTION {inout}  \
    CONFIG.PSU_MIO_61_DIRECTION {inout}  \
    CONFIG.PSU_MIO_62_DIRECTION {inout}  \
    CONFIG.PSU_MIO_63_DIRECTION {inout}  \
    CONFIG.PSU_MIO_64_DRIVE_STRENGTH {12}  \
    CONFIG.PSU_MIO_64_SLEW {slow}  \
    CONFIG.PSU_MIO_64_DIRECTION {in}  \
    CONFIG.PSU_MIO_65_DRIVE_STRENGTH {12}  \
    CONFIG.PSU_MIO_65_SLEW {slow}  \
    CONFIG.PSU_MIO_65_DIRECTION {in}  \
    CONFIG.PSU_MIO_66_DIRECTION {inout}  \
    CONFIG.PSU_MIO_67_DRIVE_STRENGTH {12}  \
    CONFIG.PSU_MIO_67_SLEW {slow}  \
    CONFIG.PSU_MIO_67_DIRECTION {in}  \
    CONFIG.PSU_MIO_68_DIRECTION {inout}  \
    CONFIG.PSU_MIO_69_DIRECTION {inout}  \
    CONFIG.PSU_MIO_70_INPUT_TYPE {schmitt}  \
    CONFIG.PSU_MIO_70_DIRECTION {out}  \
    CONFIG.PSU_MIO_71_DIRECTION {inout}  \
    CONFIG.PSU_MIO_72_DIRECTION {inout}  \
    CONFIG.PSU_MIO_73_DIRECTION {inout}  \
    CONFIG.PSU_MIO_74_DIRECTION {inout}  \
    CONFIG.PSU_MIO_75_DIRECTION {inout}  \
    CONFIG.PSU_MIO_76_DIRECTION {inout}  \
    CONFIG.PSU_MIO_77_DIRECTION {inout}  \
    CONFIG.PSU_BANK_0_IO_STANDARD {LVCMOS18}  \
    CONFIG.PSU_BANK_1_IO_STANDARD {LVCMOS18}  \
    CONFIG.PSU_BANK_2_IO_STANDARD {LVCMOS18}  \
    CONFIG.PSU_BANK_3_IO_STANDARD {LVCMOS18}  \
    CONFIG.PSU__CRF_APB__APLL_CTRL__FRACDATA {0.000000}  \
    CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACDATA {0.000092}  \
    CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACDATA {0.000000}  \
    CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACDATA {0.000000}  \
    CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACDATA {0.000092}  \
    CONFIG.PSU__CRF_APB__DPLL_CTRL__DIV2 {1}  \
    CONFIG.PSU__CRF_APB__APLL_CTRL__DIV2 {1}  \
    CONFIG.PSU__CRF_APB__VPLL_CTRL__DIV2 {1}  \
    CONFIG.PSU__CRL_APB__IOPLL_CTRL__DIV2 {1}  \
    CONFIG.PSU__CRL_APB__RPLL_CTRL__DIV2 {1}  \
    CONFIG.PSU__CRF_APB__APLL_CTRL__FBDIV {72}  \
    CONFIG.PSU__CRF_APB__DPLL_CTRL__FBDIV {63}  \
    CONFIG.PSU__CRF_APB__VPLL_CTRL__FBDIV {90}  \
    CONFIG.PSU__CRF_APB__APLL_TO_LPD_CTRL__DIVISOR0 {3}  \
    CONFIG.PSU__CRF_APB__DPLL_TO_LPD_CTRL__DIVISOR0 {2}  \
    CONFIG.PSU__CRF_APB__VPLL_TO_LPD_CTRL__DIVISOR0 {3}  \
    CONFIG.PSU__CRF_APB__ACPU_CTRL__DIVISOR0 {1}  \
    CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__DIVISOR0 {5}  \
    CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE {1}  \
    CONFIG.PSU__DISPLAYPORT__LANE0__ENABLE {1}  \
    CONFIG.PSU__DISPLAYPORT__LANE0__IO {GT Lane1}  \
    CONFIG.PSU__DISPLAYPORT__LANE1__ENABLE {1}  \
    CONFIG.PSU__DISPLAYPORT__LANE1__IO {GT Lane0}  \
    CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__DIVISOR0 {2}  \
    CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR0 {5}  \
    CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR0 {20}  \
    CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR0 {19}  \
    CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRF_APB__DDR_CTRL__DIVISOR0 {4}  \
    CONFIG.PSU__CRF_APB__GPU_REF_CTRL__DIVISOR0 {1}  \
    CONFIG.PSU__CRF_APB__SATA_REF_CTRL__DIVISOR0 {5}  \
    CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__DIVISOR0 {6}  \
    CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR0 {15}  \
    CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR0 {4}  \
    CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR0 {4}  \
    CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR0 {4}  \
    CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR0 {30}  \
    CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__DIVISOR0 {15}  \
    CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__DIVISOR0 {3}  \
    CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR0 {25}  \
    CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR1 {3}  \
    CONFIG.PSU__CRL_APB__USB3__ENABLE {1}  \
    CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__DIVISOR0 {2}  \
    CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__DIVISOR0 {2}  \
    CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__DIVISOR0 {2}  \
    CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__DIVISOR0 {5}  \
    CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__DIVISOR0 {2}  \
    CONFIG.PSU__CRL_APB__IOPLL_CTRL__FBDIV {90}  \
    CONFIG.PSU__CRL_APB__RPLL_CTRL__FBDIV {90}  \
    CONFIG.PSU__CRL_APB__IOPLL_TO_FPD_CTRL__DIVISOR0 {3}  \
    CONFIG.PSU__CRL_APB__RPLL_TO_FPD_CTRL__DIVISOR0 {3}  \
    CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR0 {12}  \
    CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR0 {12}  \
    CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR0 {12}  \
    CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR0 {12}  \
    CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR0 {4}  \
    CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR0 {6}  \
    CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR0 {6}  \
    CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR0 {5}  \
    CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR0 {8}  \
    CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR0 {8}  \
    CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR0 {15}  \
    CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR0 {15}  \
    CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR0 {15}  \
    CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR0 {15}  \
    CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR0 {8}  \
    CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR0 {8}  \
    CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR0 {15}  \
    CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR0 {15}  \
    CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__CPU_R5_CTRL__DIVISOR0 {3}  \
    CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__DIVISOR0 {6}  \
    CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__DIVISOR0 {4}  \
    CONFIG.PSU__CRL_APB__PCAP_CTRL__DIVISOR0 {8}  \
    CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__DIVISOR0 {15}  \
    CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__DIVISOR0 {3}  \
    CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__DIVISOR0 {6}  \
    CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR0 {15}  \
    CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR1 {1}  \
    CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__DIVISOR0 {3}  \
    CONFIG.PSU__CRF_APB__APLL_CTRL__SRCSEL {PSS_REF_CLK}  \
    CONFIG.PSU__CRF_APB__DPLL_CTRL__SRCSEL {PSS_REF_CLK}  \
    CONFIG.PSU__CRF_APB__VPLL_CTRL__SRCSEL {PSS_REF_CLK}  \
    CONFIG.PSU__CRF_APB__ACPU_CTRL__SRCSEL {APLL}  \
    CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__SRCSEL {VPLL}  \
    CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__SRCSEL {RPLL}  \
    CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__SRCSEL {RPLL}  \
    CONFIG.PSU__CRF_APB__DDR_CTRL__SRCSEL {DPLL}  \
    CONFIG.PSU__CRF_APB__GPU_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRF_APB__SATA_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__PL1_REF_CTRL__SRCSEL {RPLL}  \
    CONFIG.PSU__CRL_APB__PL2_REF_CTRL__SRCSEL {RPLL}  \
    CONFIG.PSU__CRL_APB__PL3_REF_CTRL__SRCSEL {RPLL}  \
    CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__SRCSEL {APLL}  \
    CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__SRCSEL {APLL}  \
    CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__SRCSEL {DPLL}  \
    CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__IOPLL_CTRL__SRCSEL {PSS_REF_CLK}  \
    CONFIG.PSU__CRL_APB__RPLL_CTRL__SRCSEL {PSS_REF_CLK}  \
    CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__UART0_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__UART1_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__CPU_R5_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__PCAP_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__NAND_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__AMS_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__SRCSEL {IOPLL}  \
    CONFIG.PSU__CRF_APB__APLL_FRAC_CFG__ENABLED {0}  \
    CONFIG.PSU__CRF_APB__VPLL_FRAC_CFG__ENABLED {1}  \
    CONFIG.PSU__CRF_APB__DPLL_FRAC_CFG__ENABLED {0}  \
    CONFIG.PSU__CRL_APB__IOPLL_FRAC_CFG__ENABLED {0}  \
    CONFIG.PSU__CRL_APB__RPLL_FRAC_CFG__ENABLED {1}  \
    CONFIG.PSU__CRF_APB__DP_VIDEO__FRAC_ENABLED {1}  \
    CONFIG.PSU__CRF_APB__DP_AUDIO__FRAC_ENABLED {1}  \
    CONFIG.PSU__OVERRIDE__BASIC_CLOCK {0}  \
    CONFIG.PSU__DLL__ISUSED {1}  \
    CONFIG.PSU__PL_CLK0_BUF {TRUE}  \
    CONFIG.PSU__PL_CLK1_BUF {FALSE}  \
    CONFIG.PSU__PL_CLK2_BUF {FALSE}  \
    CONFIG.PSU__PL_CLK3_BUF {FALSE}  \
    CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACFREQ {300}  \
    CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACFREQ {25}  \
    CONFIG.PSU__IOU_SLCR__TTC0__ACT_FREQMHZ {100.000000}  \
    CONFIG.PSU__IOU_SLCR__TTC3__ACT_FREQMHZ {100.000000}  \
    CONFIG.PSU__LPD_SLCR__CSUPMU__ACT_FREQMHZ {100.000000}  \
    CONFIG.PSU__CRF_APB__ACPU_CTRL__ACT_FREQMHZ {1199.998800}  \
    CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__ACT_FREQMHZ {249.999750}  \
    CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__ACT_FREQMHZ {300.000000}  \
    CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__ACT_FREQMHZ {25.000000}  \
    CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__ACT_FREQMHZ {26.315790}  \
    CONFIG.PSU__CRF_APB__DDR_CTRL__ACT_FREQMHZ {262.499737}  \
    CONFIG.PSU__DDR__INTERFACE__FREQMHZ {266.500}  \
    CONFIG.PSU__CRF_APB__GPU_REF_CTRL__ACT_FREQMHZ {499.999500}  \
    CONFIG.PSU__CRL_APB__PL0_REF_CTRL__ACT_FREQMHZ {99.999900}  \
    CONFIG.PSU__CRL_APB__PL1_REF_CTRL__ACT_FREQMHZ {24.999975}  \
    CONFIG.PSU__CRL_APB__PL2_REF_CTRL__ACT_FREQMHZ {299.999700}  \
    CONFIG.PSU__CRL_APB__PL3_REF_CTRL__ACT_FREQMHZ {374.999625}  \
    CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__ACT_FREQMHZ {599.999400}  \
    CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__ACT_FREQMHZ {599.999400}  \
    CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__ACT_FREQMHZ {524.999475}  \
    CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__ACT_FREQMHZ {99.999900}  \
    CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__ACT_FREQMHZ {249.999750}  \
    CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__ACT_FREQMHZ {249.999750}  \
    CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__ACT_FREQMHZ {249.999750}  \
    CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__ACT_FREQMHZ {187.499812}  \
    CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__ACT_FREQMHZ {187.499812}  \
    CONFIG.PSU__CRL_APB__UART0_REF_CTRL__ACT_FREQMHZ {99.999900}  \
    CONFIG.PSU__CRL_APB__UART1_REF_CTRL__ACT_FREQMHZ {99.999900}  \
    CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__ACT_FREQMHZ {99.999900}  \
    CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__ACT_FREQMHZ {187.499812}  \
    CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__ACT_FREQMHZ {187.499812}  \
    CONFIG.PSU__CRL_APB__CPU_R5_CTRL__ACT_FREQMHZ {499.999500}  \
    CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__ACT_FREQMHZ {249.999750}  \
    CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__ACT_FREQMHZ {500}  \
    CONFIG.PSU__CRL_APB__PCAP_CTRL__ACT_FREQMHZ {187.499812}  \
    CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__ACT_FREQMHZ {99.999900}  \
    CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__ACT_FREQMHZ {499.999500}  \
    CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__ACT_FREQMHZ {249.999750}  \
    CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__ACT_FREQMHZ {499.999500}  \
    CONFIG.PSU__CRL_APB__DLL_REF_CTRL__ACT_FREQMHZ {1499.998500}  \
    CONFIG.PSU__CRL_APB__AMS_REF_CTRL__ACT_FREQMHZ {49.999950}  \
    CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__ACT_FREQMHZ {99.999900}  \
    CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__ACT_FREQMHZ {19.999980}  \
    CONFIG.PSU__CRF_APB__DDR_CTRL__FREQMHZ {533}  \
    CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ {100}  \
    CONFIG.PSU__CRL_APB__PL2_REF_CTRL__FREQMHZ {100}  \
    CONFIG.PSU__CRL_APB__PL3_REF_CTRL__FREQMHZ {100}  \
    CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__FREQMHZ {400}  \
    CONFIG.PSU__IOU_SLCR__TTC0__FREQMHZ {100.000000}  \
    CONFIG.PSU__IOU_SLCR__TTC3__FREQMHZ {100.000000}  \
    CONFIG.PSU__LPD_SLCR__CSUPMU__FREQMHZ {100.000000}  \
    CONFIG.PSU__GEN_IPI__TRUSTZONE {<Select>}  \
    CONFIG.PSU__GPIO_EMIO_WIDTH {95}  \
    CONFIG.PSU__PMU_COHERENCY {0}  \
    CONFIG.PSU__USB0_COHERENCY {0}  \
    CONFIG.PSU__USB1_COHERENCY {0}  \
    CONFIG.PSU__SD0_COHERENCY {0}  \
    CONFIG.PSU__SD1_COHERENCY {0}  \
    CONFIG.PSU__QSPI_COHERENCY {0}  \
    CONFIG.PSU_SD1_INTERNAL_BUS_WIDTH {4}  \
  ]
}


