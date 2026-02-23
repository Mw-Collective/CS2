# Platform and Driver Safety Notes

## Source-Backed Facts

- Steam lists CS2 minimum and recommended system requirements on the official store page.
- NVIDIA documents Reflex support in Counter-Strike 2 and where to enable it.
- AMD's October 25, 2023 Adrenalin 23.10.2 notes disabled Anti-Lag+ for CS2 due to VAC ban reports.
- Microsoft documents latency-focused optimizations for windowed games on Windows.
- OpenBenchmarking publishes an active CS2 benchmark suite.

## Inference for This Repo

- Inference: Profile recommendations should include platform checks (driver features and OS gaming settings), not only cfg commands.
- Inference: Any driver-level latency toggle should be treated as version-sensitive and revalidated when driver notes change.

## Practical Use in This Repository

1. Start with one of the repo profiles (`Potato`, `Banana`, `Sandwich`).
2. Apply launch option + cfg workflow.
3. Validate in-game behavior.
4. Validate driver/OS feature assumptions using vendor docs.
5. Record outcomes in `Blog/` and refresh `Checklists/current-command-inventory.md`.
6. Validate profile command integrity with `Tools/validate-profiles.ps1`.

## References

- [Counter-Strike 2 Steam page](https://store.steampowered.com/app/730/CounterStrike_2/)
- [NVIDIA Reflex in CS2](https://www.nvidia.com/en-us/geforce/news/reflex-counter-strike-2-cs2-nvidia-reflex/)
- [AMD Adrenalin 23.10.2 release notes](https://www.amd.com/en/resources/support-articles/release-notes/RN-RAD-WIN-23-10-2.html)
- [Microsoft windowed game optimizations](https://support.microsoft.com/en-us/windows/optimizations-for-windowed-games-in-windows-3f006843-2c7e-4ed0-9a5e-f9389e535952)
- [OpenBenchmarking CS2 test](https://openbenchmarking.org/test/pts/cs2)
