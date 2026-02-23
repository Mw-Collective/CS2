# CS2 Config Hub

Counter-Strike 2 config presets, plus source-backed notes for maintaining them.

## Repository Sections

| Section | Purpose |
| --- | --- |
| [Potato](Potato/README.md) | Low-end profile files and notes |
| [Banana](Banana/README.md) | Mid-range profile files and notes |
| [Melon](Melon/README.md) | High-end profile files and notes |
| [Crosshairs](Crosshairs/README.md) | Crosshair share-code notes and template |
| [Keybinds](Keybinds/README.md) | Keybind workflow and template config |
| [BLOG](BLOG/README.md) | Source-backed posts for this repository |
| [Personal Settings](%23%20Personal%20Settings/MSI%20KATANA%20GF66%20Research.md) | Machine-specific research file |

## Page Index

- [Banana README](Banana/README.md)
- [Melon README](Melon/README.md)
- [Potato README](Potato/README.md)
- [Crosshairs README](Crosshairs/README.md)
- [Crosshair template](Crosshairs/codes-template.md)
- [Keybinds README](Keybinds/README.md)
- [BLOG index](BLOG/README.md)
- [BLOG: Launch options and exec](BLOG/2026-02-23-launch-options-and-exec.md)
- [BLOG: FPS cap baseline](BLOG/2026-02-23-fps-cap-baseline.md)
- [BLOG: Update-driven maintenance](BLOG/2026-02-23-update-driven-maintenance.md)
- [Personal settings research](%23%20Personal%20Settings/MSI%20KATANA%20GF66%20Research.md)

## Source-Backed Workflow

1. Use `exec <filename>` to run a config file from the game cfg path.
2. Use launch options with `+` commands (for example `+exec banana.cfg`) when you want startup execution.
3. Use `fps_max` to define an FPS cap and `cl_showfps` to check FPS while testing.

## Preset Files

| Profile | Config file | Typical launch option |
| --- | --- | --- |
| Potato | `Potato/potato.cfg` | `-novid -console -fullscreen +exec potato.cfg` |
| Banana | `Banana/banana.cfg` | `-novid -console -fullscreen +exec banana.cfg` |
| Melon | `Melon/melon.cfg` | `-novid -console -fullscreen +exec melon.cfg` |

## Documentation Rules

- New factual claims should include a source link in the same file.
- Prefer Valve Developer pages and official Counter-Strike release notes.
- Re-check command validity after major game updates.

## Core References

- [exec command](https://developer.valvesoftware.com/wiki/Exec)
- [Command line options](https://developer.valvesoftware.com/wiki/Command_Line_Startup_Options)
- [valve.rc and stuffcmds behavior](https://developer.valvesoftware.com/wiki/Valve.rc)
- [fps_max](https://developer.valvesoftware.com/wiki/Fps_max)
- [cl_showfps](https://developer.valvesoftware.com/wiki/Cl_showfps)
- [CS2 command list (Valve Developer)](https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables)
- [Counter-Strike updates feed](https://www.counter-strike.net/news/updates)

