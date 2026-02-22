# CS2 Performance Tiers 🍉🍌🥔

Community-driven performance presets for Counter-Strike 2.

This repository provides three structured configuration tiers designed for different hardware classes.
All configs use **CS2-valid commands only** (no deprecated CS:GO junk).

---

# 🥔 Potato (Low-End PCs)

**Target:** Maximum stability on weak CPUs / older GPUs
**Expected FPS Range:** 60–144 (hardware dependent)

### Recommended Graphics (Set In-Game)

* Display Mode: Fullscreen
* MSAA: Off
* Global Shadow Quality: Low
* Model / Texture Detail: Low
* Shader Detail: Low
* Particle Detail: Low
* Ambient Occlusion: Disabled
* High Dynamic Range: Performance
* Boost Player Contrast: Enabled

### Launch Options

```
-novid -console -fullscreen +exec potato.cfg
```

---

# 🍌 Banana (Recommended / Mid-Range PCs)

**Target:** Competitive balance (144–240 FPS stability)
**Expected FPS Range:** 144–240

### Recommended Graphics (Set In-Game)

* Display Mode: Fullscreen
* MSAA: 2x
* Global Shadow Quality: Medium
* Model / Texture Detail: Medium
* Shader Detail: Low
* Particle Detail: Low
* Ambient Occlusion: Disabled
* High Dynamic Range: Performance
* Texture Filtering: 8x
* Boost Player Contrast: Enabled

### Launch Options

```
-novid -console -fullscreen +exec banana.cfg
```

---

# 🍉 Melon (High-End PCs)

**Target:** High refresh (240Hz+) & maximum responsiveness
**Expected FPS Range:** 240+

### Recommended Graphics (Set In-Game)

* Display Mode: Fullscreen
* MSAA: 4x
* Global Shadow Quality: High
* Model / Texture Detail: High
* Shader Detail: Medium
* Particle Detail: Medium
* Ambient Occlusion: Medium
* High Dynamic Range: Quality
* Texture Filtering: 16x
* Boost Player Contrast: Enabled

### Launch Options

```
-novid -console -fullscreen +exec melon.cfg
```

---

# Important Notes

* CS2 runs on Vulkan by default.
* Avoid outdated launch flags like `-threads`, `-tickrate`, or random Reddit tweaks.
* Use Exclusive Fullscreen for lowest input latency.
* Laptop users should enable maximum performance mode in their GPU control panel.

---

# Philosophy

These configs focus on:

* Stable frametime
* Clean telemetry
* Matchmaking region control
* Modern Source 2 compatibility

They do **not** rely on placebo tweaks.

---

If this repository helps you, consider sharing it with others in the CS2 community.
