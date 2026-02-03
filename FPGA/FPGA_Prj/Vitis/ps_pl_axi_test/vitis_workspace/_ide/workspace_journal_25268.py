# 2026-02-01T02:00:17.556050100
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.create_platform_component(name = "AXI_Platform",hw_design = "$COMPONENT_LOCATION/../../ps_pl_axi_test/ps_pl_axi_test_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

platform = client.get_component(name="AXI_Platform")
status = platform.build()

comp = client.create_app_component(name="AXI_Test",platform = "$COMPONENT_LOCATION/../AXI_Platform/export/AXI_Platform/AXI_Platform.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="AXI_Test")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

