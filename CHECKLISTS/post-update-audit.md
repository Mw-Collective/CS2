# Post-Update Audit Checklist

Use this checklist after major Counter-Strike updates.

## Steps

1. Review official updates:
   - [Counter-Strike updates feed](https://www.counter-strike.net/news/updates)
2. Re-check command validity against Valve Developer pages:
   - [CS2 command list](https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables)
3. Rebuild local command inventory from repository cfg files:
   - `powershell -ExecutionPolicy Bypass -File TOOLS/update-command-inventory.ps1`
   - Review [current-command-inventory.md](current-command-inventory.md)
4. Compare inventory against documented commands and remove unknown or obsolete entries.
5. Run in-game smoke checks for each profile (`Potato`, `Banana`, `Melon`) before release.

## Notes

- Valve Developer notes the CS2 command list is generated from binaries and may still need manual validation.
- Keep every profile change documented in `BLOG/` with source links.

## References

- [CS2 command list (Valve Developer)](https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables)
- [Counter-Strike updates feed](https://www.counter-strike.net/news/updates)
