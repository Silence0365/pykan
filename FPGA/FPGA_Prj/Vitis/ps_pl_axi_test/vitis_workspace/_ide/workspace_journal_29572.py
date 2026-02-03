# 2026-02-01T10:58:29.344564300
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.get_component(name="AXI_platform")
status = platform.build()

comp = client.get_component(name="AXI_Test")
comp.build()

status = platform.build()

comp.build()

comp = client.create_app_component(name="Verlet_NVE_CPU",platform = "$COMPONENT_LOCATION/../AXI_platform/export/AXI_platform/AXI_platform.xpfm",domain = "standalone_ps7_cortexa9_0")

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

status = platform.build()

comp = client.get_component(name="AXI_Test")
comp.build()

status = platform.build()

comp = client.get_component(name="Verlet_NVE_CPU")
comp.build()

vitis.dispose()

