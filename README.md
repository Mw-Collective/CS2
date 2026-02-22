# CS2 Performance Tiers 🍉🍌🥔

Community-driven performance presets for Counter-Strike 2.

This repository provides structured configuration tiers, crosshair presets, and keybind layouts designed for different hardware classes.
All configs use **CS2-valid commands only** (no deprecated CS:GO commands).

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

# 🎯 Crosshair Presets

Crosshairs should be imported using CS2’s built-in share system.

### How to Import

1. Open Settings → Game → Crosshair
2. Click **Share or Import**
3. Paste a crosshair code
4. Click Import

### Suggested Preset Categories

**Static Competitive (Small Gap)**

* Ideal for rifle precision

**Dynamic Recoil Practice**

* Follow recoil enabled
* Useful for spray training

**High Visibility (Bright Maps)**

* Cyan / Green
* Outline enabled

You may include share codes inside this repository as reference examples.

---

# ⌨ Keybind Layouts

This repository can include optional keybind presets for consistency.

### Recommended Competitive Layout Principles

* Jump: Mouse Wheel Down (bunnyhop consistency)
* Crouch: Ctrl
* Use: E
* Grenades bound to direct keys (no cycling)
* Push-to-Talk separated from movement keys

### Example Launch Binding System

Bind performance profiles in autoexec:

```
bind F8 map_standard
bind F9 map_heavy
bind F10 panic_mode
```

### Suggested Optional Binds

* Quick grenade slots (Z/X/C/V)
* Drop weapon (G)
* Inspect weapon (F)
* Clear decals (bind to movement key if desired)

---

# 🔬 Philosophy

These configs focus on:

* Stable frametime
* Clean telemetry
* Matchmaking region control
* Modern Source 2 compatibility
* No placebo tweaks

---

# 📌 Important Notes

* CS2 runs on Vulkan by default.
* Avoid outdated launch flags like `-threads`, `-tickrate`, or random Reddit tweaks.
* Exclusive Fullscreen offers lowest input latency.
* Laptop users should enable maximum performance mode in GPU control panel.

---

If this repository helps you, consider sharing it with the CS2 community.
