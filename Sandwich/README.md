# Sandwich Profile

High-end profile for maximum responsiveness and high refresh targets.

## Config

- File: [sandwich.cfg](sandwich.cfg)
- Hub: [root README](../README.md)
- Suggested launch option:

```cfg
-novid -console -fullscreen +exec sandwich.cfg
```

- Manual load in console:

```cfg
exec sandwich.cfg
```

## Command Values

| Group | Command | Value |
| --- | --- | --- |
| Frame cap | `fps_max` | `0` |
| UI frame cap | `fps_max_ui` | `144` |
| Latency | `r_low_latency` | `1` |
| Latency | `engine_low_latency_sleep_after_client_tick` | `true` |
| Matchmaking | `mm_dedicated_search_maxping` | `50` |
| Network | `rate` | `786432` |
| Telemetry | `cl_hud_telemetry_frametime_show` | `2` |
| Telemetry | `cl_hud_telemetry_ping_show` | `2` |
| Telemetry | `cl_hud_telemetry_net_misdelivery_show` | `2` |
| FPS display | `cl_showfps` | `0` |
| Viewmodel | `viewmodel_fov` | `68` |
| Viewmodel | `viewmodel_offset_x` | `2.5` |
| Viewmodel | `viewmodel_offset_y` | `0` |
| Viewmodel | `viewmodel_offset_z` | `-1.5` |
| Help | `cl_autohelp` | `0` |
| Persist | `host_writeconfig` | set |

## External Tuning Context

- NVIDIA confirms Reflex support in Counter-Strike 2 and documents enabling it in Video settings.
- On October 25, 2023, AMD disabled Anti-Lag+ for CS2 in Adrenalin 23.10.2 after VAC ban reports. Treat driver-level latency features cautiously and re-verify current status in release notes before enabling.
- Microsoft documents windowed-game optimizations in Windows that can reduce latency in compatible titles.

## Notes

- Inference: This preset is intended for systems that can sustain high FPS without an in-game cap.
- Compare against other profiles in [profile matrix](../Checklists/profile-matrix.md).
- Use [benchmark session template](../Checklists/benchmark-session-template.md) for repeatable tests.
- Re-run [checklist audit](../Checklists/post-update-audit.md) after major game updates.

## References

- [exec command](https://developer.valvesoftware.com/wiki/Exec)
- [Command line startup options](https://developer.valvesoftware.com/wiki/Command_Line_Startup_Options)
- [fps_max](https://developer.valvesoftware.com/wiki/Fps_max)
- [cl_showfps](https://developer.valvesoftware.com/wiki/Cl_showfps)
- [CS2 command list](https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables)
- [NVIDIA Reflex in Counter-Strike 2](https://www.nvidia.com/en-us/geforce/news/reflex-counter-strike-2-cs2-nvidia-reflex/)
- [AMD Adrenalin 23.10.2 release notes](https://www.amd.com/en/resources/support-articles/release-notes/RN-RAD-WIN-23-10-2.html)
- [Microsoft windowed game optimizations](https://support.microsoft.com/en-us/windows/optimizations-for-windowed-games-in-windows-3f006843-2c7e-4ed0-9a5e-f9389e535952)
