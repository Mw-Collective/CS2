# Benchmark Methodology and Repeatability

## Source-Backed Facts

- PresentMon provides frame timing and telemetry capture with CSV export support.
- NVIDIA FrameView provides frame rate, frame-time, and power telemetry.
- OpenBenchmarking provides a public CS2 test suite for cross-system comparisons.
- Microsoft notes that windowed-game optimizations in Windows 11 can change frame latency characteristics for DX10/DX11 games.

## Inference for This Repo

- Inference: Profile changes should be tested using fixed scenarios and repeated runs, not one-off FPS snapshots.
- Inference: Reporting both average FPS and low-percentile behavior (for example 1% lows) better reflects playability.

## Suggested Method

1. Fix map/scenario and duration.
2. Run each profile at least three times.
3. Capture with one external tool consistently.
4. Record average FPS, 1% low, and frame-time trend notes.
5. Keep benchmark logs in versioned notes.

## Related Files

- [Benchmark session template](../Checklists/benchmark-session-template.md)
- [Profile matrix](../Checklists/profile-matrix.md)

## References

- [PresentMon](https://presentmon.com/)
- [NVIDIA FrameView](https://www.nvidia.com/en-us/geforce/technologies/frameview/)
- [OpenBenchmarking CS2 test](https://openbenchmarking.org/test/pts/cs2)
- [Microsoft windowed game optimizations](https://support.microsoft.com/en-us/windows/optimizations-for-windowed-games-in-windows-11-3f006843-2c7e-4ed0-9a5e-f9389e535952)
