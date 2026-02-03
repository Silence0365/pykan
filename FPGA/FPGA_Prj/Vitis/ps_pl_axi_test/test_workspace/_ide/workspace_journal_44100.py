# 2026-02-03T18:39:09.996824200
import vitis

client = vitis.create_client()
client.set_workspace(path="test_workspace")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp = client.create_app_component(name="Verlet_NVE_CPU",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="Verlet_NVE_CPU")
status = comp.import_files(from_loc="", files=["D:\FPGA_Prj\ps_pl_axi_test\test_workspace\app_component\Verlet_NVE_CPU"], is_skip_copy_sources = False)

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

