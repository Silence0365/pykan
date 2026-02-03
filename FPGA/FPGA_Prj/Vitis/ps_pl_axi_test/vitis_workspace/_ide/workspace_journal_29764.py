# 2026-02-01T02:46:03.047885600
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.get_component(name="AXI_Platform")
status = platform.build()

comp = client.get_component(name="AXI_Test")
comp.build()

status = platform.build()

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

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ps_pl_axi_test/ps_pl_axi_test_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_desc(desc="")

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ps_pl_axi_test/ps_pl_axi_test_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="AXI_Platform")

client.delete_component(name="AXI_Platform")

platform = client.create_platform_component(name = "AXI_Platform",hw_design = "$COMPONENT_LOCATION/../../ps_pl_axi_test/ps_pl_axi_test_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ps_pl_axi_test/ps_pl_axi_test_wrapper.xsa")

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ps_pl_axi_test/ps_pl_axi_test_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="AXI_Platform")

platform = client.create_platform_component(name = "AXI_platform",hw_design = "$COMPONENT_LOCATION/../../ps_pl_axi_test/ps_pl_axi_test_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",no_boot_bsp = True,compiler = "gcc")

platform = client.get_component(name="AXI_platform")
status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.generate_boot_bsp(target_processor="")

status = platform.build()

comp.build()

vitis.dispose()

