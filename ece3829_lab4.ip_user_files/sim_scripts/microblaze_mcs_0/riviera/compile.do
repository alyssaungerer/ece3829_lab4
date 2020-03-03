vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v11_0_1
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_16
vlib riviera/blk_mem_gen_v8_4_3
vlib riviera/iomodule_v3_1_4

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v11_0_1 riviera/microblaze_v11_0_1
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_16 riviera/lmb_bram_if_cntlr_v4_0_16
vmap blk_mem_gen_v8_4_3 riviera/blk_mem_gen_v8_4_3
vmap iomodule_v3_1_4 riviera/iomodule_v3_1_4

vlog -work xil_defaultlib  -sv2k12 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_1 -93 \
"../../../ipstatic/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../ece3829_lab4.srcs/sources_1/ip/microblaze_mcs_0/bd_0/ip/ip_0/sim/bd_fc5c_0_microblaze_I_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../ipstatic/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../ece3829_lab4.srcs/sources_1/ip/microblaze_mcs_0/bd_0/ip/ip_1/sim/bd_fc5c_0_rst_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../ipstatic/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../ece3829_lab4.srcs/sources_1/ip/microblaze_mcs_0/bd_0/ip/ip_2/sim/bd_fc5c_0_ilmb_0.vhd" \
"../../../../ece3829_lab4.srcs/sources_1/ip/microblaze_mcs_0/bd_0/ip/ip_3/sim/bd_fc5c_0_dlmb_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_16 -93 \
"../../../ipstatic/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../ece3829_lab4.srcs/sources_1/ip/microblaze_mcs_0/bd_0/ip/ip_4/sim/bd_fc5c_0_dlmb_cntlr_0.vhd" \
"../../../../ece3829_lab4.srcs/sources_1/ip/microblaze_mcs_0/bd_0/ip/ip_5/sim/bd_fc5c_0_ilmb_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_3  -v2k5 \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../ece3829_lab4.srcs/sources_1/ip/microblaze_mcs_0/bd_0/ip/ip_6/sim/bd_fc5c_0_lmb_bram_I_0.v" \

vcom -work iomodule_v3_1_4 -93 \
"../../../ipstatic/hdl/iomodule_v3_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../ece3829_lab4.srcs/sources_1/ip/microblaze_mcs_0/bd_0/ip/ip_7/sim/bd_fc5c_0_iomodule_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../ece3829_lab4.srcs/sources_1/ip/microblaze_mcs_0/bd_0/sim/bd_fc5c_0.v" \
"../../../../ece3829_lab4.srcs/sources_1/ip/microblaze_mcs_0/sim/microblaze_mcs_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
