# 2026-02-03T18:59:57.895811300
import vitis

client = vitis.create_client()
client.set_workspace(path="test_workspace")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

client.delete_component(name="Verlet_NVE_CPU")

client.delete_component(name="componentName")

comp = client.create_app_component(name="Verlet_NVE_CPU",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp.build()

client.delete_component(name="Verlet_NVE_CPU")

comp = client.create_app_component(name="Verlet_NVE_CPU",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

client.delete_component(name="Verlet_NVE_CPU")

comp = client.create_app_component(name="Verlet_NVE_CPU",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="Verlet_NVE_CPU")
status = comp.import_files(from_loc="", files=["D:\FPGA_Prj\ps_pl_axi_test\vitis_workspace\Verlet_NVE_CPU\src\Model", "D:\FPGA_Prj\ps_pl_axi_test\vitis_workspace\Verlet_NVE_CPU\src\Table", "D:\FPGA_Prj\ps_pl_axi_test\vitis_workspace\AXI_Test\UART", "D:\FPGA_Prj\ps_pl_axi_test\vitis_workspace\Verlet_NVE_CPU\src\main.c"], is_skip_copy_sources = False)

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp.build()

