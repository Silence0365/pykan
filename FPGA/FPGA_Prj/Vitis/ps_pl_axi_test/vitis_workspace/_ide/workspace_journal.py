# 2026-02-03T21:11:50.487808100
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.get_component(name="AXI_platform")
status = platform.build()

comp = client.get_component(name="AXI_Test")
comp.build()

vitis.dispose()

