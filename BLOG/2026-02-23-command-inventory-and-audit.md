# Command Inventory and Audit Method

## Source-Backed Facts

- Valve Developer publishes a CS2 command list that is generated from game binaries.
- Valve Developer also notes that command availability can differ and may require validation.
- `fps_max` is documented as the framerate cap command.
- `cl_showfps` is documented as an FPS overlay command.

## Repository Inventory (2026-02-23)

The current repo profiles use the following commands:

- `fps_max`, `fps_max_ui`
- `r_low_latency`, `engine_low_latency_sleep_after_client_tick`
- `mm_dedicated_search_maxping`, `rate`
- `cl_hud_telemetry_frametime_show`, `cl_hud_telemetry_ping_show`, `cl_hud_telemetry_net_misdelivery_show`
- `cl_showfps`, `cl_autohelp`
- `viewmodel_fov`, `viewmodel_offset_x`, `viewmodel_offset_y`, `viewmodel_offset_z`
- `host_writeconfig`
- `bind` (keybind template)

## Inference for This Repo

- Inference: The fastest way to keep configs current is to regenerate the local inventory and compare it to Valve docs after every notable update.
- Inference: Commands with no dedicated wiki page should stay under stricter review and in-game testing.

## Local Tool

- `TOOLS/command_inventory.ps1`
- `TOOLS/update-command-inventory.ps1`
- Current snapshot: [`CHECKLISTS/current-command-inventory.md`](../CHECKLISTS/current-command-inventory.md)

## References

- [CS2 command list (Valve Developer)](https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables)
- [fps_max (Valve Developer)](https://developer.valvesoftware.com/wiki/Fps_max)
- [cl_showfps (Valve Developer)](https://developer.valvesoftware.com/wiki/Cl_showfps)
