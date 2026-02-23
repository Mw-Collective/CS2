# Post-Update Audit Checklist

Use this checklist after major Counter-Strike updates.

Fast path:
- `powershell -ExecutionPolicy Bypass -File Tools/run-maintenance.ps1`

## Steps

1. Review official updates:
   - [Counter-Strike updates feed](https://www.counter-strike.net/news/updates)
2. Re-check command validity against Valve Developer pages:
   - [CS2 command list](https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables)
3. Refresh local command inventory:
   - `powershell -ExecutionPolicy Bypass -File Tools/update-command-inventory.ps1`
   - Review [current-command-inventory.md](current-command-inventory.md)
4. Rebuild and review profile matrix:
   - `powershell -ExecutionPolicy Bypass -File Tools/build-profile-matrix.ps1`
   - Review [profile-matrix.md](profile-matrix.md)
5. Compare inventory against documentation and remove unknown or obsolete entries.
   - Use `File Count` to identify command spread across profiles.
   - Use `Values` to detect drift or unexpected value changes.
6. Run in-game smoke checks for each profile (`Potato`, `Banana`, `Sandwich`) before release.
7. Capture benchmark notes using [benchmark-session-template.md](benchmark-session-template.md).
8. Validate local documentation links:
   - `powershell -ExecutionPolicy Bypass -File Tools/check-markdown-links.ps1`
9. Re-check external platform notes when relevant:
   - [NVIDIA Reflex in CS2](https://www.nvidia.com/en-us/geforce/news/reflex-counter-strike-2-cs2-nvidia-reflex/)
   - [AMD Adrenalin 23.10.2 release notes](https://www.amd.com/en/resources/support-articles/release-notes/RN-RAD-WIN-23-10-2.html)
   - [Microsoft windowed game optimizations](https://support.microsoft.com/en-us/windows/optimizations-for-windowed-games-in-windows-3f006843-2c7e-4ed0-9a5e-f9389e535952)

## Notes

- Valve Developer notes the CS2 command list is generated from binaries and may still need manual validation.
- Keep every profile change documented in `Blog/` with source links.

## References

- [CS2 command list (Valve Developer)](https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables)
- [Counter-Strike updates feed](https://www.counter-strike.net/news/updates)
- [NVIDIA Reflex in CS2](https://www.nvidia.com/en-us/geforce/news/reflex-counter-strike-2-cs2-nvidia-reflex/)
- [AMD Adrenalin 23.10.2 release notes](https://www.amd.com/en/resources/support-articles/release-notes/RN-RAD-WIN-23-10-2.html)
- [Microsoft windowed game optimizations](https://support.microsoft.com/en-us/windows/optimizations-for-windowed-games-in-windows-3f006843-2c7e-4ed0-9a5e-f9389e535952)
