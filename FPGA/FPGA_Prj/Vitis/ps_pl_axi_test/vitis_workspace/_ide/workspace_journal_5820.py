# 2026-02-01T04:01:58.772780800
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

client.delete_component(name="AXI_1")

client.delete_component(name="componentName")

comp = client.create_app_component(name="AXI",platform = "$COMPONENT_LOCATION/../AXI_platform/export/AXI_platform/AXI_platform.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="AXI_platform")
status = platform.build()

comp = client.get_component(name="AXI")
comp.build()

status = platform.build()

comp.build()

client.delete_component(name="AXI")

client.delete_component(name="AXI")

comp = client.create_app_component(name="app_component",platform = "$COMPONENT_LOCATION/../AXI_platform/export/AXI_platform/AXI_platform.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="app_component")

status = platform.build()

comp = client.get_component(name="AXI_Test")
comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

