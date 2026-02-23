# CS2 Config Hub

Counter-Strike 2 config presets with source-backed maintenance notes.

## Profiles

| Profile | Purpose | Folder |
| --- | --- | --- |
| [Potato](Potato/README.md) | Low-end stability profile | `Potato/` |
| [Banana](Banana/README.md) | Mid-range competitive balance | `Banana/` |
| [Sandwich](Sandwich/README.md) | High-end responsiveness profile | `Sandwich/` |

## Repository Sections

| Section | Purpose |
| --- | --- |
| [Crosshairs](Crosshairs/README.md) | Crosshair notes and templates |
| [Keybinds](Keybinds/README.md) | Keybind templates |
| [Blog](Blog/README.md) | Source-backed posts |
| [Checklists](Checklists/README.md) | Update and audit workflow |
| [Tools](Tools/README.md) | Local helper scripts |
| [Personal Settings](Personal-Settings/MSI%20KATANA%20GF66%20Research.md) | Machine-specific research |

## Quick Start

1. Choose a profile (`Potato`, `Banana`, or `Sandwich`).
2. Set launch options with `+exec <profile>.cfg`.
3. Run full maintenance with [Tools/run-maintenance.ps1](Tools/run-maintenance.ps1).
4. Review outputs in [Checklists](Checklists/README.md).

## Preset Files

| Profile | Config file | Typical launch option |
| --- | --- | --- |
| Potato | `Potato/potato.cfg` | `-novid -console -fullscreen +exec potato.cfg` |
| Banana | `Banana/banana.cfg` | `-novid -console -fullscreen +exec banana.cfg` |
| Sandwich | `Sandwich/sandwich.cfg` | `-novid -console -fullscreen +exec sandwich.cfg` |

## Profile Comparison

| Setting | Potato | Banana | Sandwich |
| --- | --- | --- | --- |
| `fps_max` | `0` | `200` | `0` |
| `fps_max_ui` | `60` | `120` | `144` |
| `mm_dedicated_search_maxping` | `70` | `60` | `50` |
| `rate` | `524288` | `786432` | `786432` |
| Telemetry level (`cl_hud_telemetry_*`) | `1` | `2` | `2` |
| Viewmodel X/Y/Z | `2 / 0 / -2` | `2.5 / 0 / -1.5` | `2.5 / 0 / -1.5` |

Full matrix:
- [Checklists/profile-matrix.md](Checklists/profile-matrix.md)

## Maintenance Commands

```powershell
# Validate profile command structure and value ranges
powershell -ExecutionPolicy Bypass -File Tools/validate-profiles.ps1

# Rebuild command inventory snapshot
powershell -ExecutionPolicy Bypass -File Tools/update-command-inventory.ps1

# Rebuild profile matrix
powershell -ExecutionPolicy Bypass -File Tools/build-profile-matrix.ps1

# Run all maintenance tasks
powershell -ExecutionPolicy Bypass -File Tools/run-maintenance.ps1

# Check local markdown links after refactors
powershell -ExecutionPolicy Bypass -File Tools/check-markdown-links.ps1
```

## Maintenance Outputs

- [Command inventory snapshot](Checklists/current-command-inventory.md)
- [Profile matrix snapshot](Checklists/profile-matrix.md)
- [Benchmark session template](Checklists/benchmark-session-template.md)

## External Web Research (Beyond Valve Developer)

- Steam publishes CS2 minimum/recommended specs on the official store page.
- NVIDIA documents Reflex support in CS2 and where to enable it.
- AMD release notes on October 25, 2023 (Adrenalin 23.10.2) temporarily disabled Anti-Lag+ for CS2 after VAC ban reports.
- Microsoft documents optimized presentation path options for windowed games on Windows.
- OpenBenchmarking publishes an active CS2 benchmark test suite.
- NVIDIA FrameView provides frame-time and power telemetry for profiling runs.

## Documentation Rules

- New factual claims should include source links in the same file.
- Label recommendations that are not directly documented as `Inference`.
- Re-check profile commands after major CS2 updates.

## Core References

- [exec command](https://developer.valvesoftware.com/wiki/Exec)
- [Command line startup options](https://developer.valvesoftware.com/wiki/Command_Line_Startup_Options)
- [valve.rc and `stuffcmds`](https://developer.valvesoftware.com/wiki/Valve.rc)
- [fps_max](https://developer.valvesoftware.com/wiki/Fps_max)
- [cl_showfps](https://developer.valvesoftware.com/wiki/Cl_showfps)
- [CS2 command list (Valve Developer)](https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables)
- [Counter-Strike 2 Steam page](https://store.steampowered.com/app/730/CounterStrike_2/)
- [NVIDIA Reflex in CS2](https://www.nvidia.com/en-us/geforce/news/reflex-counter-strike-2-cs2-nvidia-reflex/)
- [AMD Adrenalin 23.10.2 release notes](https://www.amd.com/en/resources/support-articles/release-notes/RN-RAD-WIN-23-10-2.html)
- [Microsoft windowed game optimizations](https://support.microsoft.com/en-us/windows/optimizations-for-windowed-games-in-windows-3f006843-2c7e-4ed0-9a5e-f9389e535952)
- [OpenBenchmarking CS2 test](https://openbenchmarking.org/test/pts/cs2)
- [NVIDIA FrameView](https://www.nvidia.com/en-us/geforce/technologies/frameview/)
