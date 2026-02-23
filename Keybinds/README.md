# Keybind Configs

This folder stores optional bind layout files.

## Source-Backed Facts

- `bind` is part of Source engine command systems.
- `exec` runs `.cfg` files so layouts can be split into separate files.
- `+` command arguments are processed from launch options through startup command handling.

## Repository Convention

- Keep named layouts as dedicated cfg files.
- Keep template files for quick duplication.
- Load a layout with `exec <filename>`.

## Templates

- [keybinds_template.cfg](keybinds_template.cfg)
- [keybinds_grenade_slots_template.cfg](keybinds_grenade_slots_template.cfg)

## References

- [bind command](https://developer.valvesoftware.com/wiki/Bind)
- [exec command](https://developer.valvesoftware.com/wiki/Exec)
- [valve.rc (`stuffcmds`)](https://developer.valvesoftware.com/wiki/Valve.rc)
