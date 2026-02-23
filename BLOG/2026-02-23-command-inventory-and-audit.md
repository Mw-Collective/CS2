# Command Inventory and Audit Method

## Source-Backed Facts

- Valve Developer publishes a CS2 command list generated from game binaries.
- Valve Developer notes that command availability can differ and may require manual validation.
- `fps_max` is documented as a framerate cap command.
- `cl_showfps` is documented as an FPS overlay command.

## Repository Inventory (2026-02-23)

The current repo profiles use the following command groups:

- Frame and UI caps (`fps_max`, `fps_max_ui`)
- Latency/network (`r_low_latency`, `engine_low_latency_sleep_after_client_tick`, `mm_dedicated_search_maxping`, `rate`)
- Telemetry (`cl_hud_telemetry_*`, `cl_showfps`)
- Viewmodel (`viewmodel_fov`, `viewmodel_offset_*`)
- Persistence and binds (`host_writeconfig`, `bind`)

## External Context

- OpenBenchmarking provides public CS2 benchmark runs that can help validate whether profile changes align with expected hardware behavior.

## Inference for This Repo

- Inference: The fastest way to keep configs current is to regenerate local inventory and compare it to documentation after each notable update.
- Inference: Commands with no dedicated wiki page should stay under stricter review and in-game testing.

## Local Tools

- `Tools/command_inventory.ps1`
- `Tools/update-command-inventory.ps1`
- `Tools/validate-profiles.ps1`
- `Tools/build-profile-matrix.ps1`
- Current snapshot: [`Checklists/current-command-inventory.md`](../Checklists/current-command-inventory.md)
- Current matrix: [`Checklists/profile-matrix.md`](../Checklists/profile-matrix.md)

## References

- [CS2 command list (Valve Developer)](https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables)
- [fps_max (Valve Developer)](https://developer.valvesoftware.com/wiki/Fps_max)
- [cl_showfps (Valve Developer)](https://developer.valvesoftware.com/wiki/Cl_showfps)
- [OpenBenchmarking CS2 test](https://openbenchmarking.org/test/pts/cs2)
