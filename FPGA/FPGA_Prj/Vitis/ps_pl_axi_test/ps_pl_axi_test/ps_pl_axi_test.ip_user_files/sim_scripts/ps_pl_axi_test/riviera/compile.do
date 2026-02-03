transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_22
vlib riviera/processing_system7_vip_v1_0_24
vlib riviera/xil_defaultlib
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_36

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_22 riviera/axi_vip_v1_1_22
vmap processing_system7_vip_v1_0_24 riviera/processing_system7_vip_v1_0_24
vmap xil_defaultlib riviera/xil_defaultlib
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_36 riviera/axi_register_slice_v2_1_36

vlog -work xilinx_vip  -incr "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"E:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"E:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_24  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_processing_system7_0_0/sim/ps_pl_axi_test_processing_system7_0_0.v" \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/1293/hdl/PS_PL_AXI_slave_lite_v1_0_S00_AXI.v" \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/1293/hdl/PS_PL_AXI.v" \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_PS_PL_AXI_0_0/sim/ps_pl_axi_test_PS_PL_AXI_0_0.v" \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/sim/bd_6b75.v" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/ip/ip_1/sim/bd_6b75_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/ip/ip_2/sim/bd_6b75_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/ip/ip_3/sim/bd_6b75_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/ip/ip_4/sim/bd_6b75_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/ip/ip_5/sim/bd_6b75_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/ip/ip_6/sim/bd_6b75_sarn_0.sv" \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/ip/ip_7/sim/bd_6b75_srn_0.sv" \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/ip/ip_8/sim/bd_6b75_sawn_0.sv" \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/ip/ip_9/sim/bd_6b75_swn_0.sv" \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/ip/ip_10/sim/bd_6b75_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/ip/ip_11/sim/bd_6b75_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/bd_0/ip/ip_12/sim/bd_6b75_m00e_0.sv" \

vcom -work smartconnect_v1_0 -93  -incr \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_36  -incr -v2k5 "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_axi_smc_0/sim/ps_pl_axi_test_axi_smc_0.sv" \

vcom -work xil_defaultlib -93  -incr \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ip/ps_pl_axi_test_rst_ps7_0_50M_0/sim/ps_pl_axi_test_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/9a25/hdl" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/ipshared/00fe/hdl/verilog" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+E:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 \
"../../../../ps_pl_axi_test.gen/sources_1/bd/ps_pl_axi_test/sim/ps_pl_axi_test.v" \

vlog -work xil_defaultlib \
"glbl.v"

