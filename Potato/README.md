# Potato Profile

Low-end profile focused on stable performance for weaker systems.

## Config

- File: [potato.cfg](potato.cfg)
- Hub: [root README](../README.md)
- Suggested launch option:

```cfg
-novid -console -fullscreen +exec potato.cfg
```

- Manual load in console:

```cfg
exec potato.cfg
```

## Command Values

| Group | Command | Value |
| --- | --- | --- |
| Frame cap | `fps_max` | `0` |
| UI frame cap | `fps_max_ui` | `60` |
| Latency | `r_low_latency` | `1` |
| Latency | `engine_low_latency_sleep_after_client_tick` | `true` |
| Matchmaking | `mm_dedicated_search_maxping` | `70` |
| Network | `rate` | `524288` |
| Telemetry | `cl_hud_telemetry_frametime_show` | `1` |
| Telemetry | `cl_hud_telemetry_ping_show` | `1` |
| Telemetry | `cl_hud_telemetry_net_misdelivery_show` | `1` |
| FPS display | `cl_showfps` | `0` |
| Viewmodel | `viewmodel_fov` | `68` |
| Viewmodel | `viewmodel_offset_x` | `2` |
| Viewmodel | `viewmodel_offset_y` | `0` |
| Viewmodel | `viewmodel_offset_z` | `-2` |
| Help | `cl_autohelp` | `0` |
| Persist | `host_writeconfig` | set |

## External Tuning Context

- Steam publishes CS2 minimum and recommended requirements on the store page.
- NVIDIA FrameView provides frame-time and power telemetry for Windows benchmarking workflows.
- OpenBenchmarking provides comparable CS2 benchmark runs for Linux hardware.

## Notes

- Inference: This preset is intended for systems where frametime consistency matters more than visual fidelity.
- Compare against other profiles in [profile matrix](../Checklists/profile-matrix.md).
- Use [benchmark session template](../Checklists/benchmark-session-template.md) for repeatable tests.
- Re-run [checklist audit](../Checklists/post-update-audit.md) after major game updates.

## References

- [exec command](https://developer.valvesoftware.com/wiki/Exec)
- [Command line startup options](https://developer.valvesoftware.com/wiki/Command_Line_Startup_Options)
- [fps_max](https://developer.valvesoftware.com/wiki/Fps_max)
- [cl_showfps](https://developer.valvesoftware.com/wiki/Cl_showfps)
- [CS2 command list](https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables)
- [Counter-Strike 2 Steam page](https://store.steampowered.com/app/730/CounterStrike_2/)
- [NVIDIA FrameView](https://www.nvidia.com/en-us/geforce/technologies/frameview/)
- [OpenBenchmarking CS2 test](https://openbenchmarking.org/test/pts/cs2)
