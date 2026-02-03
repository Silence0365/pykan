# 2026-02-03T19:25:29.333525400
import vitis

client = vitis.create_client()
client.set_workspace(path="test_workspace")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../ps_pl_axi_test/ps_pl_axi_test_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["../Tools/src/Ringbuffer.c", "../Tools/src/Uart.c", "../Tools/src/Timer_Count.c", "../Model/src/Descriptor_Builder.c", "../Model/src/Desc_Differentialer.c", "../Model/src/Force_Broadcast.c", "../Model/src/KANLayer_Forward.c", "../Model/src/Piecewise_Poly.c", "../Model/src/Quantizer.c", "../Table/src/Coeff_Table.c", "../Table/src/Grid_Table.c", "../main.c"])

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["D:\FPGA_Prj\ps_pl_axi_test\test_workspace\Verlet_NVE_CPU\src\lscript.ld"])

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["D:\FPGA_Prj\ps_pl_axi_test\test_workspace\Verlet_NVE_CPU\src\lscript.ld"])

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["D:\FPGA_Prj\ps_pl_axi_test\test_workspace\Verlet_NVE_CPU\src\lscript.ld"])

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["D:\FPGA_Prj\ps_pl_axi_test\test_workspace\Verlet_NVE_CPU\src\lscript.ld"])

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["D:\FPGA_Prj\ps_pl_axi_test\test_workspace\Verlet_NVE_CPU\src\lscript.ld"])

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["D:\FPGA_Prj\ps_pl_axi_test\test_workspace\Verlet_NVE_CPU\src\lscript.ld"])

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.set_app_config(key = "USER_LINK_NO_START_FILES", values = ["-nostartfiles"])

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.set_app_config(key = "USER_LINK_NO_DEFAULT_LIBS", values = ["-nodefaultlibs"])

comp.set_app_config(key = "USER_LINK_NO_STDLIB", values = ["-nostdlib"])

comp.set_app_config(key = "USER_LINK_OMIT_ALL_SYMBOL_INFO", values = ["-s"])

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.set_app_config(key = "USER_LINK_OMIT_ALL_SYMBOL_INFO", values = [""])

comp.set_app_config(key = "USER_LINK_NO_STDLIB", values = [""])

comp.set_app_config(key = "USER_LINK_NO_START_FILES", values = [""])

comp.set_app_config(key = "USER_LINK_NO_DEFAULT_LIBS", values = [""])

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["${CMAKE_SOURCE_DIR}/lscript.ld"])

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["${CMAKE_SOURCE_DIR}/lscript.ld"])

status = platform.build()

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["${CMAKE_SOURCE_DIR}/lscript.ld"])

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["${CMAKE_SOURCE_DIR}/lscript.ld"])

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["${CMAKE_SOURCE_DIR}/lscript.ld"])

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="Verlet_NVE_CPU")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

comp = client.create_app_component(name="Verlet_NVE_CPU",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="Verlet_NVE_CPU")
status = comp.import_files(from_loc="", files=["C:\Users\Silence\Desktop\Verlet_NVE_CPU\Model", "C:\Users\Silence\Desktop\Verlet_NVE_CPU\Table", "C:\Users\Silence\Desktop\Verlet_NVE_CPU\Tools", "C:\Users\Silence\Desktop\Verlet_NVE_CPU\main.c"], is_skip_copy_sources = False)

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="app_component")

status = platform.build()

comp.build()

