# 2026-02-01T03:58:49.039543600
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.get_component(name="AXI_platform")
status = platform.build()

comp = client.get_component(name="AXI_Test")
comp.build()

comp = client.create_app_component(name="AXI_1",platform = "$COMPONENT_LOCATION/../AXI_platform/export/AXI_platform/AXI_platform.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="AXI_1")
status = comp.import_files(from_loc="", files=["D:\FPGA_Prj\ps_pl_axi_test\vitis_workspace\AXI_Test\src", "D:\FPGA_Prj\ps_pl_axi_test\vitis_workspace\AXI_Test\UART"], is_skip_copy_sources = False)

status = platform.build()

comp = client.get_component(name="AXI_1")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

