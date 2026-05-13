# Findings — May 13 Evening Session (Open Issues Research)

## Research Coverage

Investigated all 5 open issues using: ACE source code analysis, wiki lookups, mod code inspection,
SQL reference queries, and Settings.json review.

## Issue 1: Auto-lockpick bank ratio

**Found:**
- Two separate lockpick banking systems (AutoLoot 10% on corpse loot, LLL 100% on inventory entry)
- Both write to property 40130
- Default ratio in `AutoLoot/Settings.cs:108` = `0.10f`
- User wants 50%

**Wiki added:** `/a/obsidian/jeremy/wiki/game-engine/Lockpick Banking.md`

## Issue 2: Cloak cantrip spells don't activate

**Root cause:** `MutateCloak` (LootGenerationFactory_Clothing.cs:343) never calls `AssignMagic` — the
function that adds cantrip spells and sets `ItemCurMana > 0` for `TryActivateSpells` to run.

**Wiki added:** `/a/obsidian/jeremy/wiki/game-engine/Cloak Spell Activation.md`

## Issue 3: Coalesced mana drop/reward rates

**Found:**
- Vanilla ACE: 2% per slot, tiers 1-4 only, Aetheric 100% at T1-T2 (backwards)
- Windblown custom: WCIDs 800000-800002, DropChance=0 in trophy line (BLC handles)
- `CoalescedManaWcids.cs` needs rework: proper tier→WCID mapping, extend to tiers 1-8

**Wiki added:** `/a/obsidian/jeremy/wiki/game-engine/Coalesced Mana Drop Rates.md`

## Issue 4: /fac teleport location

**Found:**
- `QOL/FacilityHubPortal.cs` resolves destination from weenie 49563 → LinkedPortalOne → portal weenie Destination
- Fallback coordinates: 0x8A020212 (58.64, -89.92, 6.01)
- 2020 shard update may be needed for UseUserAnimation on gem biota

**Wiki added:** `/a/obsidian/jeremy/wiki/game-engine/Facility Hub Teleport.md`

## Issue 5: Collector Vaetha message on Behdo Yii

**Most likely cause:** QOL `CollectorWcids` list includes 10842 (Behdo Yii). Even though
`EnableCollectorsAcceptAll` is disabled/removed, stale patches or the list entry may still
trigger accept-all behavior. Alternatively, cloned emotes from Black Hill Collector (24215)
may have broad jewelry entries that fire on any NPC.

**Wiki added:** `/a/obsidian/jeremy/wiki/game-engine/Collector NPC Emote Conflicts.md`

## New Wiki Pages Created

| Topic | Path |
|-------|------|
| Lockpick Banking | `/a/obsidian/jeremy/wiki/game-engine/Lockpick Banking.md` |
| Cloak Spell Activation | `/a/obsidian/jeremy/wiki/game-engine/Cloak Spell Activation.md` |
| Coalesced Mana Drop Rates | `/a/obsidian/jeremy/wiki/game-engine/Coalesced Mana Drop Rates.md` |
| Facility Hub Teleport | `/a/obsidian/jeremy/wiki/game-engine/Facility Hub Teleport.md` |
| Collector NPC Emote Conflicts | `/a/obsidian/jeremy/wiki/game-engine/Collector NPC Emote Conflicts.md` |
