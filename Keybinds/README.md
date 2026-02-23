# Keybind Configs

This folder stores optional bind layout files.

## Source-Backed Facts

- `bind` is available in Source engine command systems and writes to `config.cfg`.
- `exec` runs `.cfg` files so layouts can be split into separate files.
- Archived variables can be saved by engine shutdown behavior or by running `host_writeconfig`.

## Repository Convention

- Keep named layouts as dedicated cfg files.
- Keep one minimal template file in this folder.
- Load a layout with `exec <filename>`.

## Template

- [keybinds_template.cfg](keybinds_template.cfg)

## References

- [bind command](https://developer.valvesoftware.com/wiki/Bind)
- [exec command](https://developer.valvesoftware.com/wiki/Exec)
- [DevMsg / FCVAR_ARCHIVE note](https://developer.valvesoftware.com/wiki/DevMsg)
