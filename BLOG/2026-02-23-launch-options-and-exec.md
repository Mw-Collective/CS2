# Launch Options and `exec` Workflow

## Source-Backed Facts

- Valve documents launch options as startup arguments you add in Steam game properties.
- Valve documents that `stuffcmds` processes command-line arguments that begin with `+`.
- Valve documents `exec` as a command that runs cfg files from the game cfg path.
- Valve also notes you do not need `-exec autoexec.cfg` because `autoexec.cfg` is already handled.

## External Context

- Steam publishes CS2 requirements on the official store page, which is useful when choosing profile defaults for different hardware tiers.

## Inference for This Repo

- Inference: Startup profile loading with `+exec <profile>.cfg` is a clean pattern for this repo because profiles are already stored as separate cfg files.
- Inference: Keeping launch options minimal reduces maintenance overhead when command behavior changes.

## References

- [Command line startup options (Valve Developer)](https://developer.valvesoftware.com/wiki/Command_Line_Startup_Options)
- [valve.rc (`stuffcmds`) (Valve Developer)](https://developer.valvesoftware.com/wiki/Valve.rc)
- [exec command (Valve Developer)](https://developer.valvesoftware.com/wiki/Exec)
- [Counter-Strike 2 Steam page](https://store.steampowered.com/app/730/CounterStrike_2/)
