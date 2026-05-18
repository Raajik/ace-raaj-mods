# PLAN — Active Work

> This file tracks **current active work** and **backlog** only. Shipped features belong in `COMPLETED.md`.

## Infrastructure

- **void-test isolated spot-check server** — `A:\void-test\` (port 9010, DBs `void-test_*`). Use `"push void"` to deploy. Auto-restart via `void-test-Watchdog` scheduled task (see AGENTS.md §8.1).
- **wb_test** (port 9000) — auto-restart via `wb_test-Watchdog` scheduled task.
- **live** (port 9002) — auto-restart via `ACE-WB-Watchdog` scheduled task.
- **All watchdogs** use `RunLevel Limited` in the task principal so ACE opens in the user's normal Windows Terminal, not admin windows.

## Active

### 🔴 CRITICAL: Client crash on Yanshi/Xarabydun town entries (Conniving creature name corruption)

**Symptom:** Client crashes when entering Yanshi (landblocks B46F/B470) or Xarabydun (934B). Creatures in these towns have their names corrupted — "Conniving" repeated 11–23× before the base creature name (e.g., "Conniving Conniving Conniving… Conniving Virindi Observer"). The AC client's `QualityFilter` system generates the "Conniving" adjective from the creature's Level property, but something is recursively modifying the Name property, causing it to stack.

**What's been ruled out:**

| Cause | Status | Evidence |
|-------|--------|----------|
| Invasion / Sale events | ✅ Ruled out | WorldEvents mod globally disabled in Meta.json; settings had Yanshi/Xarabydun removed from InvasionTowns + SaleTowns; server restarted |
| BetterLootControl (VendorLootRotation) | ✅ Ruled out | BLC disabled via Meta.json |
| Custom ace* NPC model data | ✅ Ruled out | All ace-prefixed weenies removed from landblock_instance (backed up); Virindi Delegate PhysicsState fixed; crash persists |
| Swarmed mod | ✅ Ruled out | Disabled via Meta.json; server restarted; corrupted creatures still appear (meaning bug is in another mod or ACE core) |
| Nemesis mod | ✅ Ruled out | Disabled via Meta.json |
| Stale ActiveInvasion persistence | ✅ Ruled out | ActiveInvasion.json deleted; WorldEvents disabled |
| Static landblock generators | ✅ Ruled out | All generators (1154, 1542, 7923, 4219, 3955, 5086) removed from Yanshi/Xarabydun (backed up); crash still happens |
| Shard biota corruption | ✅ Partial | Deleted 2 corrupted biota from ace_shard ("Conniving Conniving Virindi Master", "Conniving Siessa Sclavus"); fresh corrupted creatures still generated |

**Key clues:**
- `/smite all` (kills all creatures in landblock) lets the player enter — confirms dynamic creatures cause the crash
- The corrupted name pattern "Conniving" × 23 + base name suggests a recursive Name getter/setter bug where something reads the client-side quality-prefixed name and writes it back to the server-side Name property, compounding each time
- "Conniving" is a vanilla AC quality adjective — NOT stored in any server DLL, exe, database, or source file. The AC client generates it from the `QualityFilter` / `MonsterLevel` property
- The corrupted creatures appear in BOTH Yanshi and Xarabydun (shard-wide, not town-specific)
- Persisted even after disabling Swarmed + Nemesis + WorldEvents → the source is still active or cached

**Next investigation steps:**
1. Try disabling remaining creature-affecting mods one at a time: Windblown (runtime weenie injection), QOL (TownNetworkToll), EmpyreanAlteration (item mutations)
2. Check if "Conniving" comes from ACE core's own `CreatureNameGenerator` or `MonsterQuality` system
3. If Swarmed was previously enabled and corrupted biota were written, check if `landblock_instance` or `landblock_instance_link` in ace_world were ever modified at runtime (ACE doesn't do this normally, but a mod might)
4. Restore generators from sql-backups after fixing root cause

**Status:** 🟡 Open — root cause not yet identified

## Backlog / Upcoming

### Bug backlog
- **Swarmed** — monitor CreatureEx loot for remaining items without icon underlays. **Status:** defense imbues (Melee/Missile/MagicDefense) have no known client icon underlay DIDs — blocked unless assets are found.

### Feature backlog
- **Overtinked: spell cleave + vanilla Nether** — Remove custom `NetherRending = 4` flag, use vanilla `ImbuedEffectType.NetherRending`. Add cleaving to spell projectiles (war/void/life) via `SpellProjectile.DamageTarget` postfix. +1 cleave target per imbue, stackable across items. Exclude stamina/mana drain spells. Replace BSS ManaConversion SpellCleave.
- **BetterSupportSkills** — monitor summoner class cantrip bonus pets for balance. **Status:** current CantripBonusByTier values = {1,2,3,4,7}. Requires player feedback before adjusting.

## Progress (recent)
- 2026-05-11 — **Bug fix batch** (SpellSiphon crystal destruction, EA cloak rating persistence via biota bypass, QOL PetEx kill-summary guard, Windblown Mnemosyne BaseWcid per-size fix, Unicode arrow → `->` in all level-up messages, Overtinked steel delta reflection). Deployed to void-test. See COMPLETED.md.
- 2026-05-08 — **wb_test server reset**: ace_world replaced with void-test_world fresh clone (43,920 weenies, proper Windblown custom WCIDs). BSS weave spell IDs updated from 90000017/90000018 → 5622/5652 (real ACE Weave V spells). Empanada Chaos logged in successfully.
- 2026-05-07 — **🟡 Conniving creature crash** — see Active section above.
- 2026-05-06 — AutoLoot .utl archive, stale prefs cleanup, BLC death-loot timing fix.
