# Launch Options and `exec` Workflow

## Source-Backed Facts

- Valve documents launch options as startup arguments you add in Steam game properties.
- Valve documents that `stuffcmds` processes command-line arguments that begin with `+`.
- Valve documents `exec` as a command that runs cfg files from the game cfg path.
- Valve also notes you do not need `-exec autoexec.cfg` because `autoexec.cfg` is already handled.

## Inference for This Repo

- Inference: Startup profile loading with `+exec <profile>.cfg` is a clean pattern for this repo because profiles are already stored as separate cfg files.
- Inference: Keeping launch options minimal reduces maintenance overhead when Valve changes command behavior.

## References

- [Command line startup options (Valve Developer)](https://developer.valvesoftware.com/wiki/Command_Line_Startup_Options)
- [valve.rc (`stuffcmds`) (Valve Developer)](https://developer.valvesoftware.com/wiki/Valve.rc)
- [exec command (Valve Developer)](https://developer.valvesoftware.com/wiki/Exec)
