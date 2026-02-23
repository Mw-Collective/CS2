# CS2 Config Hub

Counter-Strike 2 config presets, plus source-backed notes for maintaining them.

## Repository Sections

| Section | Purpose |
| --- | --- |
| [Potato](Potato/README.md) | Low-end profile files and notes |
| [Banana](Banana/README.md) | Mid-range profile files and notes |
| [Melon](Melon/README.md) | High-end profile files and notes |
| [Crosshairs](Crosshairs/README.md) | Crosshair share-code notes and templates |
| [Keybinds](Keybinds/README.md) | Keybind workflow and template configs |
| [BLOG](BLOG/README.md) | Source-backed posts for this repository |
| [CHECKLISTS](CHECKLISTS/README.md) | Post-update validation workflow |
| [TOOLS](TOOLS/README.md) | Local helper scripts |
| [Personal Settings](%23%20Personal%20Settings/MSI%20KATANA%20GF66%20Research.md) | Machine-specific research file |

## Page Index

- [Banana README](Banana/README.md)
- [Melon README](Melon/README.md)
- [Potato README](Potato/README.md)
- [Crosshairs README](Crosshairs/README.md)
- [Crosshair code template](Crosshairs/codes-template.md)
- [Observed crosshair log template](Crosshairs/observed-crosshair-log-template.md)
- [Keybinds README](Keybinds/README.md)
- [Keybind base template](Keybinds/keybinds_template.cfg)
- [Keybind grenade-slot template](Keybinds/keybinds_grenade_slots_template.cfg)
- [BLOG index](BLOG/README.md)
- [BLOG: Launch options and exec](BLOG/2026-02-23-launch-options-and-exec.md)
- [BLOG: FPS cap baseline](BLOG/2026-02-23-fps-cap-baseline.md)
- [BLOG: Update-driven maintenance](BLOG/2026-02-23-update-driven-maintenance.md)
- [BLOG: Command inventory and audit](BLOG/2026-02-23-command-inventory-and-audit.md)
- [BLOG: Crosshair share timeline](BLOG/2026-02-23-crosshair-share-system-timeline.md)
- [CHECKLISTS index](CHECKLISTS/README.md)
- [Checklist: Post-update audit](CHECKLISTS/post-update-audit.md)
- [Checklist: Current command inventory](CHECKLISTS/current-command-inventory.md)
- [TOOLS index](TOOLS/README.md)
- [Tool: command_inventory.ps1](TOOLS/command_inventory.ps1)
- [Tool: update-command-inventory.ps1](TOOLS/update-command-inventory.ps1)
- [Personal settings research](%23%20Personal%20Settings/MSI%20KATANA%20GF66%20Research.md)

## Source-Backed Workflow

1. Use `exec <filename>` to run a config file from the game cfg path.
2. Use launch options with `+` commands (for example `+exec banana.cfg`) for startup execution.
3. Use `fps_max` to define an FPS cap and `cl_showfps` to check FPS while testing.
4. After major updates, run the command inventory tool and complete the audit checklist.

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
- [bind command](https://developer.valvesoftware.com/wiki/Bind)
- [CS2 command list (Valve Developer)](https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables)
- [Counter-Strike updates feed](https://www.counter-strike.net/news/updates)
