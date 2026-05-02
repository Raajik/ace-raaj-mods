# Coalesced Mana & Vendor Fix — Task Plan

## Goal
1. Move Coalesced Mana drops from vanilla ACE to BetterLootControl
2. Fix QOL VendorLootRotation causing duplicate inventory / price desync
3. Update all docs (PLAN.md, AGENTS.md, wiki, mod Readmes)

## Phases

### Phase 1 — Disable Vanilla Coalesced Mana ✓
- [x] `DisableVanillaCoalescedMana.cs` — Harmony prefix on `LootGenerationFactory.CreateCoalescedMana` returns null

### Phase 2 — BLC Corpse Drops ✓
- [x] `GlobalRareDrops.cs` — Added tier-appropriate Coalesced Mana drops
- [x] `RollCoalescedManaWcid()` — T1-2 Aetheric, T3 mixed, T4 all three

### Phase 3 — BLC Chest Loot ✓
- [x] `DefaultLootConfig.cs` — Added 42516/42517/42518 to uncommon pool

### Phase 4 — Settings & Config ✓
- [x] `Settings.cs` — Added `CoalescedManaDropChance`, WCID configs
- [x] `Settings.json` — Updated with defaults

### Phase 5 — QOL VendorLootRotation Fix ✓
- [x] Removed trailing comma in `AnimationSpeeds` JSON object
- [x] Hardcoded `return` in `TryApplyVendorLootRotationPatch()`

### Phase 6 — Docs Update ✓
- [x] `AGENTS.md` — Consolidated 80+ bullet points into categorized sections
- [x] `PLAN.md` — Marked all today's work as done
- [x] Wiki — Updated `BetterLootControl.md`, created `Vendor System Architecture.md`, created `Radi.md`

### Phase 7 — Build, Deploy, Verify ✓
- [x] `dotnet build BetterLootControl` — clean (0 warnings)
- [x] Deployed to live (`C:\ACE-WB\Mods\`)
- [x] Restarted live server — confirmed 1 process, BLC 5 patches, no VendorLootRotation patch

## All phases complete. Commit and push required.
