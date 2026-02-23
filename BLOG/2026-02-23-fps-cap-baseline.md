# FPS Cap Baseline and Visibility Commands

## Source-Backed Facts

- Valve documents `fps_max` as the command that controls the framerate cap.
- Valve documents `fps_max 0` as disabling the cap.
- Valve documents `cl_showfps` as an on-screen FPS display command.

## Inference for This Repo

- Inference: Profile tuning should start with a stable `fps_max` target and then compare changes one variable at a time.
- Inference: Enabling `cl_showfps` during tests creates a basic, repeatable sanity check before finalizing profile edits.

## References

- [fps_max (Valve Developer)](https://developer.valvesoftware.com/wiki/Fps_max)
- [cl_showfps (Valve Developer)](https://developer.valvesoftware.com/wiki/Cl_showfps)
