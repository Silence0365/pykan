# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "D:\\FPGA_Prj\\ps_pl_axi_test\\vitis_workspace\\AXI_platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\diskio.h"
  "D:\\FPGA_Prj\\ps_pl_axi_test\\vitis_workspace\\AXI_platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ff.h"
  "D:\\FPGA_Prj\\ps_pl_axi_test\\vitis_workspace\\AXI_platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ffconf.h"
  "D:\\FPGA_Prj\\ps_pl_axi_test\\vitis_workspace\\AXI_platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\sleep.h"
  "D:\\FPGA_Prj\\ps_pl_axi_test\\vitis_workspace\\AXI_platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs.h"
  "D:\\FPGA_Prj\\ps_pl_axi_test\\vitis_workspace\\AXI_platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs_config.h"
  "D:\\FPGA_Prj\\ps_pl_axi_test\\vitis_workspace\\AXI_platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilrsa.h"
  "D:\\FPGA_Prj\\ps_pl_axi_test\\vitis_workspace\\AXI_platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xiltimer.h"
  "D:\\FPGA_Prj\\ps_pl_axi_test\\vitis_workspace\\AXI_platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xtimer_config.h"
  "D:\\FPGA_Prj\\ps_pl_axi_test\\vitis_workspace\\AXI_platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilffs.a"
  "D:\\FPGA_Prj\\ps_pl_axi_test\\vitis_workspace\\AXI_platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilrsa.a"
  "D:\\FPGA_Prj\\ps_pl_axi_test\\vitis_workspace\\AXI_platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxiltimer.a"
  )
endif()
