---
name: mod-audit
description: Read-only bug review for a single ACE mod. Scans all .cs files for null-safety issues, Harmony patch risks, settings/load edge cases, and general bugs. Outputs a prioritized list with file paths and line ranges, then appends findings to OVERALL_TODO.md. Use when the user invokes /mod-audit <ModName> or asks for a mod review.
---

# /mod-audit — ACE Mod Code Review

**Invocation:** `/mod-audit <ModName>` (e.g. `/mod-audit Swarmed`)

**Rule #1: Read-only. Do NOT edit any mod source files.** Only `OVERALL_TODO.md` is written at the end.

---

## Goal

Produce a complete, prioritized bug report for one ACE mod, then record it permanently in `OVERALL_TODO.md`.

---

## Step 1 — Read every source file

Read **all** `.cs` files in `<ModName>/` (skip `obj/` subdirectories). Also read:
- `<ModName>/Settings.json` — check defaults vs code defaults
- `<ModName>/Meta.json` — optional context

Read in logical order: `Mod.cs` → `Settings.cs` → `Settings.json` → `PatchClass*.cs` → everything else.

---

## Step 2 — Analyse for each category

Work through all four lenses on every file before writing findings.

### A. Null-safety
- `FirstOrDefault()` / `LastOrDefault()` result accessed without null check
- `.Last()` / `.First()` on a potentially empty collection (throws `InvalidOperationException`)
- `session.Player` / `player.Session` / `player.Session.Network` used without null guard (player can disconnect mid-patch)
- `GetCachedSpell()`, `GetCachedWeenie()`, or other nullable-returning DB calls dereferenced before null check
- `!` null-forgiving operator (`foo!`) masking a real NPE risk
- Properties on `WorldObject` like `.Name`, `.CurrentLandblock`, `.Biota.PropertiesSpellBook` that can be null on in-flight objects

### B. Harmony patch risks
- **Prefix returns `false`** (skips vanilla) but `__result` may not cover all code paths
- **Dead code from sequential overwrites**: result set by a switch, then unconditionally overwritten by an `if/else` below
- **`else __result = true`** as a fallback — grants permissions/capabilities to anything not in the lookup dict
- **String literal method name** in `[HarmonyPatch(..., "MethodName", ...)]` — silent no-op if ACE renames it; prefer `nameof()`
- **Static patch-applied flag** not reset on `Stop()` — after hot-reload, hook is gone but flag says it's present; feature silently dies
- **Bare `catch {}`** swallowing Harmony patch/unpatch errors
- **Infinite recursion risk**: prefix on `Foo(A)` calls `Foo(B)` where B resolves to A

### C. Settings / load edge cases
- Settings assigned **only** in `OnWorldOpen()` — unreliable before first player command; must also assign in explicit constructor body
- `Settings.json` ships as `{}` (empty) — all code defaults active, including dangerous ones
- `Settings.json` value that **overrides** the `Settings.cs` default in an unexpected way (e.g. bare filename where a full path is needed)
- **Divide-by-zero**: interval/denominator settings that default to a valid non-zero value but accept 0 from JSON without a guard
- **Infinite polling loop** in `OnWorldOpen()` (`while(true) + Task.Delay`) with no timeout or cancellation token
- Settings reload that is **non-atomic** — in-flight requests see partial state during reload
- `static` field that accumulates state across hot-reloads but is never reset in `Stop()`

### D. General bugs
- **Memory leaks**: per-player `ConcurrentDictionary`s keyed by `Player` object — `Player` is replaced on each login; old entries never evicted
- **Integer overflow**: `int × int` arithmetic on values that could be large (stack size, value, level × multiplier)
- **Dead variables**: computed but never read (e.g. `isNewCharacter`)
- **Duplicate / inconsistent logic**: same condition expressed two different ways in the same method
- **Misleading boolean name**: `SkipFoo = true` actually enables the foo behaviour (inverted semantics)
- **Dictionary key = null**: using `WorldObject.Name` (nullable) as a `Dictionary<string,int>` key without a null check
- **`(int)` cast on `long`/`double`** discards high bits in bit-flag comparisons
- **`_ => true` / `_ => false` default arm** in a switch that silently passes or blocks everything on unknown values
- **`player.GiveFromEmote(null, ...)`** — NRE if the NPC source is null and the method dereferences it
- **Hardcoded literal** in a user-facing message that should instead reference the configurable setting (e.g. `"level 275"` when `s.LevelReq` is configurable)

---

## Step 3 — Output the prioritized findings

Print the report **before** touching `OVERALL_TODO.md`.

Use exactly this structure:

```
## <ModName> — Read-Only Review

### CRITICAL
**1. `<File>:<lines>` — <short title>**
<code snippet if helpful>
<explanation of what crashes/breaks and under what conditions>

...

### HIGH
...

### MEDIUM
...

### LOW
...

### Summary
| # | Priority | File | Lines | Issue |
|---|----------|------|-------|-------|
| 1 | CRITICAL | ...  | ...   | ...   |
```

**Priority rules:**
- **CRITICAL** — will crash (`NullReferenceException`, `DivideByZeroException`, `ArgumentNullException`) in a normal reachable code path, or silently kills a core feature (e.g. loot stops working after reload)
- **HIGH** — crash or data loss in a reachable but less common path (player disconnect, empty collection, specific config value), or wrong gameplay behaviour with meaningful impact
- **MEDIUM** — bad UX, incorrect display, logic inversion the operator would notice, missing guard in a utility method
- **LOW** — code smell with low runtime impact, hardcoded magic value, dead variable, minor naming confusion

Only report **real issues** — not style preferences, not hypothetical edge cases that require impossible inputs.

---

## Step 4 — Append to OVERALL_TODO.md

Read `OVERALL_TODO.md` first. Find the last `---` before the `## Inline` section and insert a new review block **before** it, matching the exact format already used for AethericWeaver, AureatePath, and AutoLoot reviews.

Template to insert:

```markdown
---

## Code review findings — <ModName> (<YYYY-MM-DD>)

Read-only review covering null-safety, Harmony patch risks, and settings/load edge cases.

### CRITICAL

| # | File | Lines | Issue |
|---|------|-------|-------|
| 1 | `<ModName>/File.cs` | 10–20 | Short description |

### HIGH

| # | File | Lines | Issue |
|---|------|-------|-------|
| 2 | ... | ... | ... |

### MEDIUM

| # | File | Lines | Issue |
|---|------|-------|-------|
| 3 | ... | ... | ... |

### LOW

| # | File | Lines | Issue |
|---|------|-------|-------|
| 4 | ... | ... | ... |

```

Omit any priority section that has zero findings. Use today's date.

---

## What NOT to report

- Style preferences (naming conventions, comment style)
- Hypothetical inputs that require impossible values (negative GUID, overflow requiring `int.MaxValue` items)
- Issues already listed in the existing `OVERALL_TODO.md` entries
- Pure performance micro-optimisations with no correctness impact
- Anything inside `obj/` generated files
