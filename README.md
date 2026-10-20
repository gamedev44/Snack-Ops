# 🍿 Call of Dutie: Snack Ops (SDK)

**A fan-made, multiversal first-person shooter framework developed by Iron Will Interactive with help from Kelint.**

Heavily inspired by *Black Ops 1*, *Call of Duty 2 & 3*, *NX1 Future Warfare*, *Modern Warfare 3 (2011)*, and *Black Ops 2*, **Call of Dutie: Snack Ops** is an independent, non-profit project built as a love letter to the golden era of military shooters.

Snack Ops combines classic Call of Duty-inspired gameplay with a modern Unreal Engine framework featuring modular Blueprint systems, procedural movement, configurable AI, experimental gameplay modes, custom gameplay systems, and an expanding SDK foundation.

> ⚠️ **Current Status:** Alpha Testing
> 🚀 **Primary Development Version:** Unreal Engine 5.8
> 🔄 **Legacy / Compatibility Version:** Unreal Engine 5.3
> 🆕 **Latest Major Feature:** Death From Above
> 📰 **Dev changelog (GitHub Pages):** [index.html](./index.html) — set repo Pages source to **main / root** for the public update log.

---

# 📑 Table of Contents

* [Overview](#-overview)
* [Latest Update: UE 5.8 Alpha](#-latest-update-ue-58-alpha)
* [Death From Above](#-death-from-above)
* [UE 5.8 Migration](#-ue-58-migration)
* [UE 5.8 Stability Pass](#-ue-58-stability-pass)
* [Remaining UE 5.8 Issues](#-remaining-ue-58-issues)
* [Lighting and Shadow Compatibility](#-lighting-and-shadow-compatibility)
* [Landscape Collision](#-landscape-collision)
* [Legacy Asset Compatibility](#-legacy-asset-compatibility)
* [Chaos Physics and Performance](#-chaos-physics-and-performance)
* [AI and Navigation](#-ai-and-navigation)
* [First-Person and Third-Person](#-first-person-and-third-person)
* [Movement](#-movement)
* [Animation and IK](#-animation-and-ik)
* [Weapons](#-weapons)
* [Bots and AI](#-bots-and-ai)
* [Game Modes](#-game-modes)
* [Modular Blueprint SDK](#-modular-blueprint-sdk)
* [Maps and Environments](#-maps-and-environments)
* [UE 5.3 and UE 5.8 Synchronization](#-ue-53-and-ue-58-synchronization)
* [Current Development State](#-current-development-state)
* [Roadmap](#-roadmap)
* [Long-Term Direction](#-long-term-direction)
* [Development Philosophy](#-development-philosophy)
* [Credits and Disclaimer](#-credits-and-disclaimer)

---

# 📖 Overview

*Call of Dutie: Snack Ops* is an independent, non-profit tribute project focused on recreating the feel of classic military shooters while building an extensible Unreal Engine SDK underneath the gameplay.

The project originally developed around an **Unreal Engine 5.3 foundation** and has now progressed into a substantially upgraded **Unreal Engine 5.8 development environment**.

The UE 5.8 migration has involved considerably more than changing the engine version. Major systems have been repaired, modernized, optimized, and re-evaluated against changes introduced between Unreal Engine versions.

The project is now approaching a much more stable Alpha state, with the remaining work consisting primarily of engine-version compatibility cleanup, asset corrections, animation/IK refinement, lighting differences, collision fixes, and continued gameplay polish.

The long-term goal is to evolve Snack Ops into a highly modular shooter framework capable of supporting original gameplay, custom maps, experimental modes, community-created content, and eventually original intellectual property.

---

# 🆕 Latest Update: UE 5.8 Alpha

Snack Ops has now moved substantially beyond its original **UE 5.3** foundation.

The **UE 5.8 version is now the primary development branch**, and the overwhelming majority of major migration problems have been resolved.

This represents a major development milestone.

The migration required extensive work across:

* Character movement
* AI navigation
* RecastNavMesh
* Animation Blueprints
* IK systems
* First-Person camera behavior
* Third-Person camera behavior
* Chaos Physics
* Collision
* Landscape interaction
* Lighting
* Shadows
* Skeletal Mesh behavior
* Weapon attachments
* Engine API compatibility
* General gameplay systems

The current UE 5.8 build is now considered **fully functional enough for Alpha development**, with only a relatively small number of remaining issues being flushed out.

---

# 🛩️ Death From Above

## New Alpha Gameplay Mode

**Death From Above** is the newest gameplay mode added to the Snack Ops main menu and is currently undergoing Alpha testing.

The mode features full **AC-130-style aerial gunship gameplay**, heavily inspired by the iconic airborne fire-support sequences found throughout the *Call of Duty* franchise, particularly the AC-130 mission experience from *Modern Warfare*.

Instead of fighting as a conventional infantry soldier, the player operates from above the battlefield and provides devastating fire support against targets on the ground.

### Core Gameplay

* 🛩️ AC-130-style gunship operation
* 🎯 Ground target engagement
* 🔭 High-altitude battlefield observation
* 💥 Multiple airborne weapon systems
* 👥 Infantry targets
* 🚗 Vehicle targets
* 🏢 Urban environments
* 🔥 Area suppression
* 🎥 Dedicated aerial camera systems
* 🎯 Target identification and engagement
* 🌙 Experimental night/low-visibility scenarios

Death From Above is currently considered an **Alpha feature**.

Additional weapons, missions, effects, battlefield events, targets, and gameplay systems will continue to be added as the mode matures.

---

# 🔥 UE 5.8 Migration

The original Snack Ops framework was developed around **Unreal Engine 5.3**.

Moving to UE 5.8 exposed numerous differences between the two engine generations.

The migration therefore became a substantial compatibility and modernization project rather than a simple engine conversion.

Major migration areas included:

* Character Movement
* Navigation
* RecastNavMesh
* AI
* Animation
* IK
* Camera systems
* Skeletal Meshes
* Weapon attachments
* Physics
* Collision
* Lighting
* Shadows
* Rendering behavior
* Landscape collision
* Engine APIs

The result is effectively the next generation of the Snack Ops framework.

---

# 🛠️ UE 5.8 Stability Pass

The majority of major UE 5.8 migration problems have now been resolved.

### Fixed / Stabilized

* Character movement
* AI navigation
* Navigation agent configuration
* RecastNavMesh behavior
* Third-Person movement
* First-Person presentation
* Camera smoothing
* Physics performance
* Chaos solver behavior
* Weapon attachment behavior
* Animation Blueprint compatibility
* Skeletal Mesh compatibility
* Controller support
* Collision behavior
* Engine API compatibility
* General gameplay framework compatibility

The project has now moved beyond the "does it work in 5.8?" phase and into the much more enjoyable "let's find the last annoying little bastards" phase.

---

# 🦴 Remaining UE 5.8 Issues

Only a relatively small number of UE 5.8-specific issues remain.

These are primarily compatibility artifacts caused by changes between UE 5.3 and UE 5.8 rather than failures in the core gameplay architecture.

---

## 🤏 IK Finger / Hand Jitter

UE 5.8 introduced changes to the project's IK and animation behavior.

The updated IK implementation has introduced a minor **finger/hand jitter** in certain situations.

The issue is currently part of the final animation and IK cleanup pass.

It may be most noticeable during:

* Weapon handling
* Hand IK
* Animation transitions
* Rapid movement
* Camera movement
* Certain weapon poses
* High-frequency animation updates

This is considered a **minor remaining 5.8-specific animation issue**.

The underlying character and weapon systems are functional.

---

# 🌑 Lighting and Shadow Compatibility

Another remaining category of issues comes from differences between the lighting and rendering behavior of UE 5.3 and UE 5.8.

Some older environments may exhibit:

* Incorrect shadows
* Shadow inconsistencies
* Lighting differences
* Unexpected shadow behavior
* Material/lighting artifacts
* Differences in how older assets interact with the newer renderer

These issues are primarily being treated as **5.3 → 5.8 compatibility cleanup**.

They do not represent a fundamental failure of the lighting system.

---

# 🏔️ Landscape Collision

A small number of environments require additional **proxy meshes** for reliable landscape collision.

These issues are minor and are primarily associated with older converted or ripped assets whose original collision data was never designed for the current UE 5.8 environment.

Where necessary, proxy collision meshes are being introduced to provide:

* Reliable player collision
* Better AI navigation
* Improved vehicle interaction
* Cleaner physics behavior
* Reduced unnecessary collision complexity

These are considered **asset-specific cleanup tasks** rather than a fundamental landscape-system problem.

---

# 📦 Legacy Asset Compatibility

Some remaining issues originate from older ripped, converted, or legacy assets.

These assets may contain:

* Missing collision data
* Incorrect collision settings
* Legacy lighting assumptions
* Incorrect shadow configuration
* Incompatible mesh settings
* Missing proxy geometry
* Unusual topology
* Legacy material behavior
* Engine-version-specific artifacts

These problems are being isolated and corrected as part of the ongoing Alpha cleanup.

Long-term, legacy content will increasingly be supplemented or replaced with optimized original assets.

---

# 💥 Chaos Physics and Performance

One of the largest UE 5.8 migration investigations involved a noticeable physics-performance regression compared with the original 5.3 build.

Heavy scenes involving:

* Explosions
* Grenades
* Automatic weapons
* Movement
* Multiple physics events
* Large numbers of active physics objects

could cause short CPU stalls.

These stalls could cascade into:

* AI delays
* Movement corrections
* Character popping
* Temporary positional corrections
* Physics micro-stutters

Investigation identified a significant cost inside the Chaos physics solver.

A source-level optimization was introduced to remove an unnecessary repeated uniqueness check from the affected execution path.

Internal stress testing showed that this recovered a substantial portion of the observed performance regression.

This optimization is available to the project's custom Unreal Engine source build.

---

# 🧠 AI and Navigation

The UE 5.8 migration also included a substantial navigation cleanup.

Snack Ops now uses modern navigation configuration and **RecastNavMesh** behavior designed around the actual dimensions of individual character types.

### Improvements

* More accurate navigation agent dimensions
* Better corridor navigation
* Improved doorway traversal
* Reduced wall clipping
* Improved character spacing
* More reliable AI pathfinding
* Better support for different character sizes
* Improved navigation compatibility with the upgraded engine

---

# 🎥 First-Person and Third-Person

Snack Ops contains a unified First-Person / Third-Person gameplay framework.

## First-Person

First-Person remains the primary shooter perspective.

The system separates First-Person weapon/arms presentation from the Third-Person character mesh where necessary to prevent animation and visibility conflicts.

## Third-Person

The Third-Person system includes:

* Camera lag
* Rotation smoothing
* Movement smoothing
* Dynamic camera distance
* High-speed movement compensation
* Character visibility controls

### Current Experimental Camera Parameters

```text
Position Lag:      8.0
Rotation Lag:      12.0
Maximum Distance:  300.0
```

These values remain subject to Alpha testing and may change as movement and camera behavior continue to be refined.

---

# 🏃 Movement

Movement remains one of the core Snack Ops systems.

Current systems include:

* Tactical Sprint
* Dolphin Dive
* Crouching
* Jumping
* Falling
* Landing
* Ledge behavior
* Ladder climbing
* First-Person movement
* Third-Person movement
* Procedural movement behavior

The UE 5.8 migration has substantially improved the stability of these systems.

---

# 🦴 Animation and IK

The animation framework has undergone extensive compatibility work during the UE 5.8 migration.

Updates include:

* Animation Blueprint compatibility
* Skeletal Mesh compatibility
* Updated IK behavior
* Hand IK
* Weapon grip systems
* First-Person animation presentation
* Third-Person animation presentation
* Movement animation compatibility

A final IK refinement pass is currently focused on eliminating the remaining finger/hand jitter introduced by the newer UE 5.8 IK behavior.

---

# 🔫 Weapons

Snack Ops contains a growing modular weapon framework.

Current and planned weapon categories include:

* Assault rifles
* SMGs
* Shotguns
* Sniper rifles
* Pistols
* Launchers
* Melee weapons

### Weapon Systems

The framework is designed around configurable weapon behavior, including:

```text
Damage
Fire Rate
Recoil
Handling
Magazine Size
Reload Time
Projectile Behavior
Audio
VFX
Attachments
Camos
```

The long-term goal is to make weapons highly configurable without requiring creators to rebuild the underlying weapon framework.

---

# 🤖 Bots and AI

Offline AI bots are currently supported.

The AI framework is being developed around reusable systems so that bots can eventually operate across multiple gameplay modes.

Current AI development includes:

* Navigation
* Target detection
* Movement
* Combat
* Difficulty configuration
* Pathfinding
* Multiplayer preparation

---

# 🎮 Game Modes

## 🧟 Zombies

Wave-based survival gameplay featuring increasingly difficult enemy encounters.

Future development includes:

* Additional maps
* Portals
* Expanded enemy systems
* Additional weapons
* Objectives
* Cooperative gameplay

---

## 🔫 Team Deathmatch

Offline Team Deathmatch is currently supported with configurable AI bots.

The intended multiplayer progression is:

```text
Offline
   ↓
LAN
   ↓
Online Multiplayer
```

---

## 🛩️ Death From Above

The newest Alpha gameplay mode.

Operate an AC-130-style gunship and provide aerial fire support against battlefield targets.

This mode represents one of the first major gameplay experiences built specifically around the newer Snack Ops framework.

---

# 🧩 Modular Blueprint SDK

Snack Ops is being developed as a reusable gameplay framework rather than a collection of one-off systems.

The long-term goal is to make common gameplay features deployable through reusable Blueprint actors.

Examples include:

* Doors
* Pickups
* Traps
* Ladders
* Interactive objects
* Weapons
* AI actors
* Vehicles
* Gameplay devices

The philosophy is:

> **Build the system once. Reuse it everywhere.**

---

# 🗺️ Maps and Environments

The project contains a mixture of original, modified, converted, and tribute environments.

Examples include:

* Nuketown OG
* Rust
* Underground
* Custom arenas
* Experimental large-scale environments
* Death From Above environments

Older environments are being progressively cleaned up for UE 5.8 compatibility.

---

# 🔄 UE 5.3 and UE 5.8 Synchronization

UE 5.8 is now the **primary development branch**.

UE 5.3 remains important as the project's legacy foundation and compatibility reference.

Not every UE 5.8 change needs to exist in 5.3.

Whenever a change is engine-independent and technically compatible, it can be synchronized back to the 5.3 branch.

## Potentially Backportable

* Gameplay logic
* Blueprint systems
* Weapon behavior
* Movement tuning
* AI configuration
* Navigation settings
* Camera tuning
* Asset optimization
* Collision improvements
* General bug fixes
* Gameplay balancing
* Reusable SDK systems

## Potentially UE 5.8-Only

* New UE 5.8 APIs
* Engine source modifications
* UE 5.8-specific animation behavior
* Updated IK implementation
* Engine-specific Chaos behavior
* Renderer changes
* Lighting changes
* Engine-specific compatibility fixes

The goal is to preserve useful improvements across both versions without forcing the two branches to become artificially identical.

---

# 🧪 Current Development State

## Major Migration Work

* ✅ UE 5.3 → UE 5.8 migration
* ✅ Character movement repair
* ✅ AI navigation repair
* ✅ RecastNavMesh configuration
* ✅ Physics investigation
* ✅ Chaos performance optimization
* ✅ Camera improvements
* ✅ First-Person / Third-Person framework
* ✅ Animation compatibility work
* ✅ Weapon synchronization improvements
* ✅ Controller support
* ✅ Collision cleanup
* ✅ Death From Above integration
* ✅ Major gameplay-system compatibility fixes

## Remaining Cleanup

* 🔧 UE 5.8 IK finger/hand jitter
* 🔧 Remaining shadow artifacts
* 🔧 Lighting compatibility cleanup
* 🔧 Landscape collision proxy meshes
* 🔧 Legacy/ripped asset cleanup
* 🔧 Final Alpha polish

The remaining work is now primarily **polish, compatibility cleanup, asset correction, and feature refinement**, rather than major architectural repair.

---

# 📋 Update Notes

## UE 5.8 Alpha Update

### Added

* 🆕 Death From Above gameplay mode
* 🆕 AC-130-style aerial gameplay
* 🆕 Aerial targeting systems
* 🆕 Experimental airborne weapon systems
* 🆕 Expanded Third-Person framework
* 🆕 Modernized navigation configuration
* 🆕 Updated RecastNavMesh configuration
* 🆕 UE 5.8-compatible animation systems
* 🆕 Additional camera smoothing
* 🆕 Expanded modular gameplay framework

### Improved

* Character movement
* Third-Person movement
* First-Person presentation
* AI pathfinding
* Navigation
* Physics performance
* Chaos behavior
* Weapon attachment behavior
* Skeletal Mesh compatibility
* Animation Blueprint compatibility
* Controller support
* Collision handling
* General engine compatibility
* Overall project stability

### Fixed

* Major UE 5.8 movement issues
* AI navigation problems
* Navigation-agent mismatch issues
* Physics performance regression
* Multiple animation compatibility issues
* Weapon attachment problems
* First/Third-Person presentation issues
* Various UE 5.8 API compatibility problems
* Multiple collision problems
* Numerous engine migration artifacts

### In Progress

* IK finger/hand jitter
* Remaining UE 5.3 → 5.8 shadow differences
* Lighting compatibility artifacts
* Landscape collision proxy meshes
* Legacy asset cleanup
* Death From Above polish
* Additional aerial weapons
* Additional Alpha gameplay refinement

---

# 🚀 Roadmap

## Current Priority

1. Finish UE 5.8 IK cleanup
2. Resolve remaining lighting and shadow artifacts
3. Finish landscape collision proxy work
4. Continue legacy asset cleanup
5. Polish Death From Above
6. Expand aerial weapon systems
7. Continue AI refinement
8. Continue performance profiling
9. Improve SDK usability
10. Expand Alpha testing

---

## Upcoming

* Expanded Death From Above missions
* Additional gunship weapons
* Additional maps
* Improved AI
* Expanded Survival
* Spec Ops
* Vehicle framework
* LAN multiplayer
* Online multiplayer
* Advanced weapon customization
* Creator tooling
* Expanded SDK documentation
* UGC framework

---

# 🚗 Vehicles

Vehicle development remains an active research and development area.

The intended vehicle framework draws inspiration from the vehicle gameplay philosophy of *Call of Duty 3* while being redesigned around the Snack Ops SDK architecture.

Vehicle systems are expected to become increasingly modular and reusable as the core SDK continues to mature.

---

# 🧬 Long-Term Direction

Snack Ops is ultimately being developed as a **framework first and game second**.

The long-term architecture is intended to support:

```text
Characters
     ↓
Movement
     ↓
Weapons
     ↓
AI
     ↓
Vehicles
     ↓
Interactive Objects
     ↓
Game Modes
     ↓
Maps
     ↓
Missions
     ↓
Community Content
```

The project will progressively move toward original assets and original intellectual property as development continues.

The existing tribute foundation provides the playground for developing the technology, while the long-term objective is to create a framework capable of powering entirely original experiences.

---

# 🧠 Development Philosophy

The UE 5.8 migration reinforced an important development philosophy for Snack Ops:

> **Do not rebuild a working system simply because the engine changed.**

Instead:

```text
Existing System
      ↓
Test Against New Engine
      ↓
Identify Actual Regression
      ↓
Repair / Modernize
      ↓
Optimize
      ↓
Backport When Practical
      ↓
Keep What Works
```

This allows the project to take advantage of newer Unreal Engine technology without throwing away years of working gameplay and framework development.

---

# 📦 Engine Versions

## Primary Development

```text
Unreal Engine 5.8
```

## Legacy / Compatibility

```text
Unreal Engine 5.3
```

UE 5.8 should be considered the authoritative development target going forward.

The 5.3 branch remains valuable for compatibility, comparison, testing, and backporting changes that remain technically viable.

---

# ⚠️ Alpha Disclaimer

Snack Ops remains an **Alpha project**.

Systems may change without warning.

Expect:

* Experimental gameplay
* Temporary assets
* Placeholder animations
* Balance changes
* Engine-specific behavior
* Performance testing
* Blueprint refactors
* Temporary compatibility solutions
* Incomplete multiplayer systems
* Unfinished content

The current UE 5.8 build is significantly more stable than the initial migration builds, but development and testing remain ongoing.

---

# 📜 Credits and Disclaimer

**Call of Dutie: Snack Ops** is an independent, fan-made, non-profit project created for educational, experimental, and entertainment purposes.

The project is inspired by numerous classic military shooter titles, including:

* *Call of Duty*
* *Call of Duty 2*
* *Call of Duty 3*
* *Black Ops*
* *Black Ops II*
* *Modern Warfare 3*
* *NX1 Future Warfare*

Special thanks to:

**Iron Will Interactive**
**Kelint**
**The Snack Ops development and testing community**

Snack Ops is not affiliated with or endorsed by Activision, Infinity Ward, Treyarch, Sledgehammer Games, or any other respective rights holder.

All third-party trademarks, copyrights, characters, names, sounds, maps, and other intellectual property remain the property of their respective owners.

The project does not claim ownership of third-party material used within experimental or tribute builds.

---

# 🍿 Call of Dutie: Snack Ops

**Classic shooter DNA.**
**Modern Unreal technology.**
**A rapidly evolving SDK.**

### 🛩️ UE 5.8 is here.

### 💥 Death From Above is live in Alpha.

### 🛠️ The migration is nearly complete.

### 🔧 What's left is mostly polish, compatibility cleanup, and the last few stubborn gremlins.

### 🚀 Now we're building on top of it.
