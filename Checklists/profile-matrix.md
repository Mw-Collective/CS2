# Profile Matrix

Generated on 2026-02-23 from profile cfg files.

| Setting | Potato | Banana | Sandwich |
| --- | --- | --- | --- |
| `fps_max` | `0` | `200` | `0` |
| `fps_max_ui` | `60` | `120` | `144` |
| `mm_dedicated_search_maxping` | `70` | `60` | `50` |
| `rate` | `524288` | `786432` | `786432` |
| `cl_hud_telemetry_frametime_show` | `1` | `2` | `2` |
| `cl_hud_telemetry_ping_show` | `1` | `2` | `2` |
| `cl_hud_telemetry_net_misdelivery_show` | `1` | `2` | `2` |
| `r_low_latency` | `1` | `1` | `1` |
| `engine_low_latency_sleep_after_client_tick` | `true` | `true` | `true` |
| `cl_showfps` | `0` | `0` | `0` |
| `viewmodel_fov` | `68` | `68` | `68` |
| `viewmodel_offset_x` | `2` | `2.5` | `2.5` |
| `viewmodel_offset_y` | `0` | `0` | `0` |
| `viewmodel_offset_z` | `-2` | `-1.5` | `-1.5` |

## Launch Options

- Potato: `-novid -console -fullscreen +exec potato.cfg`
- Banana: `-novid -console -fullscreen +exec banana.cfg`
- Sandwich: `-novid -console -fullscreen +exec sandwich.cfg`

Regenerate with:
`powershell -ExecutionPolicy Bypass -File Tools/build-profile-matrix.ps1`
