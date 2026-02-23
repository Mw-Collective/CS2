# FPS Cap Baseline and Visibility Commands

## Source-Backed Facts

- Valve documents `fps_max` as the command that controls the framerate cap.
- Valve documents `fps_max 0` as disabling the cap.
- Valve documents `cl_showfps` as an on-screen FPS display command.

## External Context

- NVIDIA FrameView is a vendor tool for collecting frame rate, frame-time, and power telemetry.
- OpenBenchmarking publishes an active CS2 benchmark suite for cross-system comparisons.

## Inference for This Repo

- Inference: Profile tuning should start with a stable `fps_max` target and then compare one variable at a time.
- Inference: `cl_showfps` is a quick in-game sanity check, while external tools like FrameView are better for deeper profiling.

## Related Files

- [Benchmark methodology and repeatability](2026-02-23-benchmark-methodology-and-repeatability.md)
- [Benchmark session template](../Checklists/benchmark-session-template.md)

## References

- [fps_max (Valve Developer)](https://developer.valvesoftware.com/wiki/Fps_max)
- [cl_showfps (Valve Developer)](https://developer.valvesoftware.com/wiki/Cl_showfps)
- [NVIDIA FrameView](https://www.nvidia.com/en-us/geforce/technologies/frameview/)
- [OpenBenchmarking CS2 test](https://openbenchmarking.org/test/pts/cs2)
