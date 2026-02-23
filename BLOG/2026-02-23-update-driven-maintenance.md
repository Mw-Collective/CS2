# Update-Driven Maintenance Checklist

## Source-Backed Facts

- Valve Developer provides a CS2 command list page generated from game binaries.
- The same page notes that command availability can change and may include hidden/development commands.
- Counter-Strike has an official updates feed for release tracking.
- AMD's October 25, 2023 Adrenalin 23.10.2 notes documented disabling Anti-Lag+ for CS2 after VAC ban reports.

## Inference for This Repo

- Inference: After major updates, command-level validation should be part of normal maintenance.
- Inference: Driver and OS feature checks should be included in maintenance, not only cfg command checks.

## Suggested Checklist

1. Review the official update feed.
2. Re-check used commands against Valve Developer docs.
3. Re-check active driver and OS gaming features against vendor documentation.
4. Keep only commands and feature assumptions that remain documented and relevant.
5. Record the review date in documentation.

## References

- [CS2 command list (Valve Developer)](https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables)
- [Counter-Strike updates feed](https://www.counter-strike.net/news/updates)
- [AMD Adrenalin 23.10.2 release notes](https://www.amd.com/en/resources/support-articles/release-notes/RN-RAD-WIN-23-10-2.html)
- [Microsoft windowed game optimizations](https://support.microsoft.com/en-us/windows/optimizations-for-windowed-games-in-windows-3f006843-2c7e-4ed0-9a5e-f9389e535952)
